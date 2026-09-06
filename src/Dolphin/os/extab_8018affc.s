# BPH2 cluster, part 3 (Track A byte-match + overview - 0x29D8=10712B,
# now the LARGEST function landed in this project, surpassing FGN2's
# update()). BPH2's core update() state machine. Calls the entire rest
# of this actor's private helper family (the fused block below, plus
# reuses several of FGN2's own accessor/wrapper functions - fn_8018A598/
# 8018A5B0/8018A63C/8018A660/8018A6AC - confirming FGN2 and BPH2 share a
# common field layout/utility convention), a private numeric-ID helper
# family (fn_80154xxx/fn_8017Exxx, largely the SAME family FGN2's
# update() used - a shared-but-still-unlanded library, not actor-private
# after all), plus confirmed shared primitives fn_8013CB44/fn_8013CC50
# (effect spawn/sync), fn_801F3D94 (knockback), fn_801F71A4 (ease).
# Full per-state semantic breakdown deferred given the function's size;
# byte-matched via direct transcription of the dtk auto-disasm.
.section extab, "a"
.balign 4
.global etb_800076CC
etb_800076CC:
    .4byte 0x308A0000
    .4byte 0x00000000
.size etb_800076CC, 8

.section extabindex, "a"
.balign 4
.global eti_80014458
eti_80014458:
    .4byte fn_8018AFFC
    .4byte 0x000029D8
    .4byte etb_800076CC
.size eti_80014458, 12

.text
.balign 4
.global fn_8018AFFC

fn_8018AFFC:
    stwu 1, -0x40b0(1)
    mflr 0
    stw 0, 0x40b4(1)
    li 0, 0x40a8
    stfd 31, 0x40a0(1)
    psq_stx 31, 1, 0, 0, 0
    li 0, 0x4098
    stfd 30, 0x4090(1)
    psq_stx 30, 1, 0, 0, 0
    stmw 26, 0x4078(1)
    .4byte 0xC022B168 # lfs f1, lbl_8053E108@sda21(r0)
    lis 4, lbl_804A1B70@ha
    .4byte 0xC062B16C # lfs f3, lbl_8053E10C@sda21(r0)
    mr 31, 3
    fmr 2, 1
    addi 30, 4, lbl_804A1B70@l
    fmr 4, 3
    addi 3, 1, 0x50
    bl fn_8017EC5C
    lfs 1, 0xc(31)
    addi 3, 1, 0x14
    lfs 2, 0x10(31)
    bl Bph2_SetVec2
    addi 3, 1, 0x44
    bl fn_8003B2CC
    addi 3, 1, 0x38
    bl fn_8003B2CC
    li 0, -0x1
    .4byte 0xC042B170 # lfs f2, lbl_8053E110@sda21(r0)
    stw 0, 0xc(1)
    addi 3, 31, 0x294
    .4byte 0xC062B174 # lfs f3, lbl_8053E114@sda21(r0)
    li 29, 0x0
    lfs 1, 0x298(31)
    bl fn_801F71A4
    li 0, 0x2710
    stw 0, 0x108(31)
    lwz 0, 0x26c(31)
    cmpwi 0, 0x0
    .4byte 0x40820008 # bne .L_8018B0A0
    bl fn_8017ECC0
