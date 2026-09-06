.section extab, "a"
.balign 4
.global etb_8000D5D4
etb_8000D5D4:
    .4byte 0x600A0000
    .4byte 0x00000000
.size etb_8000D5D4, 8

.section extabindex, "a"
.balign 4
.global eti_8001C990
eti_8001C990:
    .4byte fn_80307830
    .4byte 0x00000298
    .4byte etb_8000D5D4
.size eti_8001C990, 12

.text
.balign 4
.global fn_80307830

# fn_80307830(callerID, ownerID, posPtr, effectRef, unused1=0, kindFlag,
# unused2=0, kindTag) - a SIBLING VARIANT of fn_803075AC (see
# extab_803075ac.s, landed immediately before this function with no
# extab boundary between them), sharing its ENTIRE outer structure
# byte-for-byte: same ownerID<8 early-out, same per-player
# fn_8022EA0C(link-resolve) + (*lbl_8053AAF8)->0x82 active-bit-test +
# fn_8023DE58(resolvedPlayer)==ownerID match loop.
#
# The difference is the target table and slot count: this uses
# `lbl_80504A38` (4 players x 0x280=640 bytes = 16 slots x 0x28 bytes,
# vs fn_803075AC's 40-slot/1600-byte table) - a SMALLER, presumably
# more short-lived "transient effect marker" pool, distinct from
# fn_803075AC's "shadow/carry-marker" pool. Same de-dup-by-callerID
# then find-first-free-slot shape. The kind byte written to a NEW
# slot's ->0x20 is encoded differently than fn_803075AC's simple
# pass-through: 2 if `kindFlag` is zero, else 3 if `kindTag==4`,
# else `(kindTag&3)|4` - a small enum not yet cross-referenced against
# a specific meaning. Confirmed caller: fn_80220F54 (see
# extab_80220f54.s), one of a family of actor draw() functions sharing
# this exact call shape.
fn_80307830:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stmw 20, 0x10(1)
    mr 21, 4
    cmpwi 21, 0x8
    mr 20, 3
    mr 22, 5
    mr 23, 6
    mr 24, 8
    mr 25, 9
    mr 26, 10
    .4byte 0x4080000C # bge .L_8030786C
    li 3, 0x0
    .4byte 0x4800024C # b .L_80307AB4
L_8030786C:
    clrlwi 4, 7, 24
    lis 5, lbl_80504A38@ha
    neg 3, 4
    clrlwi 0, 26, 30
    or 3, 3, 4
    addi 30, 5, lbl_80504A38@l
    ori 29, 0, 0x4
    li 28, 0x0
    srwi 31, 3, 31
    li 27, 0x0
L_80307894:
    mr 3, 27
    bl fn_8022EA0C
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    li 0, 0x1
    slw 0, 0, 27
    lbz 4, 0x82(4)
    clrlwi 0, 0, 24
    and. 0, 4, 0
    .4byte 0x418201EC # beq .L_80307AA0
    bl fn_8023DE58
    cmpw 21, 3
    .4byte 0x408201E0 # bne .L_80307AA0
    li 0, 0x2
    mr 4, 30
    li 3, 0x0
    mtctr 0
L_803078D4:
    lbz 0, 0x24(4)
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_803078EC
    lwz 0, 0x4(4)
    cmpw 0, 20
    .4byte 0x418200F0 # beq .L_803079D8
L_803078EC:
    lbz 0, 0x4c(4)
    addi 3, 3, 0x1
    addi 4, 4, 0x28
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_8030790C
    lwz 0, 0x4(4)
    cmpw 0, 20
    .4byte 0x418200D0 # beq .L_803079D8
L_8030790C:
    lbz 0, 0x4c(4)
    addi 3, 3, 0x1
    addi 4, 4, 0x28
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_8030792C
    lwz 0, 0x4(4)
    cmpw 0, 20
    .4byte 0x418200B0 # beq .L_803079D8
