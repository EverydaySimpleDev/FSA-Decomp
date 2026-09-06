.section extab, "a"
.balign 4
.global etb_80005D8C
etb_80005D8C:
    .4byte 0x080A0000
    .4byte 0x000000AC
    .4byte 0x00020024
    .4byte 0x000000BC
    .4byte 0x00000018
    .4byte 0x00000000
    .4byte 0x0780001F
    .4byte 0x000002F4
    .4byte dtor_80105D80
    .4byte 0x8680001F
    .4byte 0x00000000
    .4byte dtor_8010E004
.size etb_80005D8C, 48

.section extabindex, "a"
.balign 4
.global eti_8001225C
eti_8001225C:
    .4byte fn_80112070
    .4byte 0x00000134
    .4byte etb_80005D8C
.size eti_8001225C, 12

# fn_80112070 - "DMZL" real constructor. Calls the shared base
# fn_8010E074 (see extab_8010e074.s), installs its own vtable, sets its
# own field defaults (+0x230..+0x278), constructs a 7-element array of
# 0xc-byte no-op-ctor'd records (__construct_array, see
# project_fsa_actor_cluster_80203xxx.md) at +0x288, then embeds TWO
# blend-timers (fn_801D267C, see extab_801d0f40.s) at +0x2f4 and +0x32c.
# The REMAINDER of the function (a small unrolled sequence comparing a
# literal counter 0-3 against a threshold of 2 and conditionally zeroing
# one of several destination fields per iteration) is a batch-clear of
# several similar sub-slots at +0x364..+0x38c - structurally understood
# as a clear-N-handle-like-slots operation, with fewer sub-fields valid
# past index 2, but not traced field-by-field with full confidence.
.text
.balign 4
.global fn_80112070

fn_80112070:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_8010E074
    lis 4, lbl_8049D208@ha
    li 9, 0x0
    addi 0, 4, lbl_8049D208@l
    lis 3, fn_8003B2CC@ha
    stw 0, 0x0(31)
    addi 4, 3, fn_8003B2CC@l
    li 6, 0x4
    li 8, 0x1
    stb 9, 0x230(31)
    li 0, -0x1
    .4byte 0xC04295BC # lfs f2, lbl_8053C55C@sda21(r0)
    addi 3, 31, 0x288
    stb 9, 0x231(31)
    li 5, 0x0
    .4byte 0xC022965C # lfs f1, lbl_8053C5FC@sda21(r0)
    li 7, 0x7
    stw 6, 0x234(31)
    li 6, 0xc
    .4byte 0xC00295F8 # lfs f0, lbl_8053C598@sda21(r0)
    stw 8, 0x238(31)
    stw 0, 0x23c(31)
    stw 9, 0x240(31)
    stw 9, 0x244(31)
    stw 9, 0x248(31)
    stw 9, 0x24c(31)
    stw 9, 0x250(31)
    stw 9, 0x254(31)
    stw 9, 0x258(31)
    stw 0, 0x25c(31)
    stw 9, 0x260(31)
    stw 9, 0x264(31)
    stfs 2, 0x268(31)
    stfs 2, 0x26c(31)
    stfs 1, 0x270(31)
    stfs 0, 0x274(31)
    stfs 2, 0x278(31)
    bl __construct_array
    addi 3, 31, 0x2f4
    bl fn_801D267C
    addi 3, 31, 0x32c
    bl fn_801D267C
    li 0, 0x0
    li 3, 0x0
    stw 0, 0x364(31)
    cmpwi 3, 0x2
    stw 0, 0x368(31)
    stw 0, 0x36c(31)
    stw 0, 0x370(31)
    .4byte 0x40800008 # bge .L_80112150
    stw 0, 0x380(31)
L_80112150:
    li 3, 0x1
    stw 0, 0x374(31)
    cmpwi 3, 0x2
    .4byte 0x40800008 # bge .L_80112164
    stw 0, 0x384(31)
L_80112164:
    li 3, 0x2
    stw 0, 0x378(31)
    cmpwi 3, 0x2
    .4byte 0x40800008 # bge .L_80112178
    stw 0, 0x388(31)
L_80112178:
    li 3, 0x3
    stw 0, 0x37c(31)
    cmpwi 3, 0x2
    .4byte 0x40800008 # bge .L_8011218C
    stw 0, 0x38c(31)
L_8011218C:
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

