/*
 * TINK (vtable lbl_804A51E4) per-frame anchor-point + facing-offset prep.
 * Always zeroes this->0x3c/0x40 (and 0x44 unless state==0xa). While state
 * != 0 and (this->0x254 != 0 and fn_801CCF7C()'s result is falsy), resolves
 * an anchor point into 0x3c/0x40: either a stored offset point via
 * fn_801D01A0/fn_801D00B4 (gated on this->0x230 flag bits 14/17), or the
 * position of whichever of the 3 tracked targets (0x2ac/0x2b0/0x2b4)
 * resolves first via the spatial registry (SpatialRegistry_GetBase/fn_801F666C).
 * Then a second, independent 19-way jumptable (jumptable_804A5288, keyed
 * by this->0x248) computes this->0x44 (a facing/turn offset): per-state
 * fixed constants, a companion-tracked (0x2bc) offset lookup, or an
 * incremental blend toward lbl_8053F494 clamped against -lbl_8053EFBC.
 */
.section extab, "a"
.balign 4
.global etb_80008918
etb_80008918:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_80008918, 8

.section extabindex, "a"
.balign 4
.global eti_80015DD8
eti_80015DD8:
    .4byte fn_801DE7AC
    .4byte 0x00000214
    .4byte etb_80008918
.size eti_80015DD8, 12

.text
.balign 4
.global fn_801DE7AC

fn_801DE7AC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 3
    stw 29, 0x14(1)
    bl fn_801CCF7C
    .4byte 0xC002C4E0 # lfs f0, lbl_8053F480@sda21(r0)
    mr 31, 3
    stfs 0, 0x3c(30)
    stfs 0, 0x40(30)
    lwz 0, 0x248(30)
    cmpwi 0, 0xa
    .4byte 0x41820008 # beq .L_801DE7EC
    stfs 0, 0x44(30)
L_801DE7EC:
    lwz 0, 0x248(30)
    cmpwi 0, 0x0
    .4byte 0x418201B0 # beq .L_801DE9A4
    .4byte 0xC002C4E0 # lfs f0, lbl_8053F480@sda21(r0)
    lfs 1, 0x254(30)
    fcmpu cr0, 0, 1
    .4byte 0x418200EC # beq .L_801DE8F0
    clrlwi. 0, 31, 24
    .4byte 0x408200E4 # bne .L_801DE8F0
    stfs 0, 0x8(1)
    stfs 0, 0xc(1)
    lwz 3, 0x230(30)
    rlwinm. 0, 3, 0, 17, 17
    .4byte 0x41820018 # beq .L_801DE838
    mr 3, 30
    addi 4, 30, 0x2c4
    addi 5, 1, 0x8
    bl fn_801D01A0
    .4byte 0x480000AC # b .L_801DE8E0
L_801DE838:
    rlwinm. 0, 3, 0, 14, 14
    .4byte 0x41820020 # beq .L_801DE85C
    lwz 4, 0x2a8(30)
    cmpwi 4, 0x0
    .4byte 0x41800098 # blt .L_801DE8E0
    mr 3, 30
    addi 5, 1, 0x8
    bl fn_801D00B4
    .4byte 0x48000088 # b .L_801DE8E0
L_801DE85C:
    lwz 29, 0x2ac(30)
    li 4, 0x0
    cmpwi 29, 0x0
    .4byte 0x41800014 # blt .L_801DE87C
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    mr 4, 3
L_801DE87C:
    cmplwi 4, 0x0
    .4byte 0x40820020 # bne .L_801DE8A0
    lwz 29, 0x2b0(30)
    cmpwi 29, 0x0
    .4byte 0x41800014 # blt .L_801DE8A0
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    mr 4, 3
L_801DE8A0:
    cmplwi 4, 0x0
    .4byte 0x40820020 # bne .L_801DE8C4
    lwz 29, 0x2b4(30)
    cmpwi 29, 0x0
    .4byte 0x41800014 # blt .L_801DE8C4
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    mr 4, 3
L_801DE8C4:
    cmplwi 4, 0x0
    .4byte 0x41820018 # beq .L_801DE8E0
    lfs 1, 0x254(30)
    mr 3, 30
    addi 4, 4, 0xc
    addi 5, 1, 0x8
    bl fn_801D01A0
L_801DE8E0:
    lfs 0, 0x8(1)
    stfs 0, 0x3c(30)
    lfs 0, 0xc(1)
    stfs 0, 0x40(30)
L_801DE8F0:
    lwz 0, 0x248(30)
    cmplwi 0, 0x12
    .4byte 0x418100AC # bgt .L_801DE9A4
    lis 3, jumptable_804A5288@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804A5288@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    clrlwi. 0, 31, 24
    .4byte 0x4082008C # bne .L_801DE9A4
    .4byte 0xC002C4E4 # lfs f0, lbl_8053F484@sda21(r0)
    stfs 0, 0x44(30)
    .4byte 0x48000080 # b .L_801DE9A4
    clrlwi. 0, 31, 24
    .4byte 0x40820078 # bne .L_801DE9A4
    lwz 0, 0x230(30)
    rlwinm. 0, 0, 0, 12, 12
    .4byte 0x41820010 # beq .L_801DE948
    .4byte 0xC002C4E8 # lfs f0, lbl_8053F488@sda21(r0)
    stfs 0, 0x44(30)
    .4byte 0x48000060 # b .L_801DE9A4
L_801DE948:
    lwz 0, 0x2bc(30)
    cmpwi 0, 0x0
    .4byte 0x4180000C # blt .L_801DE95C
    .4byte 0xC002C4EC # lfs f0, lbl_8053F48C@sda21(r0)
    .4byte 0x48000008 # b .L_801DE960
L_801DE95C:
    .4byte 0xC002C4F0 # lfs f0, lbl_8053F490@sda21(r0)
L_801DE960:
    stfs 0, 0x44(30)
    .4byte 0x48000040 # b .L_801DE9A4
    lfs 2, 0x44(30)
    .4byte 0xC022C4F4 # lfs f1, lbl_8053F494@sda21(r0)
    .4byte 0xC002C01C # lfs f0, lbl_8053EFBC@sda21(r0)
    fadds 1, 2, 1
    fneg 2, 0
    stfs 1, 0x44(30)
    lfs 0, 0x44(30)
    fcmpo cr0, 0, 2
    .4byte 0x4080001C # bge .L_801DE9A4
    stfs 2, 0x44(30)
    .4byte 0x48000014 # b .L_801DE9A4
    clrlwi. 0, 31, 24
    .4byte 0x4082000C # bne .L_801DE9A4
    .4byte 0xC002C4F4 # lfs f0, lbl_8053F494@sda21(r0)
    stfs 0, 0x44(30)
L_801DE9A4:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

