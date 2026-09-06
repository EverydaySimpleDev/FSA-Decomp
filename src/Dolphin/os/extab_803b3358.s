# fn_803B3358 - 2 helpers bundled (0x2a0+0x2f0)
.text
.balign 4
.global fn_803B3358
.global fn_803B35F8

fn_803B3358:
    cmplwi 4, 0x7
    bgtlr
    lis 5, jumptable_804AFA50@ha
    slwi 0, 4, 2
    addi 4, 5, jumptable_804AFA50@l
    lwzx 0, 4, 0
    mtctr 0
    bctr
    lwz 4, 0x454(3)
    li 5, 0x0
    cmpwi 4, 0x0
    blelr
    cmpwi 4, 0x8
    subi 3, 4, 0x8
    .4byte 0x40810020 # ble .L_803B33B0
    addi 0, 3, 0x7
    srwi 0, 0, 3
    mtctr 0
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_803B33B0
L_803B33A8:
    addi 5, 5, 0x8
    .4byte 0x4200FFFC # bdnz .L_803B33A8
L_803B33B0:
    subf 0, 5, 4
    mtctr 0
    cmpw 5, 4
    bgelr
L_803B33C0:
    .4byte 0x42000000 # bdnz .L_803B33C0
    blr
    lwz 4, 0x454(3)
    li 5, 0x0
    cmpwi 4, 0x0
    blelr
    cmpwi 4, 0x8
    subi 3, 4, 0x8
    .4byte 0x40810020 # ble .L_803B3400
    addi 0, 3, 0x7
    srwi 0, 0, 3
    mtctr 0
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_803B3400
L_803B33F8:
    addi 5, 5, 0x8
    .4byte 0x4200FFFC # bdnz .L_803B33F8
L_803B3400:
    subf 0, 5, 4
    mtctr 0
    cmpw 5, 4
    bgelr
L_803B3410:
    .4byte 0x42000000 # bdnz .L_803B3410
    blr
    lwz 4, 0x454(3)
    li 5, 0x0
    cmpwi 4, 0x0
    blelr
    cmpwi 4, 0x8
    subi 3, 4, 0x8
    .4byte 0x40810020 # ble .L_803B3450
    addi 0, 3, 0x7
    srwi 0, 0, 3
    mtctr 0
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_803B3450
L_803B3448:
    addi 5, 5, 0x8
    .4byte 0x4200FFFC # bdnz .L_803B3448
L_803B3450:
    subf 0, 5, 4
    mtctr 0
    cmpw 5, 4
    bgelr
L_803B3460:
    .4byte 0x42000000 # bdnz .L_803B3460
    blr
    lwz 4, 0x454(3)
    li 5, 0x0
    cmpwi 4, 0x0
    blelr
    cmpwi 4, 0x8
    subi 3, 4, 0x8
    .4byte 0x40810020 # ble .L_803B34A0
    addi 0, 3, 0x7
    srwi 0, 0, 3
    mtctr 0
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_803B34A0
L_803B3498:
    addi 5, 5, 0x8
    .4byte 0x4200FFFC # bdnz .L_803B3498
L_803B34A0:
    subf 0, 5, 4
    mtctr 0
    cmpw 5, 4
    bgelr
L_803B34B0:
    .4byte 0x42000000 # bdnz .L_803B34B0
    blr
    lwz 4, 0x454(3)
    li 5, 0x0
    cmpwi 4, 0x0
    blelr
    cmpwi 4, 0x8
    subi 3, 4, 0x8
    .4byte 0x40810020 # ble .L_803B34F0
    addi 0, 3, 0x7
    srwi 0, 0, 3
    mtctr 0
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_803B34F0
L_803B34E8:
    addi 5, 5, 0x8
    .4byte 0x4200FFFC # bdnz .L_803B34E8
L_803B34F0:
    subf 0, 5, 4
    mtctr 0
    cmpw 5, 4
    bgelr
