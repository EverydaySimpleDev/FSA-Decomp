# Fresh project-wide gap hunt continuation: 27 functions, 12,200 bytes,
# fully contiguous. Found+verified via the fixed spanwalk3.py/
# resolvefiles2.py (recognizes any symbol name, not just fn_/dtor_
# prefix). All referenced small-data symbols are private to this
# landing's own functions (verified via grep - not shared with any
# other already-landed file), so this does NOT carry the .sbss
# ordering risk documented for the deferred 0x80047258 candidate.

.section extab, "a"
.balign 4
.global etb_8000ABE0
etb_8000ABE0:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000ABE0, 8

.global etb_8000ABE8
etb_8000ABE8:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000ABE8, 8

.global etb_8000ABF0
etb_8000ABF0:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000ABF0, 8

.global etb_8000ABF8
etb_8000ABF8:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000ABF8, 8

.global etb_8000AC00
etb_8000AC00:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AC00, 8

.global etb_8000AC08
etb_8000AC08:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000AC08, 8

.global etb_8000AC10
etb_8000AC10:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000AC10, 8

.global etb_8000AC18
etb_8000AC18:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000AC18, 8

.global etb_8000AC20
etb_8000AC20:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AC20, 8

.global etb_8000AC28
etb_8000AC28:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AC28, 8

.global etb_8000AC30
etb_8000AC30:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AC30, 8

.global etb_8000AC38
etb_8000AC38:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AC38, 8

.global etb_8000AC40
etb_8000AC40:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AC40, 8

.global etb_8000AC48
etb_8000AC48:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AC48, 8

.global etb_8000AC50
etb_8000AC50:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AC50, 8

.global etb_8000AC58
etb_8000AC58:
    .4byte 0x300A0000
    .4byte 0x00000000
.size etb_8000AC58, 8

.global etb_8000AC60
etb_8000AC60:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_8000AC60, 8

.global etb_8000AC68
etb_8000AC68:
    .4byte 0x4A4A0000
    .4byte 0x00000000
.size etb_8000AC68, 8

.global etb_8000AC70
etb_8000AC70:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000AC70, 8

.global etb_8000AC78
etb_8000AC78:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AC78, 8

.global etb_8000AC80
etb_8000AC80:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AC80, 8

.global etb_8000AC88
etb_8000AC88:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AC88, 8

.global etb_8000AC90
etb_8000AC90:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AC90, 8

.section extabindex, "a"
.balign 4
.global eti_80018CDC
eti_80018CDC:
    .4byte fn_8023105C
    .4byte 0x0000009C
    .4byte etb_8000ABE0
.size eti_80018CDC, 12

.global eti_80018CE8
eti_80018CE8:
    .4byte fn_802310F8
    .4byte 0x0000009C
    .4byte etb_8000ABE8
.size eti_80018CE8, 12

.global eti_80018CF4
eti_80018CF4:
    .4byte fn_80231194
    .4byte 0x0000009C
    .4byte etb_8000ABF0
.size eti_80018CF4, 12

.global eti_80018D00
eti_80018D00:
    .4byte fn_80231230
    .4byte 0x0000009C
    .4byte etb_8000ABF8
.size eti_80018D00, 12

.global eti_80018D0C
eti_80018D0C:
    .4byte fn_802312CC
    .4byte 0x0000009C
    .4byte etb_8000AC00
.size eti_80018D0C, 12

.global eti_80018D18
eti_80018D18:
    .4byte fn_80231368
    .4byte 0x000000BC
    .4byte etb_8000AC08
.size eti_80018D18, 12

.global eti_80018D24
eti_80018D24:
    .4byte fn_80231424
    .4byte 0x000000B4
    .4byte etb_8000AC10
.size eti_80018D24, 12

.global eti_80018D30
eti_80018D30:
    .4byte fn_802314D8
    .4byte 0x000000B8
    .4byte etb_8000AC18
.size eti_80018D30, 12

.global eti_80018D3C
eti_80018D3C:
    .4byte fn_80231590
    .4byte 0x0000009C
    .4byte etb_8000AC20
.size eti_80018D3C, 12

.global eti_80018D48
eti_80018D48:
    .4byte fn_8023162C
    .4byte 0x0000009C
    .4byte etb_8000AC28
.size eti_80018D48, 12

.global eti_80018D54
eti_80018D54:
    .4byte fn_802316C8
    .4byte 0x00000128
    .4byte etb_8000AC30
.size eti_80018D54, 12

.global eti_80018D60
eti_80018D60:
    .4byte fn_802317F0
    .4byte 0x0000009C
    .4byte etb_8000AC38
.size eti_80018D60, 12

.global eti_80018D6C
eti_80018D6C:
    .4byte fn_8023188C
    .4byte 0x0000009C
    .4byte etb_8000AC40
.size eti_80018D6C, 12

.global eti_80018D78
eti_80018D78:
    .4byte fn_80231928
    .4byte 0x0000008C
    .4byte etb_8000AC48
.size eti_80018D78, 12

.global eti_80018D84
eti_80018D84:
    .4byte fn_802319B4
    .4byte 0x0000009C
    .4byte etb_8000AC50
.size eti_80018D84, 12

.global eti_80018D90
eti_80018D90:
    .4byte fn_80231A50
    .4byte 0x00000394
    .4byte etb_8000AC58
.size eti_80018D90, 12

.global eti_80018D9C
eti_80018D9C:
    .4byte fn_80231DE4
    .4byte 0x00000C28
    .4byte etb_8000AC60
.size eti_80018D9C, 12

.global eti_80018DA8
eti_80018DA8:
    .4byte fn_80232A0C
    .4byte 0x00001194
    .4byte etb_8000AC68
.size eti_80018DA8, 12

.global eti_80018DB4
eti_80018DB4:
    .4byte fn_80233BC4
    .4byte 0x00000044
    .4byte etb_8000AC70
.size eti_80018DB4, 12

.global eti_80018DC0
eti_80018DC0:
    .4byte fn_80233DA4
    .4byte 0x0000009C
    .4byte etb_8000AC78
.size eti_80018DC0, 12

.global eti_80018DCC
eti_80018DCC:
    .4byte fn_80233E40
    .4byte 0x0000009C
    .4byte etb_8000AC80
.size eti_80018DCC, 12

.global eti_80018DD8
eti_80018DD8:
    .4byte fn_80233EDC
    .4byte 0x0000009C
    .4byte etb_8000AC88
.size eti_80018DD8, 12

.global eti_80018DE4
eti_80018DE4:
    .4byte fn_80233F78
    .4byte 0x0000008C
    .4byte etb_8000AC90
.size eti_80018DE4, 12

.text
.balign 4
.global fn_8023105C
.global fn_802310F8
.global fn_80231194
.global fn_80231230
.global fn_802312CC
.global fn_80231368
.global fn_80231424
.global fn_802314D8
.global fn_80231590
.global fn_8023162C
.global fn_802316C8
.global fn_802317F0
.global fn_8023188C
.global fn_80231928
.global fn_802319B4
.global fn_80231A50
.global fn_80231DE4
.global fn_80232A0C
.global fn_80233BA0
.global fn_80233BC4
.global fn_80233C08
.global fn_80233C9C
.global fn_80233D20
.global fn_80233DA4
.global fn_80233E40
.global fn_80233EDC
.global fn_80233F78

fn_8023105C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8023107C
    li 3, 0x0
    .4byte 0x48000070 # b .L_802310E8
L_8023107C:
    .4byte 0x4082000C # bne .L_80231088
    li 0, 0x0
    .4byte 0x48000044 # b .L_802310C8
L_80231088:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_80231098
    li 0, 0x0
    .4byte 0x48000034 # b .L_802310C8
L_80231098:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_802310A8
    li 0, 0x0
    .4byte 0x48000024 # b .L_802310C8
L_802310A8:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_802310C4
    li 0, 0x0
    .4byte 0x48000008 # b .L_802310C8
L_802310C4:
    lbz 0, 0xcac(4)
L_802310C8:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_802310E4
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_8025FEDC
    .4byte 0x48000008 # b .L_802310E8
L_802310E4:
    li 3, 0x0
L_802310E8:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802310F8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_80231118
    li 3, 0x0
    .4byte 0x48000070 # b .L_80231184
L_80231118:
    .4byte 0x4082000C # bne .L_80231124
    li 0, 0x0
    .4byte 0x48000044 # b .L_80231164
L_80231124:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_80231134
    li 0, 0x0
    .4byte 0x48000034 # b .L_80231164
L_80231134:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_80231144
    li 0, 0x0
    .4byte 0x48000024 # b .L_80231164
L_80231144:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_80231160
    li 0, 0x0
    .4byte 0x48000008 # b .L_80231164
L_80231160:
    lbz 0, 0xcac(4)
L_80231164:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_80231180
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_8025FF70
    .4byte 0x48000008 # b .L_80231184
L_80231180:
    li 3, 0x0
L_80231184:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80231194:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_802311B4
    li 3, 0x0
    .4byte 0x48000070 # b .L_80231220
L_802311B4:
    .4byte 0x4082000C # bne .L_802311C0
    li 0, 0x0
    .4byte 0x48000044 # b .L_80231200
L_802311C0:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_802311D0
    li 0, 0x0
    .4byte 0x48000034 # b .L_80231200
L_802311D0:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_802311E0
    li 0, 0x0
    .4byte 0x48000024 # b .L_80231200
L_802311E0:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_802311FC
    li 0, 0x0
    .4byte 0x48000008 # b .L_80231200
L_802311FC:
    lbz 0, 0xcac(4)
L_80231200:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8023121C
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_8026000C
    .4byte 0x48000008 # b .L_80231220
L_8023121C:
    li 3, 0x0
L_80231220:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80231230:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80CD90D0 # lwz r6, lbl_8053AC90@sda21(r0)
    cmplwi 6, 0x0
    .4byte 0x4082000C # bne .L_80231250
    li 3, 0x0
    .4byte 0x48000070 # b .L_802312BC
L_80231250:
    .4byte 0x4082000C # bne .L_8023125C
    li 0, 0x0
    .4byte 0x48000044 # b .L_8023129C
L_8023125C:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8023126C
    li 0, 0x0
    .4byte 0x48000034 # b .L_8023129C
L_8023126C:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8023127C
    li 0, 0x0
    .4byte 0x48000024 # b .L_8023129C
L_8023127C:
    slwi 0, 3, 2
    add 5, 6, 0
    lwz 5, 0x4(5)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_80231298
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023129C
L_80231298:
    lbz 0, 0xcac(5)
L_8023129C:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_802312B8
    slwi 0, 3, 2
    add 3, 6, 0
    lwz 3, 0x4(3)
    bl fn_80260048
    .4byte 0x48000008 # b .L_802312BC
L_802312B8:
    li 3, 0x0
L_802312BC:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802312CC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80CD90D0 # lwz r6, lbl_8053AC90@sda21(r0)
    cmplwi 6, 0x0
    .4byte 0x4082000C # bne .L_802312EC
    li 3, 0x0
    .4byte 0x48000070 # b .L_80231358
L_802312EC:
    .4byte 0x4082000C # bne .L_802312F8
    li 0, 0x0
    .4byte 0x48000044 # b .L_80231338
L_802312F8:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_80231308
    li 0, 0x0
    .4byte 0x48000034 # b .L_80231338
L_80231308:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_80231318
    li 0, 0x0
    .4byte 0x48000024 # b .L_80231338
L_80231318:
    slwi 0, 3, 2
    add 5, 6, 0
    lwz 5, 0x4(5)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_80231334
    li 0, 0x0
    .4byte 0x48000008 # b .L_80231338
L_80231334:
    lbz 0, 0xcac(5)
L_80231338:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_80231354
    slwi 0, 3, 2
    add 3, 6, 0
    lwz 3, 0x4(3)
    bl fn_802600A0
    .4byte 0x48000008 # b .L_80231358
L_80231354:
    li 3, 0x0
L_80231358:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80231368:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    .4byte 0x800D90D0 # lwz r0, lbl_8053AC90@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x41820088 # beq .L_8023140C
    li 30, 0x0
    li 31, 0x0
L_80231390:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_802313A4
    li 0, 0x0
    .4byte 0x48000040 # b .L_802313E0
L_802313A4:
    cmpwi 30, 0x0
    .4byte 0x4080000C # bge .L_802313B4
    li 0, 0x0
    .4byte 0x48000030 # b .L_802313E0
L_802313B4:
    cmpwi 30, 0x4
    .4byte 0x4180000C # blt .L_802313C4
    li 0, 0x0
    .4byte 0x48000020 # b .L_802313E0
L_802313C4:
    addi 0, 31, 0x4
    lwzx 4, 3, 0
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_802313DC
    li 0, 0x0
    .4byte 0x48000008 # b .L_802313E0
L_802313DC:
    lbz 0, 0xcac(4)
L_802313E0:
    clrlwi. 0, 0, 24
    .4byte 0x41820010 # beq .L_802313F4
    addi 0, 31, 0x4
    lwzx 3, 3, 0
    bl fn_802422D0
L_802313F4:
    addi 30, 30, 0x1
    addi 31, 31, 0x4
    cmpwi 30, 0x4
    .4byte 0x4180FF90 # blt .L_80231390
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80457F6C
L_8023140C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80231424:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    .4byte 0x800D90D0 # lwz r0, lbl_8053AC90@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x41820080 # beq .L_802314C0
    li 30, 0x0
    li 31, 0x0
L_8023144C:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_80231460
    li 0, 0x0
    .4byte 0x48000040 # b .L_8023149C
L_80231460:
    cmpwi 30, 0x0
    .4byte 0x4080000C # bge .L_80231470
    li 0, 0x0
    .4byte 0x48000030 # b .L_8023149C
L_80231470:
    cmpwi 30, 0x4
    .4byte 0x4180000C # blt .L_80231480
    li 0, 0x0
    .4byte 0x48000020 # b .L_8023149C
