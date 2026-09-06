/*
 * fn_801D84E4(this) (0x801D84E4-0x801D85B0, 0xCC/204 bytes) - this new class's
 * own per-state cutscene/camera-cue dispatcher, on the SAME this->0x248 state
 * field convention: state==0 no-op; state<0 calls fn_8030C210(lbl_8053AB10->
 * 0x24, this+0xc) then sets a one-shot flag at that manager's ->0x179 (matches
 * fn_801D47DC's default-path shape exactly); states 1-3 trigger the SAME
 * "camera/cutscene cue manager" one-shot-latch sequence at
 * lbl_8053AB10->0x24->0x7f4-0x804 fn_801D47DC's state==0x10 case uses
 * (further confirming that cue-trigger shape is a shared, class-independent
 * primitive - see extab_801d8430.s); state>=4 no-op.
 */

.section extab, "a"
.balign 4
.global etb_8000873C
etb_8000873C:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000873C, 8

.section extabindex, "a"
.balign 4
.global eti_80015B2C
eti_80015B2C:
    .4byte fn_801D84E4
    .4byte 0x000000CC
    .4byte etb_8000873C
.size eti_80015B2C, 12

.text
.balign 4
.global fn_801D84E4

fn_801D84E4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 0, 0x248(3)
    cmpwi 0, 0x0
    .4byte 0x418200A8 # beq .L_801D85A0
    .4byte 0x41800078 # blt .L_801D8574
    cmpwi 0, 0x4
    .4byte 0x40800070 # bge .L_801D8574
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    lwz 4, 0x30(4)
    lbz 0, 0x284(4)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_801D852C
    li 0, 0x1
    .4byte 0xC002C240 # lfs f0, lbl_8053F1E0@sda21(r0)
    stb 0, 0x284(4)
    stfs 0, 0x28c(4)
L_801D852C:
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    lwz 5, 0x24(4)
    lbz 0, 0x7f5(5)
    cmplwi 0, 0x0
    .4byte 0x40820064 # bne .L_801D85A0
    li 0, 0x1
    li 4, 0x4
    stb 0, 0x7f4(5)
    li 0, 0x0
    stw 4, 0x7f8(5)
    lfs 0, 0xc(3)
    stfs 0, 0x7fc(5)
    lfs 0, 0x10(3)
    stfs 0, 0x800(5)
    lfs 0, 0x14(3)
    stfs 0, 0x804(5)
    stb 0, 0x7f6(5)
    .4byte 0x48000030 # b .L_801D85A0
L_801D8574:
    .4byte 0x80AD8F50 # lwz r5, lbl_8053AB10@sda21(r0)
    addi 4, 3, 0xc
    lwz 3, 0x24(5)
    bl fn_8030C210
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    lbz 0, 0x179(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_801D85A0
    li 0, 0x1
    stb 0, 0x178(3)
L_801D85A0:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

