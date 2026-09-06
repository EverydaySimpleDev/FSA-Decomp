#include "types.h"
#include "Dolphin/si.h"
#include "Dolphin/hw_regs.h"

extern SIControl Si;

//80160300
ASM BOOL __SITransfer(register s32 chan, register void* output, register u32 outputBytes, register void* input,
                       register u32 inputBytes, register SICallback callback)
{
    nofralloc
    mflr    r0
    lis     r9, Si@ha
    stw     r0, 0x4(r1)
    stwu    r1, -0x48(r1)
    stmw    r25, 0x2c(r1)
    addi    r26, chan, 0x0
    addi    r27, output, 0x0
    addi    r28, outputBytes, 0x0
    addi    r29, input, 0x0
    addi    r30, inputBytes, 0x0
    addi    r31, callback, 0x0
    addi    r25, r9, Si@l
    bl      OSDisableInterrupts
    lwz     r0, 0x44(r25)
    cmpwi   r0, -0x1
    beq     dotransfer
    bl      OSRestoreInterrupts
    li      r3, 0x0
    b       done
dotransfer:
    lis     r6, 0xcc00
    slwi    r0, r26, 3
    lwz     r7, 0x6438(r6)
    lis     r4, 0xf00
    sraw    r0, r4, r0
    and     r7, r7, r0
    stw     r7, 0x6438(r6)
    addi    r0, r28, 0x3
    srwi    r4, r0, 2
    stw     r26, 0x44(r25)
    cmplwi  r4, 0x0
    li      r5, 0x0
    stw     r31, 0x54(r25)
    stw     r30, 0x4c(r25)
    stw     r29, 0x50(r25)
    ble     writecomm
    cmplwi  r4, 0x8
    subi    r7, r4, 0x8
    ble     tailsetup2
    addi    r0, r7, 0x7
    srwi    r0, r0, 3
    cmplwi  r7, 0x0
    mtctr   r0
    addi    r7, r27, 0x0
    addi    r6, r6, 0x6400
    ble     tailsetup2
unroll8:
    lwz     r0, 0x0(r7)
    addi    r5, r5, 0x8
    stw     r0, 0x80(r6)
    lwz     r0, 0x4(r7)
    stw     r0, 0x84(r6)
    lwz     r0, 0x8(r7)
    stw     r0, 0x88(r6)
    lwz     r0, 0xc(r7)
    stw     r0, 0x8c(r6)
    lwz     r0, 0x10(r7)
    stw     r0, 0x90(r6)
    lwz     r0, 0x14(r7)
    stw     r0, 0x94(r6)
    lwz     r0, 0x18(r7)
    stw     r0, 0x98(r6)
    lwz     r0, 0x1c(r7)
    addi    r7, r7, 0x20
    stw     r0, 0x9c(r6)
    addi    r6, r6, 0x20
    bdnz    unroll8
    b       tailsetup2
tailsetup1:
    subf    r0, r5, r4
    cmplw   r5, r4
    mtctr   r0
    bge     writecomm
tailloop1:
    lwz     r0, 0x0(r6)
    addi    r6, r6, 0x4
    stw     r0, 0x80(r7)
    addi    r7, r7, 0x4
    bdnz    tailloop1
writecomm:
    lis     r4, 0xcc00
    addi    r6, r4, 0x6400
    lwzu    r0, 0x34(r6)
    li      r4, 0x1
    stw     r0, 0x24(r1)
    cmplwi  r31, 0x0
    lbz     r0, 0x24(r1)
    rlwimi  r0, r4, 7, 24, 24
    stb     r0, 0x24(r1)
    beq     tcintmsk0
    b       storetcintmsk
tcintmsk0:
    li      r4, 0x0
storetcintmsk:
    lbz     r0, 0x24(r1)
    rlwimi  r0, r4, 6, 25, 25
    cmplwi  r28, 0x80
    stb     r0, 0x24(r1)
    bne     useoutbytes
    li      r0, 0x0
    b       storeoutlngth
useoutbytes:
    mr      r0, r28
storeoutlngth:
    clrlwi  r4, r0, 24
    lbz     r0, 0x25(r1)
    rlwimi  r0, r4, 0, 25, 31
    cmplwi  r30, 0x80
    stb     r0, 0x25(r1)
    bne     useinbytes
    li      r0, 0x0
    b       storeinlngth
useinbytes:
    mr      r0, r30
storeinlngth:
    clrlwi  r4, r0, 24
    lbz     r0, 0x26(r1)
    rlwimi  r0, r4, 0, 25, 31
    stb     r0, 0x26(r1)
    li      r4, 0x1
    lbz     r0, 0x27(r1)
    rlwimi  r0, r26, 1, 29, 30
    stb     r0, 0x27(r1)
    lbz     r0, 0x27(r1)
    rlwimi  r0, r4, 0, 31, 31
    stb     r0, 0x27(r1)
    lwz     r0, 0x24(r1)
    stw     r0, 0x0(r6)
    bl      OSRestoreInterrupts
    li      r3, 0x1
    b       done
tailsetup2:
    lis     r6, 0xcc00
    slwi    r0, r5, 2
    addi    r7, r6, 0x6400
    add     r6, r27, r0
    add     r7, r7, r0
    b       tailsetup1
done:
    lmw     r25, 0x2c(r1)
    lwz     r0, 0x4c(r1)
    addi    r1, r1, 0x48
    mtlr    r0
    blr
}