L_80231480:
    addi 0, 31, 0x4
    lwzx 4, 3, 0
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_80231498
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023149C
L_80231498:
    lbz 0, 0xcac(4)
L_8023149C:
    clrlwi. 0, 0, 24
    .4byte 0x41820010 # beq .L_802314B0
    addi 0, 31, 0x4
    lwzx 3, 3, 0
    bl fn_80242560
L_802314B0:
    addi 30, 30, 0x1
    addi 31, 31, 0x4
    cmpwi 30, 0x4
    .4byte 0x4180FF90 # blt .L_8023144C
L_802314C0:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802314D8:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_802314F8
    li 3, 0x0
    .4byte 0x4800008C # b .L_80231580
L_802314F8:
    .4byte 0x4082000C # bne .L_80231504
    li 0, 0x0
    .4byte 0x48000044 # b .L_80231544
L_80231504:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_80231514
    li 0, 0x0
    .4byte 0x48000034 # b .L_80231544
L_80231514:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_80231524
    li 0, 0x0
    .4byte 0x48000024 # b .L_80231544
L_80231524:
    slwi 0, 3, 2
    add 5, 5, 0
    lwz 5, 0x4(5)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_80231540
    li 0, 0x0
    .4byte 0x48000008 # b .L_80231544
L_80231540:
    lbz 0, 0xcac(5)
L_80231544:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80231554
    li 3, 0x0
    .4byte 0x48000030 # b .L_80231580
L_80231554:
    lfs 0, 0x8(4)
    addi 5, 1, 0x8
    psq_l 1, 0x0(4), 0, 0
    slwi 0, 3, 2
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    mr 4, 5
    psq_st 1, 0x0(5), 0, 0
    add 3, 3, 0
    stfs 0, 0x10(1)
    lwz 3, 0x4(3)
    bl fn_80242624
L_80231580:
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80231590:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80CD90D0 # lwz r6, lbl_8053AC90@sda21(r0)
    cmplwi 6, 0x0
    .4byte 0x4082000C # bne .L_802315B0
    li 3, 0x0
    .4byte 0x48000070 # b .L_8023161C
L_802315B0:
    .4byte 0x4082000C # bne .L_802315BC
    li 0, 0x0
    .4byte 0x48000044 # b .L_802315FC
L_802315BC:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_802315CC
    li 0, 0x0
    .4byte 0x48000034 # b .L_802315FC
L_802315CC:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_802315DC
    li 0, 0x0
    .4byte 0x48000024 # b .L_802315FC
L_802315DC:
    slwi 0, 3, 2
    add 5, 6, 0
    lwz 5, 0x4(5)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_802315F8
    li 0, 0x0
    .4byte 0x48000008 # b .L_802315FC
L_802315F8:
    lbz 0, 0xcac(5)
L_802315FC:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_80231618
    slwi 0, 3, 2
    add 3, 6, 0
    lwz 3, 0x4(3)
    bl fn_802426E0
    .4byte 0x48000008 # b .L_8023161C
L_80231618:
    li 3, 0x0
L_8023161C:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8023162C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80CD90D0 # lwz r6, lbl_8053AC90@sda21(r0)
    cmplwi 6, 0x0
    .4byte 0x4082000C # bne .L_8023164C
    li 3, 0x0
    .4byte 0x48000070 # b .L_802316B8
L_8023164C:
    .4byte 0x4082000C # bne .L_80231658
    li 0, 0x0
    .4byte 0x48000044 # b .L_80231698
L_80231658:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_80231668
    li 0, 0x0
    .4byte 0x48000034 # b .L_80231698
L_80231668:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_80231678
    li 0, 0x0
    .4byte 0x48000024 # b .L_80231698
L_80231678:
    slwi 0, 3, 2
    add 5, 6, 0
    lwz 5, 0x4(5)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_80231694
    li 0, 0x0
    .4byte 0x48000008 # b .L_80231698
L_80231694:
    lbz 0, 0xcac(5)
L_80231698:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_802316B4
    slwi 0, 3, 2
    add 3, 6, 0
    lwz 3, 0x4(3)
    bl fn_80242704
    .4byte 0x48000008 # b .L_802316B8
L_802316B4:
    li 3, 0x0
L_802316B8:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802316C8:
    stwu 1, -0x10(1)
    mflr 0
    mr 6, 5
    stw 0, 0x14(1)
    .4byte 0x80ED90D0 # lwz r7, lbl_8053AC90@sda21(r0)
    cmplwi 7, 0x0
    .4byte 0x4082000C # bne .L_802316EC
    li 3, 0x0
    .4byte 0x480000F8 # b .L_802317E0
L_802316EC:
    .4byte 0x4082000C # bne .L_802316F8
    li 0, 0x0
    .4byte 0x48000044 # b .L_80231738
L_802316F8:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_80231708
    li 0, 0x0
    .4byte 0x48000034 # b .L_80231738
L_80231708:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_80231718
    li 0, 0x0
    .4byte 0x48000024 # b .L_80231738
L_80231718:
    slwi 0, 3, 2
    add 5, 7, 0
    lwz 5, 0x4(5)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_80231734
    li 0, 0x0
    .4byte 0x48000008 # b .L_80231738
L_80231734:
    lbz 0, 0xcac(5)
L_80231738:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80231748
    li 3, 0x0
    .4byte 0x4800009C # b .L_802317E0
L_80231748:
    cmplwi 7, 0x0
    .4byte 0x40820010 # bne .L_8023175C
    lis 5, lbl_804CF460@ha
    addi 5, 5, lbl_804CF460@l
    .4byte 0x48000074 # b .L_802317CC
L_8023175C:
    .4byte 0x4082000C # bne .L_80231768
    li 0, 0x0
    .4byte 0x48000044 # b .L_802317A8
L_80231768:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_80231778
    li 0, 0x0
    .4byte 0x48000034 # b .L_802317A8
L_80231778:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_80231788
    li 0, 0x0
    .4byte 0x48000024 # b .L_802317A8
L_80231788:
    slwi 0, 3, 2
    add 5, 7, 0
    lwz 5, 0x4(5)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_802317A4
    li 0, 0x0
    .4byte 0x48000008 # b .L_802317A8
L_802317A4:
    lbz 0, 0xcac(5)
L_802317A8:
    clrlwi. 0, 0, 24
    .4byte 0x40820010 # bne .L_802317BC
    lis 5, lbl_804CF460@ha
    addi 5, 5, lbl_804CF460@l
    .4byte 0x48000014 # b .L_802317CC
L_802317BC:
    slwi 0, 3, 2
    add 5, 7, 0
    lwz 5, 0x4(5)
    addi 5, 5, 0x8
L_802317CC:
    slwi 0, 3, 2
    add 3, 7, 0
    li 7, 0x11
    lwz 3, 0x4(3)
    bl fn_80290070
L_802317E0:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802317F0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x812D90D0 # lwz r9, lbl_8053AC90@sda21(r0)
    cmplwi 9, 0x0
    .4byte 0x4082000C # bne .L_80231810
    li 3, 0x0
    .4byte 0x48000070 # b .L_8023187C
L_80231810:
    .4byte 0x4082000C # bne .L_8023181C
    li 0, 0x0
    .4byte 0x48000044 # b .L_8023185C
L_8023181C:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8023182C
    li 0, 0x0
    .4byte 0x48000034 # b .L_8023185C
L_8023182C:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8023183C
    li 0, 0x0
    .4byte 0x48000024 # b .L_8023185C
L_8023183C:
    slwi 0, 3, 2
    add 8, 9, 0
    lwz 8, 0x4(8)
    cmplwi 8, 0x0
    .4byte 0x4082000C # bne .L_80231858
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023185C
L_80231858:
    lbz 0, 0xcac(8)
L_8023185C:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_80231878
    slwi 0, 3, 2
    add 3, 9, 0
    lwz 3, 0x4(3)
    bl fn_80290070
    .4byte 0x48000008 # b .L_8023187C
L_80231878:
    li 3, 0x0
L_8023187C:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8023188C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_802318AC
    li 3, 0x0
    .4byte 0x48000070 # b .L_80231918
L_802318AC:
    .4byte 0x4082000C # bne .L_802318B8
    li 0, 0x0
    .4byte 0x48000044 # b .L_802318F8
L_802318B8:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_802318C8
    li 0, 0x0
    .4byte 0x48000034 # b .L_802318F8
L_802318C8:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_802318D8
    li 0, 0x0
    .4byte 0x48000024 # b .L_802318F8
L_802318D8:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_802318F4
    li 0, 0x0
    .4byte 0x48000008 # b .L_802318F8
L_802318F4:
    lbz 0, 0xcac(4)
L_802318F8:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_80231914
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl Player_IsTargetable
    .4byte 0x48000008 # b .L_80231918
L_80231914:
    li 3, 0x0
L_80231918:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80231928:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x41820068 # beq .L_802319A4
    .4byte 0x4082000C # bne .L_8023194C
    li 0, 0x0
    .4byte 0x48000044 # b .L_8023198C
L_8023194C:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8023195C
    li 0, 0x0
    .4byte 0x48000034 # b .L_8023198C
L_8023195C:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8023196C
    li 0, 0x0
    .4byte 0x48000024 # b .L_8023198C
L_8023196C:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_80231988
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023198C
L_80231988:
    lbz 0, 0xcac(4)
L_8023198C:
    clrlwi. 0, 0, 24
    .4byte 0x41820014 # beq .L_802319A4
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_8023FBF0
L_802319A4:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802319B4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80CD90D0 # lwz r6, lbl_8053AC90@sda21(r0)
    cmplwi 6, 0x0
    .4byte 0x4082000C # bne .L_802319D4
    li 3, 0x0
    .4byte 0x48000070 # b .L_80231A40
L_802319D4:
    .4byte 0x4082000C # bne .L_802319E0
    li 0, 0x0
    .4byte 0x48000044 # b .L_80231A20
L_802319E0:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_802319F0
    li 0, 0x0
    .4byte 0x48000034 # b .L_80231A20
L_802319F0:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_80231A00
    li 0, 0x0
    .4byte 0x48000024 # b .L_80231A20
L_80231A00:
    slwi 0, 3, 2
    add 5, 6, 0
    lwz 5, 0x4(5)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_80231A1C
    li 0, 0x0
    .4byte 0x48000008 # b .L_80231A20
L_80231A1C:
    lbz 0, 0xcac(5)
L_80231A20:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_80231A3C
    slwi 0, 3, 2
    add 3, 6, 0
    lwz 3, 0x4(3)
    bl fn_80251BFC
    .4byte 0x48000008 # b .L_80231A40
L_80231A3C:
    li 3, 0x0
L_80231A40:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80231A50:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 26, 0x18(1)
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_80231A74
    li 0, 0x0
    .4byte 0x48000100 # b .L_80231B70
L_80231A74:
    .4byte 0x4082000C # bne .L_80231A80
    li 0, 0x0
    .4byte 0x48000008 # b .L_80231A84
L_80231A80:
    lbz 0, 0x6c(3)
L_80231A84:
    clrlwi. 0, 0, 24
    .4byte 0x4182000C # beq .L_80231A94
    li 0, 0x1
    .4byte 0x480000E0 # b .L_80231B70
L_80231A94:
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_80231AA4
    li 0, 0x0
    .4byte 0x48000008 # b .L_80231AA8
L_80231AA4:
    lbz 0, 0x6d(3)
L_80231AA8:
    clrlwi. 0, 0, 24
    .4byte 0x4182000C # beq .L_80231AB8
    li 0, 0x1
    .4byte 0x480000BC # b .L_80231B70
L_80231AB8:
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_80231AC8
    li 0, 0x0
    .4byte 0x48000008 # b .L_80231ACC
L_80231AC8:
    lbz 0, 0x6e(3)
L_80231ACC:
    clrlwi. 0, 0, 24
    .4byte 0x4182000C # beq .L_80231ADC
    li 0, 0x1
    .4byte 0x48000098 # b .L_80231B70
L_80231ADC:
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_80231AEC
    li 0, 0x0
    .4byte 0x48000008 # b .L_80231AF0
L_80231AEC:
    lbz 0, 0x6f(3)
L_80231AF0:
    clrlwi. 0, 0, 24
    .4byte 0x4182000C # beq .L_80231B00
    li 0, 0x1
    .4byte 0x48000074 # b .L_80231B70
L_80231B00:
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_80231B10
    li 0, 0x0
    .4byte 0x48000008 # b .L_80231B14
L_80231B10:
    lbz 0, 0x70(3)
L_80231B14:
    clrlwi. 0, 0, 24
    .4byte 0x4182000C # beq .L_80231B24
    li 0, 0x1
    .4byte 0x48000050 # b .L_80231B70
L_80231B24:
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_80231B34
    li 0, 0x0
    .4byte 0x48000008 # b .L_80231B38
L_80231B34:
    lbz 0, 0x71(3)
L_80231B38:
    clrlwi. 0, 0, 24
    .4byte 0x4182000C # beq .L_80231B48
    li 0, 0x1
    .4byte 0x4800002C # b .L_80231B70
L_80231B48:
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_80231B58
    li 0, 0x0
    .4byte 0x48000008 # b .L_80231B5C
L_80231B58:
    lbz 0, 0x72(3)
L_80231B5C:
    clrlwi. 0, 0, 24
    .4byte 0x4182000C # beq .L_80231B6C
    li 0, 0x1
    .4byte 0x48000008 # b .L_80231B70
L_80231B6C:
    li 0, 0x0
L_80231B70:
    clrlwi. 0, 0, 24
    .4byte 0x4182000C # beq .L_80231B80
    li 3, -0x1
    .4byte 0x48000254 # b .L_80231DD0
L_80231B80:
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_80231B90
    li 0, 0x0
    .4byte 0x48000008 # b .L_80231B94
L_80231B90:
    lbz 0, 0x73(3)
