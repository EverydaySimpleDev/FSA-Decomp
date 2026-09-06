/*
 * Companion-fairy hint-dispatch template, instance 2/3.
 *
 * fn_80230FD0(playerIdx, hintCode): identical lookup+bounds-check+flag-gate
 * shape as fn_8022CD48 (same struct, same lbl_8053AC90[playerIdx]->0x4
 * companion object, same 0xcac gate byte); on success, tail-dispatches
 * the already-landed fn_8024F0E8(companionObj, hintCode) - the real
 * hint-text/message dispatcher (decodes hintCode, ultimately queues a
 * textbox/message request on the companion object at +0x1250/+0x1254 and
 * virtual-calls its display routine). hintCode is passed straight through
 * unused by this wrapper itself.
 */
.section extab, "a"
.balign 4
.global etb_8000ABD8
etb_8000ABD8:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000ABD8, 8

.section extabindex, "a"
.balign 4
.global eti_80018CD0
eti_80018CD0:
    .4byte fn_80230FD0
    .4byte 0x0000008C
    .4byte etb_8000ABD8
.size eti_80018CD0, 12

.text
.balign 4
.global fn_80230FD0

fn_80230FD0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80CD90D0 # lwz r6, lbl_8053AC90@sda21(r0)
    cmplwi 6, 0x0
    .4byte 0x41820068 # beq .L_8023104C
    .4byte 0x4082000C # bne .L_80230FF4
    li 0, 0x0
    .4byte 0x48000044 # b .L_80231034
L_80230FF4:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_80231004
    li 0, 0x0
    .4byte 0x48000034 # b .L_80231034
L_80231004:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_80231014
    li 0, 0x0
    .4byte 0x48000024 # b .L_80231034
L_80231014:
    slwi 0, 3, 2
    add 5, 6, 0
    lwz 5, 0x4(5)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_80231030
    li 0, 0x0
    .4byte 0x48000008 # b .L_80231034
L_80231030:
    lbz 0, 0xcac(5)
L_80231034:
    clrlwi. 0, 0, 24
    .4byte 0x41820014 # beq .L_8023104C
    slwi 0, 3, 2
    add 3, 6, 0
    lwz 3, 0x4(3)
    bl fn_8024F0E8
L_8023104C:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