L_8018B0A0:
    mr 3, 31
    .4byte 0xC022B128 # lfs f1, lbl_8053E0C8@sda21(r0)
    lwz 12, 0x0(31)
    .4byte 0xC042B12C # lfs f2, lbl_8053E0CC@sda21(r0)
    lwz 12, 0x2c(12)
    .4byte 0xC062B178 # lfs f3, lbl_8053E118@sda21(r0)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x418200BC # beq .L_8018B180
    lwz 3, 0x24c(31)
    addi 0, 3, 0x1
    stw 0, 0x24c(31)
    lwz 0, 0x24c(31)
    clrlwi 0, 0, 28
    stw 0, 0x24c(31)
    lwz 0, 0x24c(31)
    cmpwi 0, 0x0
    .4byte 0x40820070 # bne .L_8018B158
    addi 3, 1, 0x44
    addi 4, 31, 0xc
    bl fn_8018E8C0
    bl fn_80154744
    .4byte 0xC062B180 # lfs f3, lbl_8053E120@sda21(r0)
    .4byte 0xC042B17C # lfs f2, lbl_8053E11C@sda21(r0)
    lfs 0, 0x44(1)
    fnmsubs 1, 3, 1, 2
    fadds 0, 0, 1
    stfs 0, 0x44(1)
    bl fn_80154744
    .4byte 0xC062B180 # lfs f3, lbl_8053E120@sda21(r0)
    addi 4, 1, 0x44
    .4byte 0xC042B17C # lfs f2, lbl_8053E11C@sda21(r0)
    li 5, 0x1ff
    lfs 0, 0x48(1)
    li 6, 0x1
    fnmsubs 2, 3, 1, 2
    .4byte 0xC022B130 # lfs f1, lbl_8053E0D0@sda21(r0)
    li 7, 0x2
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    fadds 0, 0, 2
    stfs 0, 0x48(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
L_8018B158:
    addi 3, 1, 0x44
    addi 4, 31, 0xc
    bl fn_8018E8C0
    lfs 2, 0x48(1)
    addi 3, 1, 0x44
    .4byte 0xC002B184 # lfs f0, lbl_8053E124@sda21(r0)
    .4byte 0xC022B130 # lfs f1, lbl_8053E0D0@sda21(r0)
    fsubs 0, 2, 0
    stfs 0, 0x48(1)
    bl fn_8017EC70
L_8018B180:
    lwz 0, 0x26c(31)
    li 4, 0x1
    cmpwi 0, 0x0
    .4byte 0x40820008 # bne .L_8018B194
    li 4, 0x0
L_8018B194:
    mr 3, 31
    clrlwi 4, 4, 24
    bl fn_801F3D94
    cmpwi 3, 0x0
    .4byte 0x41820044 # beq .L_8018B1E8
    lwz 0, 0x26c(31)
    cmpwi 0, 0x0
    .4byte 0x40820018 # bne .L_8018B1C8
    .4byte 0xC022B188 # lfs f1, lbl_8053E128@sda21(r0)
    .4byte 0xC002B128 # lfs f0, lbl_8053E0C8@sda21(r0)
    stfs 1, 0x2b4(31)
    stfs 1, 0x14(31)
    stfs 0, 0x44(31)
L_8018B1C8:
    lwz 0, 0x26c(31)
    cmpwi 0, 0x1
    .4byte 0x40820018 # bne .L_8018B1E8
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801545C0
    .4byte 0x480027C4 # b .L_8018D9A8
L_8018B1E8:
    lwz 0, 0x26c(31)
    cmpwi 0, 0x1
    .4byte 0x4082008C # bne .L_8018B27C
    .4byte 0x806D840C # lwz r3, lbl_80539FCC@sda21(r0)
    cmpwi 3, 0x0
    .4byte 0x41800080 # blt .L_8018B27C
    lwz 0, 0x230(31)
    cmpwi 0, 0x1f
    .4byte 0x41820074 # beq .L_8018B27C
    cmpwi 0, 0x20
    .4byte 0x4182006C # beq .L_8018B27C
    cmpwi 0, 0x21
    .4byte 0x41820064 # beq .L_8018B27C
    lwz 0, 0x240(31)
    cmpwi 0, 0x0
    .4byte 0x40820058 # bne .L_8018B27C
    .4byte 0x800D8410 # lwz r0, lbl_80539FD0@sda21(r0)
    cmpwi 0, 0x0
    .4byte 0x4081004C # ble .L_8018B27C
    cmpwi 3, 0xa
    .4byte 0x41820044 # beq .L_8018B27C
    mr 3, 31
    bl fn_801F2FAC
    clrlwi. 0, 3, 24
    .4byte 0x41820034 # beq .L_8018B27C
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801545C0
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x14
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x1f
    stw 0, 0x230(31)
    .4byte 0x48002730 # b .L_8018D9A8
L_8018B27C:
    lfs 1, 0x2dc(31)
    addi 3, 31, 0x2d0
    .4byte 0xC042B18C # lfs f2, lbl_8053E12C@sda21(r0)
    .4byte 0xC062B190 # lfs f3, lbl_8053E130@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x2e0(31)
    addi 3, 31, 0x2d4
    .4byte 0xC042B18C # lfs f2, lbl_8053E12C@sda21(r0)
    .4byte 0xC062B190 # lfs f3, lbl_8053E130@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x2ac(31)
    addi 3, 31, 0x3c
    .4byte 0xC042B194 # lfs f2, lbl_8053E134@sda21(r0)
    lfs 3, 0x2b8(31)
    bl fn_801F71A4
    lfs 1, 0x2b0(31)
    addi 3, 31, 0x40
    .4byte 0xC042B194 # lfs f2, lbl_8053E134@sda21(r0)
    lfs 3, 0x2bc(31)
    bl fn_801F71A4
    .4byte 0xC042B194 # lfs f2, lbl_8053E134@sda21(r0)
    addi 3, 31, 0x2b8
    .4byte 0xC022B130 # lfs f1, lbl_8053E0D0@sda21(r0)
    fmr 3, 2
    bl fn_801F71A4
    .4byte 0xC042B194 # lfs f2, lbl_8053E134@sda21(r0)
    addi 3, 31, 0x2bc
    .4byte 0xC022B130 # lfs f1, lbl_8053E0D0@sda21(r0)
    fmr 3, 2
    bl fn_801F71A4
    lwz 0, 0x26c(31)
    cmpwi 0, 0x0
    .4byte 0x40820070 # bne .L_8018B36C
    lha 3, 0x278(31)
    bl fn_801544E4
    .4byte 0xC042B198 # lfs f2, lbl_8053E138@sda21(r0)
    .4byte 0xC002B188 # lfs f0, lbl_8053E128@sda21(r0)
    fmadds 0, 2, 1, 0
    stfs 0, 0x2b4(31)
    lha 3, 0x278(31)
    addi 0, 3, 0x300
    sth 0, 0x278(31)
    lwz 0, 0x250(31)
    extsh 3, 0
    bl fn_801544FC
    stfs 1, 0x28c(31)
    addi 3, 31, 0x280
    .4byte 0xC042B148 # lfs f2, lbl_8053E0E8@sda21(r0)
    lwz 4, 0x250(31)
    lwz 0, 0x274(31)
    .4byte 0xC062B190 # lfs f3, lbl_8053E130@sda21(r0)
    add 0, 4, 0
    stw 0, 0x250(31)
    lfs 1, 0x284(31)
    bl fn_801F71A4
    lfs 1, 0x2b4(31)
    addi 3, 31, 0x14
    .4byte 0xC042B18C # lfs f2, lbl_8053E12C@sda21(r0)
    lfs 3, 0x2c0(31)
    bl fn_801F71A4
L_8018B36C:
    addi 3, 31, 0xc
    addi 4, 31, 0x3c
    bl fn_801545F0
    lwz 0, 0x26c(31)
    cmpwi 0, 0x0
    .4byte 0x4082024C # bne .L_8018B5CC
    addi 3, 1, 0x28
    bl fn_8018E890
    mr 3, 31
    bl fn_8015461C
    bl fn_801826A4
    mr 4, 3
    addi 3, 1, 0x28
    bl fn_8017EC38
    lwz 0, 0x330(31)
    cmplwi 0, 0x0
    .4byte 0x41820074 # beq .L_8018B420
    addi 3, 1, 0x44
    addi 4, 31, 0xc
    bl fn_8018E8C0
    lfs 2, 0x44(1)
    .4byte 0xC002B13C # lfs f0, lbl_8053E0DC@sda21(r0)
    .4byte 0xC022B154 # lfs f1, lbl_8053E0F4@sda21(r0)
    fsubs 0, 2, 0
    stfs 0, 0x44(1)
    lfs 0, 0x28c(31)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x4060(1)
    lwz 3, 0x4064(1)
    bl fn_801544FC
    .4byte 0xC082B150 # lfs f4, lbl_8053E0F0@sda21(r0)
    addi 4, 1, 0x44
    lfs 3, 0x44(1)
    li 5, 0x1
    lfs 2, 0x48(1)
    li 6, 0x2
    .4byte 0xC002B184 # lfs f0, lbl_8053E124@sda21(r0)
    fmadds 1, 4, 1, 3
    li 7, 0x1
    fadds 0, 2, 0
    stfs 1, 0x44(1)
    stfs 0, 0x48(1)
    lwz 3, 0x330(31)
    bl fn_8013CB44
L_8018B420:
    lwz 3, 0x230(31)
    cmpwi 3, 0x14
    .4byte 0x4182014C # beq .L_8018B574
    cmpwi 3, 0x15
    .4byte 0x41820144 # beq .L_8018B574
    cmpwi 3, 0x13
    .4byte 0x4182013C # beq .L_8018B574
    cmpwi 3, 0x16
    .4byte 0x41820134 # beq .L_8018B574
    cmpwi 3, 0x17
    .4byte 0x40820010 # bne .L_8018B458
    lwz 0, 0x258(31)
    cmpwi 0, 0x0
    .4byte 0x41820120 # beq .L_8018B574
L_8018B458:
    cmpwi 3, 0xb
    .4byte 0xC042B19C # lfs f2, lbl_8053E13C@sda21(r0)
    .4byte 0x40820008 # bne .L_8018B468
    .4byte 0xC042B180 # lfs f2, lbl_8053E120@sda21(r0)
L_8018B468:
    lfs 0, 0x2c(1)
    lfs 1, 0x10(31)
    fadds 0, 0, 2
    fcmpo cr0, 1, 0
    .4byte 0x4080002C # bge .L_8018B4A4
    lfs 1, 0x40(31)
    .4byte 0xC002B128 # lfs f0, lbl_8053E0C8@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800018 # bge .L_8018B4A0
    stfs 0, 0x2b0(31)
    stfs 0, 0x40(31)
    lfs 0, 0x2c(1)
    fadds 0, 0, 2
    stfs 0, 0x10(31)
L_8018B4A0:
    li 29, 0x1
L_8018B4A4:
    lwz 0, 0x230(31)
    .4byte 0xC042B180 # lfs f2, lbl_8053E120@sda21(r0)
    cmpwi 0, 0xb
    .4byte 0x40820008 # bne .L_8018B4B8
    .4byte 0xC042B1A0 # lfs f2, lbl_8053E140@sda21(r0)
L_8018B4B8:
    lfs 0, 0x34(1)
    lfs 1, 0x10(31)
    fsubs 0, 0, 2
    fcmpo cr0, 1, 0
    .4byte 0x4081002C # ble .L_8018B4F4
    lfs 1, 0x40(31)
    .4byte 0xC002B128 # lfs f0, lbl_8053E0C8@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810018 # ble .L_8018B4F0
    stfs 0, 0x2b0(31)
    stfs 0, 0x40(31)
    lfs 0, 0x34(1)
    fsubs 0, 0, 2
    stfs 0, 0x10(31)
L_8018B4F0:
    li 29, 0x1
L_8018B4F4:
    .4byte 0xC042B180 # lfs f2, lbl_8053E120@sda21(r0)
    lfs 0, 0x28(1)
    lfs 1, 0xc(31)
    fadds 0, 2, 0
    fcmpo cr0, 1, 0
    .4byte 0x4080002C # bge .L_8018B534
    lfs 1, 0x3c(31)
    .4byte 0xC002B128 # lfs f0, lbl_8053E0C8@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800018 # bge .L_8018B530
    stfs 0, 0x2ac(31)
    stfs 0, 0x3c(31)
    lfs 0, 0x28(1)
    fadds 0, 2, 0
    stfs 0, 0xc(31)
L_8018B530:
    li 29, 0x1
L_8018B534:
    lfs 0, 0x30(1)
    .4byte 0xC042B180 # lfs f2, lbl_8053E120@sda21(r0)
    lfs 1, 0xc(31)
    fsubs 0, 0, 2
    fcmpo cr0, 1, 0
    .4byte 0x4081002C # ble .L_8018B574
    lfs 1, 0x3c(31)
    .4byte 0xC002B128 # lfs f0, lbl_8053E0C8@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810018 # ble .L_8018B570
    stfs 0, 0x2ac(31)
    stfs 0, 0x3c(31)
    lfs 0, 0x30(1)
    fsubs 0, 0, 2
    stfs 0, 0xc(31)
L_8018B570:
    li 29, 0x1
L_8018B574:
    addi 3, 1, 0x44
    addi 4, 31, 0xc
    bl fn_8018E8C0
    lfs 3, 0x44(1)
    addi 3, 1, 0x44
    .4byte 0xC042B12C # lfs f2, lbl_8053E0CC@sda21(r0)
    lfs 1, 0x48(1)
    .4byte 0xC002B180 # lfs f0, lbl_8053E120@sda21(r0)
    fsubs 2, 3, 2
    fsubs 0, 1, 0
    stfs 2, 0x44(1)
    stfs 0, 0x48(1)
    bl fn_80154718
    lwz 0, 0x230(31)
    cmpwi 0, 0x1
    .4byte 0x4182000C # beq .L_8018B5BC
    cmpwi 0, 0x2
    .4byte 0x40820014 # bne .L_8018B5CC
L_8018B5BC:
    .4byte 0xC022B130 # lfs f1, lbl_8053E0D0@sda21(r0)
    addi 3, 1, 0x44
    bl fn_8017EC70
    bl fn_8017ED08
L_8018B5CC:
    lwz 0, 0x26c(31)
    cmpwi 0, 0x1
    .4byte 0x40820078 # bne .L_8018B64C
    .4byte 0x800D840C # lwz r0, lbl_80539FCC@sda21(r0)
    cmpwi 0, 0x0
    .4byte 0x4180006C # blt .L_8018B64C
    lwz 0, 0x230(31)
    cmpwi 0, 0x1f
    .4byte 0x41820060 # beq .L_8018B64C
    cmpwi 0, 0x20
    .4byte 0x41820058 # beq .L_8018B64C
    cmpwi 0, 0x22
    .4byte 0x41820050 # beq .L_8018B64C
    addi 3, 1, 0x44
    addi 4, 31, 0xc
    bl fn_8018E8C0
    lfs 2, 0x10(31)
    mr 3, 31
    lfs 1, 0x14(31)
    .4byte 0xC002B128 # lfs f0, lbl_8053E0C8@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x10(31)
    stfs 0, 0x14(31)
    bl fn_80154510
    mr 4, 3
    mr 3, 31
    li 5, -0x1
    li 6, 0x6
    bl fn_801F2B7C
    addi 3, 31, 0xc
    addi 4, 1, 0x44
    bl fn_8018E8C0
L_8018B64C:
    lwz 0, 0x26c(31)
    li 28, 0x0
    cmpwi 0, 0x1
    .4byte 0x40820018 # bne .L_8018B670
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801545C0
    mr 28, 3
L_8018B670:
    lwz 0, 0x230(31)
    cmplwi 0, 0x22
    .4byte 0x418122B0 # bgt .L_8018D928
    lis 3, jumptable_804A1EA4@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804A1EA4@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lwz 0, 0x90(31)
    extrwi 3, 0, 5, 15
    bl fn_8018E930
    clrlwi. 0, 3, 24
    .4byte 0x41822284 # beq .L_8018D928
    lwz 0, 0x90(31)
    extrwi 3, 0, 5, 10
    bl fn_8018E930
    clrlwi. 0, 3, 24
    .4byte 0x41822270 # beq .L_8018D928
    lwz 0, 0x90(31)
    extrwi 3, 0, 5, 5
    bl fn_8018E930
    clrlwi. 0, 3, 24
    .4byte 0x4182225C # beq .L_8018D928
    lwz 0, 0x90(31)
    srwi 3, 0, 27
    bl fn_8018E930
    clrlwi. 0, 3, 24
    .4byte 0x41822248 # beq .L_8018D928
    addi 3, 1, 0x50
    addi 4, 1, 0x14
    bl fn_80154558
    addi 3, 1, 0x58
    addi 4, 1, 0x14
    bl fn_80154558
    addi 3, 1, 0x50
    bl fn_8017EB94
    clrlwi. 0, 3, 24
    .4byte 0x41822220 # beq .L_8018D928
    bl fn_8018A660
    cmpwi 3, 0x1
    .4byte 0x40822214 # bne .L_8018D928
    mr 3, 31
    li 4, 0x0
    bl fn_8018E30C
    bl fn_8022ADE4
    li 0, 0x0
    stw 0, 0x234(31)
    bl fn_8017ED08
    .4byte 0xC002B1A4 # lfs f0, lbl_8053E144@sda21(r0)
    lis 4, 0x4
    mr 3, 31
    li 5, 0x0
    stfs 0, 0x284(31)
    addi 4, 4, 0x1d
    bl fn_801F0E34
    li 0, 0x1
    stw 0, 0x230(31)
    .4byte 0x480021D0 # b .L_8018D928
    lfs 0, 0x280(31)
    stfs 0, 0x288(31)
    lwz 0, 0x330(31)
    cmplwi 0, 0x0
    .4byte 0x40820088 # bne .L_8018B7F4
    addi 3, 1, 0x44
    addi 4, 31, 0xc
    bl fn_8018E8C0
    lfs 2, 0x44(1)
    .4byte 0xC002B13C # lfs f0, lbl_8053E0DC@sda21(r0)
    .4byte 0xC022B154 # lfs f1, lbl_8053E0F4@sda21(r0)
    fsubs 0, 2, 0
    stfs 0, 0x44(1)
    lfs 0, 0x28c(31)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x4060(1)
    lwz 3, 0x4064(1)
    bl fn_801544FC
    .4byte 0xC062B150 # lfs f3, lbl_8053E0F0@sda21(r0)
    addi 4, 1, 0x44
    lfs 0, 0x44(1)
    li 5, 0x56
    lfs 2, 0x48(1)
    li 6, 0x1
    fmadds 3, 3, 1, 0
    .4byte 0xC002B184 # lfs f0, lbl_8053E124@sda21(r0)
    .4byte 0xC022B130 # lfs f1, lbl_8053E0D0@sda21(r0)
    li 7, 0x2
    fadds 0, 2, 0
    li 8, 0x0
    stfs 3, 0x44(1)
    li 9, 0x0
    li 10, 0x1
    stfs 0, 0x48(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    stw 3, 0x330(31)
L_8018B7F4:
    lfs 1, 0x280(31)
    .4byte 0xC002B1A8 # lfs f0, lbl_8053E148@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x41802128 # blt .L_8018D928
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x24
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0xC002B1A4 # lfs f0, lbl_8053E144@sda21(r0)
    li 0, 0x2
    stfs 0, 0x280(31)
    stfs 0, 0x288(31)
    stw 0, 0x230(31)
    lfs 1, 0x2a4(31)
    addi 3, 31, 0x10
    .4byte 0xC002B1AC # lfs f0, lbl_8053E14C@sda21(r0)
    .4byte 0xC042B170 # lfs f2, lbl_8053E110@sda21(r0)
    fsubs 30, 1, 0
    .4byte 0xC062B130 # lfs f3, lbl_8053E0D0@sda21(r0)
    fmr 1, 30
    bl fn_801F71A4
    lfs 0, 0x10(31)
    fsubs 1, 0, 30
    bl fn_8015436C
    .4byte 0xC002B130 # lfs f0, lbl_8053E0D0@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_8018B870
    li 0, 0x28
    stw 0, 0x238(31)
    .4byte 0x480020BC # b .L_8018D928
L_8018B870:
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x408220B0 # bne .L_8018D928
    mr 3, 31
    li 4, 0xa
    bl fn_8018E30C
    lbz 0, 0x27a(31)
    cmplwi 0, 0x0
    .4byte 0x41822098 # beq .L_8018D928
    mr 3, 31
    li 4, 0x5
    bl fn_8018E30C
    li 3, 0x600
    li 0, 0x3
    stw 3, 0x274(31)
    stw 0, 0x230(31)
    lbz 0, 0x27a(31)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8018B8C8
    li 0, 0x46
    stw 0, 0x238(31)
    .4byte 0x48002064 # b .L_8018D928
L_8018B8C8:
    lwz 0, 0x238(31)
    cmpwi 0, 0x1
    .4byte 0x4082008C # bne .L_8018B95C
    lwz 0, 0x90(31)
    li 4, 0x0
    li 5, 0xff
    extrwi 3, 0, 5, 15
    bl fn_8018E8DC
    lwz 0, 0x90(31)
    li 4, 0x0
    li 5, 0xff
    extrwi 3, 0, 5, 10
    bl fn_8018E8DC
    lwz 0, 0x90(31)
    li 4, 0x0
    li 5, 0xff
    extrwi 3, 0, 5, 5
    bl fn_8018E8DC
    lwz 0, 0x90(31)
    li 4, 0x0
    li 5, 0xff
    srwi 3, 0, 27
    bl fn_8018E8DC
    lwz 3, 0x328(31)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8018B93C
    bl fn_8017EAB4
    li 0, 0x0
    stw 0, 0x328(31)
L_8018B93C:
    lwz 3, 0x32c(31)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8018B954
    bl fn_8017EAB4
    li 0, 0x0
    stw 0, 0x32c(31)
L_8018B954:
    .4byte 0xC002B1A0 # lfs f0, lbl_8053E140@sda21(r0)
    stfs 0, 0x284(31)
L_8018B95C:
    lfs 1, 0x280(31)
    .4byte 0xC002B1B0 # lfs f0, lbl_8053E150@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40801FC0 # bge .L_8018D928
    mr 3, 31
    bl fn_8015461C
    lis 6, 0x4c57
    mr 4, 3
    addi 3, 6, 0x5357
    addi 5, 1, 0x3060
    li 6, -0x1
    bl fn_801542AC
    mr 29, 31
    mr 30, 31
    addi 28, 1, 0x3060
    li 26, 0x0
L_8018B99C:
    lwz 3, 0x0(28)
    cmplwi 3, 0x0
    .4byte 0x41820044 # beq .L_8018B9E8
    mr 27, 3
    .4byte 0x4182003C # beq .L_8018B9E8
    bl fn_8018A5B0
    clrlwi. 0, 3, 24
    .4byte 0x41820030 # beq .L_8018B9E8
    mr 3, 27
    lwz 12, 0x0(27)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0x2e8(29)
    mr 3, 27
    bl fn_801544DC
    mr 4, 3
    addi 3, 30, 0x2f8
    bl fn_8018E8C0
L_8018B9E8:
    addi 26, 26, 0x1
    addi 29, 29, 0x4
    cmpwi 26, 0x4
    addi 30, 30, 0xc
    addi 28, 28, 0x4
    .4byte 0x4180FFA0 # blt .L_8018B99C
    bl fn_8018A6AC
    lis 4, 0x100
    li 5, 0x0
    addi 4, 4, 0x4
    li 6, 0x0
    bl fn_80458FF0
    bl fn_8018A63C
    .4byte 0xC002B1A0 # lfs f0, lbl_8053E140@sda21(r0)
    li 3, 0x12c
    li 0, 0x4
    stfs 0, 0x280(31)
    stw 3, 0x244(31)
    stw 0, 0x230(31)
    .4byte 0x48001EF4 # b .L_8018D928
    li 3, 0x0
    li 0, -0x1
    stb 3, 0x27b(31)
    stw 0, 0x27c(31)
    lwz 3, 0x328(31)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8018BA60
    bl fn_8017EAB4
    li 0, 0x0
    stw 0, 0x328(31)
L_8018BA60:
    lwz 3, 0x32c(31)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8018BA78
    bl fn_8017EAB4
    li 0, 0x0
    stw 0, 0x32c(31)
L_8018BA78:
    .4byte 0xC002B1A0 # lfs f0, lbl_8053E140@sda21(r0)
    li 0, 0x300
    mr 3, 31
    li 4, 0x0
    stfs 0, 0x284(31)
    stw 0, 0x274(31)
    bl fn_8018E30C
    bl fn_8018E89C
    xoris 3, 3, 0x8000
    lis 0, 0x4330
    stw 3, 0x4064(1)
    .4byte 0xC842B208 # lfd f2, lbl_8053E1A8@sda21(r0)
    stw 0, 0x4060(1)
    .4byte 0xC002B1B4 # lfs f0, lbl_8053E154@sda21(r0)
    lfd 1, 0x4060(1)
    fsubs 1, 1, 2
    fmadds 30, 0, 1, 0
    bl fn_80154744
    fmadds 0, 30, 1, 30
    li 3, 0x0
    li 0, 0x5
    fctiwz 0, 0
    stfd 0, 0x4068(1)
    lwz 4, 0x406c(1)
    stw 4, 0x23c(31)
    stw 3, 0x258(31)
    stw 3, 0x25c(31)
    stw 0, 0x230(31)
    .4byte 0x48001E40 # b .L_8018D928
    lwz 0, 0x330(31)
    cmplwi 0, 0x0
    .4byte 0x40820088 # bne .L_8018BB7C
    addi 3, 1, 0x44
    addi 4, 31, 0xc
    bl fn_8018E8C0
    lfs 2, 0x44(1)
    .4byte 0xC002B13C # lfs f0, lbl_8053E0DC@sda21(r0)
    .4byte 0xC022B154 # lfs f1, lbl_8053E0F4@sda21(r0)
    fsubs 0, 2, 0
    stfs 0, 0x44(1)
    lfs 0, 0x28c(31)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x4068(1)
    lwz 3, 0x406c(1)
    bl fn_801544FC
    .4byte 0xC062B150 # lfs f3, lbl_8053E0F0@sda21(r0)
    addi 4, 1, 0x44
    lfs 0, 0x44(1)
    li 5, 0x56
    lfs 2, 0x48(1)
    li 6, 0x1
    fmadds 3, 3, 1, 0
    .4byte 0xC002B184 # lfs f0, lbl_8053E124@sda21(r0)
    .4byte 0xC022B130 # lfs f1, lbl_8053E0D0@sda21(r0)
    li 7, 0x2
    fadds 0, 2, 0
    li 8, 0x0
    stfs 3, 0x44(1)
    li 9, 0x0
    li 10, 0x1
    stfs 0, 0x48(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    stw 3, 0x330(31)
L_8018BB7C:
    .4byte 0xC022B158 # lfs f1, lbl_8053E0F8@sda21(r0)
    lfs 0, 0x284(31)
    fcmpu cr0, 1, 0
    .4byte 0x41820100 # beq .L_8018BC88
    lwz 0, 0x244(31)
    cmpwi 0, 0x0
    .4byte 0x408200F4 # bne .L_8018BC88
    li 26, 0x0
L_8018BB9C:
    mr 3, 26
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x418200D4 # beq .L_8018BC7C
    mr 3, 26
    bl fn_8023DE58
    mr 28, 3
    mr 3, 31
    bl fn_8015461C
    cmpw 3, 28
    .4byte 0x408200B8 # bne .L_8018BC7C
    mr 3, 26
    bl fn_8022F478
    clrlwi. 0, 3, 24
    .4byte 0x408200A8 # bne .L_8018BC7C
    mr 3, 26
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x40820098 # bne .L_8018BC7C
    mr 3, 26
    bl fn_8023E724
    lfs 1, 0x0(3)
    mr 3, 26
    lfs 0, 0x2d0(31)
    fsubs 30, 0, 1
    bl fn_8023E724
    lfs 1, 0x4(3)
    lfs 0, 0x2d4(31)
    fsubs 0, 0, 1
    fmuls 0, 0, 0
    fmadds 1, 30, 30, 0
    bl fn_80154378
    .4byte 0xC002B15C # lfs f0, lbl_8053E0FC@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800058 # bge .L_8018BC7C
    mr 3, 26
    bl fn_802308E0
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40821D70 # bne .L_8018D9A8
    li 0, 0x1
    lis 4, 0x4
    stb 0, 0x29c(31)
    mr 3, 31
    addi 4, 4, 0x24
    li 5, 0x0
    bl fn_801F0E34
    stw 26, 0x27c(31)
    mr 3, 26
    bl fn_8023E724
    mr 4, 3
    addi 3, 31, 0x2dc
    bl fn_8018E8C0
    li 0, 0xa
    stw 0, 0x230(31)
    .4byte 0x48001D30 # b .L_8018D9A8
L_8018BC7C:
    addi 26, 26, 0x1
    cmpwi 26, 0x4
    .4byte 0x4180FF18 # blt .L_8018BB9C
L_8018BC88:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_8018BCA0
    li 0, 0xc
    stw 0, 0x230(31)
    .4byte 0x48001C8C # b .L_8018D928
L_8018BCA0:
    mr 3, 31
    bl fn_8018DA6C
    cmpwi 3, 0x0
    .4byte 0x40821C7C # bne .L_8018D928
    lfs 3, 0x2a0(31)
    clrlwi 0, 29, 24
    lfs 2, 0xc(31)
    cmplwi 0, 0x1
    lfs 1, 0x2a4(31)
    lfs 0, 0x10(31)
    fsubs 30, 3, 2
    fsubs 31, 1, 0
    .4byte 0x40820054 # bne .L_8018BD24
    lwz 0, 0x238(31)
    cmpwi 0, 0x1e
    .4byte 0x4080000C # bge .L_8018BCE8
    li 0, 0x1e
    stw 0, 0x238(31)
L_8018BCE8:
    fmr 1, 30
    fmr 2, 31
    bl fn_8015465C
    bl fn_801544FC
    .4byte 0xC002B1B8 # lfs f0, lbl_8053E158@sda21(r0)
    fmr 2, 31
    fmuls 0, 0, 1
    fmr 1, 30
    stfs 0, 0x2ac(31)
    bl fn_8015465C
    bl fn_801544E4
    .4byte 0xC002B1B8 # lfs f0, lbl_8053E158@sda21(r0)
    fmuls 0, 0, 1
    stfs 0, 0x2b0(31)
    .4byte 0x48001C08 # b .L_8018D928
L_8018BD24:
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40821BFC # bne .L_8018D928
    bl fn_80154744
    .4byte 0xC002B1BC # lfs f0, lbl_8053E15C@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x41800020 # blt .L_8018BD5C
    lfs 0, 0x2ac(31)
    .4byte 0xC022B128 # lfs f1, lbl_8053E0C8@sda21(r0)
    fcmpu cr0, 0, 1
    .4byte 0x4082007C # bne .L_8018BDC8
    lfs 0, 0x2b0(31)
    fcmpu cr0, 0, 1
    .4byte 0x40820070 # bne .L_8018BDC8
L_8018BD5C:
    bl fn_80154744
    .4byte 0xC002B1C0 # lfs f0, lbl_8053E160@sda21(r0)
    fmuls 0, 0, 1
    fctiwz 0, 0
    stfd 0, 0x4068(1)
    lwz 26, 0x406c(1)
    bl fn_80154744
    .4byte 0xC002B1C4 # lfs f0, lbl_8053E164@sda21(r0)
    mr 3, 26
    fmadds 0, 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x4060(1)
    lwz 0, 0x4064(1)
    stw 0, 0x238(31)
    bl fn_801544FC
    .4byte 0xC002B1B8 # lfs f0, lbl_8053E158@sda21(r0)
    mr 3, 26
    fmuls 0, 0, 1
    stfs 0, 0x2ac(31)
    bl fn_801544E4
    .4byte 0xC042B1B8 # lfs f2, lbl_8053E158@sda21(r0)
    .4byte 0xC002B128 # lfs f0, lbl_8053E0C8@sda21(r0)
    fmuls 1, 2, 1
    stfs 1, 0x2b0(31)
    stfs 0, 0x2b8(31)
    stfs 0, 0x2bc(31)
    .4byte 0x48001B64 # b .L_8018D928
L_8018BDC8:
    bl fn_80154744
    .4byte 0xC042B178 # lfs f2, lbl_8053E118@sda21(r0)
    .4byte 0xC002B128 # lfs f0, lbl_8053E0C8@sda21(r0)
    fmadds 1, 2, 1, 2
    fctiwz 1, 1
    stfd 1, 0x4068(1)
    lwz 0, 0x406c(1)
    stw 0, 0x238(31)
    stfs 0, 0x2ac(31)
    stfs 0, 0x2b0(31)
    stfs 0, 0x2b8(31)
    stfs 0, 0x2bc(31)
    .4byte 0x48001B30 # b .L_8018D928
    li 0, 0x0
    mr 3, 31
    stb 0, 0x27b(31)
    li 4, 0xc
    bl fn_8018E30C
    .4byte 0xC002B128 # lfs f0, lbl_8053E0C8@sda21(r0)
    li 0, 0x0
    stfs 0, 0x2ac(31)
    stfs 0, 0x2b0(31)
    stfs 0, 0x3c(31)
    stfs 0, 0x40(31)
    lfs 3, 0x2a0(31)
    lfs 1, 0xc(31)
    lfs 2, 0x2a4(31)
    lfs 0, 0x10(31)
    fsubs 1, 3, 1
    fsubs 2, 2, 0
    stw 0, 0x258(31)
    bl fn_8015465C
    extsh 0, 3
    .4byte 0xC002B128 # lfs f0, lbl_8053E0C8@sda21(r0)
    stw 0, 0x25c(31)
    li 0, 0x7
    stfs 0, 0x2b8(31)
    stfs 0, 0x2bc(31)
    stw 0, 0x230(31)
    lwz 0, 0x90(31)
    extrwi 3, 0, 5, 15
    bl fn_8018E930
    clrlwi. 0, 3, 24
    .4byte 0x41820040 # beq .L_8018BEB4
    lwz 0, 0x90(31)
    extrwi 3, 0, 5, 10
    bl fn_8018E930
    clrlwi. 0, 3, 24
    .4byte 0x4182002C # beq .L_8018BEB4
    lwz 0, 0x90(31)
    extrwi 3, 0, 5, 5
    bl fn_8018E930
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_8018BEB4
    lwz 0, 0x90(31)
    srwi 3, 0, 27
    bl fn_8018E930
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_8018BEC0
L_8018BEB4:
    li 0, 0x4
    stw 0, 0x230(31)
    .4byte 0x48001A6C # b .L_8018D928
L_8018BEC0:
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x20
    li 5, 0x0
    bl fn_801F0E34
    addi 3, 1, 0x44
    addi 4, 31, 0xc
    bl fn_8018E8C0
    lfs 2, 0x10(31)
    lfs 0, 0x14(31)
    .4byte 0xC022B128 # lfs f1, lbl_8053E0C8@sda21(r0)
    fsubs 0, 2, 0
    stfs 0, 0x10(31)
    stfs 1, 0x14(31)
    lbz 0, 0x27a(31)
    cmplwi 0, 0x1
    .4byte 0x4082004C # bne .L_8018BF4C
    lfs 0, 0x2ac(31)
    fcmpu cr0, 0, 1
    .4byte 0x40820040 # bne .L_8018BF4C
    lfs 0, 0x2b0(31)
    fcmpu cr0, 0, 1
    .4byte 0x40820034 # bne .L_8018BF4C
    lwz 0, 0x25c(31)
    extsh 3, 0
    bl fn_801544FC
    .4byte 0xC002B1B8 # lfs f0, lbl_8053E158@sda21(r0)
    fmuls 0, 0, 1
    stfs 0, 0x2ac(31)
    lwz 0, 0x25c(31)
    extsh 3, 0
    bl fn_801544E4
    .4byte 0xC002B1B8 # lfs f0, lbl_8053E158@sda21(r0)
    fmuls 0, 0, 1
    stfs 0, 0x2b0(31)
L_8018BF4C:
    clrlwi 0, 29, 24
    cmplwi 0, 0x1
    .4byte 0x4082007C # bne .L_8018BFD0
    bl fn_80154744
    .4byte 0xC002B148 # lfs f0, lbl_8053E0E8@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800014 # bge .L_8018BF78
    lwz 3, 0x25c(31)
    addi 0, 3, 0x2000
    stw 0, 0x25c(31)
    .4byte 0x48000010 # b .L_8018BF84
L_8018BF78:
    lwz 3, 0x25c(31)
    subi 0, 3, 0x2000
    stw 0, 0x25c(31)
L_8018BF84:
    lwz 0, 0x25c(31)
    clrlwi 0, 0, 16
    stw 0, 0x25c(31)
    lwz 0, 0x25c(31)
    extsh 3, 0
    bl fn_801544FC
    .4byte 0xC002B1B8 # lfs f0, lbl_8053E158@sda21(r0)
    fmuls 0, 0, 1
    stfs 0, 0x2ac(31)
    lwz 0, 0x25c(31)
    extsh 3, 0
    bl fn_801544E4
    .4byte 0xC002B1B8 # lfs f0, lbl_8053E158@sda21(r0)
    fmuls 0, 0, 1
    stfs 0, 0x2b0(31)
    lfs 0, 0x2ac(31)
    stfs 0, 0x3c(31)
    lfs 0, 0x2b0(31)
    stfs 0, 0x40(31)
L_8018BFD0:
    .4byte 0xC022B1C8 # lfs f1, lbl_8053E168@sda21(r0)
    addi 3, 31, 0x60
    .4byte 0xC042B1CC # lfs f2, lbl_8053E16C@sda21(r0)
    .4byte 0xC062B1D0 # lfs f3, lbl_8053E170@sda21(r0)
    .4byte 0xC082B184 # lfs f4, lbl_8053E124@sda21(r0)
    bl fn_80154590
    mr 3, 31
    bl fn_801F2FAC
    clrlwi. 0, 3, 24
    .4byte 0x41820088 # beq .L_8018C07C
    li 26, 0x0
    .4byte 0xC3E2B128 # lfs f31, lbl_8053E0C8@sda21(r0)
L_8018C000:
    mr 3, 31
    mr 7, 26
    li 4, 0x0
    li 5, 0x0
    li 6, 0x1
    bl fn_801F285C
    stfs 31, 0x2ac(31)
    mr. 27, 3
    stfs 31, 0x2b0(31)
    stfs 31, 0x3c(31)
    stfs 31, 0x40(31)
    .4byte 0x41800044 # blt .L_8018C070
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_8018C04C
    mr 3, 27
    bl fn_8022F3DC
    stw 3, 0x254(31)
    .4byte 0x48000008 # b .L_8018C050
L_8018C04C:
    stw 27, 0x254(31)
L_8018C050:
    addi 3, 31, 0xc
    addi 4, 1, 0x44
    bl fn_8018E8C0
    .4byte 0xC002B158 # lfs f0, lbl_8053E0F8@sda21(r0)
    li 0, 0x8
    stfs 0, 0x280(31)
    stw 0, 0x230(31)
    .4byte 0x48000010 # b .L_8018C07C
L_8018C070:
    addi 26, 26, 0x1
    cmpwi 26, 0x4
    .4byte 0x4180FF88 # blt .L_8018C000
L_8018C07C:
    .4byte 0xC022B1D4 # lfs f1, lbl_8053E174@sda21(r0)
    addi 3, 31, 0x60
    .4byte 0xC042B1D8 # lfs f2, lbl_8053E178@sda21(r0)
    .4byte 0xC062B1DC # lfs f3, lbl_8053E17C@sda21(r0)
    .4byte 0xC082B17C # lfs f4, lbl_8053E11C@sda21(r0)
    bl fn_80154590
    mr 3, 31
    bl fn_80154510
    mr 4, 3
    mr 3, 31
    li 5, -0x1
    li 6, 0x6
    bl fn_801F2B7C
    addi 3, 31, 0xc
    addi 4, 1, 0x44
    bl fn_8018E8C0
    .4byte 0x800D8410 # lwz r0, lbl_80539FD0@sda21(r0)
    cmpwi 0, 0x9
    .4byte 0x40801864 # bge .L_8018D928
    lwz 3, 0x258(31)
    addi 0, 3, 0x1
    stw 0, 0x258(31)
    lwz 0, 0x258(31)
    cmpwi 0, 0x258
    .4byte 0x4081184C # ble .L_8018D928
    li 3, 0x1
    li 0, 0xc
    stb 3, 0x27b(31)
    stw 0, 0x230(31)
    .4byte 0x48001838 # b .L_8018D928
    lwz 3, 0x328(31)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8018C10C
    bl fn_8017EAB4
    li 0, 0x0
    stw 0, 0x328(31)
L_8018C10C:
    lwz 3, 0x32c(31)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8018C124
    bl fn_8017EAB4
    li 0, 0x0
    stw 0, 0x32c(31)
L_8018C124:
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x14
    li 5, 0x0
    bl fn_801F0E34
    mr 3, 31
    li 4, 0x9
    bl fn_8018E30C
    .4byte 0xC002B128 # lfs f0, lbl_8053E0C8@sda21(r0)
    li 3, 0x600
    li 0, 0x9
    stfs 0, 0x2ac(31)
    stfs 0, 0x2b0(31)
    stw 3, 0x274(31)
    stw 0, 0x230(31)
    lbz 0, 0x27a(31)
    cmplwi 0, 0x0
    .4byte 0x418217C0 # beq .L_8018D928
    lwz 3, 0x254(31)
    cmpwi 3, 0x0
    .4byte 0x41800038 # blt .L_8018C1AC
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x4182002C # beq .L_8018C1AC
    lwz 3, 0x254(31)
    bl fn_8023DE58
    mr 28, 3
    mr 3, 31
    bl fn_8015461C
    cmpw 3, 28
    .4byte 0x40820010 # bne .L_8018C1AC
    li 0, 0x12
    stw 0, 0x230(31)
    .4byte 0x48001780 # b .L_8018D928
L_8018C1AC:
    li 0, 0xa
    stw 0, 0x230(31)
    .4byte 0xC002B128 # lfs f0, lbl_8053E0C8@sda21(r0)
    mr 3, 31
    li 4, 0x3
    stfs 0, 0x2ac(31)
    stfs 0, 0x2b0(31)
    bl fn_8018E30C
    li 0, 0x0
    stw 0, 0x258(31)
    bl fn_80154744
    .4byte 0xC002B1E0 # lfs f0, lbl_8053E180@sda21(r0)
    fmuls 0, 0, 1
    fctiwz 0, 0
    stfd 0, 0x4068(1)
    lwz 0, 0x406c(1)
    stw 0, 0x25c(31)
    bl fn_80154744
    .4byte 0xC002B148 # lfs f0, lbl_8053E0E8@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_8018C20C
    li 0, 0x2000
    stw 0, 0x260(31)
    .4byte 0x48000010 # b .L_8018C218
L_8018C20C:
    lis 3, 0x1
    subi 0, 3, 0x2000
    stw 0, 0x260(31)
L_8018C218:
    li 3, 0x600
    li 0, 0xb
    stw 3, 0x274(31)
    stw 0, 0x230(31)
    lwz 3, 0x27c(31)
    cmpwi 3, 0x0
    .4byte 0x4180004C # blt .L_8018C27C
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x41820038 # beq .L_8018C274
    lwz 3, 0x27c(31)
    bl fn_8023DE58
    mr 28, 3
    mr 3, 31
    bl fn_8015461C
    cmpw 3, 28
    .4byte 0x4082001C # bne .L_8018C274
    lwz 3, 0x27c(31)
    bl fn_8023E724
    mr 4, 3
    addi 3, 31, 0x2dc
    bl fn_8018E8C0
    .4byte 0x4800000C # b .L_8018C27C
L_8018C274:
    li 0, -0x1
    stw 0, 0x27c(31)
L_8018C27C:
    mr 3, 31
    bl fn_8018DA6C
    cmpwi 3, 0x0
    .4byte 0x408216A0 # bne .L_8018D928
    mr 3, 31
    li 4, 0x0
    bl fn_8018DC70
    lbz 0, 0x27a(31)
    cmplwi 0, 0x1
    .4byte 0x40821688 # bne .L_8018D928
    lwz 3, 0x27c(31)
    cmpwi 3, 0x0
    .4byte 0x4180001C # blt .L_8018C2C8
    li 4, 0x0
    bl fn_8023061C
    li 3, -0x1
    li 0, 0x0
    stw 3, 0x27c(31)
    stb 0, 0x29c(31)
L_8018C2C8:
    lwz 3, 0x258(31)
    .4byte 0xC022B128 # lfs f1, lbl_8053E0C8@sda21(r0)
    addi 0, 3, 0x1
    stw 0, 0x258(31)
    lfs 0, 0x2ac(31)
    fcmpu cr0, 0, 1
    .4byte 0x40820040 # bne .L_8018C320
    lfs 0, 0x2b0(31)
    fcmpu cr0, 0, 1
    .4byte 0x40820034 # bne .L_8018C320
    lwz 0, 0x25c(31)
    extsh 3, 0
    bl fn_801544FC
    .4byte 0xC002B1E4 # lfs f0, lbl_8053E184@sda21(r0)
    fmuls 0, 0, 1
    stfs 0, 0x2ac(31)
    lwz 0, 0x25c(31)
    extsh 3, 0
    bl fn_801544E4
    .4byte 0xC002B1E4 # lfs f0, lbl_8053E184@sda21(r0)
    fmuls 0, 0, 1
    stfs 0, 0x2b0(31)
L_8018C320:
    clrlwi 0, 29, 24
    cmplwi 0, 0x1
    .4byte 0x40820060 # bne .L_8018C388
    lwz 3, 0x25c(31)
    lwz 0, 0x260(31)
    add 0, 3, 0
    stw 0, 0x25c(31)
    lwz 0, 0x25c(31)
    clrlwi 0, 0, 16
    stw 0, 0x25c(31)
    lwz 0, 0x25c(31)
    extsh 3, 0
    bl fn_801544FC
    .4byte 0xC002B1E4 # lfs f0, lbl_8053E184@sda21(r0)
    fmuls 0, 0, 1
    stfs 0, 0x2ac(31)
    lwz 0, 0x25c(31)
    extsh 3, 0
    bl fn_801544E4
    .4byte 0xC002B1E4 # lfs f0, lbl_8053E184@sda21(r0)
    fmuls 0, 0, 1
    stfs 0, 0x2b0(31)
    lfs 0, 0x2ac(31)
    stfs 0, 0x3c(31)
    lfs 0, 0x2b0(31)
    stfs 0, 0x40(31)
L_8018C388:
    mr 28, 31
    mr 29, 31
    li 26, 0x0
L_8018C394:
    lwz 0, 0x258(31)
    clrlwi. 0, 0, 27
    .4byte 0x408200BC # bne .L_8018C458
    lwz 3, 0x2e8(28)
    bl fn_8018E930
    clrlwi. 0, 3, 24
    .4byte 0x418200AC # beq .L_8018C458
    lfs 1, 0x2f8(29)
    lfs 0, 0xc(31)
    fsubs 1, 1, 0
    bl fn_8015436C
    .4byte 0xC002B14C # lfs f0, lbl_8053E0EC@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800090 # bge .L_8018C458
    lfs 1, 0x10(31)
    .4byte 0xC002B12C # lfs f0, lbl_8053E0CC@sda21(r0)
    lfs 2, 0x2fc(29)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x40800078 # bge .L_8018C458
    fsubs 1, 2, 1
    bl fn_8015436C
    .4byte 0xC002B160 # lfs f0, lbl_8053E100@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800064 # bge .L_8018C458
    lwz 3, 0x2e8(28)
    li 4, 0x0
    li 5, 0xff
    bl fn_8018E8DC
    mr 3, 31
    bl fn_8015461C
    lis 6, 0x504f
    mr 4, 3
    addi 3, 6, 0x4f48
    addi 5, 1, 0x2060
    li 6, -0x1
    bl fn_801542AC
    cmpwi 3, 0x8
    .4byte 0x4080002C # bge .L_8018C458
    mr 3, 31
    bl fn_8015461C
    lis 6, 0x504f
    mr 4, 3
    addi 3, 6, 0x4f48
    addi 5, 29, 0x2f8
    li 6, 0x9
    li 7, -0x1
    li 8, -0x1
    bl fn_80154310
L_8018C458:
    addi 26, 26, 0x1
    addi 29, 29, 0xc
    cmpwi 26, 0x4
    addi 28, 28, 0x4
    .4byte 0x4180FF2C # blt .L_8018C394
    lwz 0, 0x258(31)
    cmpwi 0, 0x258
    .4byte 0x408114B4 # ble .L_8018D928
    li 4, 0x0
    li 3, 0x12c
    stw 4, 0x258(31)
    li 0, 0x4
    stw 4, 0x25c(31)
    stw 3, 0x244(31)
    stw 0, 0x230(31)
    .4byte 0x48001494 # b .L_8018D928
    .4byte 0xC002B128 # lfs f0, lbl_8053E0C8@sda21(r0)
    lis 4, 0x4
    mr 3, 31
    li 5, 0x0
    stfs 0, 0x2ac(31)
    addi 4, 4, 0x24
    stfs 0, 0x2b0(31)
    bl fn_801F0E34
    li 3, 0x600
    li 0, 0xd
    stw 3, 0x274(31)
    stw 0, 0x230(31)
    mr 3, 31
    bl fn_8018DA6C
    cmpwi 3, 0x0
    .4byte 0x40821454 # bne .L_8018D928
    lfs 1, 0x2a4(31)
    addi 3, 31, 0x10
    .4byte 0xC002B1AC # lfs f0, lbl_8053E14C@sda21(r0)
    .4byte 0xC042B170 # lfs f2, lbl_8053E110@sda21(r0)
    fsubs 31, 1, 0
    .4byte 0xC062B130 # lfs f3, lbl_8053E0D0@sda21(r0)
    fmr 1, 31
    bl fn_801F71A4
    lfs 1, 0x2a0(31)
    addi 3, 31, 0xc
    .4byte 0xC042B170 # lfs f2, lbl_8053E110@sda21(r0)
    .4byte 0xC062B130 # lfs f3, lbl_8053E0D0@sda21(r0)
    bl fn_801F71A4
    lfs 0, 0x10(31)
    fsubs 1, 0, 31
    bl fn_8015436C
    .4byte 0xC002B130 # lfs f0, lbl_8053E0D0@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x41810020 # bgt .L_8018C540
    lfs 1, 0xc(31)
    lfs 0, 0x2a0(31)
    fsubs 1, 1, 0
    bl fn_8015436C
    .4byte 0xC002B130 # lfs f0, lbl_8053E0D0@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_8018C54C
L_8018C540:
    li 0, 0x28
    stw 0, 0x238(31)
    .4byte 0x480013E0 # b .L_8018D928
L_8018C54C:
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x408213D4 # bne .L_8018D928
    mr 3, 31
    li 4, 0xa
    bl fn_8018E30C
    lbz 0, 0x27a(31)
    cmplwi 0, 0x0
    .4byte 0x418213BC # beq .L_8018D928
    mr 3, 31
    li 4, 0x5
    bl fn_8018E30C
    li 3, 0x0
    li 0, 0xe
    stw 3, 0x258(31)
    stw 0, 0x230(31)
    mr 3, 31
    bl fn_8018DA6C
    cmpwi 3, 0x0
    .4byte 0x40821390 # bne .L_8018D928
    lbz 0, 0x27a(31)
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_8018C5C0
    mr 3, 31
    li 4, 0x1
    bl fn_8018DC70
    lwz 3, 0x258(31)
    addi 0, 3, 0x1
    stw 0, 0x258(31)
L_8018C5C0:
    lwz 0, 0x258(31)
    cmpwi 0, 0x46
    .4byte 0x40811360 # ble .L_8018D928
    mr 28, 31
    mr 29, 31
    li 26, 0x0
L_8018C5D8:
    lwz 3, 0x2e8(28)
    bl fn_8018E930
    clrlwi. 0, 3, 24
    .4byte 0x41820064 # beq .L_8018C648
    mr 3, 31
    bl fn_8015461C
    lis 6, 0x504f
    mr 4, 3
    addi 3, 6, 0x4f48
    addi 5, 1, 0x1060
    li 6, -0x1
    bl fn_801542AC
    cmpwi 3, 0x8
    .4byte 0x4080002C # bge .L_8018C638
    mr 3, 31
    bl fn_8015461C
    lis 6, 0x504f
    mr 4, 3
    addi 3, 6, 0x4f48
    addi 5, 29, 0x2f8
    li 6, 0x9
    li 7, -0x1
    li 8, -0x1
    bl fn_80154310
L_8018C638:
    lwz 3, 0x2e8(28)
    li 4, 0x0
    li 5, 0xff
    bl fn_8018E8DC
L_8018C648:
    addi 26, 26, 0x1
    addi 29, 29, 0xc
    cmpwi 26, 0x4
    addi 28, 28, 0x4
    .4byte 0x4180FF80 # blt .L_8018C5D8
    li 0, 0x4
    stw 0, 0x230(31)
    .4byte 0x480012C4 # b .L_8018D928
    .4byte 0xC022B128 # lfs f1, lbl_8053E0C8@sda21(r0)
    li 0, 0x600
    .4byte 0xC002B1A0 # lfs f0, lbl_8053E140@sda21(r0)
    stfs 1, 0x2ac(31)
    stfs 1, 0x2b0(31)
    stw 0, 0x274(31)
    stfs 0, 0x284(31)
    lwz 3, 0x254(31)
    cmpwi 3, 0x0
    .4byte 0x41800014 # blt .L_8018C6A0
    bl fn_8022D75C
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4182128C # beq .L_8018D928
L_8018C6A0:
    li 3, -0x1
    li 0, 0x600
    stw 3, 0x254(31)
    mr 3, 31
    li 4, 0xa
    stw 0, 0x274(31)
    bl fn_8018E30C
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x24
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x10
    stw 0, 0x230(31)
    lfs 1, 0x2a4(31)
    addi 3, 31, 0x10
    .4byte 0xC002B1AC # lfs f0, lbl_8053E14C@sda21(r0)
    .4byte 0xC042B148 # lfs f2, lbl_8053E0E8@sda21(r0)
    fsubs 31, 1, 0
    .4byte 0xC062B1E8 # lfs f3, lbl_8053E188@sda21(r0)
    fmr 1, 31
    bl fn_801F71A4
    lfs 1, 0x2a0(31)
    addi 3, 31, 0xc
    .4byte 0xC042B148 # lfs f2, lbl_8053E0E8@sda21(r0)
    .4byte 0xC062B1E8 # lfs f3, lbl_8053E188@sda21(r0)
    bl fn_801F71A4
    lfs 0, 0x10(31)
    fsubs 1, 0, 31
    bl fn_8015436C
    .4byte 0xC002B130 # lfs f0, lbl_8053E0D0@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x41811208 # bgt .L_8018D928
    lfs 1, 0xc(31)
    lfs 0, 0x2a0(31)
    fsubs 1, 1, 0
    bl fn_8015436C
    .4byte 0xC002B130 # lfs f0, lbl_8053E0D0@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x418111EC # bgt .L_8018D928
    mr 3, 31
    li 4, 0x5
    bl fn_8018E30C
    li 3, 0x0
    li 0, 0x11
    stw 3, 0x258(31)
    stw 0, 0x230(31)
    .4byte 0x480011CC # b .L_8018D928
    .4byte 0xC002B128 # lfs f0, lbl_8053E0C8@sda21(r0)
    stfs 0, 0x2ac(31)
    stfs 0, 0x2b0(31)
    lwz 3, 0x254(31)
    cmpwi 3, 0x0
    .4byte 0x41800038 # blt .L_8018C7AC
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x4182002C # beq .L_8018C7AC
    lwz 3, 0x254(31)
    bl fn_8023DE58
    mr 28, 3
    mr 3, 31
    bl fn_8015461C
    cmpw 3, 28
    .4byte 0x40820010 # bne .L_8018C7AC
    li 0, 0x13
    stw 0, 0x230(31)
    .4byte 0x48001180 # b .L_8018D928
L_8018C7AC:
    li 0, 0xa
    stw 0, 0x230(31)
    .4byte 0x48001174 # b .L_8018D928
    lwz 3, 0x254(31)
    cmpwi 3, 0x0
    .4byte 0x41800114 # blt .L_8018C8D4
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x41820108 # beq .L_8018C8D4
    lwz 3, 0x254(31)
    bl fn_8023DE58
    mr 28, 3
    mr 3, 31
    bl fn_8015461C
    cmpw 3, 28
    .4byte 0x408200EC # bne .L_8018C8D4
    lwz 3, 0x254(31)
    bl fn_8023E724
    lfs 1, 0x0(3)
    lfs 0, 0xc(31)
    lwz 3, 0x254(31)
    fsubs 30, 1, 0
    bl fn_8023E724
    lfs 2, 0x4(3)
    .4byte 0xC022B180 # lfs f1, lbl_8053E120@sda21(r0)
    lfs 0, 0x10(31)
    fsubs 1, 2, 1
    fsubs 31, 1, 0
    fmuls 0, 31, 31
    fmadds 1, 30, 30, 0
    bl fn_80154378
    .4byte 0xC002B12C # lfs f0, lbl_8053E0CC@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810040 # ble .L_8018C870
    fmr 1, 30
    fmr 2, 31
    bl fn_8015465C
    bl fn_801544FC
    .4byte 0xC002B1EC # lfs f0, lbl_8053E18C@sda21(r0)
    fmr 2, 31
    fmuls 0, 0, 1
    fmr 1, 30
    stfs 0, 0x2ac(31)
    bl fn_8015465C
    bl fn_801544E4
    .4byte 0xC002B1EC # lfs f0, lbl_8053E18C@sda21(r0)
    fmuls 0, 0, 1
    stfs 0, 0x2b0(31)
    .4byte 0x480010BC # b .L_8018D928
L_8018C870:
    .4byte 0xC002B128 # lfs f0, lbl_8053E0C8@sda21(r0)
    li 4, 0x5
    li 5, 0x0
    stfs 0, 0x2ac(31)
    stfs 0, 0x2b0(31)
    lwz 3, 0x254(31)
    bl fn_8022CA6C
    lwz 3, 0x254(31)
    bl fn_802308E0
    clrlwi. 0, 3, 24
    .4byte 0x41821090 # beq .L_8018D928
    mr 3, 31
    li 4, 0x1
    bl fn_8018E30C
    li 26, 0x0
L_8018C8AC:
    mr 3, 26
    bl fn_80230C6C
    addi 26, 26, 0x1
    cmpwi 26, 0x4
    .4byte 0x4180FFF0 # blt .L_8018C8AC
    li 3, 0x1
    li 0, 0x14
    stb 3, 0x29c(31)
    stw 0, 0x230(31)
    .4byte 0x48001058 # b .L_8018D928
L_8018C8D4:
    li 0, 0xa
    stw 0, 0x230(31)
    .4byte 0x4800104C # b .L_8018D928
    lwz 3, 0x254(31)
    cmpwi 3, 0x0
    .4byte 0x41800040 # blt .L_8018C928
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x41820034 # beq .L_8018C928
    lwz 3, 0x254(31)
    bl fn_8023DE58
    mr 28, 3
    mr 3, 31
    bl fn_8015461C
    cmpw 3, 28
    .4byte 0x40820018 # bne .L_8018C928
    lwz 3, 0x254(31)
    bl fn_8023E724
    mr 4, 3
    addi 3, 31, 0x2c4
    bl fn_8018E8C0
L_8018C928:
    .4byte 0xC022B128 # lfs f1, lbl_8053E0C8@sda21(r0)
    li 7, 0x1
    li 6, 0x0
    li 5, 0x190
    stfs 1, 0x2ac(31)
    li 4, 0x4
    .4byte 0xC002B130 # lfs f0, lbl_8053E0D0@sda21(r0)
    li 3, 0x600
    stfs 1, 0x2b0(31)
    li 0, 0x15
    stw 7, 0x258(31)
    stw 6, 0x25c(31)
    stw 5, 0x238(31)
    stw 4, 0x23c(31)
    stfs 0, 0x290(31)
    stw 3, 0x274(31)
    stw 0, 0x230(31)
    lwz 0, 0x25c(31)
    cmpwi 0, 0x0
    .4byte 0x408202EC # bne .L_8018CC60
    lbz 0, 0x27a(31)
    cmplwi 0, 0x0
    .4byte 0x40820020 # bne .L_8018C9A0
    lwz 3, 0x254(31)
    bl fn_8023E724
    mr 4, 3
    lwz 3, 0x254(31)
    li 5, 0xff
    bl fn_802303FC
    .4byte 0x48000F8C # b .L_8018D928
L_8018C9A0:
    lwz 0, 0x254(31)
    cmpwi 0, 0x0
    .4byte 0x418002A8 # blt .L_8018CC50
    .4byte 0x800D8408 # lwz r0, lbl_80539FC8@sda21(r0)
    cmpwi 0, -0x1
    .4byte 0x4081029C # ble .L_8018CC50
    lis 3, lbl_804C18B8@ha
    .4byte 0xC022B128 # lfs f1, lbl_8053E0C8@sda21(r0)
    lfsu 0, lbl_804C18B8@l(3)
    fcmpo cr0, 0, 1
    .4byte 0x41810010 # bgt .L_8018C9D8
    lfs 0, 0x4(3)
    fcmpo cr0, 0, 1
    .4byte 0x4081027C # ble .L_8018CC50
L_8018C9D8:
    addi 3, 1, 0x44
    addi 4, 31, 0xc
    bl fn_8018E8C0
    lfs 1, 0x44(1)
    addi 3, 31, 0x2c4
    .4byte 0xC002B1F0 # lfs f0, lbl_8053E190@sda21(r0)
    lfs 3, 0x48(1)
    fsubs 1, 1, 0
    .4byte 0xC002B17C # lfs f0, lbl_8053E11C@sda21(r0)
    .4byte 0xC042B194 # lfs f2, lbl_8053E134@sda21(r0)
    fsubs 0, 3, 0
    stfs 1, 0x44(1)
    stfs 0, 0x48(1)
    lfs 3, 0x290(31)
    bl fn_801F71A4
    lfs 1, 0x48(1)
    addi 3, 31, 0x2c8
    .4byte 0xC042B194 # lfs f2, lbl_8053E134@sda21(r0)
    lfs 3, 0x290(31)
    bl fn_801F71A4
    lfs 1, 0x4c(1)
    addi 3, 31, 0x2cc
    .4byte 0xC042B194 # lfs f2, lbl_8053E134@sda21(r0)
    lfs 3, 0x290(31)
    bl fn_801F71A4
    lfs 1, 0x2c8(31)
    lfs 0, 0x48(1)
    lfs 3, 0x2c4(31)
    fsubs 4, 1, 0
    lfs 0, 0x44(1)
    lfs 2, 0x2cc(31)
    fsubs 3, 3, 0
    lfs 1, 0x4c(1)
    fmuls 0, 4, 4
    fsubs 1, 2, 1
    fmadds 0, 3, 3, 0
    fmadds 1, 1, 1, 0
    bl fn_80154378
    .4byte 0xC002B14C # lfs f0, lbl_8053E0EC@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4080000C # bge .L_8018CA84
    .4byte 0xC002B1EC # lfs f0, lbl_8053E18C@sda21(r0)
    stfs 0, 0x290(31)
L_8018CA84:
    lwz 5, 0x258(31)
    addi 4, 31, 0x2c4
    lwz 3, 0x254(31)
    li 6, 0xff
    addi 5, 5, 0xaf
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    addi 29, 1, 0x3c
    addi 30, 1, 0x40
    li 26, 0x0
L_8018CAB4:
    mr 3, 26
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x418200D0 # beq .L_8018CB90
    mr 3, 26
    bl fn_8023DE58
    mr 28, 3
    mr 3, 31
    bl fn_8015461C
    cmpw 3, 28
    .4byte 0x408200B4 # bne .L_8018CB90
    mr 3, 26
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x418200A4 # beq .L_8018CB90
    mr 3, 26
    bl fn_8022F3DC
    lwz 0, 0x254(31)
    cmpw 0, 3
    .4byte 0x40820090 # bne .L_8018CB90
    mr 3, 26
    bl fn_8023E724
    mr 4, 3
    addi 3, 1, 0x38
    bl fn_8018E8C0
    .4byte 0xC042B190 # lfs f2, lbl_8053E130@sda21(r0)
    addi 3, 1, 0x38
    lfs 0, 0x290(31)
    lfs 1, 0x44(1)
    fmuls 3, 2, 0
    .4byte 0xC042B194 # lfs f2, lbl_8053E134@sda21(r0)
    bl fn_801F71A4
    .4byte 0xC042B190 # lfs f2, lbl_8053E130@sda21(r0)
    mr 3, 29
    lfs 0, 0x290(31)
    lfs 1, 0x48(1)
    fmuls 3, 2, 0
    .4byte 0xC042B194 # lfs f2, lbl_8053E134@sda21(r0)
    bl fn_801F71A4
    .4byte 0xC042B190 # lfs f2, lbl_8053E130@sda21(r0)
    mr 3, 30
    lfs 0, 0x290(31)
    lfs 1, 0x4c(1)
    fmuls 3, 2, 0
    .4byte 0xC042B194 # lfs f2, lbl_8053E134@sda21(r0)
    bl fn_801F71A4
    lwz 5, 0x258(31)
    mr 3, 26
    addi 4, 1, 0x38
    li 6, 0xff
    addi 5, 5, 0xaf
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
L_8018CB90:
    addi 26, 26, 0x1
    cmpwi 26, 0x4
    .4byte 0x4180FF1C # blt .L_8018CAB4
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x4082002C # bne .L_8018CBD0
    lwz 3, 0x258(31)
    addi 0, 3, 0x1
    stw 0, 0x258(31)
    lwz 0, 0x258(31)
    cmpwi 0, 0x3
    .4byte 0x4081000C # ble .L_8018CBC8
    li 0, 0x3
    stw 0, 0x258(31)
L_8018CBC8:
    li 0, 0x4
    stw 0, 0x23c(31)
L_8018CBD0:
    lwz 3, 0x254(31)
    bl fn_8023E724
    lfs 1, 0x0(3)
    lfs 0, 0x44(1)
    lwz 3, 0x254(31)
    fsubs 31, 1, 0
    bl fn_8023E724
    lfs 1, 0x4(3)
    lfs 0, 0x48(1)
    fsubs 0, 1, 0
    fmuls 0, 0, 0
    fmadds 1, 31, 31, 0
    bl fn_80154378
    .4byte 0xC002B144 # lfs f0, lbl_8053E0E4@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x41810D1C # bgt .L_8018D928
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x5c
    li 5, 0x0
    bl fn_801F0E34
    mr 3, 31
    li 4, 0x7
    bl fn_8018E30C
    li 0, 0x1
    li 4, 0x0
    stw 0, 0x25c(31)
    lwz 3, 0x254(31)
    bl fn_8023061C
    li 0, 0x0
    stb 0, 0x29c(31)
    .4byte 0x48000014 # b .L_8018CC60
L_8018CC50:
    li 3, -0x1
    li 0, 0x4
    stw 3, 0x254(31)
    stw 0, 0x230(31)
L_8018CC60:
    lwz 0, 0x25c(31)
    cmpwi 0, 0x0
    .4byte 0x41820CC0 # beq .L_8018D928
    lis 4, lbl_804C18B8@ha
    addi 3, 1, 0x44
    addi 4, 4, lbl_804C18B8@l
    bl fn_8018E8C0
    lfs 1, 0x44(1)
    li 4, 0x5
    .4byte 0xC002B180 # lfs f0, lbl_8053E120@sda21(r0)
    li 5, 0x0
    fsubs 0, 1, 0
    stfs 0, 0x44(1)
    lwz 3, 0x254(31)
    bl fn_8022CA6C
    lwz 3, 0x254(31)
    bl fn_8023E724
    mr 5, 3
    lwz 3, 0x254(31)
    .4byte 0x808D8408 # lwz r4, lbl_80539FC8@sda21(r0)
    addi 6, 1, 0x44
    li 7, 0x1d
    bl fn_802317F0
    clrlwi. 0, 3, 24
    .4byte 0x41820C68 # beq .L_8018D928
    addi 3, 1, 0x44
    addi 4, 31, 0xc
    bl fn_8018E8C0
    lfs 1, 0x48(1)
    mr 3, 31
    .4byte 0xC002B17C # lfs f0, lbl_8053E11C@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x48(1)
    bl fn_8015461C
    lis 4, lbl_804C18B8@ha
    .4byte 0x906D8408 # stw r3, lbl_80539FC8@sda21(r0)
    addi 3, 4, lbl_804C18B8@l
    addi 4, 1, 0x44
    bl fn_8018E8C0
    li 3, 0x0
    li 0, 0x16
    stw 3, 0x25c(31)
    lwz 3, 0x254(31)
    .4byte 0x906D840C # stw r3, lbl_80539FCC@sda21(r0)
    stw 0, 0x230(31)
    .4byte 0x48000C14 # b .L_8018D928
    lwz 3, 0x328(31)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8018CD30
    bl fn_8017EAB4
    li 0, 0x0
    stw 0, 0x328(31)
L_8018CD30:
    lwz 3, 0x32c(31)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8018CD48
    bl fn_8017EAB4
    li 0, 0x0
    stw 0, 0x32c(31)
L_8018CD48:
    addi 28, 1, 0x3c
    addi 29, 1, 0x40
    li 26, 0x0
L_8018CD54:
    lwz 0, 0x254(31)
    cmpw 26, 0
    .4byte 0x418200C4 # beq .L_8018CE20
    mr 3, 26
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x418200B4 # beq .L_8018CE20
    mr 3, 26
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x418200A4 # beq .L_8018CE20
    mr 3, 26
    bl fn_8022F3DC
    lwz 0, 0x254(31)
    cmpw 0, 3
    .4byte 0x40820090 # bne .L_8018CE20
    mr 3, 26
    bl fn_8023E724
    mr 4, 3
    addi 3, 1, 0x38
    bl fn_8018E8C0
    .4byte 0xC042B190 # lfs f2, lbl_8053E130@sda21(r0)
    addi 3, 1, 0x38
    lfs 0, 0x290(31)
    lfs 1, 0x2c4(31)
    fmuls 3, 2, 0
    .4byte 0xC042B194 # lfs f2, lbl_8053E134@sda21(r0)
    bl fn_801F71A4
    .4byte 0xC042B190 # lfs f2, lbl_8053E130@sda21(r0)
    mr 3, 28
    lfs 0, 0x290(31)
    lfs 1, 0x2c8(31)
    fmuls 3, 2, 0
    .4byte 0xC042B194 # lfs f2, lbl_8053E134@sda21(r0)
    bl fn_801F71A4
    .4byte 0xC042B190 # lfs f2, lbl_8053E130@sda21(r0)
    mr 3, 29
    lfs 0, 0x290(31)
    lfs 1, 0x2cc(31)
    fmuls 3, 2, 0
    .4byte 0xC042B194 # lfs f2, lbl_8053E134@sda21(r0)
    bl fn_801F71A4
    lwz 5, 0x258(31)
    mr 3, 26
    addi 4, 1, 0x38
    li 6, 0xff
    addi 5, 5, 0xaf
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
L_8018CE20:
    addi 26, 26, 0x1
    cmpwi 26, 0x4
    .4byte 0x4180FF2C # blt .L_8018CD54
    lwz 3, 0x254(31)
    bl fn_8022D75C
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x41820AEC # beq .L_8018D928
    lwz 3, 0x254(31)
    li 4, 0x0
    bl fn_8023061C
    li 3, 0x0
    li 0, 0x17
    stw 3, 0x258(31)
    stw 0, 0x230(31)
    lwz 0, 0x258(31)
    cmpwi 0, 0x0
    .4byte 0x4082006C # bne .L_8018CED0
    lfs 1, 0x2a4(31)
    addi 3, 31, 0x10
    .4byte 0xC042B18C # lfs f2, lbl_8053E12C@sda21(r0)
    .4byte 0xC062B1EC # lfs f3, lbl_8053E18C@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x2a0(31)
    addi 3, 31, 0xc
    .4byte 0xC042B18C # lfs f2, lbl_8053E12C@sda21(r0)
    .4byte 0xC062B1EC # lfs f3, lbl_8053E18C@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x10(31)
    lfs 0, 0x2a4(31)
    fsubs 1, 1, 0
    bl fn_8015436C
    .4byte 0xC002B130 # lfs f0, lbl_8053E0D0@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x41810A80 # bgt .L_8018D928
    lfs 1, 0xc(31)
    lfs 0, 0x2a0(31)
    fsubs 1, 1, 0
    bl fn_8015436C
    .4byte 0xC002B130 # lfs f0, lbl_8053E0D0@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x41810A64 # bgt .L_8018D928
    li 0, 0x1
    stw 0, 0x258(31)
L_8018CED0:
    addi 3, 1, 0x44
    addi 4, 31, 0xc
    bl fn_8018E8C0
    lfs 2, 0x10(31)
    mr 3, 31
    lfs 1, 0x14(31)
    .4byte 0xC002B128 # lfs f0, lbl_8053E0C8@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x10(31)
    stfs 0, 0x14(31)
    bl fn_80154510
    mr 4, 3
    mr 3, 31
    li 5, -0x1
    li 6, 0x6
    bl fn_801F2B7C
    addi 3, 31, 0xc
    addi 4, 1, 0x44
    bl fn_8018E8C0
    lwz 3, 0x254(31)
    cmpwi 3, 0x0
    .4byte 0x41800068 # blt .L_8018CF8C
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x4182005C # beq .L_8018CF8C
    .4byte 0x800D840C # lwz r0, lbl_80539FCC@sda21(r0)
    lwz 3, 0x254(31)
    cmpw 0, 3
    .4byte 0x4082004C # bne .L_8018CF8C
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x40820030 # bne .L_8018CF7C
    lwz 3, 0x254(31)
    bl fn_8022C82C
    .4byte 0xC002B190 # lfs f0, lbl_8053E130@sda21(r0)
    fmuls 0, 0, 1
    stfs 0, 0x2ac(31)
    lwz 3, 0x254(31)
    bl fn_8022C76C
    .4byte 0xC002B1F4 # lfs f0, lbl_8053E194@sda21(r0)
    fmuls 0, 0, 1
    stfs 0, 0x2b0(31)
    .4byte 0x480009B0 # b .L_8018D928
L_8018CF7C:
    .4byte 0xC002B128 # lfs f0, lbl_8053E0C8@sda21(r0)
    stfs 0, 0x2ac(31)
    stfs 0, 0x2b0(31)
    .4byte 0x480009A0 # b .L_8018D928
L_8018CF8C:
    .4byte 0xC002B128 # lfs f0, lbl_8053E0C8@sda21(r0)
    stfs 0, 0x2ac(31)
    stfs 0, 0x2b0(31)
    stfs 0, 0x3c(31)
    stfs 0, 0x40(31)
    .4byte 0x800D8410 # lwz r0, lbl_80539FD0@sda21(r0)
    cmpwi 0, 0x0
    .4byte 0x4181005C # bgt .L_8018D004
    mr 3, 31
    bl fn_8015461C
    lis 6, 0x504f
    mr 4, 3
    addi 3, 6, 0x4f48
    addi 5, 1, 0x60
    li 6, -0x1
    bl fn_801542AC
    mr 28, 3
    addi 29, 1, 0x60
    li 26, 0x0
    .4byte 0x48000024 # b .L_8018CFFC
L_8018CFDC:
    lwz 3, 0x0(29)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8018CFF4
    .4byte 0x4182000C # beq .L_8018CFF4
    li 4, 0x1
    bl fn_8018E894
L_8018CFF4:
    addi 29, 29, 0x4
    addi 26, 26, 0x1
L_8018CFFC:
    cmpw 26, 28
    .4byte 0x4180FFDC # blt .L_8018CFDC
L_8018D004:
    li 0, 0x18
    stw 0, 0x230(31)
    .4byte 0x4800091C # b .L_8018D928
    lfs 1, 0x2a4(31)
    addi 3, 31, 0x10
    .4byte 0xC002B12C # lfs f0, lbl_8053E0CC@sda21(r0)
    .4byte 0xC042B18C # lfs f2, lbl_8053E12C@sda21(r0)
    fsubs 1, 1, 0
    .4byte 0xC062B1EC # lfs f3, lbl_8053E18C@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x2a0(31)
    addi 3, 31, 0xc
    .4byte 0xC042B18C # lfs f2, lbl_8053E12C@sda21(r0)
    .4byte 0xC062B1EC # lfs f3, lbl_8053E18C@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x2a4(31)
    .4byte 0xC002B12C # lfs f0, lbl_8053E0CC@sda21(r0)
    lfs 2, 0x10(31)
    fsubs 0, 1, 0
    fsubs 1, 2, 0
    bl fn_8015436C
    .4byte 0xC002B130 # lfs f0, lbl_8053E0D0@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x418108C8 # bgt .L_8018D928
    lfs 1, 0xc(31)
    lfs 0, 0x2a0(31)
    fsubs 1, 1, 0
    bl fn_8015436C
    .4byte 0xC002B130 # lfs f0, lbl_8053E0D0@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x418108AC # bgt .L_8018D928
    .4byte 0x800D840C # lwz r0, lbl_80539FCC@sda21(r0)
    cmpwi 0, 0xa
    .4byte 0x4082005C # bne .L_8018D0E4
    .4byte 0x800D8410 # lwz r0, lbl_80539FD0@sda21(r0)
    lwz 3, 0x254(31)
    cmpwi 0, 0x0
    .4byte 0x906D840C # stw r3, lbl_80539FCC@sda21(r0)
    .4byte 0x40810010 # ble .L_8018D0AC
    mr 3, 31
    li 4, 0xb
    bl fn_8018E30C
L_8018D0AC:
    addi 3, 1, 0x44
    addi 4, 31, 0xc
    bl fn_8018E8C0
    lfs 1, 0x48(1)
    mr 3, 31
    .4byte 0xC002B17C # lfs f0, lbl_8053E11C@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x48(1)
    bl fn_8015461C
    lis 4, lbl_804C18B8@ha
    .4byte 0x906D8408 # stw r3, lbl_80539FC8@sda21(r0)
    addi 3, 4, lbl_804C18B8@l
    addi 4, 1, 0x44
    bl fn_8018E8C0
L_8018D0E4:
    .4byte 0x800D840C # lwz r0, lbl_80539FCC@sda21(r0)
    cmpwi 0, 0x0
    .4byte 0x4080083C # bge .L_8018D928
    .4byte 0x800D8410 # lwz r0, lbl_80539FD0@sda21(r0)
    cmpwi 0, 0x0
    .4byte 0x40810010 # ble .L_8018D108
    li 0, 0xf
    stw 0, 0x230(31)
    .4byte 0x48000824 # b .L_8018D928
L_8018D108:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    li 0, 0x19
    stw 0, 0x230(31)
    .4byte 0x48000804 # b .L_8018D928
    addi 3, 31, 0xc
    addi 4, 31, 0x2a0
    bl fn_8018E8C0
    .4byte 0x806D840C # lwz r3, lbl_80539FCC@sda21(r0)
    cmpwi 3, 0x0
    .4byte 0x418007EC # blt .L_8018D928
    bl fn_8023DE58
    mr 29, 3
    mr 3, 31
    bl fn_8015461C
    cmpw 3, 29
    .4byte 0x408207D4 # bne .L_8018D928
    .4byte 0x806D840C # lwz r3, lbl_80539FCC@sda21(r0)
    bl fn_8022D75C
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x418207C0 # beq .L_8018D928
    li 3, 0x384
    li 0, 0x3
    stw 3, 0x244(31)
    stw 0, 0x258(31)
    bl fn_80154744
    .4byte 0xC002B1A0 # lfs f0, lbl_8053E140@sda21(r0)
    fmuls 0, 0, 1
    fctiwz 0, 0
    stfd 0, 0x4068(1)
    lwz 3, 0x406c(1)
    addi 0, 3, 0x64
    stw 0, 0x238(31)
    li 3, 0x8
    li 0, 0x0
    stw 3, 0x234(31)
    addi 3, 30, 0x12c
    stw 0, 0x24c(31)
    stw 0, 0x250(31)
    stw 0, 0x254(31)
    stw 0, 0x23c(31)
    stw 0, 0x240(31)
    lwz 0, 0x24c(31)
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x264(31)
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40820024 # bne .L_8018D1FC
    bl fn_80154744
    .4byte 0xC002B178 # lfs f0, lbl_8053E118@sda21(r0)
    fmuls 0, 0, 1
    fctiwz 0, 0
    stfd 0, 0x4068(1)
    lwz 3, 0x406c(1)
    addi 0, 3, 0x32
    stw 0, 0x238(31)
L_8018D1FC:
    li 0, 0x1c
    stw 0, 0x230(31)
    lfs 1, 0x14(31)
    .4byte 0xC002B128 # lfs f0, lbl_8053E0C8@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810014 # ble .L_8018D224
    lfs 1, 0x44(31)
    .4byte 0xC002B130 # lfs f0, lbl_8053E0D0@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x44(31)
L_8018D224:
    lfs 1, 0x14(31)
    .4byte 0xC002B128 # lfs f0, lbl_8053E0C8@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820024 # bne .L_8018D258
    stfs 0, 0x14(31)
    lis 4, 0x5
    .4byte 0xC002B1EC # lfs f0, lbl_8053E18C@sda21(r0)
    mr 3, 31
    addi 4, 4, 0x86
    li 5, 0x0
    stfs 0, 0x44(31)
    bl fn_801F0E34
L_8018D258:
    .4byte 0x806D840C # lwz r3, lbl_80539FCC@sda21(r0)
    cmpwi 3, 0x0
    .4byte 0x41800158 # blt .L_8018D3B8
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x4182014C # beq .L_8018D3B8
    mr 3, 31
    bl fn_801545E8
    .4byte 0x812D840C # lwz r9, lbl_80539FCC@sda21(r0)
    mr 4, 3
    mr 3, 31
    addi 5, 1, 0x8
    addi 6, 1, 0xc
    addi 7, 1, 0x10
    li 8, 0x0
    li 10, 0x2
    bl fn_801EEC98
    clrlwi 0, 28, 24
    cmplwi 0, 0x1
    .4byte 0x41820014 # beq .L_8018D2B8
    lfs 1, 0x10(1)
    .4byte 0xC002B14C # lfs f0, lbl_8053E0EC@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x408100A8 # ble .L_8018D35C
L_8018D2B8:
    .4byte 0xC002B128 # lfs f0, lbl_8053E0C8@sda21(r0)
    clrlwi 0, 28, 24
    cmplwi 0, 0x1
    stfs 0, 0x2ac(31)
    stfs 0, 0x2b0(31)
    .4byte 0x40820020 # bne .L_8018D2EC
    lfs 0, 0x3c(31)
    .4byte 0xC022B1F8 # lfs f1, lbl_8053E198@sda21(r0)
    fmuls 0, 0, 1
    stfs 0, 0x3c(31)
    lfs 0, 0x40(31)
    fmuls 0, 0, 1
    stfs 0, 0x40(31)
L_8018D2EC:
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_8018D304
    li 0, 0x1d
    stw 0, 0x230(31)
    .4byte 0x48000628 # b .L_8018D928
L_8018D304:
    clrlwi 0, 28, 24
    cmplwi 0, 0x1
    .4byte 0x40820038 # bne .L_8018D344
    bl fn_80154744
    .4byte 0xC002B148 # lfs f0, lbl_8053E0E8@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_8018D32C
    li 0, 0x4000
    stw 0, 0x250(31)
    .4byte 0x48000010 # b .L_8018D338
L_8018D32C:
    lwz 3, 0x250(31)
    subi 0, 3, 0x4000
    stw 0, 0x250(31)
L_8018D338:
    li 0, 0xa
    stw 0, 0x23c(31)
    .4byte 0x48000038 # b .L_8018D378
L_8018D344:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x4082002C # bne .L_8018D378
    li 0, 0x0
    stw 0, 0x250(31)
    .4byte 0x48000020 # b .L_8018D378
L_8018D35C:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x40820014 # bne .L_8018D378
    lhz 3, 0x8(1)
    addis 3, 3, 0x1
    addi 0, 3, -0x8000
    stw 0, 0x254(31)
L_8018D378:
    lwz 3, 0x254(31)
    lwz 0, 0x250(31)
    add 0, 3, 0
    extsh 3, 0
    bl fn_801544FC
    .4byte 0xC002B1FC # lfs f0, lbl_8053E19C@sda21(r0)
    fmuls 0, 0, 1
    stfs 0, 0x2ac(31)
    lwz 3, 0x254(31)
    lwz 0, 0x250(31)
    add 0, 3, 0
    extsh 3, 0
    bl fn_801544E4
    .4byte 0xC002B1FC # lfs f0, lbl_8053E19C@sda21(r0)
    fmuls 0, 0, 1
    stfs 0, 0x2b0(31)
L_8018D3B8:
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820038 # bne .L_8018D3F8
    lwz 4, 0x24c(31)
    li 0, 0x8
    addi 3, 30, 0x12c
    addi 4, 4, 0x1
    stw 4, 0x24c(31)
    lwz 4, 0x24c(31)
    clrlwi 4, 4, 30
    stw 4, 0x24c(31)
    stw 0, 0x234(31)
    lwz 0, 0x24c(31)
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x264(31)
L_8018D3F8:
    lwz 0, 0x244(31)
    cmpwi 0, 0x0
    .4byte 0x40820528 # bne .L_8018D928
    .4byte 0x808D840C # lwz r4, lbl_80539FCC@sda21(r0)
    li 3, 0xa
    li 0, 0x21
    stw 4, 0x254(31)
    .4byte 0x906D840C # stw r3, lbl_80539FCC@sda21(r0)
    stw 0, 0x230(31)
    .4byte 0x4800050C # b .L_8018D928
    li 5, 0x0
    addi 4, 30, 0x164
    stw 5, 0x24c(31)
    addi 3, 30, 0x13c
    .4byte 0xC002B128 # lfs f0, lbl_8053E0C8@sda21(r0)
    li 0, 0x1e
    stw 5, 0x250(31)
    lwz 5, 0x24c(31)
    slwi 5, 5, 2
    lwzx 4, 4, 5
    stw 4, 0x234(31)
    lwz 4, 0x24c(31)
    slwi 4, 4, 2
    lwzx 3, 3, 4
    stw 3, 0x264(31)
    stfs 0, 0x2ac(31)
    stfs 0, 0x2b0(31)
    stw 0, 0x230(31)
    lfs 1, 0x14(31)
    .4byte 0xC002B128 # lfs f0, lbl_8053E0C8@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810014 # ble .L_8018D488
    lfs 1, 0x44(31)
    .4byte 0xC002B130 # lfs f0, lbl_8053E0D0@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x44(31)
L_8018D488:
    lfs 1, 0x14(31)
    .4byte 0xC002B128 # lfs f0, lbl_8053E0C8@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_8018D4A0
    stfs 0, 0x14(31)
L_8018D4A0:
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820480 # bne .L_8018D928
    lwz 3, 0x24c(31)
    addi 0, 3, 0x1
    stw 0, 0x24c(31)
    lwz 0, 0x24c(31)
    cmpwi 0, 0x8
    .4byte 0x408200EC # bne .L_8018D5AC
    addi 3, 1, 0x44
    addi 4, 31, 0xc
    bl fn_8018E8C0
    .4byte 0xC002B128 # lfs f0, lbl_8053E0C8@sda21(r0)
    mr 3, 31
    stfs 0, 0x4c(1)
    bl fn_8015461C
    lis 6, 0x4f4b
    mr 4, 3
    addi 3, 6, 0x544d
    addi 5, 1, 0x44
    li 6, 0x3
    li 7, -0x1
    li 8, -0x1
    bl fn_80154310
    mr. 26, 3
    .4byte 0x418000A8 # blt .L_8018D5AC
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x13
    li 5, 0x0
    bl fn_801F0E34
    mr 3, 26
    bl fn_8015445C
    mr. 26, 3
    .4byte 0x41820084 # beq .L_8018D5AC
    addi 3, 1, 0x1c
    bl fn_8003B2CC
    addi 3, 1, 0x1c
    bl fn_801546BC
    li 0, 0x0
    mr 3, 31
    sth 0, 0x8(1)
    bl fn_801545E8
    mr 4, 3
    mr 3, 31
    addi 5, 1, 0x8
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x0
    bl fn_801EEC98
    lhz 0, 0x8(1)
    extsh 3, 0
    bl fn_801544FC
    .4byte 0xC002B200 # lfs f0, lbl_8053E1A0@sda21(r0)
    lhz 0, 0x8(1)
    fmuls 0, 0, 1
    extsh 3, 0
    stfs 0, 0x1c(1)
    bl fn_801544E4
    .4byte 0xC002B200 # lfs f0, lbl_8053E1A0@sda21(r0)
    mr 3, 26
    addi 4, 1, 0x1c
    fmuls 0, 0, 1
    stfs 0, 0x20(1)
    bl fn_8017EAF8
L_8018D5AC:
    lwz 0, 0x24c(31)
    cmpwi 0, 0x9
    .4byte 0x40810010 # ble .L_8018D5C4
    li 0, 0x1b
    stw 0, 0x230(31)
    .4byte 0x48000368 # b .L_8018D928
L_8018D5C4:
    slwi 0, 0, 2
    addi 3, 30, 0x164
    lwzx 0, 3, 0
    addi 3, 30, 0x13c
    stw 0, 0x234(31)
    lwz 0, 0x24c(31)
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x264(31)
    .4byte 0x48000340 # b .L_8018D928
    li 0, 0x0
    addi 5, 30, 0x1a0
    stw 0, 0x24c(31)
    addi 4, 30, 0x18c
    addi 3, 31, 0x3c
    stw 0, 0x250(31)
    lwz 0, 0x24c(31)
    slwi 0, 0, 2
    lwzx 0, 5, 0
    stw 0, 0x234(31)
    lwz 0, 0x24c(31)
    slwi 0, 0, 2
    lwzx 0, 4, 0
    stw 0, 0x264(31)
    bl fn_801546BC
    .4byte 0xC002B128 # lfs f0, lbl_8053E0C8@sda21(r0)
    stfs 0, 0x2ac(31)
    stfs 0, 0x2b0(31)
    .4byte 0x806D8410 # lwz r3, lbl_80539FD0@sda21(r0)
    subi 0, 3, 0x1
    .4byte 0x900D8410 # stw r0, lbl_80539FD0@sda21(r0)
    lwz 3, 0x258(31)
    subi 0, 3, 0x1
    stw 0, 0x258(31)
    .4byte 0x800D840C # lwz r0, lbl_80539FCC@sda21(r0)
    stw 0, 0x254(31)
    lwz 0, 0x244(31)
    cmpwi 0, 0x0
    .4byte 0x4182001C # beq .L_8018D678
    lwz 0, 0x258(31)
    cmpwi 0, 0x0
    .4byte 0x41820010 # beq .L_8018D678
    .4byte 0x800D8410 # lwz r0, lbl_80539FD0@sda21(r0)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_8018D680
L_8018D678:
    li 0, 0xa
    .4byte 0x900D840C # stw r0, lbl_80539FCC@sda21(r0)
L_8018D680:
    .4byte 0x800D8410 # lwz r0, lbl_80539FD0@sda21(r0)
    cmpwi 0, 0x0
    .4byte 0x40810010 # ble .L_8018D698
    li 0, 0x20
    stw 0, 0x230(31)
    .4byte 0x48000294 # b .L_8018D928
L_8018D698:
    li 0, 0xa
    li 4, 0xc8
    .4byte 0x900D840C # stw r0, lbl_80539FCC@sda21(r0)
    li 3, 0x96
    li 0, 0x22
    stw 4, 0x240(31)
    stw 3, 0x23c(31)
    stw 0, 0x230(31)
    .4byte 0x48000270 # b .L_8018D928
    lfs 1, 0x14(31)
    .4byte 0xC002B128 # lfs f0, lbl_8053E0C8@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810014 # ble .L_8018D6DC
    lfs 1, 0x44(31)
    .4byte 0xC002B130 # lfs f0, lbl_8053E0D0@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x44(31)
L_8018D6DC:
    lfs 1, 0x14(31)
    .4byte 0xC002B128 # lfs f0, lbl_8053E0C8@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_8018D6F4
    stfs 0, 0x14(31)
L_8018D6F4:
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x4082022C # bne .L_8018D928
    lwz 3, 0x24c(31)
    addi 0, 3, 0x1
    stw 0, 0x24c(31)
    lwz 0, 0x24c(31)
    cmpwi 0, 0x4
    .4byte 0x40810050 # ble .L_8018D764
    li 0, 0x5
    stw 0, 0x24c(31)
    lwz 0, 0x244(31)
    cmpwi 0, 0x0
    .4byte 0x41820030 # beq .L_8018D758
    lwz 0, 0x258(31)
    cmpwi 0, 0x0
    .4byte 0x40810024 # ble .L_8018D758
    .4byte 0x800D8410 # lwz r0, lbl_80539FD0@sda21(r0)
    cmpwi 0, 0x0
    .4byte 0x40810018 # ble .L_8018D758
    li 3, 0x14
    li 0, 0x1d
    stw 3, 0x240(31)
    stw 0, 0x230(31)
    .4byte 0x480001D4 # b .L_8018D928
L_8018D758:
    li 0, 0x21
    stw 0, 0x230(31)
    .4byte 0x480001C8 # b .L_8018D928
L_8018D764:
    slwi 0, 0, 2
    addi 3, 30, 0x1a0
    lwzx 0, 3, 0
    addi 3, 30, 0x18c
    stw 0, 0x234(31)
    lwz 0, 0x24c(31)
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x264(31)
    .4byte 0x480001A0 # b .L_8018D928
    lfs 1, 0x14(31)
    .4byte 0xC002B128 # lfs f0, lbl_8053E0C8@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810014 # ble .L_8018D7AC
    lfs 1, 0x44(31)
    .4byte 0xC002B130 # lfs f0, lbl_8053E0D0@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x44(31)
L_8018D7AC:
    lfs 1, 0x14(31)
    .4byte 0xC002B128 # lfs f0, lbl_8053E0C8@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_8018D7C4
    stfs 0, 0x14(31)
L_8018D7C4:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x4182007C # beq .L_8018D848
    clrlwi. 0, 0, 29
    .4byte 0x40820154 # bne .L_8018D928
    addi 3, 1, 0x44
    addi 4, 31, 0xc
    bl fn_8018E8C0
    bl fn_80154744
    .4byte 0xC062B180 # lfs f3, lbl_8053E120@sda21(r0)
    .4byte 0xC042B17C # lfs f2, lbl_8053E11C@sda21(r0)
    lfs 0, 0x44(1)
    fnmsubs 1, 3, 1, 2
    fadds 0, 0, 1
    stfs 0, 0x44(1)
    bl fn_80154744
    .4byte 0xC062B180 # lfs f3, lbl_8053E120@sda21(r0)
    mr 3, 31
    .4byte 0xC042B17C # lfs f2, lbl_8053E11C@sda21(r0)
    lfs 0, 0x48(1)
    fnmsubs 1, 3, 1, 2
    fadds 0, 0, 1
    stfs 0, 0x48(1)
    bl fn_8015461C
    lis 6, 0x4842
    mr 4, 3
    addi 3, 6, 0x4d42
    addi 5, 1, 0x44
    li 6, 0x7
    li 7, -0x1
    li 8, -0x1
    bl fn_80154310
    .4byte 0x480000E4 # b .L_8018D928
L_8018D848:
    lfs 1, 0x14(31)
    .4byte 0xC002B128 # lfs f0, lbl_8053E0C8@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810014 # ble .L_8018D868
    lfs 1, 0x44(31)
    .4byte 0xC002B130 # lfs f0, lbl_8053E0D0@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x44(31)
L_8018D868:
    lfs 1, 0x14(31)
    .4byte 0xC002B128 # lfs f0, lbl_8053E0C8@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_8018D880
    stfs 0, 0x14(31)
L_8018D880:
    .4byte 0x800D840C # lwz r0, lbl_80539FCC@sda21(r0)
    cmpwi 0, 0xa
    .4byte 0x418200A0 # beq .L_8018D928
    lwz 3, 0x254(31)
    li 4, 0x5
    li 5, 0x0
    bl fn_8022CA6C
    lwz 3, 0x254(31)
    bl fn_8023E724
    lis 4, lbl_804C18B8@ha
    mr 5, 3
    addi 6, 4, lbl_804C18B8@l
    lwz 3, 0x254(31)
    .4byte 0x808D8408 # lwz r4, lbl_80539FC8@sda21(r0)
    li 7, 0x1e
    bl fn_802317F0
    clrlwi. 0, 3, 24
    .4byte 0x41820064 # beq .L_8018D928
    mr 3, 31
    bl fn_8015461C
    lis 4, lbl_804C18B8@ha
    .4byte 0x906D8408 # stw r3, lbl_80539FC8@sda21(r0)
    addi 3, 4, lbl_804C18B8@l
    addi 4, 31, 0x2a0
    bl fn_8018E8C0
    li 0, -0x1
    addi 3, 31, 0x2ac
    .4byte 0x900D840C # stw r0, lbl_80539FCC@sda21(r0)
    bl fn_801546BC
    addi 3, 31, 0x3c
    bl fn_801546BC
    .4byte 0xC002B128 # lfs f0, lbl_8053E0C8@sda21(r0)
    stfs 0, 0x14(31)
    .4byte 0x800D8410 # lwz r0, lbl_80539FD0@sda21(r0)
    cmpwi 0, 0x0
    .4byte 0x40810010 # ble .L_8018D91C
    li 0, 0x1a
    stw 0, 0x230(31)
    .4byte 0x48000010 # b .L_8018D928
L_8018D91C:
    mr 3, 31
    li 4, 0x0
    bl fn_8018A598
L_8018D928:
    mr 3, 31
    bl fn_8018DFCC
    lwz 3, 0x234(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8018D944
    subi 0, 3, 0x1
    stw 0, 0x234(31)
L_8018D944:
    lwz 3, 0x238(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8018D958
    subi 0, 3, 0x1
    stw 0, 0x238(31)
L_8018D958:
    lwz 3, 0x23c(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8018D96C
    subi 0, 3, 0x1
    stw 0, 0x23c(31)
L_8018D96C:
    lwz 3, 0x240(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8018D980
    subi 0, 3, 0x1
    stw 0, 0x240(31)
L_8018D980:
    lwz 3, 0x244(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8018D994
    subi 0, 3, 0x1
    stw 0, 0x244(31)
L_8018D994:
    lwz 3, 0x248(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8018D9A8
    subi 0, 3, 0x1
    stw 0, 0x248(31)
L_8018D9A8:
    li 0, 0x40a8
    psq_lx 31, 1, 0, 0, 0
    lfd 31, 0x40a0(1)
    li 0, 0x4098
    psq_lx 30, 1, 0, 0, 0
    lfd 30, 0x4090(1)
    lmw 26, 0x4078(1)
    lwz 0, 0x40b4(1)
    mtlr 0
    addi 1, 1, 0x40b0
    blr