L_80231B94:
    clrlwi. 0, 0, 24
    .4byte 0x4182000C # beq .L_80231BA4
    li 3, -0x1
    .4byte 0x48000230 # b .L_80231DD0
L_80231BA4:
    li 31, 0x0
    li 28, -0x1
    mr 30, 31
    li 27, 0x0
    mr 29, 31
L_80231BB8:
    .4byte 0x808D90D0 # lwz r4, lbl_8053AC90@sda21(r0)
    addi 0, 29, 0x4
    lwzx 3, 4, 0
    cmplwi 3, 0x0
    mr 26, 3
    .4byte 0x41820154 # beq .L_80231D20
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_80231BE0
    li 0, 0x0
    .4byte 0x48000038 # b .L_80231C14
L_80231BE0:
    cmpwi 27, 0x0
    .4byte 0x4080000C # bge .L_80231BF0
    li 0, 0x0
    .4byte 0x48000028 # b .L_80231C14
L_80231BF0:
    cmpwi 27, 0x4
    .4byte 0x4180000C # blt .L_80231C00
    li 0, 0x0
    .4byte 0x48000018 # b .L_80231C14
L_80231C00:
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_80231C10
    li 0, 0x0
    .4byte 0x48000008 # b .L_80231C14
L_80231C10:
    lbz 0, 0xcac(3)
L_80231C14:
    clrlwi. 0, 0, 24
    .4byte 0x41820108 # beq .L_80231D20
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_80231C2C
    li 3, 0x0
    .4byte 0x48000058 # b .L_80231C80
L_80231C2C:
    .4byte 0x4082000C # bne .L_80231C38
    li 0, 0x0
    .4byte 0x48000038 # b .L_80231C6C
L_80231C38:
    cmpwi 27, 0x0
    .4byte 0x4080000C # bge .L_80231C48
    li 0, 0x0
    .4byte 0x48000028 # b .L_80231C6C
L_80231C48:
    cmpwi 27, 0x4
    .4byte 0x4180000C # blt .L_80231C58
    li 0, 0x0
    .4byte 0x48000018 # b .L_80231C6C
L_80231C58:
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_80231C68
    li 0, 0x0
    .4byte 0x48000008 # b .L_80231C6C
L_80231C68:
    lbz 0, 0xcac(3)
L_80231C6C:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80231C7C
    li 3, 0x1
    .4byte 0x48000008 # b .L_80231C80
L_80231C7C:
    bl fn_80240670
L_80231C80:
    clrlwi. 0, 3, 24
    .4byte 0x4082009C # bne .L_80231D20
    mr 3, 26
    addi 4, 1, 0x8
    bl fn_802527B0
    clrlwi. 0, 3, 24
    .4byte 0x4082001C # bne .L_80231CB4
    cmpwi 28, -0x1
    .4byte 0x4082000C # bne .L_80231CAC
    mr 28, 27
    .4byte 0x48000078 # b .L_80231D20
L_80231CAC:
    li 3, -0x1
    .4byte 0x48000120 # b .L_80231DD0
L_80231CB4:
    lis 3, lbl_80539D44@ha
    .4byte 0xC022D06C # lfs f1, lbl_8054000C@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    mullw 4, 31, 31
    fmuls 0, 1, 0
    fctiwz 0, 0
    mullw 3, 30, 30
    stfd 0, 0x10(1)
    lwz 0, 0x14(1)
    add 3, 4, 3
    cmpw 3, 0
    .4byte 0x41810010 # bgt .L_80231CF0
    lwz 31, 0x8(1)
    lwz 30, 0xc(1)
    .4byte 0x48000034 # b .L_80231D20
L_80231CF0:
    lwz 0, 0x8(1)
    li 3, 0x0
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_80231D10
    lwz 0, 0xc(1)
    cmpw 30, 0
    .4byte 0x40820008 # bne .L_80231D10
    li 3, 0x1
L_80231D10:
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_80231D20
    li 3, -0x1
    .4byte 0x480000B4 # b .L_80231DD0
L_80231D20:
    addi 27, 27, 0x1
    addi 29, 29, 0x4
    cmpwi 27, 0x4
    .4byte 0x4180FE8C # blt .L_80231BB8
    cmpwi 28, 0x0
    .4byte 0x4080000C # bge .L_80231D40
    li 3, -0x1
    .4byte 0x48000094 # b .L_80231DD0
L_80231D40:
    .4byte 0x808D90D0 # lwz r4, lbl_8053AC90@sda21(r0)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_80231D54
    li 0, 0x0
    .4byte 0x48000070 # b .L_80231DC0
L_80231D54:
    .4byte 0x4082000C # bne .L_80231D60
    li 0, 0x0
    .4byte 0x48000044 # b .L_80231DA0
L_80231D60:
    cmpwi 28, 0x0
    .4byte 0x4080000C # bge .L_80231D70
    li 0, 0x0
    .4byte 0x48000034 # b .L_80231DA0
L_80231D70:
    cmpwi 28, 0x4
    .4byte 0x4180000C # blt .L_80231D80
    li 0, 0x0
    .4byte 0x48000024 # b .L_80231DA0
L_80231D80:
    slwi 0, 28, 2
    add 3, 4, 0
    lwz 3, 0x4(3)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_80231D9C
    li 0, 0x0
    .4byte 0x48000008 # b .L_80231DA0
L_80231D9C:
    lbz 0, 0xcac(3)
L_80231DA0:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80231DB0
    li 0, 0x0
    .4byte 0x48000014 # b .L_80231DC0
L_80231DB0:
    slwi 0, 28, 2
    add 3, 4, 0
    lwz 3, 0x4(3)
    lwz 0, 0x3b4(3)
L_80231DC0:
    cmpwi 0, 0x8
    li 3, -0x1
    .4byte 0x41800008 # blt .L_80231DD0
    mr 3, 28
