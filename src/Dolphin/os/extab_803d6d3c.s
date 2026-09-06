# fn_803D6D3C - BFIN: vtable-slot function (0x38)
# Dispatches via __ptmf_scall (pointer-to-member-function call).
.section extab, "a"
.balign 4
.global etb_8000FAA4
etb_8000FAA4:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000FAA4, 8

.section extabindex, "a"
.balign 4
.global eti_8001F948
eti_8001F948:
    .4byte fn_803D6D3C
    .4byte 0x00000038
    .4byte etb_8000FAA4
.size eti_8001F948, 12

.text
.balign 4
.global fn_803D6D3C

fn_803D6D3C:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, lbl_804B032C@ha
    stw 0, 0x14(1)
    addi 0, 4, lbl_804B032C@l
    lwz 5, 0x230(3)
    mulli 4, 5, 0xc
    add 12, 0, 4
    bl __ptmf_scall
    nop
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

