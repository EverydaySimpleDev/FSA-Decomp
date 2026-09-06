.section extab, "a"
.balign 4
.global etb_800081A0
etb_800081A0:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_800081A0, 8

.section extabindex, "a"
.balign 4
.global eti_80015394
eti_80015394:
    .4byte fn_801C887C
    .4byte 0x000002D4
    .4byte etb_800081A0
.size eti_80015394, 12

.text
.balign 4
.global fn_801C887C

# fn_801C887C(this) - another "pick my next single rail hop, stay in
# my current room" selector, sibling to fn_801C976C (extab_801c976c.s)
# but with an extra safety check. Bails entirely unless the ring's
# CURRENT position (RAIL's CONFIRMED fn_800FE294,
# project_fsa_rail_actor_identified.md) is confirmed inside my own
# room via the NEW fn_801CCB1C(roomID, point*) (a "point inside room's
# config rect" containment test).
# Peeks the forward and backward ring neighbors (the same
# peek-then-restore technique as fn_801C71BC/fn_801C9234/fn_801C976C),
# then:
# - If the BACKWARD neighbor's room (fn_800FE25C) doesn't match mine:
#   commit the FORWARD neighbor.
# - Else if the FORWARD neighbor's room doesn't match mine: commit the
#   BACKWARD neighbor.
# - Else (both neighbors are in my room): PRNG-roll (same
#   threshold-comparison idiom used throughout this cluster) to pick a
#   preferred candidate, compute its actual world position, and
#   double-check it's genuinely inside my room via fn_801CCB1C before
#   committing - falling back to the OTHER candidate if that check
#   fails.
# Finally, as a safety net: if the ring's resulting room STILL doesn't
# match mine, falls back to committing the plain "original position"
# snapshot taken before any of the above peeking began.
fn_801C887C:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stw 31, 0x4c(1)
    mr 31, 3
    addi 3, 31, 0x358
    stw 30, 0x48(1)
    stw 29, 0x44(1)
    stw 28, 0x40(1)
    bl GetCurrentSlotPtr
    mr 4, 3
    addi 3, 1, 0x28
    li 5, 0xff
    bl fn_800FE294
    lwz 4, 0x4(31)
    addi 3, 1, 0x28
    bl fn_801CCB1C
    clrlwi. 0, 3, 24
    .4byte 0x4182026C # beq .L_801C8B30
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    lbz 30, 0x3(3)
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    li 4, 0x1
    bl fn_800FD818
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    lbz 29, 0x3(3)
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    lbz 0, 0x2(3)
    cmplw 30, 0
    .4byte 0x40800008 # bge .L_801C8908
    stb 30, 0x3(3)
L_801C8908:
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    li 4, -0x1
    bl fn_800FD818
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    lbz 28, 0x3(3)
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    lbz 0, 0x2(3)
    clrlwi 4, 30, 24
    cmplw 4, 0
    .4byte 0x40800008 # bge .L_801C8940
    stb 30, 0x3(3)
L_801C8940:
    addic. 0, 1, 0xa
    .4byte 0x41820008 # beq .L_801C894C
    stb 28, 0xa(1)
L_801C894C:
    addic. 0, 1, 0x9
    .4byte 0x41820008 # beq .L_801C8958
    stb 30, 0x9(1)
L_801C8958:
    addic. 0, 1, 0x8
    .4byte 0x41820008 # beq .L_801C8964
    stb 29, 0x8(1)
L_801C8964:
    lwz 28, 0x4(31)
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    lbz 4, 0xa(1)
    bl fn_800FE25C
    cmpw 28, 3
    .4byte 0x41820024 # beq .L_801C89A0
    lbz 30, 0x8(1)
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    lbz 0, 0x2(3)
    cmplw 30, 0
    .4byte 0x40800164 # bge .L_801C8AF8
    stb 30, 0x3(3)
    .4byte 0x4800015C # b .L_801C8AF8
L_801C89A0:
    lwz 28, 0x4(31)
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    lbz 4, 0x8(1)
    bl fn_800FE25C
    cmpw 28, 3
    .4byte 0x41820024 # beq .L_801C89DC
    lbz 30, 0xa(1)
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    lbz 0, 0x2(3)
    cmplw 30, 0
    .4byte 0x40800128 # bge .L_801C8AF8
    stb 30, 0x3(3)
    .4byte 0x48000120 # b .L_801C8AF8
L_801C89DC:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022BF28 # lfs f1, lbl_8053EEC8@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC002BF38 # lfs f0, lbl_8053EED8@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 2, 0xc(1)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800070 # bge .L_801C8A90
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    lbz 5, 0xa(1)
    mr 4, 3
    addi 3, 1, 0x1c
    bl fn_800FE294
    lwz 4, 0x4(31)
    addi 3, 1, 0x1c
    bl fn_801CCB1C
    clrlwi. 0, 3, 24
    .4byte 0x41820024 # beq .L_801C8A70
    lbz 30, 0x8(1)
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    lbz 0, 0x2(3)
    cmplw 30, 0
    .4byte 0x40800094 # bge .L_801C8AF8
    stb 30, 0x3(3)
    .4byte 0x4800008C # b .L_801C8AF8
L_801C8A70:
    lbz 30, 0xa(1)
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    lbz 0, 0x2(3)
    cmplw 30, 0
    .4byte 0x40800074 # bge .L_801C8AF8
    stb 30, 0x3(3)
    .4byte 0x4800006C # b .L_801C8AF8
L_801C8A90:
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    lbz 5, 0x8(1)
    mr 4, 3
    addi 3, 1, 0x10
    bl fn_800FE294
    lwz 4, 0x4(31)
    addi 3, 1, 0x10
    bl fn_801CCB1C
    clrlwi. 0, 3, 24
    .4byte 0x41820024 # beq .L_801C8ADC
    lbz 30, 0xa(1)
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    lbz 0, 0x2(3)
    cmplw 30, 0
    .4byte 0x40800028 # bge .L_801C8AF8
    stb 30, 0x3(3)
    .4byte 0x48000020 # b .L_801C8AF8
L_801C8ADC:
    lbz 30, 0x8(1)
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    lbz 0, 0x2(3)
    cmplw 30, 0
    .4byte 0x40800008 # bge .L_801C8AF8
    stb 30, 0x3(3)
L_801C8AF8:
    lwz 28, 0x4(31)
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    li 4, 0xff
    bl fn_800FE25C
    cmpw 28, 3
    .4byte 0x41820020 # beq .L_801C8B30
    lbz 30, 0x9(1)
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    lbz 0, 0x2(3)
    cmplw 30, 0
    .4byte 0x40800008 # bge .L_801C8B30
    stb 30, 0x3(3)
L_801C8B30:
    lwz 0, 0x54(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    lwz 29, 0x44(1)
    lwz 28, 0x40(1)
    mtlr 0
    addi 1, 1, 0x50
    blr
