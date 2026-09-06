# ACTOR (vtable lbl_804AFF60, dtor fn_803CFFBC, ctor fn_803D0264): spans
# 0x803CE05C-0x803D2C34 (~19KB). Ctor is 0x2280 bytes - one of the largest
# single constructors in this gap. The static-registration function
# (fn_803D24E4) is a HYBRID: standard 9x __register_global_object PLUS
# populating a pointer-to-member-function (PTMF) dispatch table
# (lbl_804AFB90, 3-word entries: vtable-offset/this-adjust/fn-ptr) pointing
# at this actor's own methods (fn_803CE370, fn_803CE11C). This resolved an
# earlier false lead: lbl_804AFD70 (an "all-zero vtable" candidate found
# during scouting) turned out to be a DIFFERENT such PTMF table (used via
# __ptmf_scall, not a normal vtable) - it reads all-zero in ROM because
# it's populated by CODE at runtime, not static data. NOT an actor by
# itself. Preceded by ~54 functions of confirmed non-actor manager code
# (heavy calls into fn_804023D0/fn_80402E08, part of the still-largely-
# unclaimed manager stretches) - correctly left unclaimed.
# fn_803CE05C - leading helper (0xC0)
.section extab, "a"
.balign 4
.global etb_8000F8D4
etb_8000F8D4:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000F8D4, 8

.section extabindex, "a"
.balign 4
.global eti_8001F708
eti_8001F708:
    .4byte fn_803CE05C
    .4byte 0x000000C0
    .4byte etb_8000F8D4
.size eti_8001F708, 12

.text
.balign 4
.global fn_803CE05C

fn_803CE05C:
    stwu 1, -0x10(1)
    mflr 0
    li 4, 0x1300
    li 5, 0x1
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x41820084 # beq .L_803CE108
    lwz 0, 0x7c(31)
    cmplwi 0, 0x51
    .4byte 0x40820010 # bne .L_803CE0A0
    li 0, 0x83
    stw 0, 0x80(31)
    .4byte 0x4800005C # b .L_803CE0F8
L_803CE0A0:
    cmplwi 0, 0x83
    .4byte 0x40820020 # bne .L_803CE0C4
    li 3, 0x84
    li 0, 0xf
    stw 3, 0x80(31)
    lbz 3, 0x110(31)
    stb 3, 0x112(31)
    stb 0, 0x110(31)
    .4byte 0x48000038 # b .L_803CE0F8
L_803CE0C4:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_803CE0E0
    li 0, 0x5c
    stw 0, 0x80(31)
    .4byte 0x4800000C # b .L_803CE0E8
L_803CE0E0:
    li 0, 0x256
    stw 0, 0x80(31)
L_803CE0E8:
    lbz 3, 0x110(31)
    li 0, 0x3
    stb 3, 0x112(31)
    stb 0, 0x110(31)
L_803CE0F8:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0xb
    li 5, -0x1
    bl fn_80458880
L_803CE108:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

