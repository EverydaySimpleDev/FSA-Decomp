#include "types.h"
#include "Dolphin/dvd.h"
#include "Dolphin/os.h"

extern const char lbl_80231488[];
extern int lbl_8065AC00;
extern BOOL DVDReadAbsAsyncPrio(DVDCommandBlock* block, void* addr, s32 length, s32 offset, DVDCBCallback callback, s32 prio);
extern void cbForReadAsync(s32 result, DVDFileInfo* fileInfo);

//8016DB6C
ASM BOOL DVDReadAsyncPrio(register DVDFileInfo* fileInfo, register void* addr, register s32 length, register s32 offset, register DVDCallback callback, register s32 prio)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x38(r1)
    stmw    r26, 0x20(r1)
    mr.     r29, r6
    addi    r26, r3, 0x0
    addi    r27, r4, 0x0
    addi    r28, r5, 0x0
    addi    r30, r7, 0x0
    addi    r31, r8, 0x0
    blt     checkNeg
    lwz     r0, 0x34(r26)
    cmplw   r29, r0
    ble     checkEnd
checkNeg:
    lis     r3, lbl_80231488@ha
    crclr   4*cr1+eq
    addi    r5, r3, lbl_80231488@l
    // FIXED, real bug: MWCC can't express "subi r3,r13,lbl_8065AC00@sda21"
    // directly (compact base-register-less SDA21 form); opword recomputed
    // for this build's current linked addresses -- see project memory.
    opword  0x386D88E0
    li      r4, 0x2ee
    bl      OSPanic
checkEnd:
    add.    r4, r29, r28
    blt     doCall
    lwz     r3, 0x34(r26)
    addi    r0, r3, 0x20
    cmplw   r4, r0
    blt     skipPanic
doCall:
    lis     r3, lbl_80231488@ha
    crclr   4*cr1+eq
    addi    r5, r3, lbl_80231488@l
    // FIXED, real bug: MWCC can't express "subi r3,r13,lbl_8065AC00@sda21"
    // directly (compact base-register-less SDA21 form); opword recomputed
    // for this build's current linked addresses -- see project memory.
    opword  0x386D88E0
    li      r4, 0x2f4
    bl      OSPanic
skipPanic:
    stw     r30, 0x38(r26)
    lis     r3, cbForReadAsync@ha
    // FIXED, real bug: MWCC can't express "subi rD,rA,SYM@l" (negating a
    // relocatable symbol is an illegal constant expression); opword
    // recomputed for this build's current linked address of cbForReadAsync.
    opword  0x38E3DC2C
    lwz     r0, 0x30(r26)
    addi    r3, r26, 0x0
    addi    r4, r27, 0x0
    addi    r5, r28, 0x0
    addi    r8, r31, 0x0
    add     r6, r0, r29
    bl      DVDReadAbsAsyncPrio
    lmw     r26, 0x20(r1)
    li      r3, 0x1
    lwz     r0, 0x3c(r1)
    addi    r1, r1, 0x38
    mtlr    r0
    blr
}