L_803B3500:
    .4byte 0x42000000 # bdnz .L_803B3500
    blr
    lwz 4, 0x454(3)
    li 5, 0x0
    cmpwi 4, 0x0
    blelr
    cmpwi 4, 0x8
    subi 3, 4, 0x8
    .4byte 0x40810020 # ble .L_803B3540
    addi 0, 3, 0x7
    srwi 0, 0, 3
    mtctr 0
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_803B3540
L_803B3538:
    addi 5, 5, 0x8
    .4byte 0x4200FFFC # bdnz .L_803B3538
L_803B3540:
    subf 0, 5, 4
    mtctr 0
    cmpw 5, 4
    bgelr
L_803B3550:
    .4byte 0x42000000 # bdnz .L_803B3550
    blr
    lwz 4, 0x454(3)
    li 5, 0x0
    cmpwi 4, 0x0
    blelr
    cmpwi 4, 0x8
    subi 3, 4, 0x8
    .4byte 0x40810020 # ble .L_803B3590
    addi 0, 3, 0x7
    srwi 0, 0, 3
    mtctr 0
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_803B3590
L_803B3588:
    addi 5, 5, 0x8
    .4byte 0x4200FFFC # bdnz .L_803B3588
L_803B3590:
    subf 0, 5, 4
    mtctr 0
    cmpw 5, 4
    bgelr
L_803B35A0:
    .4byte 0x42000000 # bdnz .L_803B35A0
    blr
    lwz 4, 0x454(3)
    li 5, 0x0
    cmpwi 4, 0x0
    blelr
    cmpwi 4, 0x8
    subi 3, 4, 0x8
    .4byte 0x40810020 # ble .L_803B35E0
    addi 0, 3, 0x7
    srwi 0, 0, 3
    mtctr 0
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_803B35E0
L_803B35D8:
    addi 5, 5, 0x8
    .4byte 0x4200FFFC # bdnz .L_803B35D8
L_803B35E0:
    subf 0, 5, 4
    mtctr 0
    cmpw 5, 4
    bgelr
L_803B35F0:
    .4byte 0x42000000 # bdnz .L_803B35F0
    blr

fn_803B35F8:
    cmplwi 4, 0x8
    bgtlr
    lis 5, jumptable_804AFA70@ha
    slwi 0, 4, 2
    addi 4, 5, jumptable_804AFA70@l
    lwzx 0, 4, 0
    mtctr 0
    bctr
    lwz 4, 0x454(3)
    li 5, 0x0
    cmpwi 4, 0x0
    blelr
    cmpwi 4, 0x8
    subi 3, 4, 0x8
    .4byte 0x40810020 # ble .L_803B3650
    addi 0, 3, 0x7
    srwi 0, 0, 3
    mtctr 0
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_803B3650
L_803B3648:
    addi 5, 5, 0x8
    .4byte 0x4200FFFC # bdnz .L_803B3648
L_803B3650:
    subf 0, 5, 4
    mtctr 0
    cmpw 5, 4
    bgelr
L_803B3660:
    .4byte 0x42000000 # bdnz .L_803B3660
    blr
    lwz 4, 0x454(3)
    li 5, 0x0
    cmpwi 4, 0x0
    blelr
    cmpwi 4, 0x8
    subi 3, 4, 0x8
    .4byte 0x40810020 # ble .L_803B36A0
    addi 0, 3, 0x7
    srwi 0, 0, 3
    mtctr 0
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_803B36A0
L_803B3698:
    addi 5, 5, 0x8
    .4byte 0x4200FFFC # bdnz .L_803B3698
L_803B36A0:
    subf 0, 5, 4
    mtctr 0
    cmpw 5, 4
    bgelr
L_803B36B0:
    .4byte 0x42000000 # bdnz .L_803B36B0
    blr
    lwz 4, 0x454(3)
    li 5, 0x0
    cmpwi 4, 0x0
    blelr
    cmpwi 4, 0x8
    subi 3, 4, 0x8
    .4byte 0x40810020 # ble .L_803B36F0
    addi 0, 3, 0x7
    srwi 0, 0, 3
    mtctr 0
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_803B36F0
L_803B36E8:
    addi 5, 5, 0x8
    .4byte 0x4200FFFC # bdnz .L_803B36E8
L_803B36F0:
    subf 0, 5, 4
    mtctr 0
    cmpw 5, 4
    bgelr
