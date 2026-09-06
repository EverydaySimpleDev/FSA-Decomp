#include "types.h"
#include "Dolphin/exi.h"
#include "Dolphin/os.h"

extern u32 lbl_8053A770;
extern u32 lbl_8053A774;
extern u32 lbl_8053A778;
extern u32 lbl_8053A77C;

//800735F0
ASM s32 fn_800735F0(s32 chan, s32 dev, void* buf)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x28(r1)
    stw r31, 0x24(r1)
    addi r31, r5, 0x0
    stw r30, 0x20(r1)
    addi r30, r4, 0x0
    stw r29, 0x1c(r1)
    addi r29, r3, 0x0
    cmpwi r29, 0x2
    stw r28, 0x18(r1)
    beq L_80073644
    cmplwi r30, 0x0
    bne L_80073644
    addi r3, r29, 0x0
    li r4, 0x0
    bl EXIAttach
    cmpwi r3, 0x0
    bne L_80073644
    li r3, 0x0
    b L_8007375C
L_80073644:
    addi r3, r29, 0x0
    addi r4, r30, 0x0
    li r5, 0x0
    bl EXILock
    cntlzw r0, r3
    srwi r0, r0, 5
    mr. r28, r0
    bne L_80073718
    addi r3, r29, 0x0
    addi r4, r30, 0x0
    li r5, 0x0
    bl EXISelect
    cntlzw r0, r3
    srwi r0, r0, 5
    mr. r28, r0
    bne L_80073710
    lis r3, 0x2001
    addi r0, r3, 0x1300
    stw r0, 0x14(r1)
    addi r3, r29, 0x0
    addi r4, r1, 0x14
    li r5, 0x4
    li r6, 0x1
    li r7, 0x0
    bl EXIImm
    cntlzw r0, r3
    addi r3, r29, 0x0
    srwi r28, r0, 5
    bl EXISync
    cntlzw r0, r3
    srwi r0, r0, 5
    addi r3, r29, 0x0
    addi r4, r31, 0x0
    or r28, r28, r0
    li r5, 0x4
    li r6, 0x0
    li r7, 0x0
    bl EXIImm
    cntlzw r0, r3
    srwi r0, r0, 5
    addi r3, r29, 0x0
    or r28, r28, r0
    bl EXISync
    cntlzw r0, r3
    srwi r0, r0, 5
    addi r3, r29, 0x0
    or r28, r28, r0
    bl EXIDeselect
    cntlzw r0, r3
    srwi r0, r0, 5
    or r28, r28, r0
L_80073710:
    mr r3, r29
    bl EXIUnlock
L_80073718:
    cmpwi r29, 0x2
    beq L_80073730
    cmplwi r30, 0x0
    bne L_80073730
    mr r3, r29
    bl EXIDetach
L_80073730:
    cmpwi r28, 0x0
    beq L_80073740
    li r3, 0x0
    b L_8007375C
L_80073740:
    lwz r3, 0x0(r31)
    addis r0, r3, 0x1
    cmplwi r0, 0xffff
    beq L_80073758
    li r3, 0x1
    b L_8007375C
L_80073758:
    li r3, 0x0
L_8007375C:
    lwz r0, 0x2c(r1)
    lwz r31, 0x24(r1)
    lwz r30, 0x20(r1)
    lwz r29, 0x1c(r1)
    lwz r28, 0x18(r1)
    addi r1, r1, 0x28
    mtlr r0
    blr
}

//8007377C
ASM void __OSEnableBarnacle(s32 chan, u32 dev)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x20(r1)
    stw r31, 0x1c(r1)
    addi r31, r4, 0x0
    addi r5, r1, 0x10
    stw r30, 0x18(r1)
    addi r30, r3, 0x0
    bl EXIGetID
    cmpwi r3, 0x0
    beq L_80073920
    lwz r4, 0x10(r1)
    lis r0, 0x102
    cmpw r4, r0
    beq L_80073920
    bge L_8007384C
    cmpwi r4, 0x4
    beq L_80073920
    bge L_80073818
    lis r3, 0x8000
    addi r0, r3, 0x10
    cmpw r4, r0
    beq L_80073920
    bge L_800737FC
    addi r0, r3, 0x8
    cmpw r4, r0
    beq L_80073920
    bge L_800738F0
    addi r0, r3, 0x4
    cmpw r4, r0
    beq L_80073920
    b L_800738F0
L_800737FC:
    cmpwi r4, -0x1
    beq L_80073920
    bge L_800738F0
    addi r0, r3, 0x20
    cmpw r4, r0
    beq L_80073920
    b L_800738F0
L_80073818:
    cmpwi r4, 0x20
    beq L_80073920
    bge L_8007383C
    cmpwi r4, 0x10
    beq L_80073920
    bge L_800738F0
    cmpwi r4, 0x8
    beq L_80073920
    b L_800738F0
L_8007383C:
    lis r0, 0x101
    cmpw r4, r0
    beq L_80073920
    b L_800738F0
L_8007384C:
    lis r3, 0x404
    addi r0, r3, 0x404
    cmpw r4, r0
    beq L_80073920
    bge L_800738B4
    lis r3, 0x402
    addi r0, r3, 0x100
    cmpw r4, r0
    beq L_80073920
    bge L_80073894
    lis r0, 0x301
    cmpw r4, r0
    beq L_80073920
    bge L_800738F0
    lis r0, 0x202
    cmpw r4, r0
    beq L_80073920
    b L_800738F0
L_80073894:
    addi r0, r3, 0x300
    cmpw r4, r0
    beq L_80073920
    bge L_800738F0
    addi r0, r3, 0x200
    cmpw r4, r0
    beq L_80073920
    b L_800738F0
L_800738B4:
    lis r0, 0x413
    cmpw r4, r0
    beq L_80073920
    bge L_800738E4
    lis r0, 0x412
    cmpw r4, r0
    beq L_80073920
    bge L_800738F0
    lis r0, 0x406
    cmpw r4, r0
    beq L_80073920
    b L_800738F0
L_800738E4:
    lis r0, 0x422
    cmpw r4, r0
    beq L_80073920
L_800738F0:
    addi r3, r30, 0x0
    addi r4, r31, 0x0
    addi r5, r1, 0x10
    bl fn_800735F0
    cmpwi r3, 0x0
    beq L_80073920
    lis r3, 0xa5ff
    stw r30, lbl_8053A770
    addi r0, r3, 0x5a
    stw r31, lbl_8053A774
    stw r0, lbl_8053A77C
    stw r0, lbl_8053A778
L_80073920:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    addi r1, r1, 0x20
    mtlr r0
    blr
}

