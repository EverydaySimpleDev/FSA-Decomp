.section extab, "a"
.balign 4
.global etb_80006ECC
etb_80006ECC:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80006ECC, 8

.section extabindex, "a"
.balign 4
.global eti_800139C0
eti_800139C0:
    .4byte fn_80154A98
    .4byte 0x00000198
    .4byte etb_80006ECC
.size eti_800139C0, 12

# fn_80154A98 - TKTA's ("Tektite") real draw(). Simpler than BZBR's -
# builds the same local render-config buffer idiom seen across every
# actor's draw() this session, then draws via a SINGLE call to the
# CONFIRMED shared effect-spawn primitive fn_801F06F0 (no branching
# between multiple visual states/variants, unlike BZBR) - consistent
# with Tektite only having simple Red/Blue color variants rather than
# BZBR's several distinct behavior-linked visual states.
.text
.balign 4
.global fn_80154A98

fn_80154A98:
    stwu 1, -0x80(1)
    mflr 0
    li 11, 0x0
    stw 0, 0x84(1)
    li 0, -0x1
    addi 10, 1, 0x38
    stw 0, 0x48(1)
    stw 0, 0x4c(1)
    .4byte 0x48000064 # b .L_80154B1C
L_80154ABC:
    clrlwi 0, 11, 24
    addi 8, 11, 0x5
    addi 6, 11, 0x1
    stbx 11, 10, 0
    clrlwi 0, 6, 24
    addi 4, 11, 0x2
    stbx 6, 10, 0
    clrlwi 0, 4, 24
    addi 5, 11, 0x3
    addi 9, 11, 0x4
    stbx 4, 10, 0
    clrlwi 0, 5, 24
    clrlwi 7, 8, 24
    addi 6, 11, 0x6
    stbx 5, 10, 0
    clrlwi 0, 9, 24
    addi 4, 11, 0x7
    clrlwi 5, 6, 24
    stbx 9, 10, 0
    clrlwi 0, 4, 24
    addi 11, 11, 0x8
    stbx 8, 10, 7
    stbx 6, 10, 5
    stbx 4, 10, 0
L_80154B1C:
    clrlwi 0, 11, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_80154ABC
    .4byte 0xC022A390 # lfs f1, lbl_8053D330@sda21(r0)
    li 6, 0x0
    li 5, 0x1
    li 7, -0x1
    li 4, 0x3
    li 0, 0x2
    stw 7, 0x48(1)
    stw 6, 0x4c(1)
    stw 6, 0x50(1)
    stb 6, 0x54(1)
    stb 6, 0x55(1)
    stb 6, 0x56(1)
    stb 5, 0x57(1)
    stb 5, 0x58(1)
    stb 6, 0x59(1)
    stb 6, 0x5a(1)
    stb 6, 0x5b(1)
    stb 6, 0x5c(1)
    stb 6, 0x5d(1)
    stb 5, 0x5e(1)
    stw 4, 0x60(1)
    stb 5, 0x64(1)
    stb 6, 0x65(1)
    stb 6, 0x66(1)
    stw 7, 0x68(1)
    stw 6, 0x6c(1)
    stw 0, 0x70(1)
    stfs 1, 0x14(1)
    stfs 1, 0x24(1)
    stfs 1, 0x34(1)
    lwz 4, 0x90(3)
    rlwinm. 0, 4, 0, 30, 30
    .4byte 0x40820078 # bne .L_80154C20
    cmplwi 4, 0x0
    .4byte 0x41820040 # beq .L_80154BF0
    lfs 3, 0x5c(3)
    addi 0, 1, 0x8
    lfs 2, 0x58(3)
    lfs 0, 0x54(3)
    stfs 0, 0x8(1)
    stfs 1, 0xc(1)
    stfs 1, 0x10(1)
    stfs 1, 0x18(1)
    stfs 2, 0x1c(1)
    stfs 1, 0x20(1)
    stfs 1, 0x28(1)
    stfs 1, 0x2c(1)
    stfs 3, 0x30(1)
    stb 6, 0x57(1)
    stw 0, 0x50(1)
L_80154BF0:
    lwz 0, 0x90(3)
    lis 4, lbl_80465DE8@ha
    .4byte 0xC022A394 # lfs f1, lbl_8053D334@sda21(r0)
    addi 4, 4, lbl_80465DE8@l
    mulli 0, 0, 0x3
    lwz 5, 0x250(3)
    fmr 2, 1
    addi 6, 1, 0x38
    li 7, 0x7
    add 5, 0, 5
    addi 5, 5, 0x49
    bl fn_801F06F0
L_80154C20:
    lwz 0, 0x84(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