L_8030792C:
    lbz 0, 0x4c(4)
    addi 3, 3, 0x1
    addi 4, 4, 0x28
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_8030794C
    lwz 0, 0x4(4)
    cmpw 0, 20
    .4byte 0x41820090 # beq .L_803079D8
L_8030794C:
    lbz 0, 0x4c(4)
    addi 3, 3, 0x1
    addi 4, 4, 0x28
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_8030796C
    lwz 0, 0x4(4)
    cmpw 0, 20
    .4byte 0x41820070 # beq .L_803079D8
L_8030796C:
    lbz 0, 0x4c(4)
    addi 3, 3, 0x1
    addi 4, 4, 0x28
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_8030798C
    lwz 0, 0x4(4)
    cmpw 0, 20
    .4byte 0x41820050 # beq .L_803079D8
L_8030798C:
    lbz 0, 0x4c(4)
    addi 3, 3, 0x1
    addi 4, 4, 0x28
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_803079AC
    lwz 0, 0x4(4)
    cmpw 0, 20
    .4byte 0x41820030 # beq .L_803079D8
L_803079AC:
    lbz 0, 0x4c(4)
    addi 3, 3, 0x1
    addi 4, 4, 0x28
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_803079CC
    lwz 0, 0x4(4)
    cmpw 0, 20
    .4byte 0x41820010 # beq .L_803079D8
L_803079CC:
    addi 4, 4, 0x28
    addi 3, 3, 0x1
    .4byte 0x4200FF00 # bdnz .L_803078D4
L_803079D8:
    cmpwi 3, 0x10
    .4byte 0x40800030 # bge .L_80307A0C
    stw 21, 0x8(4)
    addi 3, 4, 0x10
    psq_l 1, 0x0(22), 0, 0
    li 28, 0x1
    lfs 0, 0x8(22)
    psq_st 1, 0x0(3), 0, 0
    stfs 0, 0x18(4)
    stw 23, 0x1c(4)
    stb 31, 0x21(4)
    stb 25, 0x22(4)
    .4byte 0x48000098 # b .L_80307AA0
L_80307A0C:
    li 0, 0x10
    mr 5, 30
    mtctr 0
L_80307A18:
    lbz 0, 0x24(5)
    cmplwi 0, 0x1
    .4byte 0x41820078 # beq .L_80307A98
    stw 20, 0x4(5)
    addi 4, 5, 0x10
    psq_l 1, 0x0(22), 0, 0
    li 3, 0x1
    stw 21, 0x8(5)
    clrlwi. 0, 24, 24
    lfs 0, 0x8(22)
    psq_st 1, 0x0(4), 0, 0
    stfs 0, 0x18(5)
    stw 23, 0x1c(5)
    stb 3, 0x24(5)
    stw 3, 0x0(5)
    .4byte 0x41820024 # beq .L_80307A78
    clrlwi 0, 26, 24
    cmplwi 0, 0x4
    .4byte 0x40820010 # bne .L_80307A70
    li 0, 0x3
    stb 0, 0x20(5)
    .4byte 0x48000014 # b .L_80307A80
L_80307A70:
    stb 29, 0x20(5)
    .4byte 0x4800000C # b .L_80307A80
L_80307A78:
    li 0, 0x2
    stb 0, 0x20(5)
L_80307A80:
    stb 31, 0x21(5)
    li 0, 0x0
    li 28, 0x1
    stb 0, 0x23(5)
    stb 25, 0x22(5)
    .4byte 0x4800000C # b .L_80307AA0
L_80307A98:
    addi 5, 5, 0x28
    .4byte 0x4200FF7C # bdnz .L_80307A18
L_80307AA0:
    addi 27, 27, 0x1
    addi 30, 30, 0x280
    cmpwi 27, 0x4
    .4byte 0x4180FDE8 # blt .L_80307894
    mr 3, 28
L_80307AB4:
    lmw 20, 0x10(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

