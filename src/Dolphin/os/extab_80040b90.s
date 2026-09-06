# OSInitAlloc/OSCreateHeap - REAL Dolphin SDK source confirmed via
# zeldaret/tww's src/dolphin/os/OSAlloc.c (see include/Dolphin/OS/OSAlloc.h
# for the now-landed OSHeapDescriptor/OSHeapCell structs and
# OSRoundUpPtr/OSRoundDownPtr macros, added this batch):
#
#   void* OSInitAlloc(void* lo, void* hi, int maxHeaps) {
#       u32 totalSize = maxHeaps * sizeof(OSHeapDescriptor);
#       int i;
#       lbl_8053A418 = (OSHeapDescriptor*)lo;   // HeapArray
#       lbl_8053A41C = maxHeaps;                // NumHeaps
#       for (i = 0; i < lbl_8053A41C; i++) {
#           OSHeapDescriptor* hd = &lbl_8053A418[i];
#           hd->size = -1;
#           hd->free = hd->allocated = 0;
#       }
#       __OSCurrHeap = -1;
#       lo = (u8*)lbl_8053A418 + totalSize;
#       lo = OSRoundUpPtr(lo, 0x20);
#       lbl_8053A420 = lo;                       // ArenaStart
#       lbl_8053A424 = OSRoundDownPtr(hi, 0x20);  // ArenaEnd
#       return lbl_8053A420;
#   }
#
#   OSHeapHandle OSCreateHeap(void* start, void* end) {
#       int i;
#       OSHeapCell* cell = (OSHeapCell*)OSRoundUpPtr(start, 0x20);
#       end = OSRoundDownPtr(end, 0x20);
#       for (i = 0; i < lbl_8053A41C; i++) {
#           OSHeapDescriptor* hd = &lbl_8053A418[i];
#           if (hd->size < 0) {
#               hd->size = (u8*)end - (u8*)cell;
#               cell->prev = 0;
#               cell->next = 0;
#               cell->size = hd->size;
#               hd->free = cell;
#               hd->allocated = 0;
#               return i;
#           }
#       }
#       return -1;
#   }
#
# NOTE: attempted real-C++ promotion of BOTH (36th Phase 4 batch) - this
# EXACT source, confirmed correct and semantically understood, was
# compiled and checked instruction-by-instruction. Both functions come
# extremely close (matching register roles, structure, and the vast
# majority of instructions) but each has 1-2 independent, otherwise-
# unrelated instruction pairs scheduled in a different order than
# retail (e.g. OSInitAlloc's per-iteration byte-offset increment lands
# BEFORE the first field store in every phrasing tried - array
# indexing, explicit pointer-walking, and a `while` loop with the
# increment manually placed mid-body between the field writes all
# produced the IDENTICAL wrong order; OSCreateHeap swaps 2 independent
# setup instructions similarly). This is the SAME "scheduler decides,
# not source-controllable" pattern as fn_803BACF8/Grve_SetParams this
# session, just for 1-instruction swaps instead of a full re-layout.
# Left as raw asm - the 4 trivial arena getter/setters bundled with
# these originally (OSGetArenaHi/Lo, OSSetArenaHi/Lo) DID land clean,
# now real C++ in Game/stub_osgetarenahi.cpp.
.text
.balign 4
.global OSInitAlloc
.global OSCreateHeap

OSInitAlloc:
    mulli 7, 5, 0xc
    .4byte 0x906D8858 # stw r3, lbl_8053A418@sda21(r0)
    .4byte 0x90AD885C # stw r5, lbl_8053A41C@sda21(r0)
    li 6, 0x0
    addi 3, 6, 0x0
    li 8, 0x0
    li 5, -0x1
    .4byte 0x48000020 # b .L_80040BCC
L_80040BB0:
    .4byte 0x800D8858 # lwz r0, lbl_8053A418@sda21(r0)
    addi 8, 8, 0x1
    add 9, 0, 6
    stw 5, 0x0(9)
    addi 6, 6, 0xc
    stw 3, 0x8(9)
    stw 3, 0x4(9)
L_80040BCC:
    .4byte 0x800D885C # lwz r0, lbl_8053A41C@sda21(r0)
    cmpw 8, 0
    .4byte 0x4180FFDC # blt .L_80040BB0
    .4byte 0x806D8858 # lwz r3, lbl_8053A418@sda21(r0)
    clrrwi 0, 4, 5
    li 4, -0x1
    .4byte 0x900D8864 # stw r0, lbl_8053A424@sda21(r0)
    add 3, 3, 7
    addi 0, 3, 0x1f
    .4byte 0x908D8040 # stw r4, __OSCurrHeap@sda21(r0)
    clrrwi 3, 0, 5
    .4byte 0x906D8860 # stw r3, lbl_8053A420@sda21(r0)
    blr

OSCreateHeap:
    .4byte 0x80CD885C # lwz r6, lbl_8053A41C@sda21(r0)
    addi 0, 3, 0x1f
    .4byte 0x80AD8858 # lwz r5, lbl_8053A418@sda21(r0)
    clrrwi 7, 0, 5
    cmpwi 6, 0x0
    mtctr 6
    clrrwi 4, 4, 5
    li 3, 0x0
    .4byte 0x40810044 # ble .L_80040C64
L_80040C24:
    lwz 0, 0x0(5)
    cmpwi 0, 0x0
    .4byte 0x4080002C # bge .L_80040C58
    subf 0, 7, 4
    stw 0, 0x0(5)
    li 4, 0x0
    stw 4, 0x0(7)
    stw 4, 0x4(7)
    lwz 0, 0x0(5)
    stw 0, 0x8(7)
    stw 7, 0x4(5)
    stw 4, 0x8(5)
    blr
L_80040C58:
    addi 5, 5, 0xc
    addi 3, 3, 0x1
    .4byte 0x4200FFC4 # bdnz .L_80040C24
L_80040C64:
    li 3, -0x1
    blr
