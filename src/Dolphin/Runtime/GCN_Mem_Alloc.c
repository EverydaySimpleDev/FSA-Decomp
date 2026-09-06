#include "types.h"
#include "Dolphin/os.h"
#include "Dolphin/OS/OSAlloc.h"

extern const char lbl_8045DCC0[];
extern const char lbl_8045DCF8[];

// InitDefaultHeap() is inlined into __sys_free below (matches retail; the
// two OSReport strings and the OSInitAlloc/OSCreateHeap/OSSetCurrentHeap
// sequence are transcribed directly, not compiled from a separate function):
//   inline static void InitDefaultHeap()
//   {
//       void* arenaLo;
//       void* arenaHi;
//
//       OSReport("GCN_Mem_Alloc.c : InitDefaultHeap. No Heap Available\n");
//       OSReport("Metrowerks CW runtime library initializing default heap\n");
//
//       arenaLo = OSGetArenaLo();
//       arenaHi = OSGetArenaHi();
//
//       arenaLo = OSInitAlloc(arenaLo, arenaHi, 1);
//       OSSetArenaLo(arenaLo);
//
//       arenaLo = (void*)OSRoundUp32B(arenaLo);
//       arenaHi = (void*)OSRoundDown32B(arenaHi);
//
//       OSSetCurrentHeap(OSCreateHeap(arenaLo, arenaHi));
//       OSSetArenaLo(arenaLo = arenaHi);
//   }

//80067AF4
ASM WEAKFUNC void __sys_free(register void* ptr)
{
    nofralloc
    stwu    r1, -0x20(r1)
    mflr    r0
    stw     r0, 0x24(r1)
    stw     r31, 0x1c(r1)
    stw     r30, 0x18(r1)
    stw     r29, 0x14(r1)
    mr      r29, r3
    lwz     r0, __OSCurrHeap
    cmpwi   r0, -0x1
    bne     L_80067B84
    lis     r3, lbl_8045DCC0@ha
    addi    r3, r3, lbl_8045DCC0@l
    crclr   6
    bl      OSReport
    lis     r3, lbl_8045DCF8@ha
    addi    r3, r3, lbl_8045DCF8@l
    crclr   6
    bl      OSReport
    bl      OSGetArenaLo
    mr      r31, r3
    bl      OSGetArenaHi
    mr      r30, r3
    mr      r3, r31
    li      r5, 0x1
    mr      r4, r30
    bl      OSInitAlloc
    mr      r31, r3
    bl      OSSetArenaLo
    addi    r0, r31, 0x1f
    clrrwi  r30, r30, 5
    clrrwi  r3, r0, 5
    mr      r4, r30
    bl      OSCreateHeap
    bl      OSSetCurrentHeap
    mr      r3, r30
    bl      OSSetArenaLo
L_80067B84:
    lwz     r3, __OSCurrHeap
    mr      r4, r29
    bl      OSFreeToHeap
    lwz     r0, 0x24(r1)
    lwz     r31, 0x1c(r1)
    lwz     r30, 0x18(r1)
    lwz     r29, 0x14(r1)
    mtlr    r0
    addi    r1, r1, 0x20
    blr
}
