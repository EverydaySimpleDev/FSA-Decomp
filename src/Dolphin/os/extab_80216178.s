.section extab, "a"
.balign 4
.global etb_8000A238
etb_8000A238:
    .4byte 0x38080000
    .4byte 0x00000000
.size etb_8000A238, 8

.section extabindex, "a"
.balign 4
.global eti_80017E9C
eti_80017E9C:
    .4byte fn_80216178
    .4byte 0x000000C0
    .4byte etb_8000A238
.size eti_80017E9C, 12

# fn_80216178(this) - calls the CONFIRMED fn_80138A30 helper (already
# landed as part of extab_801352f4.s - counts how many of 4 completion-
# flag bits at lbl_8053AAF8->0x82 are set) and stores the resulting
# count (0-4) at this->0x0. Constructs a 4-element array of 0x24-byte
# records at this->0x4 via the confirmed __construct_array helper, using
# fn_80216238 (see extab_80216238.s) as the element ctor. Calls
# Hrmn_InitSlotStateType0xc(this->0x94) once before AND once after a loop that runs
# exactly `count` times (the value just computed) over the array
# elements - each active element gets fields set directly (+0x4/+0x8/
# +0xc/+0xd/+0xe) plus calls to Hrmn_InitSlotStateType3 and Hrmn_ActivateSlotA (see
# extab_8021bfa8.s / extab_801ed798.s) - i.e. only as many array slots
# as there are completed things get actually activated, the rest stay
# at their fn_80216238-constructed defaults. Finally zeroes this->0xa0.
.text
.balign 4
.global fn_80216178

fn_80216178:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 25, 0x14(1)
    mr 25, 3
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    lis 4, fn_80216238@ha
    stw 3, 0x0(25)
    addi 4, 4, fn_80216238@l
    addi 3, 25, 0x4
    li 5, 0x0
    li 6, 0x24
    li 7, 0x4
    bl __construct_array
    addi 3, 25, 0x94
    bl Hrmn_InitSlotStateType0xc
    li 27, 0x0
    mr 26, 25
    mr 29, 27
    li 28, -0x1
    mr 30, 27
    mr 31, 27
    .4byte 0x48000030 # b .L_80216204
L_802161D8:
    stw 27, 0x4(26)
    addi 3, 26, 0x10
    stw 28, 0x8(26)
    stb 29, 0xc(26)
    stb 30, 0xd(26)
    stb 31, 0xe(26)
    bl Hrmn_InitSlotStateType3
    addi 3, 26, 0x1c
    bl Hrmn_ActivateSlotA
    addi 26, 26, 0x24
    addi 27, 27, 0x1
L_80216204:
    lwz 0, 0x0(25)
    cmpw 27, 0
    .4byte 0x4180FFCC # blt .L_802161D8
    addi 3, 25, 0x94
    bl Hrmn_InitSlotStateType0xc
    li 0, 0x0
    mr 3, 25
    stb 0, 0xa0(25)
    lmw 25, 0x14(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