L_80231DD0:
    lmw 26, 0x18(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80231DE4:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stw 31, 0x3c(1)
    li 31, 0x0
    stw 30, 0x38(1)
    stw 29, 0x34(1)
    li 29, 0x0
    stw 28, 0x30(1)
L_80231E08:
    .4byte 0x808D90D0 # lwz r4, lbl_8053AC90@sda21(r0)
    addi 0, 31, 0x4
    lwzx 3, 4, 0
    cmplwi 3, 0x0
    .4byte 0x41820100 # beq .L_80231F18
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_80231E2C
    li 0, 0x0
    .4byte 0x48000038 # b .L_80231E60
L_80231E2C:
    cmpwi 29, 0x0
    .4byte 0x4080000C # bge .L_80231E3C
    li 0, 0x0
    .4byte 0x48000028 # b .L_80231E60
L_80231E3C:
    cmpwi 29, 0x4
    .4byte 0x4180000C # blt .L_80231E4C
    li 0, 0x0
    .4byte 0x48000018 # b .L_80231E60
L_80231E4C:
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_80231E5C
    li 0, 0x0
    .4byte 0x48000008 # b .L_80231E60
L_80231E5C:
    lbz 0, 0xcac(3)
L_80231E60:
    clrlwi. 0, 0, 24
    .4byte 0x418200B4 # beq .L_80231F18
    li 0, 0x0
    addi 4, 1, 0x18
    stw 0, 0x18(1)
    stw 0, 0x1c(1)
    bl fn_802527B0
    clrlwi. 0, 3, 24
    .4byte 0x41820098 # beq .L_80231F18
    li 28, 0x0
    li 30, 0x0
L_80231E8C:
    mr 3, 29
    mr 4, 28
    bl fn_8022E438
    clrlwi. 0, 3, 24
    .4byte 0x4182006C # beq .L_80231F08
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x41820060 # beq .L_80231F08
    .4byte 0x4082000C # bne .L_80231EB8
    li 0, 0x0
    .4byte 0x48000040 # b .L_80231EF4
L_80231EB8:
    cmpwi 28, 0x0
    .4byte 0x4080000C # bge .L_80231EC8
    li 0, 0x0
    .4byte 0x48000030 # b .L_80231EF4
L_80231EC8:
    cmpwi 28, 0x4
    .4byte 0x4180000C # blt .L_80231ED8
    li 0, 0x0
    .4byte 0x48000020 # b .L_80231EF4
L_80231ED8:
    addi 0, 30, 0x4
    lwzx 4, 3, 0
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_80231EF0
    li 0, 0x0
    .4byte 0x48000008 # b .L_80231EF4
L_80231EF0:
    lbz 0, 0xcac(4)
L_80231EF4:
    clrlwi. 0, 0, 24
    .4byte 0x41820010 # beq .L_80231F08
    addi 0, 30, 0x4
    lwzx 3, 3, 0
    bl fn_80248DB8
L_80231F08:
    addi 28, 28, 0x1
    addi 30, 30, 0x4
    cmpwi 28, 0x4
    .4byte 0x4180FF78 # blt .L_80231E8C
L_80231F18:
    addi 29, 29, 0x1
    addi 31, 31, 0x4
    cmpwi 29, 0x4
    .4byte 0x4180FEE4 # blt .L_80231E08
    .4byte 0x808D90D0 # lwz r4, lbl_8053AC90@sda21(r0)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_80231F3C
    li 0, 0x0
    .4byte 0x48000100 # b .L_80232038
L_80231F3C:
    .4byte 0x4082000C # bne .L_80231F48
    li 0, 0x0
    .4byte 0x48000008 # b .L_80231F4C
L_80231F48:
    lbz 0, 0x6c(4)
L_80231F4C:
    clrlwi. 0, 0, 24
    .4byte 0x4182000C # beq .L_80231F5C
    li 0, 0x1
    .4byte 0x480000E0 # b .L_80232038
L_80231F5C:
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_80231F6C
    li 0, 0x0
    .4byte 0x48000008 # b .L_80231F70
L_80231F6C:
    lbz 0, 0x6d(4)
L_80231F70:
    clrlwi. 0, 0, 24
    .4byte 0x4182000C # beq .L_80231F80
    li 0, 0x1
    .4byte 0x480000BC # b .L_80232038
L_80231F80:
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_80231F90
    li 0, 0x0
    .4byte 0x48000008 # b .L_80231F94
L_80231F90:
    lbz 0, 0x6e(4)
L_80231F94:
    clrlwi. 0, 0, 24
    .4byte 0x4182000C # beq .L_80231FA4
    li 0, 0x1
    .4byte 0x48000098 # b .L_80232038
L_80231FA4:
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_80231FB4
    li 0, 0x0
    .4byte 0x48000008 # b .L_80231FB8
L_80231FB4:
    lbz 0, 0x6f(4)
L_80231FB8:
    clrlwi. 0, 0, 24
    .4byte 0x4182000C # beq .L_80231FC8
    li 0, 0x1
    .4byte 0x48000074 # b .L_80232038
L_80231FC8:
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_80231FD8
    li 0, 0x0
    .4byte 0x48000008 # b .L_80231FDC
L_80231FD8:
    lbz 0, 0x70(4)
L_80231FDC:
    clrlwi. 0, 0, 24
    .4byte 0x4182000C # beq .L_80231FEC
    li 0, 0x1
    .4byte 0x48000050 # b .L_80232038
L_80231FEC:
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_80231FFC
    li 0, 0x0
    .4byte 0x48000008 # b .L_80232000
L_80231FFC:
    lbz 0, 0x71(4)
L_80232000:
    clrlwi. 0, 0, 24
    .4byte 0x4182000C # beq .L_80232010
    li 0, 0x1
    .4byte 0x4800002C # b .L_80232038
L_80232010:
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_80232020
    li 0, 0x0
    .4byte 0x48000008 # b .L_80232024
L_80232020:
    lbz 0, 0x72(4)
L_80232024:
    clrlwi. 0, 0, 24
    .4byte 0x4182000C # beq .L_80232034
    li 0, 0x1
    .4byte 0x48000008 # b .L_80232038
L_80232034:
    li 0, 0x0
L_80232038:
    clrlwi. 0, 0, 24
    .4byte 0x408209B0 # bne .L_802329EC
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x96(3)
    cmplwi 0, 0x0
    .4byte 0x408209A0 # bne .L_802329EC
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_80232060
    li 0, 0x0
    .4byte 0x48000008 # b .L_80232064
L_80232060:
    lbz 0, 0x73(4)
L_80232064:
    clrlwi. 0, 0, 24
    .4byte 0x40820984 # bne .L_802329EC
    bl GetRoomConfigRecord
    li 30, 0x0
    li 31, 0x0
    stw 30, 0x10(1)
    stw 30, 0x14(1)
L_80232080:
    .4byte 0x808D90D0 # lwz r4, lbl_8053AC90@sda21(r0)
    addi 0, 30, 0x4
    lwzx 3, 4, 0
    cmplwi 3, 0x0
    mr 29, 3
    .4byte 0x4182060C # beq .L_802326A0
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_802320A8
    li 0, 0x0
    .4byte 0x48000038 # b .L_802320DC
L_802320A8:
    cmpwi 31, 0x0
    .4byte 0x4080000C # bge .L_802320B8
    li 0, 0x0
    .4byte 0x48000028 # b .L_802320DC
L_802320B8:
    cmpwi 31, 0x4
    .4byte 0x4180000C # blt .L_802320C8
    li 0, 0x0
    .4byte 0x48000018 # b .L_802320DC
L_802320C8:
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_802320D8
    li 0, 0x0
    .4byte 0x48000008 # b .L_802320DC
L_802320D8:
    lbz 0, 0xcac(3)
L_802320DC:
    clrlwi. 0, 0, 24
    .4byte 0x418205C0 # beq .L_802326A0
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_802320F4
    li 3, 0x0
    .4byte 0x48000058 # b .L_80232148
L_802320F4:
    .4byte 0x4082000C # bne .L_80232100
    li 0, 0x0
    .4byte 0x48000038 # b .L_80232134
L_80232100:
    cmpwi 31, 0x0
    .4byte 0x4080000C # bge .L_80232110
    li 0, 0x0
    .4byte 0x48000028 # b .L_80232134
L_80232110:
    cmpwi 31, 0x4
    .4byte 0x4180000C # blt .L_80232120
    li 0, 0x0
    .4byte 0x48000018 # b .L_80232134
L_80232120:
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_80232130
    li 0, 0x0
    .4byte 0x48000008 # b .L_80232134
L_80232130:
    lbz 0, 0xcac(3)
L_80232134:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80232144
    li 3, 0x0
    .4byte 0x48000008 # b .L_80232148
L_80232144:
    bl Player_GetField_0x454
L_80232148:
    clrlwi. 0, 3, 24
    .4byte 0x408208A0 # bne .L_802329EC
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_80232164
    li 3, 0x0
    .4byte 0x48000068 # b .L_802321C8
L_80232164:
    .4byte 0x4082000C # bne .L_80232170
    li 0, 0x0
    .4byte 0x48000040 # b .L_802321AC
L_80232170:
    cmpwi 31, 0x0
    .4byte 0x4080000C # bge .L_80232180
    li 0, 0x0
    .4byte 0x48000030 # b .L_802321AC
L_80232180:
    cmpwi 31, 0x4
    .4byte 0x4180000C # blt .L_80232190
    li 0, 0x0
    .4byte 0x48000020 # b .L_802321AC
L_80232190:
    addi 0, 30, 0x4
    lwzx 4, 3, 0
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_802321A8
    li 0, 0x0
    .4byte 0x48000008 # b .L_802321AC
L_802321A8:
    lbz 0, 0xcac(4)
L_802321AC:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_802321BC
    li 3, 0x0
    .4byte 0x48000010 # b .L_802321C8
L_802321BC:
    addi 0, 30, 0x4
    lwzx 3, 3, 0
    bl fn_80240818
L_802321C8:
    clrlwi. 0, 3, 24
    .4byte 0x40820820 # bne .L_802329EC
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_802321E4
    li 3, 0x0
    .4byte 0x48000068 # b .L_80232248
L_802321E4:
    .4byte 0x4082000C # bne .L_802321F0
    li 0, 0x0
    .4byte 0x48000040 # b .L_8023222C
L_802321F0:
    cmpwi 31, 0x0
    .4byte 0x4080000C # bge .L_80232200
    li 0, 0x0
    .4byte 0x48000030 # b .L_8023222C
L_80232200:
    cmpwi 31, 0x4
    .4byte 0x4180000C # blt .L_80232210
    li 0, 0x0
    .4byte 0x48000020 # b .L_8023222C
L_80232210:
    addi 0, 30, 0x4
    lwzx 4, 3, 0
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_80232228
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023222C
L_80232228:
    lbz 0, 0xcac(4)
L_8023222C:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8023223C
    li 3, 0x0
    .4byte 0x48000010 # b .L_80232248
L_8023223C:
    addi 0, 30, 0x4
    lwzx 3, 3, 0
    bl Player_GetField_0xce8
L_80232248:
    clrlwi. 0, 3, 24
    .4byte 0x418200A8 # beq .L_802322F4
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_80232264
    li 0, 0x0
    .4byte 0x48000068 # b .L_802322C8
L_80232264:
    .4byte 0x4082000C # bne .L_80232270
    li 0, 0x0
    .4byte 0x48000040 # b .L_802322AC
L_80232270:
    cmpwi 31, 0x0
    .4byte 0x4080000C # bge .L_80232280
    li 0, 0x0
    .4byte 0x48000030 # b .L_802322AC
L_80232280:
    cmpwi 31, 0x4
    .4byte 0x4180000C # blt .L_80232290
    li 0, 0x0
    .4byte 0x48000020 # b .L_802322AC
L_80232290:
    addi 0, 30, 0x4
    lwzx 4, 3, 0
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_802322A8
    li 0, 0x0
    .4byte 0x48000008 # b .L_802322AC
L_802322A8:
    lbz 0, 0xcac(4)
L_802322AC:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_802322BC
    li 0, 0x0
    .4byte 0x48000010 # b .L_802322C8
L_802322BC:
    addi 0, 30, 0x4
    lwzx 3, 3, 0
    lbz 0, 0x43f(3)
L_802322C8:
    clrlwi. 0, 0, 24
    .4byte 0x41820720 # beq .L_802329EC
    bl GetRoomConfigRecord
    lwz 0, 0x4(3)
    cmpwi 0, 0x0
    .4byte 0x40820710 # bne .L_802329EC
    bl GetRoomConfigRecord
    lwz 0, 0x8(3)
    cmpwi 0, 0x0
    .4byte 0x41820008 # beq .L_802322F4
    .4byte 0x480006FC # b .L_802329EC
L_802322F4:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_80232308
    li 3, 0x0
    .4byte 0x48000068 # b .L_8023236C
L_80232308:
    .4byte 0x4082000C # bne .L_80232314
    li 0, 0x0
    .4byte 0x48000040 # b .L_80232350
L_80232314:
    cmpwi 31, 0x0
    .4byte 0x4080000C # bge .L_80232324
    li 0, 0x0
    .4byte 0x48000030 # b .L_80232350
L_80232324:
    cmpwi 31, 0x4
    .4byte 0x4180000C # blt .L_80232334
    li 0, 0x0
    .4byte 0x48000020 # b .L_80232350
L_80232334:
    addi 0, 30, 0x4
    lwzx 4, 3, 0
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8023234C
    li 0, 0x0
    .4byte 0x48000008 # b .L_80232350
L_8023234C:
    lbz 0, 0xcac(4)
L_80232350:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80232360
    li 3, 0x0
    .4byte 0x48000010 # b .L_8023236C
L_80232360:
    addi 0, 30, 0x4
    lwzx 3, 3, 0
    bl GetBusyLocked
L_8023236C:
    clrlwi. 0, 3, 24
    .4byte 0x4082067C # bne .L_802329EC
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_80232388
    li 3, 0x0
    .4byte 0x48000068 # b .L_802323EC
L_80232388:
    .4byte 0x4082000C # bne .L_80232394
    li 0, 0x0
    .4byte 0x48000040 # b .L_802323D0
L_80232394:
    cmpwi 31, 0x0
    .4byte 0x4080000C # bge .L_802323A4
    li 0, 0x0
    .4byte 0x48000030 # b .L_802323D0
L_802323A4:
    cmpwi 31, 0x4
    .4byte 0x4180000C # blt .L_802323B4
    li 0, 0x0
    .4byte 0x48000020 # b .L_802323D0
L_802323B4:
    addi 0, 30, 0x4
    lwzx 4, 3, 0
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_802323CC
    li 0, 0x0
    .4byte 0x48000008 # b .L_802323D0
L_802323CC:
    lbz 0, 0xcac(4)
L_802323D0:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_802323E0
    li 3, 0x0
    .4byte 0x48000010 # b .L_802323EC
L_802323E0:
    addi 0, 30, 0x4
    lwzx 3, 3, 0
    bl GetField_0xcfe
L_802323EC:
    clrlwi. 0, 3, 24
    .4byte 0x408205FC # bne .L_802329EC
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_80232408
    li 3, 0x1
    .4byte 0x48000068 # b .L_8023246C
L_80232408:
    .4byte 0x4082000C # bne .L_80232414
    li 0, 0x0
    .4byte 0x48000040 # b .L_80232450
L_80232414:
    cmpwi 31, 0x0
    .4byte 0x4080000C # bge .L_80232424
    li 0, 0x0
    .4byte 0x48000030 # b .L_80232450
L_80232424:
    cmpwi 31, 0x4
    .4byte 0x4180000C # blt .L_80232434
    li 0, 0x0
    .4byte 0x48000020 # b .L_80232450
L_80232434:
    addi 0, 30, 0x4
    lwzx 4, 3, 0
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8023244C
    li 0, 0x0
    .4byte 0x48000008 # b .L_80232450
L_8023244C:
    lbz 0, 0xcac(4)
L_80232450:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80232460
    li 3, 0x1
    .4byte 0x48000010 # b .L_8023246C
L_80232460:
    addi 0, 30, 0x4
    lwzx 3, 3, 0
    bl fn_80270A58
L_8023246C:
    clrlwi. 0, 3, 24
    .4byte 0x4082057C # bne .L_802329EC
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_80232488
    li 3, 0x0
    .4byte 0x48000068 # b .L_802324EC
L_80232488:
    .4byte 0x4082000C # bne .L_80232494
    li 0, 0x0
    .4byte 0x48000040 # b .L_802324D0
L_80232494:
    cmpwi 31, 0x0
    .4byte 0x4080000C # bge .L_802324A4
    li 0, 0x0
    .4byte 0x48000030 # b .L_802324D0
L_802324A4:
    cmpwi 31, 0x4
    .4byte 0x4180000C # blt .L_802324B4
    li 0, 0x0
    .4byte 0x48000020 # b .L_802324D0
L_802324B4:
    addi 0, 30, 0x4
    lwzx 4, 3, 0
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_802324CC
    li 0, 0x0
    .4byte 0x48000008 # b .L_802324D0
L_802324CC:
    lbz 0, 0xcac(4)
L_802324D0:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_802324E0
    li 3, 0x0
    .4byte 0x48000010 # b .L_802324EC
L_802324E0:
    addi 0, 30, 0x4
    lwzx 3, 3, 0
    bl fn_8025F448
L_802324EC:
    clrlwi. 0, 3, 24
    .4byte 0x408201B0 # bne .L_802326A0
    mr 3, 29
    li 4, 0x1b
    bl fn_80251BFC
    clrlwi. 0, 3, 24
    .4byte 0x418204E8 # beq .L_802329EC
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8023251C
    li 3, 0x0
    .4byte 0x48000068 # b .L_80232580
L_8023251C:
    .4byte 0x4082000C # bne .L_80232528
    li 0, 0x0
    .4byte 0x48000040 # b .L_80232564
L_80232528:
    cmpwi 31, 0x0
    .4byte 0x4080000C # bge .L_80232538
    li 0, 0x0
    .4byte 0x48000030 # b .L_80232564
L_80232538:
    cmpwi 31, 0x4
    .4byte 0x4180000C # blt .L_80232548
    li 0, 0x0
    .4byte 0x48000020 # b .L_80232564
L_80232548:
    addi 0, 30, 0x4
    lwzx 4, 3, 0
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_80232560
    li 0, 0x0
    .4byte 0x48000008 # b .L_80232564
L_80232560:
    lbz 0, 0xcac(4)
L_80232564:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80232574
    li 3, 0x1
    .4byte 0x48000010 # b .L_80232580
L_80232574:
    addi 0, 30, 0x4
    lwzx 3, 3, 0
    bl fn_80240670
L_80232580:
    clrlwi. 0, 3, 24
    .4byte 0x4082011C # bne .L_802326A0
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8023259C
    li 3, 0x1
    .4byte 0x48000068 # b .L_80232600
L_8023259C:
    .4byte 0x4082000C # bne .L_802325A8
    li 0, 0x0
    .4byte 0x48000040 # b .L_802325E4
L_802325A8:
    cmpwi 31, 0x0
    .4byte 0x4080000C # bge .L_802325B8
    li 0, 0x0
    .4byte 0x48000030 # b .L_802325E4
L_802325B8:
    cmpwi 31, 0x4
    .4byte 0x4180000C # blt .L_802325C8
    li 0, 0x0
    .4byte 0x48000020 # b .L_802325E4
L_802325C8:
    addi 0, 30, 0x4
    lwzx 4, 3, 0
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_802325E0
    li 0, 0x0
    .4byte 0x48000008 # b .L_802325E4
L_802325E0:
    lbz 0, 0xcac(4)
L_802325E4:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_802325F4
    li 3, 0x1
    .4byte 0x48000010 # b .L_80232600
L_802325F4:
    addi 0, 30, 0x4
    lwzx 3, 3, 0
    bl fn_80270A04
L_80232600:
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_80232614
    lbz 0, 0xd2d(29)
    cmplwi 0, 0x0
    .4byte 0x41820090 # beq .L_802326A0
L_80232614:
    mr 3, 29
    addi 4, 1, 0x8
    bl fn_802527B0
    clrlwi. 0, 3, 24
    .4byte 0x418203C8 # beq .L_802329EC
    lis 3, lbl_80539D44@ha
    lwz 6, 0x10(1)
    .4byte 0xC022D06C # lfs f1, lbl_8054000C@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    mullw 4, 6, 6
    lwz 5, 0x14(1)
    fmuls 0, 1, 0
    mullw 0, 5, 5
    fctiwz 0, 0
    stfd 0, 0x20(1)
    add 3, 4, 0
    lwz 0, 0x24(1)
    cmpw 3, 0
    .4byte 0x4181001C # bgt .L_80232678
    lwz 3, 0x8(1)
    lwz 0, 0xc(1)
    stw 3, 0x10(1)
    stw 0, 0x14(1)
    .4byte 0x93ED85D0 # stw r31, lbl_8053A190@sda21(r0)
    .4byte 0x4800002C # b .L_802326A0
L_80232678:
    lwz 0, 0x8(1)
    li 3, 0x0
    cmpw 6, 0
    .4byte 0x40820014 # bne .L_80232698
    lwz 0, 0xc(1)
    cmpw 5, 0
    .4byte 0x40820008 # bne .L_80232698
    li 3, 0x1
L_80232698:
    clrlwi. 0, 3, 24
    .4byte 0x41820350 # beq .L_802329EC
L_802326A0:
    addi 31, 31, 0x1
    addi 30, 30, 0x4
    cmpwi 31, 0x4
    .4byte 0x4180F9D4 # blt .L_80232080
    addi 3, 1, 0x10
    bl fn_80124600
    cmpwi 3, 0x1
    .4byte 0x41820330 # beq .L_802329EC
    .4byte 0x40800018 # bge .L_802326D8
    cmpwi 3, 0x0
    .4byte 0x40800324 # bge .L_802329EC
    .4byte 0x4800000C # b .L_802326D8
    .4byte 0x4800031C # b .L_802329EC
    .4byte 0x48000318 # b .L_802329EC
L_802326D8:
    lis 3, lbl_80539D44@ha
    lwz 4, 0x10(1)
    .4byte 0xC022D06C # lfs f1, lbl_8054000C@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    mullw 4, 4, 4
    lwz 0, 0x14(1)
    fmuls 0, 1, 0
    mullw 0, 0, 0
    fctiwz 0, 0
    stfd 0, 0x20(1)
    add 3, 4, 0
    lwz 0, 0x24(1)
    cmpw 3, 0
    .4byte 0x408102E0 # ble .L_802329EC
    bl GetRoomConfigRecord
    addi 4, 1, 0x10
    bl fn_802DD3D4
    clrlwi. 0, 3, 24
    .4byte 0x418202CC # beq .L_802329EC
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80457F60
    .4byte 0x800D90D0 # lwz r0, lbl_8053AC90@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x41820080 # beq .L_802327B4
    li 29, 0x0
    mr 30, 29
L_80232740:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_80232754
    li 0, 0x0
    .4byte 0x48000040 # b .L_80232790
L_80232754:
    cmpwi 29, 0x0
    .4byte 0x4080000C # bge .L_80232764
    li 0, 0x0
    .4byte 0x48000030 # b .L_80232790
L_80232764:
    cmpwi 29, 0x4
    .4byte 0x4180000C # blt .L_80232774
    li 0, 0x0
    .4byte 0x48000020 # b .L_80232790
L_80232774:
    addi 0, 30, 0x4
    lwzx 4, 3, 0
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8023278C
    li 0, 0x0
    .4byte 0x48000008 # b .L_80232790
L_8023278C:
    lbz 0, 0xcac(4)
L_80232790:
    clrlwi. 0, 0, 24
    .4byte 0x41820010 # beq .L_802327A4
    addi 0, 30, 0x4
    lwzx 3, 3, 0
    bl fn_80241E64
L_802327A4:
    addi 29, 29, 0x1
    addi 30, 30, 0x4
    cmpwi 29, 0x4
    .4byte 0x4180FF90 # blt .L_80232740
L_802327B4:
    bl GetRoomConfigRecord
    addi 4, 1, 0x10
    bl fn_802DCE5C
    li 30, 0x0
    li 29, 0x0
L_802327C8:
    .4byte 0x808D90D0 # lwz r4, lbl_8053AC90@sda21(r0)
    addi 0, 29, 0x4
    lwzx 3, 4, 0
    cmplwi 4, 0x0
    mr 31, 3
    .4byte 0x4082000C # bne .L_802327E8
    li 3, 0x0
    .4byte 0x48000058 # b .L_8023283C
L_802327E8:
    .4byte 0x4082000C # bne .L_802327F4
    li 0, 0x0
    .4byte 0x48000038 # b .L_80232828
L_802327F4:
    cmpwi 30, 0x0
    .4byte 0x4080000C # bge .L_80232804
    li 0, 0x0
    .4byte 0x48000028 # b .L_80232828
L_80232804:
    cmpwi 30, 0x4
    .4byte 0x4180000C # blt .L_80232814
    li 0, 0x0
    .4byte 0x48000018 # b .L_80232828
L_80232814:
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_80232824
    li 0, 0x0
    .4byte 0x48000008 # b .L_80232828
L_80232824:
    lbz 0, 0xcac(3)
L_80232828:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80232838
    li 3, 0x0
    .4byte 0x48000008 # b .L_8023283C
L_80232838:
    bl fn_8025F590
L_8023283C:
    clrlwi. 0, 3, 24
    .4byte 0x41820024 # beq .L_80232864
    li 0, -0x1
    lis 3, 0x4e55
    stw 0, 0xd70(31)
    li 4, 0x0
    addi 0, 3, 0x4c4c
    stb 4, 0xd64(31)
    stw 0, 0xd6c(31)
    .4byte 0x48000094 # b .L_802328F4
L_80232864:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_80232878
    li 3, 0x0
    .4byte 0x48000068 # b .L_802328DC
L_80232878:
    .4byte 0x4082000C # bne .L_80232884
    li 0, 0x0
    .4byte 0x48000040 # b .L_802328C0
L_80232884:
    cmpwi 30, 0x0
    .4byte 0x4080000C # bge .L_80232894
    li 0, 0x0
    .4byte 0x48000030 # b .L_802328C0
L_80232894:
    cmpwi 30, 0x4
    .4byte 0x4180000C # blt .L_802328A4
    li 0, 0x0
    .4byte 0x48000020 # b .L_802328C0
L_802328A4:
    addi 0, 29, 0x4
    lwzx 4, 3, 0
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_802328BC
    li 0, 0x0
    .4byte 0x48000008 # b .L_802328C0
L_802328BC:
    lbz 0, 0xcac(4)
L_802328C0:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_802328D0
    li 3, 0x0
    .4byte 0x48000010 # b .L_802328DC
L_802328D0:
    addi 0, 29, 0x4
    lwzx 3, 3, 0
    bl fn_8025F418
L_802328DC:
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_802328F4
    li 0, -0x1
    .4byte 0xC002D068 # lfs f0, lbl_80540008@sda21(r0)
    stw 0, 0xd70(31)
    stfs 0, 0x10(31)
L_802328F4:
    cmplwi 31, 0x0
    .4byte 0x418200E4 # beq .L_802329DC
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_80232910
    li 0, 0x0
    .4byte 0x48000040 # b .L_8023294C
L_80232910:
    cmpwi 30, 0x0
    .4byte 0x4080000C # bge .L_80232920
    li 0, 0x0
    .4byte 0x48000030 # b .L_8023294C
L_80232920:
    cmpwi 30, 0x4
    .4byte 0x4180000C # blt .L_80232930
    li 0, 0x0
    .4byte 0x48000020 # b .L_8023294C
L_80232930:
    addi 0, 29, 0x4
    lwzx 4, 3, 0
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_80232948
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023294C
L_80232948:
    lbz 0, 0xcac(4)
L_8023294C:
    clrlwi. 0, 0, 24
    .4byte 0x4182008C # beq .L_802329DC
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_80232964
    li 3, 0x1
    .4byte 0x48000068 # b .L_802329C8
L_80232964:
    .4byte 0x4082000C # bne .L_80232970
    li 0, 0x0
    .4byte 0x48000040 # b .L_802329AC
L_80232970:
    cmpwi 30, 0x0
    .4byte 0x4080000C # bge .L_80232980
    li 0, 0x0
    .4byte 0x48000030 # b .L_802329AC
L_80232980:
    cmpwi 30, 0x4
    .4byte 0x4180000C # blt .L_80232990
    li 0, 0x0
    .4byte 0x48000020 # b .L_802329AC
L_80232990:
    addi 0, 29, 0x4
    lwzx 4, 3, 0
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_802329A8
    li 0, 0x0
    .4byte 0x48000008 # b .L_802329AC
L_802329A8:
    lbz 0, 0xcac(4)
L_802329AC:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_802329BC
    li 3, 0x1
    .4byte 0x48000010 # b .L_802329C8
L_802329BC:
    addi 0, 29, 0x4
    lwzx 3, 3, 0
    bl fn_80270A8C
L_802329C8:
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_802329DC
    mr 3, 31
    addi 4, 1, 0x10
    bl fn_802520C0
L_802329DC:
    addi 30, 30, 0x1
    addi 29, 29, 0x4
    cmpwi 30, 0x4
    .4byte 0x4180FDE0 # blt .L_802327C8
L_802329EC:
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 29, 0x34(1)
    lwz 28, 0x30(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_80232A0C:
    stwu 1, -0x190(1)
    mflr 0
    stw 0, 0x194(1)
    stfd 31, 0x180(1)
    psq_st 31, 0x188(1), 0, 0
    stfd 30, 0x170(1)
    psq_st 30, 0x178(1), 0, 0
    stfd 29, 0x160(1)
    psq_st 29, 0x168(1), 0, 0
    stfd 28, 0x150(1)
    psq_st 28, 0x158(1), 0, 0
    stfd 27, 0x140(1)
    psq_st 27, 0x148(1), 0, 0
    stfd 26, 0x130(1)
    psq_st 26, 0x138(1), 0, 0
    stfd 25, 0x120(1)
    psq_st 25, 0x128(1), 0, 0
    stfd 24, 0x110(1)
    psq_st 24, 0x118(1), 0, 0
    stfd 23, 0x100(1)
    psq_st 23, 0x108(1), 0, 0
    stmw 23, 0xdc(1)
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    li 0, 0x0
    lwz 3, 0x4(3)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_80232A7C
    stb 0, 0xafc(3)
L_80232A7C:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    lwz 3, 0x8(3)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_80232A90
    stb 0, 0xafc(3)
L_80232A90:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    lwz 3, 0xc(3)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_80232AA4
    stb 0, 0xafc(3)
L_80232AA4:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    lwz 3, 0x10(3)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_80232AB8
    stb 0, 0xafc(3)
L_80232AB8:
    li 30, 0x0
    li 29, 0x0
L_80232AC0:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    addi 0, 29, 0x4
    lwzx 4, 3, 0
    cmplwi 4, 0x0
    mr 31, 4
    .4byte 0x418208E8 # beq .L_802333BC
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_80232AE8
    li 0, 0x0
    .4byte 0x48000038 # b .L_80232B1C
L_80232AE8:
    cmpwi 30, 0x0
    .4byte 0x4080000C # bge .L_80232AF8
    li 0, 0x0
    .4byte 0x48000028 # b .L_80232B1C
L_80232AF8:
    cmpwi 30, 0x4
    .4byte 0x4180000C # blt .L_80232B08
    li 0, 0x0
    .4byte 0x48000018 # b .L_80232B1C
L_80232B08:
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_80232B18
    li 0, 0x0
    .4byte 0x48000008 # b .L_80232B1C
L_80232B18:
    lbz 0, 0xcac(4)
L_80232B1C:
    clrlwi. 0, 0, 24
    .4byte 0x4182089C # beq .L_802333BC
    lwz 0, 0x1240(31)
    cmpwi 0, 0x3
    .4byte 0x41820890 # beq .L_802333BC
    mr 3, 30
    bl fn_80233EDC
    clrlwi. 0, 3, 24
    .4byte 0x40820880 # bne .L_802333BC
    mr 3, 30
    bl fn_8022D75C
    clrlwi. 0, 3, 24
    .4byte 0x40820870 # bne .L_802333BC
    mr 3, 30
    bl fn_802349EC
    clrlwi. 0, 3, 24
    .4byte 0x40820860 # bne .L_802333BC
    mr 3, 30
    bl fn_8023EA28
    clrlwi. 0, 3, 24
    .4byte 0x40820850 # bne .L_802333BC
    mr 3, 30
    bl fn_8023E854
    clrlwi. 0, 3, 24
    .4byte 0x40820840 # bne .L_802333BC
    mr 3, 30
    bl fn_8023E724
    lfs 1, 0x8(3)
    .4byte 0xC002D070 # lfs f0, lbl_80540010@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x41820824 # beq .L_802333BC
    mr 3, 30
    bl fn_80236AB4
    clrlwi. 0, 3, 24
    .4byte 0x40820814 # bne .L_802333BC
    mr 3, 30
    bl fn_8023DE58
    mr 23, 3
    bl GetRoomConfigRecord
    addis 4, 23, 0x1
    addi 4, 4, 0x31df
    lbzx 0, 3, 4
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_80232BE0
    mr 3, 30
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x408207E0 # bne .L_802333BC
L_80232BE0:
    mr 3, 30
    bl fn_8023188C
    clrlwi. 0, 3, 24
    .4byte 0x418207D0 # beq .L_802333BC
    lwz 0, 0xd58(31)
    cmpwi 0, 0x0
    .4byte 0x418107C4 # bgt .L_802333BC
    lwz 0, 0xd08(31)
    cmpwi 0, 0x0
    .4byte 0x408007B8 # bge .L_802333BC
    addi 3, 1, 0xc4
    addi 4, 31, 0x4c0
    bl fn_801546F4
    mr 3, 30
    bl fn_8023DE58
    mr 23, 3
    bl GetRoomConfigRecord
    cmpwi 23, 0x8
    .4byte 0x4080000C # bge .L_80232C34
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_80232C38
L_80232C34:
    addi 3, 3, 0xdc
L_80232C38:
    lfs 1, 0x0(3)
    addi 26, 30, 0x1
    lfs 0, 0x4(3)
    slwi 28, 26, 2
    fneg 4, 1
    lfs 3, 0xc4(1)
    lfs 1, 0xcc(1)
    fneg 5, 0
    lfs 2, 0xc8(1)
    lfs 0, 0xd0(1)
    fadds 3, 3, 4
    fadds 2, 2, 5
    fadds 1, 1, 4
    fadds 0, 0, 5
    stfs 3, 0xc4(1)
    stfs 2, 0xc8(1)
    stfs 1, 0xcc(1)
    stfs 0, 0xd0(1)
    .4byte 0x48000734 # b .L_802333B4
L_80232C84:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    addi 0, 28, 0x4
    lwzx 4, 3, 0
    cmplwi 4, 0x0
    mr 25, 4
    .4byte 0x41820714 # beq .L_802333AC
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_80232CAC
    li 0, 0x0
    .4byte 0x48000038 # b .L_80232CE0
L_80232CAC:
    cmpwi 26, 0x0
    .4byte 0x4080000C # bge .L_80232CBC
    li 0, 0x0
    .4byte 0x48000028 # b .L_80232CE0
L_80232CBC:
    cmpwi 26, 0x4
    .4byte 0x4180000C # blt .L_80232CCC
    li 0, 0x0
    .4byte 0x48000018 # b .L_80232CE0
L_80232CCC:
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_80232CDC
    li 0, 0x0
    .4byte 0x48000008 # b .L_80232CE0
L_80232CDC:
    lbz 0, 0xcac(4)
L_80232CE0:
    clrlwi. 0, 0, 24
    .4byte 0x418206C8 # beq .L_802333AC
    lwz 0, 0x1240(25)
    cmpwi 0, 0x3
    .4byte 0x418206BC # beq .L_802333AC
    mr 3, 26
    bl fn_8022CAF8
    cmpwi 3, 0x4
    .4byte 0x41820018 # beq .L_80232D18
    mr 3, 30
    mr 4, 26
    bl fn_8022E438
    clrlwi. 0, 3, 24
    .4byte 0x40820698 # bne .L_802333AC
L_80232D18:
    mr 3, 30
    bl fn_8023EFEC
    clrlwi. 0, 3, 24
    .4byte 0x4182002C # beq .L_80232D50
    mr 3, 30
    bl fn_8023ECF0
    mr 4, 26
    bl fn_8022E438
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_80232D50
    mr 3, 26
    bl fn_8022CAF8
    cmpwi 3, 0x4
    .4byte 0x40820660 # bne .L_802333AC
L_80232D50:
    mr 3, 26
    bl fn_8023EFEC
    clrlwi. 0, 3, 24
    .4byte 0x4182002C # beq .L_80232D88
    mr 3, 26
    bl fn_8023ECF0
    mr 4, 30
    bl fn_8022E438
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_80232D88
    mr 3, 30
    bl fn_8022CAF8
    cmpwi 3, 0x4
    .4byte 0x40820628 # bne .L_802333AC
L_80232D88:
    mr 3, 26
    bl fn_80233EDC
    clrlwi. 0, 3, 24
    .4byte 0x40820618 # bne .L_802333AC
    mr 3, 26
    bl fn_8022D75C
    clrlwi. 0, 3, 24
    .4byte 0x40820608 # bne .L_802333AC
    mr 3, 26
    bl fn_802349EC
    clrlwi. 0, 3, 24
    .4byte 0x408205F8 # bne .L_802333AC
    mr 3, 26
    bl fn_8023EA28
    clrlwi. 0, 3, 24
    .4byte 0x408205E8 # bne .L_802333AC
    mr 3, 26
    bl fn_8023E854
    clrlwi. 0, 3, 24
    .4byte 0x408205D8 # bne .L_802333AC
    mr 3, 26
    bl fn_8023E724
    lfs 1, 0x8(3)
    .4byte 0xC002D070 # lfs f0, lbl_80540010@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x418205BC # beq .L_802333AC
    mr 3, 26
    bl fn_80236AB4
    clrlwi. 0, 3, 24
    .4byte 0x408205AC # bne .L_802333AC
    mr 3, 26
    bl fn_8023DE58
    mr 23, 3
    bl GetRoomConfigRecord
    addis 4, 23, 0x1
    addi 4, 4, 0x31df
    lbzx 0, 3, 4
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_80232E38
    mr 3, 26
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x40820578 # bne .L_802333AC
L_80232E38:
    mr 3, 26
    bl fn_8023188C
    clrlwi. 0, 3, 24
    .4byte 0x41820568 # beq .L_802333AC
    lwz 0, 0xd58(25)
    cmpwi 0, 0x0
    .4byte 0x4181055C # bgt .L_802333AC
    lwz 0, 0xd08(25)
    cmpwi 0, 0x0
    .4byte 0x40800550 # bge .L_802333AC
    addi 3, 1, 0xb4
    addi 4, 25, 0x4c0
    bl fn_801546F4
    mr 3, 26
    bl fn_8023DE58
    mr 23, 3
    bl GetRoomConfigRecord
    cmpwi 23, 0x8
    .4byte 0x4080000C # bge .L_80232E8C
    addi 4, 3, 0xcc
    .4byte 0x48000008 # b .L_80232E90
L_80232E8C:
    addi 4, 3, 0xdc
L_80232E90:
    lfs 1, 0x0(4)
    lis 3, lbl_80539D44@ha
    lfs 0, 0x4(4)
    addi 27, 3, lbl_80539D44@l
    fneg 4, 1
    lfs 3, 0xb4(1)
    lfs 1, 0xbc(1)
    fneg 5, 0
    lfs 2, 0xb8(1)
    li 24, 0x0
    lfs 0, 0xc0(1)
    fadds 3, 3, 4
    fadds 2, 2, 5
    .4byte 0xC382D074 # lfs f28, lbl_80540014@sda21(r0)
    fadds 1, 1, 4
    .4byte 0xC3A2D068 # lfs f29, lbl_80540008@sda21(r0)
    fadds 0, 0, 5
    stfs 3, 0xb4(1)
    .4byte 0xC3C2D078 # lfs f30, lbl_80540018@sda21(r0)
    stfs 2, 0xb8(1)
    .4byte 0xC3E2D06C # lfs f31, lbl_8054000C@sda21(r0)
    stfs 1, 0xbc(1)
    stfs 0, 0xc0(1)
L_80232EEC:
    mr 3, 26
    bl fn_8023DE58
    mr 23, 3
    mr 3, 30
    bl fn_8023DE58
    cmpw 3, 23
    .4byte 0x408204A8 # bne .L_802333AC
    addi 3, 1, 0xc4
    addi 4, 1, 0xb4
    bl fn_80233C9C
    clrlwi. 0, 3, 24
    .4byte 0x41820494 # beq .L_802333AC
    lwz 0, 0xd70(31)
    cmpw 0, 26
    .4byte 0x41820488 # beq .L_802333AC
    lwz 0, 0xd70(25)
    cmpw 0, 30
    .4byte 0x4182047C # beq .L_802333AC
    mr 3, 30
    bl fn_8022CAF8
    cmpwi 3, 0x4
    .4byte 0x4182004C # beq .L_80232F8C
    mr 3, 26
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_80232F68
    mr 3, 26
    bl fn_8022F3DC
    lwz 0, 0xd70(31)
    cmpw 0, 3
    .4byte 0x41820448 # beq .L_802333AC
L_80232F68:
    mr 3, 30
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_80232F8C
    mr 3, 30
    bl fn_8022F3DC
    lwz 0, 0xd70(25)
    cmpw 0, 3
    .4byte 0x41820424 # beq .L_802333AC
L_80232F8C:
    lfs 4, 0xcc(1)
    lfs 1, 0xc4(1)
    lfs 5, 0xbc(1)
    lfs 0, 0xb4(1)
    fsubs 3, 1, 4
    lfs 7, 0xd0(1)
    lfs 1, 0xc8(1)
    fsubs 2, 0, 5
    lfs 6, 0xc0(1)
    fmadds 4, 28, 3, 4
    lfs 0, 0xb8(1)
    fsubs 1, 1, 7
    fmadds 3, 28, 2, 5
    fsubs 0, 0, 6
    stfs 29, 0xb0(1)
    fmadds 2, 28, 1, 7
    fsubs 3, 4, 3
    fmadds 0, 28, 0, 6
    fmuls 1, 3, 3
    stfs 3, 0xa8(1)
    fsubs 2, 2, 0
    fmuls 0, 2, 2
    stfs 2, 0xac(1)
    fadds 0, 1, 0
    fcmpo cr0, 0, 30
    cror eq, gt, eq
    .4byte 0x4182001C # beq .L_80233010
    lwz 0, 0xd54(31)
    cmpwi 0, 0x0
    .4byte 0x41810010 # bgt .L_80233010
    lwz 0, 0xd54(25)
    cmpwi 0, 0x0
    .4byte 0x408103A0 # ble .L_802333AC
L_80233010:
    lwz 3, 0xd54(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80233024
    subi 0, 3, 0x1
    stw 0, 0xd54(31)
L_80233024:
    lwz 3, 0xd54(25)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80233038
    subi 0, 3, 0x1
    stw 0, 0xd54(25)
L_80233038:
    addi 3, 1, 0xa8
    bl fn_80233C08
    psq_l 2, 0xa8(1), 0, 0
    lfs 0, 0x0(27)
    ps_mul 2, 2, 2
    lfs 23, 0xb0(1)
    fmuls 0, 31, 0
    ps_madd 1, 23, 23, 2
    ps_sum0 1, 1, 2, 2
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x4082001C # bne .L_80233080
    .4byte 0xC002D068 # lfs f0, lbl_80540008@sda21(r0)
    .4byte 0xC022D07C # lfs f1, lbl_8054001C@sda21(r0)
    stfs 0, 0xac(1)
    stfs 1, 0xa8(1)
    stfs 0, 0xb0(1)
    .4byte 0x48000048 # b .L_802330C4
L_80233080:
    lfs 2, 0xa8(1)
    .4byte 0xC022D080 # lfs f1, lbl_80540020@sda21(r0)
    fcmpo cr0, 2, 1
    .4byte 0x40800018 # bge .L_802330A4
    .4byte 0xC002D084 # lfs f0, lbl_80540024@sda21(r0)
    fcmpo cr0, 2, 0
    .4byte 0x4081000C # ble .L_802330A4
    stfs 1, 0xa8(1)
    .4byte 0x48000024 # b .L_802330C4
L_802330A4:
    lfs 2, 0xac(1)
    .4byte 0xC022D080 # lfs f1, lbl_80540020@sda21(r0)
    fcmpo cr0, 2, 1
    .4byte 0x40800014 # bge .L_802330C4
    .4byte 0xC002D084 # lfs f0, lbl_80540024@sda21(r0)
    fcmpo cr0, 2, 0
    .4byte 0x40810008 # ble .L_802330C4
    stfs 1, 0xac(1)
L_802330C4:
    mr 3, 30
    bl fn_8022CCAC
    clrlwi. 0, 3, 24
    .4byte 0x41820080 # beq .L_80233150
    lfs 0, 0xb0(1)
    addi 4, 1, 0x7c
    psq_l 1, 0xa8(1), 0, 0
    mr 3, 26
    fneg 0, 0
    ps_neg 1, 1
    frsp 2, 0
    stfs 0, 0x30(1)
    psq_st 1, 0x28(1), 0, 0
    psq_st 1, 0x0(4), 0, 0
    stfs 2, 0x84(1)
    bl fn_8023DFF4
    lfs 1, 0xa8(1)
    li 0, 0x1
    lfs 0, 0xac(1)
    fneg 4, 1
    lfs 3, 0xb4(1)
    lfs 1, 0xbc(1)
    fneg 5, 0
    lfs 2, 0xb8(1)
    lfs 0, 0xc0(1)
    fadds 3, 3, 4
    fadds 2, 2, 5
    fadds 1, 1, 4
    fadds 0, 0, 5
    stfs 3, 0xb4(1)
    stfs 2, 0xb8(1)
    stfs 1, 0xbc(1)
    stfs 0, 0xc0(1)
    stb 0, 0xafc(25)
    .4byte 0x48000250 # b .L_8023339C
L_80233150:
    mr 3, 26
    bl fn_8022CCAC
    clrlwi. 0, 3, 24
    .4byte 0x41820054 # beq .L_802331B0
    mr 3, 30
    addi 4, 1, 0xa8
    bl fn_8023DFF4
    lfs 2, 0xc4(1)
    li 0, 0x1
    lfs 1, 0xa8(1)
    lfs 0, 0xcc(1)
    fadds 4, 2, 1
    lfs 2, 0xc8(1)
    lfs 3, 0xac(1)
    fadds 1, 0, 1
    lfs 0, 0xd0(1)
    fadds 2, 2, 3
    fadds 0, 0, 3
    stfs 4, 0xc4(1)
    stfs 2, 0xc8(1)
    stfs 1, 0xcc(1)
    stfs 0, 0xd0(1)
    stb 0, 0xafc(31)
    .4byte 0x480001F0 # b .L_8023339C
L_802331B0:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x0
    .4byte 0x408200FC # bne .L_802332B8
    mr 3, 30
    bl fn_8022CAF8
    cmpwi 3, 0x4
    .4byte 0x408200EC # bne .L_802332B8
    mr 3, 30
    bl fn_80234004
    cmpw 30, 3
    .4byte 0x41820050 # beq .L_8023322C
    mr 3, 30
    addi 4, 1, 0xa8
    bl fn_8023DFF4
    lfs 2, 0xc4(1)
    li 0, 0x1
    lfs 1, 0xa8(1)
    lfs 0, 0xcc(1)
    fadds 4, 2, 1
    lfs 2, 0xc8(1)
    lfs 3, 0xac(1)
    fadds 1, 0, 1
    lfs 0, 0xd0(1)
    fadds 2, 2, 3
    fadds 0, 0, 3
    stfs 4, 0xc4(1)
    stfs 2, 0xc8(1)
    stfs 1, 0xcc(1)
    stfs 0, 0xd0(1)
    stb 0, 0xafc(31)
L_8023322C:
    mr 3, 26
    bl fn_80234004
    cmpw 26, 3
    .4byte 0x41820164 # beq .L_8023339C
    lfs 0, 0xb0(1)
    addi 4, 1, 0x70
    psq_l 1, 0xa8(1), 0, 0
    mr 3, 26
    fneg 0, 0
    ps_neg 1, 1
    frsp 2, 0
    stfs 0, 0x24(1)
    psq_st 1, 0x1c(1), 0, 0
    psq_st 1, 0x0(4), 0, 0
    stfs 2, 0x78(1)
    bl fn_8023DFF4
    lfs 1, 0xa8(1)
    li 0, 0x1
    lfs 0, 0xac(1)
    fneg 4, 1
    lfs 3, 0xb4(1)
    lfs 1, 0xbc(1)
    fneg 5, 0
    lfs 2, 0xb8(1)
    lfs 0, 0xc0(1)
    fadds 3, 3, 4
    fadds 2, 2, 5
    fadds 1, 1, 4
    fadds 0, 0, 5
    stfs 3, 0xb4(1)
    stfs 2, 0xb8(1)
    stfs 1, 0xbc(1)
    stfs 0, 0xc0(1)
    stb 0, 0xafc(25)
    .4byte 0x480000E8 # b .L_8023339C
L_802332B8:
    mr 3, 31
    bl fn_80250D30
    clrlwi. 0, 3, 24
    .4byte 0x40820050 # bne .L_80233314
    mr 3, 30
    addi 4, 1, 0xa8
    bl fn_8023DFF4
    lfs 2, 0xc4(1)
    li 0, 0x1
    lfs 1, 0xa8(1)
    lfs 0, 0xcc(1)
    fadds 4, 2, 1
    lfs 2, 0xc8(1)
    lfs 3, 0xac(1)
    fadds 1, 0, 1
    lfs 0, 0xd0(1)
    fadds 2, 2, 3
    fadds 0, 0, 3
    stfs 4, 0xc4(1)
    stfs 2, 0xc8(1)
    stfs 1, 0xcc(1)
    stfs 0, 0xd0(1)
    stb 0, 0xafc(31)
L_80233314:
    mr 3, 25
    bl fn_80250D30
    clrlwi. 0, 3, 24
    .4byte 0x4082007C # bne .L_8023339C
    lfs 0, 0xb0(1)
    addi 4, 1, 0x64
    psq_l 1, 0xa8(1), 0, 0
    mr 3, 26
    fneg 0, 0
    ps_neg 1, 1
    frsp 2, 0
    stfs 0, 0x18(1)
    psq_st 1, 0x10(1), 0, 0
    psq_st 1, 0x0(4), 0, 0
    stfs 2, 0x6c(1)
    bl fn_8023DFF4
    lfs 1, 0xa8(1)
    li 0, 0x1
    lfs 0, 0xac(1)
    fneg 4, 1
    lfs 3, 0xb4(1)
    lfs 1, 0xbc(1)
    fneg 5, 0
    lfs 2, 0xb8(1)
    lfs 0, 0xc0(1)
    fadds 3, 3, 4
    fadds 2, 2, 5
    fadds 1, 1, 4
    fadds 0, 0, 5
    stfs 3, 0xb4(1)
    stfs 2, 0xb8(1)
    stfs 1, 0xbc(1)
    stfs 0, 0xc0(1)
    stb 0, 0xafc(25)
L_8023339C:
    cmpwi 24, 0x3
    .4byte 0x4080000C # bge .L_802333AC
    addi 24, 24, 0x1
    .4byte 0x4BFFFB44 # b .L_80232EEC
L_802333AC:
    addi 28, 28, 0x4
    addi 26, 26, 0x1
L_802333B4:
    cmpwi 26, 0x4
    .4byte 0x4180F8CC # blt .L_80232C84
L_802333BC:
    addi 30, 30, 0x1
    addi 29, 29, 0x4
    cmpwi 30, 0x3
    .4byte 0x4180F6F8 # blt .L_80232AC0
    li 29, 0x0
    li 27, 0x0
L_802333D4:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    addi 0, 27, 0x4
    lwzx 4, 3, 0
    cmplwi 4, 0x0
    mr 31, 4
    .4byte 0x4182074C # beq .L_80233B34
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_802333FC
    li 0, 0x0
    .4byte 0x48000038 # b .L_80233430
L_802333FC:
    cmpwi 29, 0x0
    .4byte 0x4080000C # bge .L_8023340C
    li 0, 0x0
    .4byte 0x48000028 # b .L_80233430
L_8023340C:
    cmpwi 29, 0x4
    .4byte 0x4180000C # blt .L_8023341C
    li 0, 0x0
    .4byte 0x48000018 # b .L_80233430
L_8023341C:
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8023342C
    li 0, 0x0
    .4byte 0x48000008 # b .L_80233430
L_8023342C:
    lbz 0, 0xcac(4)
L_80233430:
    clrlwi. 0, 0, 24
    .4byte 0x41820700 # beq .L_80233B34
    lbz 0, 0xbd4(31)
    cmplwi 0, 0x0
    .4byte 0x408206F4 # bne .L_80233B34
    li 30, 0x0
    li 28, 0x0
L_8023344C:
    cmpw 29, 30
    .4byte 0x418206D4 # beq .L_80233B24
    mr 3, 29
    mr 4, 30
    bl fn_8022E438
    clrlwi. 0, 3, 24
    .4byte 0x408206C0 # bne .L_80233B24
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    addi 0, 28, 0x4
    lwzx 4, 3, 0
    cmplwi 4, 0x0
    mr 24, 4
    .4byte 0x418206A8 # beq .L_80233B24
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_80233490
    li 0, 0x0
    .4byte 0x48000038 # b .L_802334C4
L_80233490:
    cmpwi 30, 0x0
    .4byte 0x4080000C # bge .L_802334A0
    li 0, 0x0
    .4byte 0x48000028 # b .L_802334C4
L_802334A0:
    cmpwi 30, 0x4
    .4byte 0x4180000C # blt .L_802334B0
    li 0, 0x0
    .4byte 0x48000018 # b .L_802334C4
L_802334B0:
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_802334C0
    li 0, 0x0
    .4byte 0x48000008 # b .L_802334C4
L_802334C0:
    lbz 0, 0xcac(4)
L_802334C4:
    clrlwi. 0, 0, 24
    .4byte 0x4182065C # beq .L_80233B24
    mr 3, 24
    bl Player_GetField_0x454
    clrlwi. 0, 3, 24
    .4byte 0x4082064C # bne .L_80233B24
    mr 3, 24
    bl fn_80270C88
    clrlwi. 0, 3, 24
    .4byte 0x4082063C # bne .L_80233B24
    lbz 0, 0xbd4(24)
    cmplwi 0, 0x0
    .4byte 0x40820630 # bne .L_80233B24
    mr 3, 30
    bl fn_8023E724
    lfs 23, 0x8(3)
    mr 3, 29
    bl fn_8023E724
    lfs 1, 0x8(3)
    .4byte 0xC002D070 # lfs f0, lbl_80540010@sda21(r0)
    fsubs 1, 1, 23
    fabs 1, 1
    frsp 1, 1
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x418205FC # beq .L_80233B24
    mr 3, 30
    bl fn_8023DE58
    mr 25, 3
    mr 3, 29
    bl fn_8023DE58
    cmpw 3, 25
    .4byte 0x40820164 # bne .L_802336A8
    lbz 0, 0x458(31)
    cmplwi 0, 0x1
    .4byte 0x40820158 # bne .L_802336A8
    lbz 0, 0x458(24)
    cmplwi 0, 0x1
    .4byte 0x4082014C # bne .L_802336A8
    addi 3, 31, 0x4a0
    addi 4, 24, 0x4a0
    bl fn_80233C9C
    clrlwi. 0, 3, 24
    .4byte 0x4082002C # bne .L_8023359C
    addi 3, 31, 0x4a0
    addi 4, 24, 0x4b0
    bl fn_80233C9C
    clrlwi. 0, 3, 24
    .4byte 0x40820018 # bne .L_8023359C
    addi 3, 31, 0x4b0
    addi 4, 24, 0x4a0
    bl fn_80233C9C
    clrlwi. 0, 3, 24
    .4byte 0x41820110 # beq .L_802336A8
L_8023359C:
    mr 3, 29
    addi 5, 24, 0x8
    li 4, 0x0
    li 6, 0x10
    bl fn_80238548
    lis 4, 0x2
    mr 3, 31
    addi 4, 4, 0x2
    bl fn_8024F0E8
    mr 3, 30
    addi 5, 31, 0x8
    li 4, 0x0
    li 6, 0x10
    bl fn_80238548
    lis 4, 0x2
    mr 3, 24
    addi 4, 4, 0x2
    bl fn_8024F0E8
    mr 3, 30
    bl fn_8023E724
    mr 25, 3
    mr 3, 29
    bl fn_8023E724
    mr 4, 3
    mr 5, 25
    addi 3, 1, 0x58
    bl fn_80233BC4
    lfs 0, 0x58(1)
    addi 3, 31, 0x35c
    stfs 0, 0x35c(31)
    lfs 0, 0x5c(1)
    stfs 0, 0x360(31)
    lfs 0, 0x60(1)
    stfs 0, 0x364(31)
    bl fn_80233C08
    .4byte 0xC362D088 # lfs f27, lbl_80540028@sda21(r0)
    mr 3, 29
    psq_l 1, 0x35c(31), 0, 0
    psq_l 0, 0x364(31), 1, 0
    ps_muls0 1, 1, 27
    ps_muls0 0, 0, 27
    psq_st 1, 0x35c(31), 0, 0
    psq_st 0, 0x364(31), 1, 0
    bl fn_8023E724
    mr 25, 3
    mr 3, 30
    bl fn_8023E724
    mr 4, 3
    mr 5, 25
    addi 3, 1, 0x4c
    bl fn_80233BC4
    lfs 0, 0x4c(1)
    addi 3, 24, 0x35c
    stfs 0, 0x35c(24)
    lfs 0, 0x50(1)
    stfs 0, 0x360(24)
    lfs 0, 0x54(1)
    stfs 0, 0x364(24)
    bl fn_80233C08
    .4byte 0xC342D088 # lfs f26, lbl_80540028@sda21(r0)
    psq_l 1, 0x35c(24), 0, 0
    psq_l 0, 0x364(24), 1, 0
    ps_muls0 1, 1, 26
    ps_muls0 0, 0, 26
    psq_st 1, 0x35c(24), 0, 0
    psq_st 0, 0x364(24), 1, 0
    .4byte 0x48000480 # b .L_80233B24
L_802336A8:
    lwz 5, 0x3b4(24)
    mr 3, 31
    addi 4, 24, 0x4c0
    addi 6, 1, 0x8
    li 7, 0x1
    bl fn_80273E7C
    clrlwi. 0, 3, 24
    .4byte 0x418201A0 # beq .L_80233864
    addi 3, 1, 0x98
    addi 4, 24, 0x5ec
    bl fn_80233BA0
    lbz 0, 0x458(31)
    mr 3, 24
    lwz 5, 0x3b4(31)
    addi 4, 1, 0x98
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_802336F4
    lwz 6, 0x3f0(31)
    .4byte 0x48000008 # b .L_802336F8
L_802336F4:
    lwz 6, 0x3dc(31)
L_802336F8:
    li 7, 0x1
    li 8, 0x1
    bl fn_80272224
    clrlwi. 0, 3, 24
    .4byte 0x418200C8 # beq .L_802337D0
    mr 3, 30
    bl fn_8023E724
    mr 25, 3
    mr 3, 29
    bl fn_8023E724
    mr 4, 3
    mr 5, 25
    addi 3, 1, 0x40
    bl fn_80233BC4
    lfs 0, 0x40(1)
    addi 3, 31, 0x35c
    stfs 0, 0x35c(31)
    lfs 0, 0x44(1)
    stfs 0, 0x360(31)
    lfs 0, 0x48(1)
    stfs 0, 0x364(31)
    bl fn_80233C08
    .4byte 0xC322D088 # lfs f25, lbl_80540028@sda21(r0)
    mr 3, 29
    psq_l 1, 0x35c(31), 0, 0
    psq_l 0, 0x364(31), 1, 0
    ps_muls0 1, 1, 25
    ps_muls0 0, 0, 25
    psq_st 1, 0x35c(31), 0, 0
    psq_st 0, 0x364(31), 1, 0
    bl fn_8023E724
    mr 25, 3
    mr 3, 30
    bl fn_8023E724
    mr 4, 3
    mr 5, 25
    addi 3, 1, 0x34
    bl fn_80233BC4
    lfs 0, 0x34(1)
    addi 3, 24, 0x35c
    stfs 0, 0x35c(24)
    lfs 0, 0x38(1)
    stfs 0, 0x360(24)
    lfs 0, 0x3c(1)
    stfs 0, 0x364(24)
    bl fn_80233C08
    .4byte 0xC302D088 # lfs f24, lbl_80540028@sda21(r0)
    psq_l 1, 0x35c(24), 0, 0
    psq_l 0, 0x364(24), 1, 0
    ps_muls0 1, 1, 24
    ps_muls0 0, 0, 24
    psq_st 1, 0x35c(24), 0, 0
    psq_st 0, 0x364(24), 1, 0
    .4byte 0x48000358 # b .L_80233B24
L_802337D0:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820024 # beq .L_80233800
    mr 3, 29
    bl fn_8023E724
    mr 5, 3
    mr 3, 30
    li 4, 0x0
    li 6, 0x1
    bl fn_80238548
    .4byte 0x48000328 # b .L_80233B24
L_80233800:
    mr 3, 29
    bl fn_8023B6CC
    cmpwi 3, 0x1
    .4byte 0x40820024 # bne .L_80233830
    mr 3, 29
    bl fn_8023E724
    mr 5, 3
    mr 3, 30
    li 4, 0x1
    li 6, 0x1
    bl fn_80238548
    .4byte 0x480002F8 # b .L_80233B24
L_80233830:
    mr 3, 29
    bl fn_8023E724
    mr 23, 3
    mr 3, 29
    bl fn_8023B6CC
    srwi 0, 3, 31
    mr 5, 23
    add 0, 0, 3
    mr 3, 30
    srawi 4, 0, 1
    li 6, 0x1
    bl fn_80238548
    .4byte 0x480002C4 # b .L_80233B24
L_80233864:
    mr 3, 31
    bl fn_8025F590
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_8023388C
    mr 3, 31
    bl fn_8025F55C
    lwz 4, 0x4(24)
    bl fn_8022E438
    clrlwi. 0, 3, 24
    .4byte 0x40820090 # bne .L_80233918
L_8023388C:
    lwz 5, 0x3b4(24)
    mr 3, 31
    addi 4, 24, 0x4c0
    addi 6, 1, 0x8
    bl fn_80273518
    clrlwi. 0, 3, 24
    .4byte 0x41820074 # beq .L_80233918
    addi 3, 1, 0x88
    addi 4, 24, 0x5ec
    bl fn_80233BA0
    lwz 5, 0x3b4(31)
    mr 3, 24
    lwz 6, 0x3dc(31)
    addi 4, 1, 0x88
    li 7, 0x1
    li 8, 0x0
    bl fn_80272224
    clrlwi. 0, 3, 24
    .4byte 0x41820024 # beq .L_802338F8
    lis 4, 0x2
    mr 3, 24
    addi 4, 4, 0x3
    bl fn_8024F0E8
    mr 3, 29
    addi 4, 1, 0x8
    bl fn_802379E4
    .4byte 0x48000230 # b .L_80233B24
L_802338F8:
    mr 3, 29
    bl fn_8023E724
    mr 5, 3
    mr 3, 30
    li 4, 0x0
    li 6, 0xb
    bl fn_80238548
    .4byte 0x48000210 # b .L_80233B24
L_80233918:
    lbz 0, 0xb68(31)
    cmplwi 0, 0x1
    .4byte 0x40820070 # bne .L_80233990
    lwz 5, 0x3b4(24)
    mr 3, 31
    addi 4, 24, 0x4c0
    addi 6, 1, 0x8
    bl fn_802573E0
    clrlwi. 0, 3, 24
    .4byte 0x41820054 # beq .L_80233990
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_80233968
    mr 3, 30
    addi 5, 1, 0x8
    li 4, 0x0
    li 6, 0x1
    bl fn_80238548
    .4byte 0x480001C0 # b .L_80233B24
L_80233968:
    mr 3, 29
    bl fn_8023B630
    srwi 0, 3, 31
    addi 5, 1, 0x8
    add 0, 0, 3
    mr 3, 30
    srawi 4, 0, 1
    li 6, 0x1
    bl fn_80238548
    .4byte 0x48000198 # b .L_80233B24
L_80233990:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_802339A4
    li 0, 0x0
    .4byte 0x48000008 # b .L_802339A8
L_802339A4:
    lbz 0, 0x71(3)
L_802339A8:
    clrlwi. 0, 0, 24
    .4byte 0x40820080 # bne .L_80233A2C
    mr 3, 30
    bl fn_8023A3DC
    clrlwi. 0, 3, 24
    .4byte 0x40820070 # bne .L_80233A2C
    lwz 5, 0x3b4(24)
    mr 3, 31
    addi 4, 24, 0x4c0
    addi 6, 1, 0x8
    bl fn_80273FB8
    clrlwi. 0, 3, 24
    .4byte 0x41820054 # beq .L_80233A2C
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820024 # beq .L_80233A0C
    mr 3, 29
    bl fn_8023E724
    mr 5, 3
    mr 3, 30
    li 4, 0x0
    li 6, 0x1b
    bl fn_80238548
    .4byte 0x4800011C # b .L_80233B24
L_80233A0C:
    mr 3, 29
    bl fn_8023E724
    mr 5, 3
    mr 3, 30
    li 4, 0x2
    li 6, 0x1b
    bl fn_80238548
    .4byte 0x480000FC # b .L_80233B24
L_80233A2C:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_80233A40
    li 0, 0x0
    .4byte 0x48000008 # b .L_80233A44
L_80233A40:
    lbz 0, 0x71(3)
L_80233A44:
    clrlwi. 0, 0, 24
    .4byte 0x408200DC # bne .L_80233B24
    mr 3, 30
    bl fn_8023A3DC
    clrlwi. 0, 3, 24
    .4byte 0x408200CC # bne .L_80233B24
    lwz 5, 0x3b4(24)
    mr 3, 31
    addi 4, 24, 0x4c0
    addi 6, 1, 0x8
    bl fn_80256F44
    clrlwi. 0, 3, 24
    .4byte 0x418200B0 # beq .L_80233B24
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_80233AD8
    mr 3, 29
    bl fn_8023A5B8
    clrlwi. 0, 3, 24
    .4byte 0x41820024 # beq .L_80233AB8
    mr 3, 29
    bl fn_8023E724
    mr 5, 3
    mr 3, 30
    li 4, 0x0
    li 6, 0x15
    bl fn_80238548
    .4byte 0x48000070 # b .L_80233B24
L_80233AB8:
    mr 3, 29
    bl fn_8023E724
    mr 5, 3
    mr 3, 30
    li 4, 0x0
    li 6, 0x14
    bl fn_80238548
    .4byte 0x48000050 # b .L_80233B24
L_80233AD8:
    mr 3, 29
    bl fn_8023A5B8
    clrlwi. 0, 3, 24
    .4byte 0x41820024 # beq .L_80233B08
    mr 3, 29
    bl fn_8023E724
    mr 5, 3
    mr 3, 30
    li 4, 0x4
    li 6, 0x15
    bl fn_80238548
    .4byte 0x48000020 # b .L_80233B24
L_80233B08:
    mr 3, 29
    bl fn_8023E724
    mr 5, 3
    mr 3, 30
    li 4, 0x2
    li 6, 0x14
    bl fn_80238548
L_80233B24:
    addi 30, 30, 0x1
    addi 28, 28, 0x4
    cmpwi 30, 0x4
    .4byte 0x4180F91C # blt .L_8023344C
L_80233B34:
    addi 29, 29, 0x1
    addi 27, 27, 0x4
    cmpwi 29, 0x4
    .4byte 0x4180F894 # blt .L_802333D4
    psq_l 31, 0x188(1), 0, 0
    lfd 31, 0x180(1)
    psq_l 30, 0x178(1), 0, 0
    lfd 30, 0x170(1)
    psq_l 29, 0x168(1), 0, 0
    lfd 29, 0x160(1)
    psq_l 28, 0x158(1), 0, 0
    lfd 28, 0x150(1)
    psq_l 27, 0x148(1), 0, 0
    lfd 27, 0x140(1)
    psq_l 26, 0x138(1), 0, 0
    lfd 26, 0x130(1)
    psq_l 25, 0x128(1), 0, 0
    lfd 25, 0x120(1)
    psq_l 24, 0x118(1), 0, 0
    lfd 24, 0x110(1)
    psq_l 23, 0x108(1), 0, 0
    lfd 23, 0x100(1)
    lmw 23, 0xdc(1)
    lwz 0, 0x194(1)
    mtlr 0
    addi 1, 1, 0x190
    blr

fn_80233BA0:
    lfs 1, 0x0(4)
    lfs 0, 0x4(4)
    stfs 1, 0x0(3)
    lfs 1, 0x8(4)
    stfs 0, 0x4(3)
    lfs 0, 0xc(4)
    stfs 1, 0x8(3)
    stfs 0, 0xc(3)
    blr

fn_80233BC4:
    stwu 1, -0x20(1)
    lfs 0, 0x8(4)
    psq_l 1, 0x0(4), 0, 0
    stfs 0, 0x10(1)
    psq_l 0, 0x8(5), 1, 0
    psq_l 2, 0x10(1), 1, 0
    psq_l 3, 0x0(5), 0, 0
    ps_sub 0, 2, 0
    psq_st 1, 0x8(1), 0, 0
    ps_sub 3, 1, 3
    psq_st 0, 0x10(1), 1, 0
    psq_st 3, 0x0(3), 0, 0
    lfs 0, 0x10(1)
    psq_st 3, 0x8(1), 0, 0
    stfs 0, 0x8(3)
    addi 1, 1, 0x20
    blr

fn_80233C08:
    psq_l 4, 0x0(3), 0, 0
    lis 4, lbl_80539D44@ha
    lfs 2, 0x8(3)
    ps_mul 4, 4, 4
    .4byte 0xC022D06C # lfs f1, lbl_8054000C@sda21(r0)
    lfs 0, lbl_80539D44@l(4)
    ps_madd 5, 2, 2, 4
    fmuls 0, 1, 0
    ps_sum0 5, 5, 4, 4
    fcmpo cr0, 5, 0
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_80233C40
    .4byte 0xC022D068 # lfs f1, lbl_80540008@sda21(r0)
    blr
L_80233C40:
    .4byte 0xC002D068 # lfs f0, lbl_80540008@sda21(r0)
    fcmpo cr0, 5, 0
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_80233C58
    fmr 3, 5
    .4byte 0x48000028 # b .L_80233C7C
L_80233C58:
    frsqrte 4, 5
    .4byte 0xC042D074 # lfs f2, lbl_80540014@sda21(r0)
    .4byte 0xC002D078 # lfs f0, lbl_80540018@sda21(r0)
    frsp 4, 4
    fmuls 1, 4, 4
    fmuls 2, 2, 4
    fnmsubs 0, 5, 1, 0
    fmuls 0, 2, 0
    fmr 3, 0
L_80233C7C:
    psq_l 2, 0x0(3), 0, 0
    fmuls 1, 3, 5
    psq_l 0, 0x8(3), 1, 0
    ps_muls0 2, 2, 3
    ps_muls0 0, 0, 3
    psq_st 2, 0x0(3), 0, 0
    psq_st 0, 0x8(3), 1, 0
    blr

fn_80233C9C:
    lfs 0, 0x0(3)
    lfs 4, 0x0(4)
    lfs 1, 0x4(3)
    fcmpo cr0, 0, 4
    lfs 2, 0x8(3)
    lfs 3, 0xc(3)
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_80233CC0
    fmr 0, 4
L_80233CC0:
    lfs 4, 0x4(4)
    fcmpo cr0, 1, 4
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_80233CD4
    fmr 1, 4
L_80233CD4:
    lfs 4, 0x8(4)
    fcmpo cr0, 2, 4
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_80233CE8
    fmr 2, 4
L_80233CE8:
    lfs 4, 0xc(4)
    fcmpo cr0, 3, 4
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_80233CFC
    fmr 3, 4
L_80233CFC:
    fcmpo cr0, 2, 0
    li 3, 0x0
    cror eq, gt, eq
    bnelr
    fcmpo cr0, 3, 1
    cror eq, gt, eq
    bnelr
    li 3, 0x1
    blr

fn_80233D20:
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_80233D34
    li 3, 0x0
    blr
L_80233D34:
    .4byte 0x4082000C # bne .L_80233D40
    li 0, 0x0
    .4byte 0x48000044 # b .L_80233D80
L_80233D40:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_80233D50
    li 0, 0x0
    .4byte 0x48000034 # b .L_80233D80
L_80233D50:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_80233D60
    li 0, 0x0
    .4byte 0x48000024 # b .L_80233D80
L_80233D60:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_80233D7C
    li 0, 0x0
    .4byte 0x48000008 # b .L_80233D80
L_80233D7C:
    lbz 0, 0xcac(4)
L_80233D80:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_80233D9C
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    lbz 3, 0x43f(3)
    blr
L_80233D9C:
    li 3, 0x0
    blr

fn_80233DA4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_80233DC4
    li 3, 0x0
    .4byte 0x48000070 # b .L_80233E30
L_80233DC4:
    .4byte 0x4082000C # bne .L_80233DD0
    li 0, 0x0
    .4byte 0x48000044 # b .L_80233E10
L_80233DD0:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_80233DE0
    li 0, 0x0
    .4byte 0x48000034 # b .L_80233E10
L_80233DE0:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_80233DF0
    li 0, 0x0
    .4byte 0x48000024 # b .L_80233E10
L_80233DF0:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_80233E0C
    li 0, 0x0
    .4byte 0x48000008 # b .L_80233E10
L_80233E0C:
    lbz 0, 0xcac(4)
L_80233E10:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_80233E2C
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_80241230
    .4byte 0x48000008 # b .L_80233E30
L_80233E2C:
    li 3, 0x0
L_80233E30:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80233E40:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_80233E60
    li 3, 0x0
    .4byte 0x48000070 # b .L_80233ECC
L_80233E60:
    .4byte 0x4082000C # bne .L_80233E6C
    li 0, 0x0
    .4byte 0x48000044 # b .L_80233EAC
L_80233E6C:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_80233E7C
    li 0, 0x0
    .4byte 0x48000034 # b .L_80233EAC
L_80233E7C:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_80233E8C
    li 0, 0x0
    .4byte 0x48000024 # b .L_80233EAC
L_80233E8C:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_80233EA8
    li 0, 0x0
    .4byte 0x48000008 # b .L_80233EAC
L_80233EA8:
    lbz 0, 0xcac(4)
L_80233EAC:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_80233EC8
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_802412A4
    .4byte 0x48000008 # b .L_80233ECC
L_80233EC8:
    li 3, 0x0
L_80233ECC:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80233EDC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_80233EFC
    li 3, 0x0
    .4byte 0x48000070 # b .L_80233F68
L_80233EFC:
    .4byte 0x4082000C # bne .L_80233F08
    li 0, 0x0
    .4byte 0x48000044 # b .L_80233F48
L_80233F08:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_80233F18
    li 0, 0x0
    .4byte 0x48000034 # b .L_80233F48
L_80233F18:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_80233F28
    li 0, 0x0
    .4byte 0x48000024 # b .L_80233F48
L_80233F28:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_80233F44
    li 0, 0x0
    .4byte 0x48000008 # b .L_80233F48
L_80233F44:
    lbz 0, 0xcac(4)
L_80233F48:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_80233F64
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_80240B84
    .4byte 0x48000008 # b .L_80233F68
L_80233F64:
    li 3, 0x0
L_80233F68:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80233F78:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x41820068 # beq .L_80233FF4
    .4byte 0x4082000C # bne .L_80233F9C
    li 0, 0x0
    .4byte 0x48000044 # b .L_80233FDC
L_80233F9C:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_80233FAC
    li 0, 0x0
    .4byte 0x48000034 # b .L_80233FDC
L_80233FAC:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_80233FBC
    li 0, 0x0
    .4byte 0x48000024 # b .L_80233FDC
L_80233FBC:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_80233FD8
    li 0, 0x0
    .4byte 0x48000008 # b .L_80233FDC
L_80233FD8:
    lbz 0, 0xcac(4)
L_80233FDC:
    clrlwi. 0, 0, 24
    .4byte 0x41820014 # beq .L_80233FF4
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl IncrementField_0x1224
L_80233FF4:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