L_803B3700:
    .4byte 0x42000000 # bdnz .L_803B3700
    blr
    lwz 4, 0x454(3)
    li 5, 0x0
    cmpwi 4, 0x0
    blelr
    cmpwi 4, 0x8
    subi 3, 4, 0x8
    .4byte 0x40810020 # ble .L_803B3740
    addi 0, 3, 0x7
    srwi 0, 0, 3
    mtctr 0
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_803B3740
L_803B3738:
    addi 5, 5, 0x8
    .4byte 0x4200FFFC # bdnz .L_803B3738
L_803B3740:
    subf 0, 5, 4
    mtctr 0
    cmpw 5, 4
    bgelr
L_803B3750:
    .4byte 0x42000000 # bdnz .L_803B3750
    blr
    lwz 4, 0x454(3)
    li 5, 0x0
    cmpwi 4, 0x0
    blelr
    cmpwi 4, 0x8
    subi 3, 4, 0x8
    .4byte 0x40810020 # ble .L_803B3790
    addi 0, 3, 0x7
    srwi 0, 0, 3
    mtctr 0
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_803B3790
L_803B3788:
    addi 5, 5, 0x8
    .4byte 0x4200FFFC # bdnz .L_803B3788
L_803B3790:
    subf 0, 5, 4
    mtctr 0
    cmpw 5, 4
    bgelr
L_803B37A0:
    .4byte 0x42000000 # bdnz .L_803B37A0
    blr
    lwz 4, 0x454(3)
    li 5, 0x0
    cmpwi 4, 0x0
    blelr
    cmpwi 4, 0x8
    subi 3, 4, 0x8
    .4byte 0x40810020 # ble .L_803B37E0
    addi 0, 3, 0x7
    srwi 0, 0, 3
    mtctr 0
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_803B37E0
L_803B37D8:
    addi 5, 5, 0x8
    .4byte 0x4200FFFC # bdnz .L_803B37D8
L_803B37E0:
    subf 0, 5, 4
    mtctr 0
    cmpw 5, 4
    bgelr
L_803B37F0:
    .4byte 0x42000000 # bdnz .L_803B37F0
    blr
    lwz 4, 0x454(3)
    li 5, 0x0
    cmpwi 4, 0x0
    blelr
    cmpwi 4, 0x8
    subi 3, 4, 0x8
    .4byte 0x40810020 # ble .L_803B3830
    addi 0, 3, 0x7
    srwi 0, 0, 3
    mtctr 0
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_803B3830
L_803B3828:
    addi 5, 5, 0x8
    .4byte 0x4200FFFC # bdnz .L_803B3828
L_803B3830:
    subf 0, 5, 4
    mtctr 0
    cmpw 5, 4
    bgelr
L_803B3840:
    .4byte 0x42000000 # bdnz .L_803B3840
    blr
    lwz 4, 0x454(3)
    li 5, 0x0
    cmpwi 4, 0x0
    blelr
    cmpwi 4, 0x8
    subi 3, 4, 0x8
    .4byte 0x40810020 # ble .L_803B3880
    addi 0, 3, 0x7
    srwi 0, 0, 3
    mtctr 0
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_803B3880
L_803B3878:
    addi 5, 5, 0x8
    .4byte 0x4200FFFC # bdnz .L_803B3878
L_803B3880:
    subf 0, 5, 4
    mtctr 0
    cmpw 5, 4
    bgelr
L_803B3890:
    .4byte 0x42000000 # bdnz .L_803B3890
    blr
    lwz 4, 0x454(3)
    li 5, 0x0
    cmpwi 4, 0x0
    blelr
    cmpwi 4, 0x8
    subi 3, 4, 0x8
    .4byte 0x40810020 # ble .L_803B38D0
    addi 0, 3, 0x7
    srwi 0, 0, 3
    mtctr 0
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_803B38D0
L_803B38C8:
    addi 5, 5, 0x8
    .4byte 0x4200FFFC # bdnz .L_803B38C8
L_803B38D0:
    subf 0, 5, 4
    mtctr 0
    cmpw 5, 4
    bgelr
L_803B38E0:
    .4byte 0x42000000 # bdnz .L_803B38E0
    blr

