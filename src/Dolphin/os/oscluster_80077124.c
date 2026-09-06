#include "types.h"

// ============================================================================
// FILE MAP (0x80077124-0x80079E64, 101 functions) - updated as identification
// progresses. Read this first before investigating further; it's the
// current single source of truth for what's known, grouped, or still open.
// Full investigation history/technique notes: see project memory
// "project_fsa_jkraram_real_decomp_progress" (originSessionId
// ef61eab1-cde0-43fa-a4c1-c0828486e3fe).
//
// DONE, real reference-verified names (19 functions):
//   - JKRAram (0x800790A8-0x80079E64, 10 fns): create/ctor/dtor/run/
//     mainRamToAram/aramToMainRam_addr/JKRDecompressFromAramToMainRam/
//     decompSZS_subroutine/firstSrcData/nextSrcData. Verified against
//     cbr_decomp's real, address-confirmed JKRAram.cpp.
//   - BmgMesgArchive (5 fns: ctor/dtor/open/parseChunks + IsSjisLeadByte):
//     FSA's own BMG (Nintendo text/dialogue format) archive parser -
//     identified from scratch via magic-number constants ("MESG"/"bmg1"/
//     "INF1"/"DAT1"/"MID1"/"STR1"), not from any reference (this is
//     game-specific code, no sibling project has it).
//   - BmcMesgArchive (4 fns: ctor/dtor/open/parseChunk): sibling of
//     BmgMesgArchive (shares its base vtable), checks magic "bmc1"/"CLT1"
//     instead of "bmg1". Also inferred, not reference-confirmed.
//
// GROUPED (real vtable/class structure known via reading .data vtables
// directly from the DOL - see the technique note below), but NOT yet named
// - do not guess names for these without new evidence:
//   - fn_80077134's class (vtable lbl_804989E4, dtor fn_80077134, ctor
//     fn_8007729C): fn_8007722C allocates a zeroed 0x1C-byte "node" (no
//     vtable set - plain data, not a class instance), fn_80077278 frees
//     one - this looks like a generic KEYED-NODE FACTORY/REGISTRY, not
//     message-specific. fn_800771A8 (not in this class's vtable, likely a
//     plain member function) walks a linked list via a next-pointer at
//     offset 0 comparing a tag at offset 0xC - almost certainly this
//     registry's "find node by key" lookup. fn_8007891C (in the BIG class
//     below) does the SAME walk/compare shape - worth checking if it's
//     reusing this same registry as a member.
//   - The "big" class family: lbl_80498A10 (15 own virtuals, dtor
//     dtor_800788C0, biggest class found) / lbl_80498A58 (dtor fn_80078050,
//     shares 9 virtuals with A10, adds 12 more of its own) / lbl_80498AB8
//     (dtor fn_77894, shares all 11 "trivial" virtuals below, adds none).
//     fn_8007800C is a real constructor for this family (sets lbl_80498AB8
//     then overrides to lbl_80498A58 - base->derived). fn_80077E68 (stored
//     as a member callback by that ctor) pops items from a same-object
//     inline array gated by a counter, calling 2 completion-hook virtuals
//     once empty - working guess is a "sequenced event/timer queue
//     processor" (UNCONFIRMED - don't commit to a specific name).
//   - fn_800779C4 through fn_800779F4 (11 tiny 0x4/0x8-byte functions):
//     SHARED default no-op virtual overrides used by all 3 of the "big"
//     classes above - a common base class's default hooks, not
//     independent junk. Rename as a group once that base is identified.
//   - lbl_80498B00 (dtor fn_80077844, 1 virtual fn_8007788C), lbl_80498B10
//     (dtor fn_80078B64, ctor fn_80078B20 - inits two u16 fields to 0xFFFF/
//     -1 sentinels, no extra virtuals), lbl_80498B20 (dtor fn_80079044, 6
//     mostly-trivial virtuals, sits immediately before JKRAram in file
//     order - its class's MOST-DERIVED vtable is lbl_804AF6D4, a `.data`
//     address FAR from this file's own 0x80498xxx/0x80499xxx cluster,
//     i.e. there's likely a SECOND vtable cluster worth mapping the same
//     way, not yet explored this session).
//   - lbl_80498998 (only 1 leading zero slot, unusual shape): fn_800772F4
//     is a confirmed Shift-JIS lead-byte check (renamed IsSjisLeadByte);
//     fn_800772E4/fn_800772EC are part of the same small table (always
//     return a fixed 0/1, ignore their input) but exact semantics
//     unconfirmed - not renamed to avoid guessing.
//
// KEY TECHNIQUES THAT WORKED THIS SESSION (reuse before falling back to
// blind reading):
//   1. Read a vtable's actual contents directly from the DOL (`dtk dol
//      info` for `.data`'s file offset, then unpack N big-endian u32s at
//      that offset) - gives the EXACT set of a class's own virtual
//      methods with zero guessing. Cracked multiple classes this way,
//      including ones with no direct callers findable any other way.
//   2. When a constructor/function has no caller in landed source, grep
//      the raw auto-disasm dumps directly: `grep -rn "bl <name>"
//      build/G4SE01/asm/` - the caller is often just in an unlanded
//      region; finding it (without necessarily decompiling it) gives
//      real context (this is how BmcMesgArchive was found).
//   3. Size-sequence matching against cbr_decomp's other JSystem classes
//      (JKRThread, JKRDisposer, JKRAramPiece/Block/Heap/Stream/Archive,
//      JKRHeap, JKRExpHeap, JKRDvdRipper/File/Archive, JKRMemArchive,
//      JKRCompArchive) was tried exhaustively against the whole
//      unidentified range and found ZERO matches - this portion of the
//      file is not shared Nintendo SDK library code, don't retry this.
//   4. Real magic-number/string constants in a function's own body
//      (checked via reading raw immediate-load instructions like
//      `lis+addi` building a 32-bit ASCII constant) are the most reliable
//      way to actually NAME something here, since no sibling-project
//      reference exists for this file's game-specific portion.
// ============================================================================

// Minimal forward declarations for real JKRAram/JKernel signatures below -
// this file is compiled as plain C, and the real headers
// (JSystem/JKernel/JKRAram.h etc.) pull in C++ templates (JSUList.h) that
// plain C can't parse. See JKRAram_create's doc comment for why these
// bodies stay raw asm rather than genuine C++ regardless.
typedef struct JKRAramBlock JKRAramBlock;
typedef struct JKRHeap JKRHeap;
typedef enum { Switch_0 = 0, Switch_1, Switch_2 } JKRExpandSwitch;

extern f32 lbl_8045E0C8;
extern f32 lbl_8045E0D4;
extern f32 lbl_80498998;
extern f32 lbl_804989A8;
extern f32 lbl_804989BC;
extern f32 lbl_804989D0;
extern f32 lbl_804989E4;
extern f32 lbl_804989F8;
extern f32 lbl_80498A10;
extern f32 lbl_80498A58;
extern f32 lbl_80498AB8;
extern f32 lbl_80498B00;
extern f32 lbl_80498B10;
extern f32 lbl_80498B20;
extern f32 lbl_80498B50;
extern f32 lbl_80498B60;
extern f32 lbl_80498B80;
extern f32 lbl_804B9FAC;
extern f32 lbl_80539D60;
extern f32 lbl_8053A7A0;
extern f32 lbl_8053A7A4;
extern f32 lbl_8053A7A8;
extern f32 lbl_8053A7AC;
extern f32 lbl_8053A7B0;
extern f32 lbl_8053A7B4;
extern f32 lbl_8053A7B8;
extern f32 lbl_8053A7BC;
extern f32 lbl_8053A7C0;
extern f32 lbl_8053A7C4;
extern f32 lbl_8053A7C8;
extern f32 lbl_8053A7CC;
extern f32 lbl_8053A7D0;
extern f32 lbl_8053A7D4;
extern f32 lbl_8053A7D8;
extern f32 lbl_8053A7DC;
extern f32 lbl_8053A8A8;
extern f32 lbl_8053A8AC;
extern f32 lbl_8053B6B8;
extern f32 lbl_8053B6BC;
extern f32 lbl_8053B6C0;
extern f32 lbl_8053B6C8;

extern void OSDisableInterrupts(void);
extern void OSInitMessageQueue(void);
extern void OSInitMutex(void);
extern void OSLockMutex(void);
extern void OSReceiveMessage(void);
extern void OSRestoreInterrupts(void);
extern void OSResumeThread(void);
extern void OSUnlockMutex(void);
extern void dtor_80084580(void);
extern void fn_80040FEC(void);
extern void fn_8004FF48(void);
extern void fn_8004FFB0(void);
extern void fn_80050074(void);
extern void fn_80051AE8(void);
extern void fn_8006AEE4(void);
extern void fn_8007AEB0(void);
extern void fn_8007B030(void);
extern void fn_8007B268(void);
extern void fn_8007B418(void);
extern void fn_8007B694(void);
extern void fn_8007E034(void);
extern void fn_8007E23C(void);
extern void fn_8007E5F0(void);
extern void fn_80083868(void);
extern void fn_800838C8(void);
extern void fn_800838F4(void);
extern void fn_80084370(void);
extern void fn_8008440C(void);
extern void fn_80085474(void);
extern void fn_80085674(void);
extern void fn_80087714(void);
extern void fn_80087868(void);
extern void fn_80087950(void);
extern void fn_8008797C(void);
extern void fn_8008A324(void);
extern void memcpy(void);

ASM void fn_80077124(void);
ASM void fn_80077128(void);
ASM void fn_8007712C(void);
ASM void fn_80077130(void);
ASM void fn_80077134(void);
ASM void fn_800771A8(void);
ASM void fn_8007722C(void);
ASM void fn_80077278(void);
ASM void fn_8007729C(void);
ASM void fn_800772E4(void);
ASM void fn_800772EC(void);
/**
 * Checks whether a byte value is a Shift-JIS lead byte (first byte of a
 * 2-byte character): ranges 0x81-0x9F and 0xE0-0xFC. Part of the same
 * small function-pointer table as fn_800772E4/fn_800772EC (both ignore
 * their input and return a fixed 0/1 - likely other encodings' degenerate
 * "is this a lead byte" checks, exact semantics not yet confirmed, not
 * renamed yet to avoid overclaiming). This table sits directly adjacent to
 * (and is very likely used by) BmgMesgArchive_ctor/parseChunks below for
 * safely advancing through multi-byte message text.
 */
ASM BOOL IsSjisLeadByte(register u8 byte);
/**
 * BmgMesgArchive's real constructor - identified via reading its body:
 * sets the vtable to lbl_804989D0 (an all-zero/empty base-class vtable)
 * first, then overrides it with lbl_804989BC (BmgMesgArchive's own vtable,
 * already confirmed via BmgMesgArchive_dtor/_open/_parseChunks above) -
 * the standard "base ctor sets base vtable, derived ctor overrides at the
 * end" C++ pattern. No caller found anywhere in currently-landed source
 * (likely called from a still-unlanded/auto region, or via a stored
 * function-pointer table rather than a direct `bl`).
 */
ASM void BmgMesgArchive_ctor(register void* this_, register void* param2);
// The 3 functions below are confirmed (via reading the actual vtable
// contents at lbl_804989BC directly from the DOL: slots are [0, 0, dtor,
// fn_800773AC, fn_80077538]) to be the 3 own virtual methods of a
// polymorphic class that validates/parses a "MESG"-container-wrapped BMG
// (Binary Message Format, Nintendo's game-text/dialogue format) archive -
// confirmed via real magic-number checks in their bodies ("MESG" container
// magic, "bmg1" BMG magic, and the BMG sub-chunk magics "INF1"/"DAT1"/
// "MID1"/"STR1"). This is FSA's OWN game-specific message-loading code, not
// shared Nintendo SDK library code - no sibling decomp project (cbr_decomp,
// FF Crystal Chronicles - different games) has matching source, so these
// names are INFERRED from logic, not confirmed against any reference. Kept
// as raw nofralloc transcriptions per JKRAram_create's note above (same
// unsolved-extab-for-polymorphic-C++ concern applies here too).
ASM void BmgMesgArchive_dtor(register void* this_, register u16 shouldFreeThis);
ASM BOOL BmgMesgArchive_open(register void* this_, register void* header, register void* out_something, register u32 flags);
ASM BOOL BmgMesgArchive_parseChunks(register void* this_, register void* chunkPtr, register void* outSize, register u32 param4);
/**
 * This constructor and BmgMesgArchive_ctor share the exact same base-class
 * vtable (lbl_804989D0, the all-zero base vtable), confirming both "bmg1"
 * and "bmc1" archive variants derive from a common base "MesgArchive"-style
 * interface. Named "Bmc" since its own header check (in BmcMesgArchive_open
 * below) matches magic "bmc1" (0x626D6331) rather than BmgMesgArchive's
 * "bmg1" - a sibling/variant format, exact relationship to real BMG not
 * otherwise confirmed. See JKRAram_create's note above on why raw form.
 */
ASM void BmcMesgArchive_ctor(register void* this_, register void* param2);
ASM void BmcMesgArchive_dtor(register void* this_, register u16 shouldFreeThis);
ASM BOOL BmcMesgArchive_open(register void* this_, register void* header, register void* out_something, register u32 flags);
ASM BOOL BmcMesgArchive_parseChunk(register void* this_, register void* chunkPtr, register void* outSize, register u32 param4);
ASM void fn_80077844(void);
ASM void fn_8007788C(void);
ASM void fn_80077894(void);
ASM void fn_800778DC(void);
ASM void fn_80077944(void);
ASM void fn_800779C4(void);
ASM void fn_800779C8(void);
ASM void fn_800779CC(void);
ASM void fn_800779D0(void);
ASM void fn_800779D4(void);
ASM void fn_800779DC(void);
ASM void fn_800779E4(void);
ASM void fn_800779E8(void);
ASM void fn_800779EC(void);
ASM void fn_800779F0(void);
ASM void fn_800779F4(void);
ASM void fn_800779FC(void);
ASM void fn_80077C3C(void);
ASM void fn_80077C8C(void);
ASM void fn_80077D5C(void);
ASM void fn_80077D7C(void);
ASM void fn_80077E68(void);
ASM void fn_80077EE8(void);
ASM void fn_80077FD4(void);
ASM void fn_80077FF0(void);
ASM void fn_8007800C(void);
ASM void fn_80078050(void);
ASM void fn_800780AC(void);
ASM void fn_80078340(void);
ASM void fn_8007836C(void);
ASM void fn_80078398(void);
ASM void fn_80078420(void);
ASM void fn_8007844C(void);
ASM void fn_800784D4(void);
ASM void fn_800784DC(void);
ASM void fn_800784E4(void);
ASM void fn_800784E8(void);
ASM void fn_800784EC(void);
ASM void fn_800784F4(void);
ASM void fn_800784F8(void);
ASM void fn_80078514(void);
ASM void fn_80078524(void);
ASM void fn_80078528(void);
ASM void fn_80078534(void);
ASM void fn_80078674(void);
ASM void fn_800786D8(void);
ASM void fn_80078744(void);
ASM void fn_800787A8(void);
ASM void fn_80078818(void);
ASM void fn_80078884(void);
ASM void dtor_800788C0(void);
ASM void fn_8007891C(void);
ASM void fn_80078AA4(void);
ASM void fn_80078AA8(void);
ASM void fn_80078AAC(void);
ASM void fn_80078AE0(void);
ASM void fn_80078B20(void);
ASM void fn_80078B64(void);
ASM void fn_80078BAC(void);
ASM void fn_80078C0C(void);
ASM void fn_80078C94(void);
ASM void fn_80078E30(void);
ASM void fn_80078F4C(void);
ASM void fn_80079034(void);
ASM void fn_8007903C(void);
ASM void fn_80079040(void);
ASM void fn_80079044(void);
ASM void fn_8007908C(void);
ASM void fn_80079090(void);
ASM void fn_80079098(void);
ASM void fn_800790A0(void);
ASM void* JKRAram_create(register u32 aram_audio_buffer_size, register u32 aram_audio_graph_size, register s32 streamPriority,
                          register s32 decomp_priority, register s32 piece_priority);
ASM void JKRAram_ctor(register void* this_, register u32 bufSize, register u32 graphSize, register s32 priority);
ASM void JKRAram_dtor(register void* this_, register u16 shouldFreeThis);
ASM void* JKRAram_run(register void* this_);
ASM JKRAramBlock* JKRAram_mainRamToAram(register u8* buf, register u32 bufSize, register u32 alignedSize,
                                         register JKRExpandSwitch expandSwitch, register u32 fileSize, register JKRHeap* heap,
                                         register int id, register u32* pSize);
ASM u8* JKRAram_aramToMainRam_addr(register u32 address, register u8* buf, register u32 size, register JKRExpandSwitch expandSwitch,
                                    register u32 maxExpandSize, register JKRHeap* heap, register int id, register u32* pSize);
ASM int JKRDecompressFromAramToMainRam(register u32 src, register void* dst, register u32 srcLength, register u32 dstLength,
                                        register u32 offset, register u32* resourceSize);
ASM int decompSZS_subroutine(register u8* src, register u8* dest);
ASM u8* firstSrcData(void);
ASM u8* nextSrcData(register u8* current);

ASM void fn_80077124(void)
{
    nofralloc
    blr
}

ASM void fn_80077128(void)
{
    nofralloc
    blr
}

ASM void fn_8007712C(void)
{
    nofralloc
    blr
}

ASM void fn_80077130(void)
{
    nofralloc
    blr
}

ASM void fn_80077134(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    stw r30, 0x8(r1)
    mr. r30, r3
    opword  0x4182003C  // beq .L_8007718C
    lis r4, lbl_804989E4@ha
    addi r0, r4, lbl_804989E4@l
    stw r0, 0xc(r30)
    opword  0x4182001C  // beq .L_8007717C
    lis r4, lbl_804989F8@ha
    addi r0, r4, lbl_804989F8@l
    stw r0, 0xc(r30)
    opword  0x4182000C  // beq .L_8007717C
    li r4, 0x0
    bl fn_80087868
L_8007717C:
    extsh. r0, r31
    opword  0x4081000C  // ble .L_8007718C
    mr r3, r30
    bl dtor_80084580
L_8007718C:
    lwz r0, 0x14(r1)
    mr r3, r30
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800771A8(void)
{
    nofralloc
    stwu r1, -0x40(r1)
    lwzu r0, 0x4(r3)
    stw r3, 0x24(r1)
    stw r3, 0x20(r1)
    stw r3, 0x34(r1)
    stw r3, 0x30(r1)
    stw r0, 0x1c(r1)
    stw r0, 0x18(r1)
    stw r0, 0x2c(r1)
    stw r0, 0x28(r1)
    stw r0, 0x38(r1)
    stw r3, 0x3c(r1)
    opword  0x48000024  // b .L_800771FC
L_800771DC:
    lwz r3, 0x38(r1)
    lwz r4, 0xc(r3)
    lwz r6, 0x0(r3)
    lhz r0, 0xc(r4)
    stw r6, 0x38(r1)
    cmplw r5, r0
    opword  0x4082000C  // bne .L_80077200
    opword  0x4800002C  // b .L_80077224
L_800771FC:
    clrlwi r5, r4, 16
L_80077200:
    lwz r3, 0x3c(r1)
    lwz r0, 0x38(r1)
    stw r3, 0x14(r1)
    cmplw r0, r3
    stw r0, 0x10(r1)
    stw r3, 0xc(r1)
    stw r0, 0x8(r1)
    opword  0x4082FFC0  // bne .L_800771DC
    li r3, 0x0
L_80077224:
    addi r1, r1, 0x40
    blr
}

ASM void fn_8007722C(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    li r3, 0x1c
    stw r0, 0x14(r1)
    bl fn_80084370
    cmplwi r3, 0x0
    opword  0x41820024  // beq .L_80077268
    li r0, 0x0
    stw r0, 0x0(r3)
    stw r0, 0x4(r3)
    stw r0, 0x8(r3)
    stw r0, 0xc(r3)
    stw r0, 0x10(r3)
    stw r0, 0x14(r3)
    stw r0, 0x18(r3)
L_80077268:
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80077278(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    mr r3, r4
    stw r0, 0x14(r1)
    bl dtor_80084580
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8007729C(void)
{
    nofralloc
    li r7, 0x0
    lis r5, lbl_804989F8@ha
    stb r7, 0x0(r3)
    lis r4, lbl_804989E4@ha
    addi r6, r3, 0xc
    addi r5, r5, lbl_804989F8@l
    stw r7, 0x4(r3)
    addi r0, r4, lbl_804989E4@l
    stw r7, 0xc(r3)
    stw r7, 0x10(r3)
    stw r7, 0x8(r3)
    stw r6, 0xc(r3)
    stw r6, 0x10(r3)
    stw r5, 0x14(r3)
    stw r0, 0x14(r3)
    stw r7, 0x18(r3)
    stw r7, 0x1c(r3)
    blr
}

ASM void fn_800772E4(void)
{
    nofralloc
    li r3, 0x0
    blr
}

ASM void fn_800772EC(void)
{
    nofralloc
    li r3, 0x1
    blr
}

ASM BOOL IsSjisLeadByte(register u8 byte)
{
    nofralloc
    cmpwi r3, 0x81
    li r0, 0x0
    opword  0x4180000C  // blt .L_80077308
    cmpwi r3, 0x9f
    opword  0x40810014  // ble .L_80077318
L_80077308:
    cmpwi r3, 0xe0
    opword  0x41800010  // blt .L_8007731C
    cmpwi r3, 0xfc
    opword  0x41810008  // bgt .L_8007731C
L_80077318:
    li r0, 0x1
L_8007731C:
    mr r3, r0
    blr
}

ASM void BmgMesgArchive_ctor(register void* this_, register void* param2)
{
    nofralloc
    lis r6, lbl_804989D0@ha
    lis r5, lbl_804989BC@ha
    addi r6, r6, lbl_804989D0@l
    li r0, 0x0
    stw r6, 0x0(r3)
    addi r5, r5, lbl_804989BC@l
    stw r5, 0x0(r3)
    stw r4, 0x4(r3)
    stw r0, 0x8(r3)
    blr
}

ASM void BmgMesgArchive_dtor(register void* this_, register u16 shouldFreeThis)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    stw r30, 0x8(r1)
    mr. r30, r3
    opword  0x41820028  // beq .L_80077390
    lis r5, lbl_804989BC@ha
    li r4, 0x0
    addi r0, r5, lbl_804989BC@l
    stw r0, 0x0(r30)
    bl fn_80087714
    extsh. r0, r31
    opword  0x4081000C  // ble .L_80077390
    mr r3, r30
    bl dtor_80084580
L_80077390:
    lwz r0, 0x14(r1)
    mr r3, r30
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

/**
 * Validates a resource starts with the "MESG" container magic then the
 * "bmg1" BMG magic before accepting it; also makes a vtable call
 * (offset 0xC, its own slot 3 i.e. self-recursive-ish dispatch or a sibling
 * virtual) partway through. See the doc comment on this trio's forward
 * declarations above for the full identification.
 */
ASM BOOL BmgMesgArchive_open(register void* this_, register void* header, register void* out_something, register u32 flags)
{
    nofralloc
    stwu r1, -0x40(r1)
    mflr r0
    stw r0, 0x44(r1)
    stw r31, 0x3c(r1)
    stw r30, 0x38(r1)
    mr r30, r6
    stw r29, 0x34(r1)
    mr r29, r3
    stw r28, 0x30(r1)
    lwz r31, 0x0(r4)
    addi r0, r31, 0x20
    mr r3, r31
    stw r0, 0x0(r4)
    opword  0x38828718  // li r4, lbl_8053B6B8@sda21
    lwz r0, 0xc(r31)
    stw r0, 0x0(r5)
    li r5, 0x4
    bl fn_8006AEE4
    cmpwi r3, 0x0
    opword  0x4182000C  // beq .L_80077404
    li r3, 0x0
    opword  0x48000118  // b .L_80077518
L_80077404:
    lwz r3, 0x4(r31)
    subis r0, r3, 0x626d
    cmplwi r0, 0x6731
    opword  0x4182000C  // beq .L_8007741C
    li r3, 0x0
    opword  0x48000100  // b .L_80077518
L_8007741C:
    lbz r4, 0x10(r31)
    cmplwi r4, 0x0
    opword  0x4182007C  // beq .L_800774A0
    lwz r5, 0x4(r29)
    li r0, 0x0
    lbz r3, 0x0(r5)
    cmplw r3, r4
    opword  0x4182000C  // beq .L_80077444
    cmplwi r3, 0x0
    opword  0x40820008  // bne .L_80077448
L_80077444:
    li r0, 0x1
L_80077448:
    clrlwi. r0, r0, 24
    opword  0x4082000C  // bne .L_80077458
    li r3, 0x0
    opword  0x480000C4  // b .L_80077518
L_80077458:
    cmplwi r4, 0x0
    opword  0x40820014  // bne .L_80077470
    stb r4, 0x0(r5)
    li r0, 0x0
    stw r0, 0x4(r5)
    opword  0x48000034  // b .L_800774A0
L_80077470:
    stb r4, 0x0(r5)
    li r0, 0x0
    lis r3, lbl_80498998@ha
    cmplwi r4, 0x4
    stw r0, 0x18(r1)
    clrlslwi r4, r4, 24, 2
    addi r0, r3, lbl_80498998@l
    add r3, r0, r4
    opword  0x41800008  // blt .L_80077498
    addi r3, r1, 0x18
L_80077498:
    lwz r0, 0x0(r3)
    stw r0, 0x4(r5)
L_800774A0:
    rlwinm. r0, r30, 0, 27, 27
    opword  0x4182000C  // beq .L_800774B0
    li r3, 0x1
    opword  0x4800006C  // b .L_80077518
L_800774B0:
    lwz r3, 0x4(r29)
    addi r28, r3, 0x8
    mr r3, r28
    lwz r12, 0xc(r28)
    lwz r12, 0xc(r12)
    mtctr r12
    bctrl
    stw r3, 0x8(r29)
    lwz r6, 0x8(r29)
    cmplwi r6, 0x0
    opword  0x4082000C  // bne .L_800774E4
    extrwi r3, r30, 1, 26
    opword  0x48000038  // b .L_80077518
L_800774E4:
    addi r0, r28, 0x4
    mr r4, r28
    stw r0, 0xc(r1)
    addi r3, r1, 0x10
    addi r5, r1, 0x14
    stw r0, 0x8(r1)
    stw r0, 0x20(r1)
    stw r0, 0x1c(r1)
    stw r0, 0x14(r1)
    bl fn_80087950
    lwz r4, 0x8(r29)
    li r3, 0x1
    stw r31, 0x8(r4)
L_80077518:
    lwz r0, 0x44(r1)
    lwz r31, 0x3c(r1)
    lwz r30, 0x38(r1)
    lwz r29, 0x34(r1)
    lwz r28, 0x30(r1)
    mtlr r0
    addi r1, r1, 0x40
    blr
}

/**
 * Reads a BMG sub-chunk's 4-byte magic and dispatches by matching against
 * "MID1"/"INF1"/"DAT1"/"STR1" - storing each chunk's data pointer into a
 * different member offset of `this` (0xc/0x10/0x14/0x18), with DAT1's case
 * additionally walking a linked list comparing a u16 field via a vtable
 * call. See the doc comment on this trio's forward declarations above.
 */
ASM BOOL BmgMesgArchive_parseChunks(register void* this_, register void* chunkPtr, register void* outSize, register u32 param4)
{
    nofralloc
    stwu r1, -0x30(r1)
    mflr r0
    lis r7, 0x4d49
    stw r0, 0x34(r1)
    addi r0, r7, 0x4431
    stw r31, 0x2c(r1)
    stw r30, 0x28(r1)
    mr r30, r3
    stw r29, 0x24(r1)
    stw r28, 0x20(r1)
    lwz r8, 0x0(r4)
    lwz r3, 0x4(r8)
    add r3, r8, r3
    stw r3, 0x0(r4)
    lwz r3, 0x4(r8)
    stw r3, 0x0(r5)
    lwz r4, 0x0(r8)
    lwz r3, 0x4(r30)
    cmpw r4, r0
    addi r31, r3, 0x8
    opword  0x418200EC  // beq .L_80077674
    opword  0x4080002C  // bge .L_800775B8
    lis r3, 0x494e
    addi r0, r3, 0x4631
    cmpw r4, r0
    opword  0x41820030  // beq .L_800775CC
    opword  0x408000E0  // bge .L_80077680
    lis r3, 0x4441
    addi r0, r3, 0x5431
    cmpw r4, r0
    opword  0x41820028  // beq .L_800775D8
    opword  0x480000CC  // b .L_80077680
L_800775B8:
    lis r3, 0x5354
    addi r0, r3, 0x5231
    cmpw r4, r0
    opword  0x418200A0  // beq .L_80077664
    opword  0x480000B8  // b .L_80077680
L_800775CC:
    lwz r3, 0x8(r30)
    stw r8, 0xc(r3)
    opword  0x480000BC  // b .L_80077690
L_800775D8:
    lwz r3, 0x8(r30)
    addi r4, r8, 0x8
    rlwinm. r0, r6, 0, 24, 24
    stw r4, 0x10(r3)
    lwz r3, 0x8(r30)
    lwz r3, 0xc(r3)
    lhz r29, 0xc(r3)
    opword  0x4182009C  // beq .L_80077690
    lwz r28, 0x4(r31)
    stw r28, 0x14(r1)
    stw r28, 0x10(r1)
    opword  0x48000050  // b .L_80077654
L_80077608:
    lwz r3, 0xc(r28)
    lhz r0, 0xc(r3)
    cmplw r29, r0
    opword  0x4182000C  // beq .L_80077620
    lwz r28, 0x0(r28)
    opword  0x48000038  // b .L_80077654
L_80077620:
    mr r4, r31
    mr r5, r28
    addi r3, r1, 0xc
    bl fn_8008797C
    mr r3, r31
    lwz r0, 0xc(r1)
    lwz r12, 0xc(r31)
    mr r4, r28
    stw r0, 0x8(r1)
    lwz r12, 0x10(r12)
    mtctr r12
    bctrl
    lwz r28, 0x8(r1)
L_80077654:
    lwz r0, 0x8(r30)
    cmplw r28, r0
    opword  0x4082FFAC  // bne .L_80077608
    opword  0x48000030  // b .L_80077690
L_80077664:
    lwz r3, 0x8(r30)
    addi r0, r8, 0x8
    stw r0, 0x14(r3)
    opword  0x48000020  // b .L_80077690
L_80077674:
    lwz r3, 0x8(r30)
    stw r8, 0x18(r3)
    opword  0x48000014  // b .L_80077690
L_80077680:
    rlwinm. r0, r6, 0, 25, 25
    opword  0x4082000C  // bne .L_80077690
    li r3, 0x0
    opword  0x48000008  // b .L_80077694
L_80077690:
    li r3, 0x1
L_80077694:
    lwz r0, 0x34(r1)
    lwz r31, 0x2c(r1)
    lwz r30, 0x28(r1)
    lwz r29, 0x24(r1)
    lwz r28, 0x20(r1)
    mtlr r0
    addi r1, r1, 0x30
    blr
}

ASM void BmcMesgArchive_ctor(register void* this_, register void* param2)
{
    nofralloc
    lis r6, lbl_804989D0@ha
    lis r5, lbl_804989A8@ha
    addi r6, r6, lbl_804989D0@l
    stw r6, 0x0(r3)
    addi r0, r5, lbl_804989A8@l
    stw r0, 0x0(r3)
    stw r4, 0x4(r3)
    blr
}

ASM void BmcMesgArchive_dtor(register void* this_, register u16 shouldFreeThis)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    stw r30, 0x8(r1)
    mr. r30, r3
    opword  0x41820028  // beq .L_80077718
    lis r5, lbl_804989A8@ha
    li r4, 0x0
    addi r0, r5, lbl_804989A8@l
    stw r0, 0x0(r30)
    bl fn_80087714
    extsh. r0, r31
    opword  0x4081000C  // ble .L_80077718
    mr r3, r30
    bl dtor_80084580
L_80077718:
    lwz r0, 0x14(r1)
    mr r3, r30
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

/**
 * Validates a resource starts with the "MESG" container magic then the
 * "bmc1" magic (0x626D6331) before accepting it - same structural shape as
 * BmgMesgArchive_open, checking a sibling/variant magic.
 */
ASM BOOL BmcMesgArchive_open(register void* this_, register void* header, register void* out_something, register u32 flags)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    mr r30, r6
    stw r29, 0x14(r1)
    mr r29, r3
    lwz r31, 0x0(r4)
    addi r0, r31, 0x20
    mr r3, r31
    stw r0, 0x0(r4)
    opword  0x3882871C  // li r4, lbl_8053B6BC@sda21
    lwz r0, 0xc(r31)
    stw r0, 0x0(r5)
    li r5, 0x4
    bl fn_8006AEE4
    cmpwi r3, 0x0
    opword  0x4182000C  // beq .L_80077788
    li r3, 0x0
    opword  0x48000050  // b .L_800777D4
L_80077788:
    lwz r3, 0x4(r31)
    subis r0, r3, 0x626d
    cmplwi r0, 0x6331
    opword  0x4182000C  // beq .L_800777A0
    li r3, 0x0
    opword  0x48000038  // b .L_800777D4
L_800777A0:
    lwz r4, 0x4(r29)
    lwz r0, 0x18(r4)
    cmplwi r0, 0x0
    opword  0x41820014  // beq .L_800777C0
    rlwinm. r0, r30, 0, 26, 26
    opword  0x4082000C  // bne .L_800777C0
    li r3, 0x0
    opword  0x48000018  // b .L_800777D4
L_800777C0:
    li r0, 0x0
    li r3, 0x1
    stw r0, 0x18(r4)
    stw r0, 0x1c(r4)
    stw r31, 0x18(r4)
L_800777D4:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

/**
 * Checks whether a chunk's 4-byte magic matches "CLT1" (0x434C5431) -
 * unlike BmgMesgArchive_parseChunks (which dispatches 4 different chunk
 * types), this only handles the one optional chunk, consistent with a
 * simpler/narrower archive variant.
 */
ASM BOOL BmcMesgArchive_parseChunk(register void* this_, register void* chunkPtr, register void* outSize, register u32 param4)
{
    nofralloc
    lwz r8, 0x0(r4)
    lis r7, 0x434c
    addi r0, r7, 0x5431
    lwz r7, 0x4(r8)
    add r7, r8, r7
    stw r7, 0x0(r4)
    lwz r4, 0x4(r8)
    stw r4, 0x0(r5)
    lwz r4, 0x0(r8)
    lwz r3, 0x4(r3)
    cmpw r4, r0
    opword  0x41820008  // beq .L_80077824
    opword  0x4800000C  // b .L_8007782C
L_80077824:
    stw r8, 0x1c(r3)
    opword  0x48000014  // b .L_8007783C
L_8007782C:
    rlwinm. r0, r6, 0, 27, 27
    opword  0x4082000C  // bne .L_8007783C
    li r3, 0x0
    blr
L_8007783C:
    li r3, 0x1
    blr
}

ASM void fn_80077844(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr. r31, r3
    opword  0x4182001C  // beq .L_80077874
    lis r5, lbl_80498B00@ha
    extsh. r0, r4
    addi r0, r5, lbl_80498B00@l
    stw r0, 0x0(r31)
    opword  0x40810008  // ble .L_80077874
    bl dtor_80084580
L_80077874:
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8007788C(void)
{
    nofralloc
    li r3, 0x0
    blr
}

ASM void fn_80077894(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr. r31, r3
    opword  0x4182001C  // beq .L_800778C4
    lis r5, lbl_80498AB8@ha
    extsh. r0, r4
    addi r0, r5, lbl_80498AB8@l
    stw r0, 0x0(r31)
    opword  0x40810008  // ble .L_800778C4
    bl dtor_80084580
L_800778C4:
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800778DC(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    li r5, 0x0
    lis r4, fn_80077E68@ha
    stw r0, 0x14(r1)
    addi r0, r4, fn_80077E68@l
    li r4, 0x0
    stw r31, 0xc(r1)
    mr r31, r3
    stw r5, 0xc(r3)
    stw r5, 0x10(r3)
    stw r0, 0x24(r3)
    lwz r12, 0x0(r3)
    lwz r12, 0x30(r12)
    mtctr r12
    bctrl
    mr r3, r31
    lwz r12, 0x0(r31)
    lwz r12, 0xc(r12)
    mtctr r12
    bctrl
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80077944(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    li r7, 0x0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r3
    lwz r3, 0x8(r3)
    cmplwi r3, 0x0
    opword  0x4182001C  // beq .L_80077980
    lwz r5, 0xc(r3)
    clrlwi r6, r4, 16
    lhz r0, 0xc(r5)
    cmplw r6, r0
    opword  0x40820008  // bne .L_80077980
    li r7, 0x1
L_80077980:
    clrlwi. r0, r7, 24
    opword  0x41820008  // beq .L_8007798C
    opword  0x48000028  // b .L_800779B0
L_8007798C:
    lwz r3, 0x4(r31)
    lwz r3, 0x4(r3)
    cmplwi r3, 0x0
    opword  0x4082000C  // bne .L_800779A4
    li r3, 0x0
    opword  0x4800000C  // b .L_800779AC
L_800779A4:
    addi r3, r3, 0x8
    bl fn_800771A8
L_800779AC:
    stw r3, 0x8(r31)
L_800779B0:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800779C4(void)
{
    nofralloc
    blr
}

ASM void fn_800779C8(void)
{
    nofralloc
    blr
}

ASM void fn_800779CC(void)
{
    nofralloc
    blr
}

ASM void fn_800779D0(void)
{
    nofralloc
    blr
}

ASM void fn_800779D4(void)
{
    nofralloc
    li r3, 0x0
    blr
}

ASM void fn_800779DC(void)
{
    nofralloc
    li r3, 0x0
    blr
}

ASM void fn_800779E4(void)
{
    nofralloc
    blr
}

ASM void fn_800779E8(void)
{
    nofralloc
    blr
}

ASM void fn_800779EC(void)
{
    nofralloc
    blr
}

ASM void fn_800779F0(void)
{
    nofralloc
    blr
}

ASM void fn_800779F4(void)
{
    nofralloc
    li r3, 0x1
    blr
}

ASM void fn_800779FC(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    extrwi r0, r4, 8, 8
    cmpwi r0, 0xfd
    stw r31, 0x1c(r1)
    mr r31, r5
    stw r30, 0x18(r1)
    mr r30, r3
    stw r29, 0x14(r1)
    clrlwi r29, r4, 16
    stw r28, 0x10(r1)
    mr r28, r6
    opword  0x418200C0  // beq .L_80077AF0
    opword  0x4080001C  // bge .L_80077A50
    cmpwi r0, 0xf6
    opword  0x418200F4  // beq .L_80077B30
    opword  0x408001DC  // bge .L_80077C1C
    cmpwi r0, 0xf5
    opword  0x40800160  // bge .L_80077BA8
    opword  0x480001D0  // b .L_80077C1C
L_80077A50:
    cmpwi r0, 0xff
    opword  0x4182000C  // beq .L_80077A60
    opword  0x408001C4  // bge .L_80077C1C
    opword  0x48000044  // b .L_80077AA0
L_80077A60:
    lwz r12, 0x0(r3)
    mr r4, r29
    lwz r12, 0x20(r12)
    mtctr r12
    bctrl
    clrlwi. r0, r3, 24
    opword  0x408201A4  // bne .L_80077C1C
    mr r3, r30
    mr r4, r29
    lwz r12, 0x0(r30)
    mr r5, r31
    mr r6, r28
    lwz r12, 0x44(r12)
    mtctr r12
    bctrl
    opword  0x48000180  // b .L_80077C1C
L_80077AA0:
    lwz r3, 0x4(r30)
    mr r4, r29
    lwz r12, 0x0(r3)
    lwz r12, 0xc(r12)
    mtctr r12
    bctrl
    cmplwi r3, 0x0
    opword  0x41820160  // beq .L_80077C1C
    lwz r0, 0x10(r30)
    cmplwi r0, 0x4
    opword  0x40800154  // bge .L_80077C1C
    slwi r0, r0, 2
    lwz r5, 0xc(r30)
    add r4, r30, r0
    stw r5, 0x14(r4)
    lwz r4, 0x10(r30)
    addi r0, r4, 0x1
    stw r0, 0x10(r30)
    stw r3, 0xc(r30)
    opword  0x48000130  // b .L_80077C1C
L_80077AF0:
    mr r4, r29
    bl fn_80077C3C
    cmplwi r3, 0x0
    opword  0x41820120  // beq .L_80077C1C
    lwz r0, 0x10(r30)
    cmplwi r0, 0x4
    opword  0x40800114  // bge .L_80077C1C
    slwi r0, r0, 2
    lwz r5, 0xc(r30)
    add r4, r30, r0
    stw r5, 0x14(r4)
    lwz r4, 0x10(r30)
    addi r0, r4, 0x1
    stw r0, 0x10(r30)
    stw r3, 0xc(r30)
    opword  0x480000F0  // b .L_80077C1C
L_80077B30:
    lwz r0, 0x10(r30)
    cmplwi r0, 0x4
    opword  0x408000E4  // bge .L_80077C1C
    lis r5, fn_80077EE8@ha
    lis r4, fn_80077FD4@ha
    addi r5, r5, fn_80077EE8@l
    add r0, r31, r28
    stw r5, 0x24(r30)
    addi r4, r4, fn_80077FD4@l
    stw r4, 0x28(r30)
    stw r0, 0x2c(r30)
    stw r31, 0x30(r30)
    stw r29, 0x34(r30)
    bl fn_80077FD4
    lwz r0, 0x10(r30)
    mr r4, r29
    lwz r6, 0xc(r30)
    slwi r0, r0, 2
    add r5, r30, r0
    stw r6, 0x14(r5)
    lwz r5, 0x10(r30)
    addi r0, r5, 0x1
    stw r0, 0x10(r30)
    stw r3, 0xc(r30)
    mr r3, r30
    lwz r12, 0x0(r30)
    lwz r12, 0x24(r12)
    mtctr r12
    bctrl
    opword  0x48000078  // b .L_80077C1C
L_80077BA8:
    lwz r0, 0x10(r30)
    cmplwi r0, 0x4
    opword  0x4080006C  // bge .L_80077C1C
    lis r5, fn_80077EE8@ha
    lis r4, fn_80077FF0@ha
    addi r5, r5, fn_80077EE8@l
    add r0, r31, r28
    stw r5, 0x24(r30)
    addi r4, r4, fn_80077FF0@l
    stw r4, 0x28(r30)
    stw r0, 0x2c(r30)
    stw r31, 0x30(r30)
    stw r29, 0x34(r30)
    bl fn_80077FF0
    lwz r0, 0x10(r30)
    mr r4, r29
    lwz r6, 0xc(r30)
    slwi r0, r0, 2
    add r5, r30, r0
    stw r6, 0x14(r5)
    lwz r5, 0x10(r30)
    addi r0, r5, 0x1
    stw r0, 0x10(r30)
    stw r3, 0xc(r30)
    mr r3, r30
    lwz r12, 0x0(r30)
    lwz r12, 0x24(r12)
    mtctr r12
    bctrl
L_80077C1C:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    lwz r28, 0x10(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_80077C3C(void)
{
    nofralloc
    lwz r3, 0x8(r3)
    clrlwi r5, r4, 16
    lwz r4, 0xc(r3)
    lhz r0, 0x8(r4)
    cmplw r5, r0
    opword  0x40800018  // bge .L_80077C68
    lhz r0, 0xa(r4)
    mullw r0, r5, r0
    add r4, r4, r0
    addi r4, r4, 0x10
    opword  0x48000008  // b .L_80077C6C
L_80077C68:
    li r4, 0x0
L_80077C6C:
    cmplwi r4, 0x0
    opword  0x4082000C  // bne .L_80077C7C
    li r3, 0x0
    blr
L_80077C7C:
    lwz r3, 0x10(r3)
    lwz r0, 0x0(r4)
    add r3, r3, r0
    blr
}

ASM void fn_80077C8C(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    clrlwi r0, r4, 16
    cmpwi r0, 0x5
    stw r31, 0xc(r1)
    mr r31, r3
    opword  0x41820064  // beq .L_80077D0C
    opword  0x4080009C  // bge .L_80077D48
    cmpwi r0, 0x4
    opword  0x40800008  // bge .L_80077CBC
    opword  0x48000090  // b .L_80077D48
L_80077CBC:
    lwz r3, 0x4(r31)
    lwz r4, 0x0(r5)
    lwz r12, 0x0(r3)
    lwz r12, 0xc(r12)
    mtctr r12
    bctrl
    cmplwi r3, 0x0
    opword  0x41820070  // beq .L_80077D48
    lwz r0, 0x10(r31)
    cmplwi r0, 0x4
    opword  0x40800064  // bge .L_80077D48
    slwi r0, r0, 2
    lwz r5, 0xc(r31)
    add r4, r31, r0
    stw r5, 0x14(r4)
    lwz r4, 0x10(r31)
    addi r0, r4, 0x1
    stw r0, 0x10(r31)
    stw r3, 0xc(r31)
    opword  0x48000040  // b .L_80077D48
L_80077D0C:
    lwz r4, 0x0(r5)
    bl fn_80077D5C
    cmplwi r3, 0x0
    opword  0x41820030  // beq .L_80077D48
    lwz r0, 0x10(r31)
    cmplwi r0, 0x4
    opword  0x40800024  // bge .L_80077D48
    slwi r0, r0, 2
    lwz r5, 0xc(r31)
    add r4, r31, r0
    stw r5, 0x14(r4)
    lwz r4, 0x10(r31)
    addi r0, r4, 0x1
    stw r0, 0x10(r31)
    stw r3, 0xc(r31)
L_80077D48:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80077D5C(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    bl fn_80077D7C
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80077D7C(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    li r6, 0x0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r3
    lwz r3, 0x8(r3)
    stw r30, 0x8(r1)
    mr r30, r4
    cmplwi r3, 0x0
    opword  0x4182001C  // beq .L_80077DC0
    lwz r4, 0xc(r3)
    srwi r5, r30, 16
    lhz r0, 0xc(r4)
    cmplw r5, r0
    opword  0x40820008  // bne .L_80077DC0
    li r6, 0x1
L_80077DC0:
    clrlwi. r0, r6, 24
    opword  0x41820008  // beq .L_80077DCC
    opword  0x4800002C  // b .L_80077DF4
L_80077DCC:
    lwz r3, 0x4(r31)
    lwz r3, 0x4(r3)
    cmplwi r3, 0x0
    opword  0x4082000C  // bne .L_80077DE4
    li r3, 0x0
    opword  0x48000010  // b .L_80077DF0
L_80077DE4:
    srwi r4, r30, 16
    addi r3, r3, 0x8
    bl fn_800771A8
L_80077DF0:
    stw r3, 0x8(r31)
L_80077DF4:
    cmplwi r3, 0x0
    opword  0x4082000C  // bne .L_80077E04
    li r4, 0x0
    opword  0x48000030  // b .L_80077E30
L_80077E04:
    lwz r4, 0xc(r3)
    clrlwi r3, r30, 16
    lhz r0, 0x8(r4)
    cmplw r3, r0
    opword  0x40800018  // bge .L_80077E2C
    lhz r0, 0xa(r4)
    mullw r0, r3, r0
    add r4, r4, r0
    addi r4, r4, 0x10
    opword  0x48000008  // b .L_80077E30
L_80077E2C:
    li r4, 0x0
L_80077E30:
    cmplwi r4, 0x0
    opword  0x4082000C  // bne .L_80077E40
    li r3, 0x0
    opword  0x48000014  // b .L_80077E50
L_80077E40:
    lwz r3, 0x8(r31)
    lwz r0, 0x0(r4)
    lwz r3, 0x10(r3)
    add r3, r3, r0
L_80077E50:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80077E68(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r3
    lwz r0, 0x10(r3)
    cmplwi r0, 0x0
    opword  0x41820028  // beq .L_80077EAC
    slwi r0, r0, 2
    li r3, 0x1
    add r4, r31, r0
    lwz r0, 0x10(r4)
    stw r0, 0xc(r31)
    lwz r4, 0x10(r31)
    subi r0, r4, 0x1
    stw r0, 0x10(r31)
    opword  0x4800002C  // b .L_80077ED4
L_80077EAC:
    lwz r12, 0x0(r3)
    lwz r12, 0x3c(r12)
    mtctr r12
    bctrl
    mr r3, r31
    lwz r12, 0x0(r31)
    lwz r12, 0x14(r12)
    mtctr r12
    bctrl
    li r3, 0x0
L_80077ED4:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80077EE8(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r3
    lwz r4, 0x34(r3)
    subi r0, r4, 0x1
    stw r0, 0x34(r3)
    lwz r0, 0x34(r3)
    cmplwi r0, 0x0
    opword  0x41820070  // beq .L_80077F80
    lwz r0, 0x10(r31)
    slwi r0, r0, 2
    add r4, r31, r0
    lwz r0, 0x10(r4)
    stw r0, 0xc(r31)
    lwz r4, 0x10(r31)
    subi r0, r4, 0x1
    stw r0, 0x10(r31)
    lwz r12, 0x28(r31)
    mtctr r12
    bctrl
    lwz r0, 0x10(r31)
    lwz r5, 0xc(r31)
    slwi r0, r0, 2
    add r4, r31, r0
    stw r5, 0x14(r4)
    lwz r4, 0x10(r31)
    addi r0, r4, 0x1
    stw r0, 0x10(r31)
    stw r3, 0xc(r31)
    mr r3, r31
    lwz r12, 0x0(r31)
    lwz r12, 0x2c(r12)
    mtctr r12
    bctrl
    li r3, 0x1
    opword  0x48000044  // b .L_80077FC0
L_80077F80:
    lis r4, fn_80077E68@ha
    addi r0, r4, fn_80077E68@l
    stw r0, 0x24(r31)
    lwz r0, 0x10(r31)
    slwi r0, r0, 2
    add r4, r31, r0
    lwz r0, 0x10(r4)
    stw r0, 0xc(r31)
    lwz r4, 0x10(r31)
    subi r0, r4, 0x1
    stw r0, 0x10(r31)
    lwz r12, 0x0(r3)
    lwz r12, 0x28(r12)
    mtctr r12
    bctrl
    li r3, 0x1
L_80077FC0:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80077FD4(void)
{
    nofralloc
    lwz r5, 0x30(r3)
    lhz r4, 0x0(r5)
    addi r0, r5, 0x2
    stw r0, 0x30(r3)
    lwz r0, 0x2c(r3)
    add r3, r0, r4
    blr
}

ASM void fn_80077FF0(void)
{
    nofralloc
    lwz r5, 0x30(r3)
    lwz r4, 0x0(r5)
    addi r0, r5, 0x4
    stw r0, 0x30(r3)
    lwz r0, 0x2c(r3)
    add r3, r0, r4
    blr
}

ASM void fn_8007800C(void)
{
    nofralloc
    lis r8, lbl_80498AB8@ha
    lis r7, fn_80077E68@ha
    addi r0, r8, lbl_80498AB8@l
    lis r6, lbl_80498A58@ha
    stw r0, 0x0(r3)
    li r8, 0x0
    addi r7, r7, fn_80077E68@l
    addi r0, r6, lbl_80498A58@l
    stw r4, 0x4(r3)
    stw r8, 0x8(r3)
    stw r8, 0xc(r3)
    stw r8, 0x10(r3)
    stw r7, 0x24(r3)
    stw r0, 0x0(r3)
    stw r5, 0x38(r3)
    stw r8, 0x3c(r3)
    blr
}

ASM void fn_80078050(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr. r31, r3
    opword  0x41820030  // beq .L_80078094
    lis r3, lbl_80498A58@ha
    addi r0, r3, lbl_80498A58@l
    stw r0, 0x0(r31)
    opword  0x41820010  // beq .L_80078084
    lis r3, lbl_80498AB8@ha
    addi r0, r3, lbl_80498AB8@l
    stw r0, 0x0(r31)
L_80078084:
    extsh. r0, r4
    opword  0x4081000C  // ble .L_80078094
    mr r3, r31
    bl dtor_80084580
L_80078094:
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800780AC(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stmw r27, 0xc(r1)
    mr r30, r3
    mr r31, r4
L_800780C4:
    lwz r0, 0x3c(r30)
    cmpwi r0, 0x3
    opword  0x41820018  // beq .L_800780E4
    opword  0x40800008  // bge .L_800780D8
    opword  0x480000E0  // b .L_800781B4
L_800780D8:
    cmpwi r0, 0x5
    opword  0x408000D8  // bge .L_800781B4
    opword  0x48000050  // b .L_80078130
L_800780E4:
    mr r3, r30
    bl fn_8007836C
    clrlwi. r0, r3, 24
    opword  0x4082000C  // bne .L_800780FC
    lwz r3, 0xc(r30)
    opword  0x48000234  // b .L_8007832C
L_800780FC:
    li r0, 0x2
    mr r3, r30
    stw r0, 0x3c(r30)
    lwz r12, 0x40(r30)
    mtctr r12
    bctrl
    mr. r4, r3
    opword  0x4182009C  // beq .L_800781B4
    lwz r5, 0x38(r30)
    mr r3, r30
    lwz r5, 0x18(r5)
    bl fn_80078398
    opword  0x48000088  // b .L_800781B4
L_80078130:
    mr r3, r30
    bl fn_80078420
    lis r5, 0x8000
    mr r4, r3
    subi r0, r5, 0x1
    cmplw r4, r0
    opword  0x40810030  // ble .L_80078178
    cmpwi r4, -0x1
    opword  0x41820014  // beq .L_80078164
    opword  0x40800060  // bge .L_800781B4
    cmpwi r4, -0x2
    opword  0x40800010  // bge .L_8007816C
    opword  0x48000054  // b .L_800781B4
L_80078164:
    lwz r3, 0xc(r30)
    opword  0x480001C4  // b .L_8007832C
L_8007816C:
    li r0, 0x2
    stw r0, 0x3c(r30)
    opword  0x48000040  // b .L_800781B4
L_80078178:
    li r0, 0x2
    stw r0, 0x3c(r30)
    lwz r0, 0x48(r30)
    cmplw r4, r0
    opword  0x4080002C  // bge .L_800781B4
    lwz r12, 0x40(r30)
    mr r3, r30
    mtctr r12
    bctrl
    mr. r4, r3
    opword  0x41820014  // beq .L_800781B4
    lwz r5, 0x38(r30)
    mr r3, r30
    lwz r5, 0x18(r5)
    bl fn_8007844C
L_800781B4:
    lwz r0, 0xc(r30)
    cmplw r0, r31
    opword  0x40820034  // bne .L_800781F0
    mr r3, r30
    lwz r12, 0x0(r30)
    lwz r12, 0x3c(r12)
    mtctr r12
    bctrl
    mr r3, r30
    lwz r12, 0x0(r30)
    lwz r12, 0x14(r12)
    mtctr r12
    bctrl
    li r3, 0x0
    opword  0x48000140  // b .L_8007832C
L_800781F0:
    mr r3, r30
    bl fn_80078340
    clrlwi. r0, r3, 24
    opword  0x4082000C  // bne .L_80078208
    lwz r3, 0xc(r30)
    opword  0x48000128  // b .L_8007832C
L_80078208:
    lwz r7, 0xc(r30)
    lbz r29, 0x0(r7)
    cmpwi r29, 0x1a
    opword  0x41820034  // beq .L_80078248
    opword  0x408000A4  // bge .L_800782BC
    cmpwi r29, 0x0
    opword  0x41820008  // beq .L_80078228
    opword  0x48000098  // b .L_800782BC
L_80078228:
    lwz r12, 0x24(r30)
    mr r3, r30
    mtctr r12
    bctrl
    clrlwi. r0, r3, 24
    opword  0x408200E0  // bne .L_8007831C
    li r0, 0x0
    opword  0x480000DC  // b .L_80078320
L_80078248:
    lbz r29, 0x1(r7)
    addi r27, r7, 0x5
    mr r3, r30
    add r0, r7, r29
    mr r5, r27
    stw r0, 0xc(r30)
    subi r6, r29, 0x5
    lbz r0, 0x3(r7)
    lwz r12, 0x0(r30)
    clrlslwi r28, r0, 24, 8
    lbz r4, 0x2(r7)
    lbz r0, 0x4(r7)
    rlwimi r28, r4, 16, 8, 15
    lwz r12, 0x1c(r12)
    or r28, r28, r0
    mr r4, r28
    mtctr r12
    bctrl
    clrlwi. r0, r3, 24
    opword  0x40820088  // bne .L_8007831C
    mr r3, r30
    mr r4, r28
    lwz r12, 0x0(r30)
    mr r5, r27
    subi r6, r29, 0x5
    lwz r12, 0x40(r12)
    mtctr r12
    bctrl
    opword  0x48000064  // b .L_8007831C
L_800782BC:
    lwz r4, 0x4(r30)
    mr r3, r29
    lwz r4, 0x4(r4)
    lwz r12, 0x4(r4)
    mtctr r12
    bctrl
    clrlwi. r0, r3, 24
    opword  0x41820020  // beq .L_800782F8
    lwz r3, 0xc(r30)
    slwi r29, r29, 8
    addi r0, r3, 0x1
    stw r0, 0xc(r30)
    lwz r3, 0xc(r30)
    lbz r0, 0x0(r3)
    or r29, r29, r0
L_800782F8:
    lwz r5, 0xc(r30)
    mr r3, r30
    mr r4, r29
    addi r0, r5, 0x1
    stw r0, 0xc(r30)
    lwz r12, 0x0(r30)
    lwz r12, 0x18(r12)
    mtctr r12
    bctrl
L_8007831C:
    li r0, 0x1
L_80078320:
    clrlwi. r0, r0, 24
    opword  0x4082FDA0  // bne .L_800780C4
    li r3, 0x0
L_8007832C:
    lmw r27, 0xc(r1)
    lwz r0, 0x24(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_80078340(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    lwz r12, 0x0(r3)
    lwz r12, 0x48(r12)
    mtctr r12
    bctrl
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8007836C(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    lwz r12, 0x0(r3)
    lwz r12, 0x4c(r12)
    mtctr r12
    bctrl
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80078398(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    li r0, 0x0
    stw r31, 0x1c(r1)
    mr r31, r5
    lis r5, fn_80077E68@ha
    stw r30, 0x18(r1)
    mr r30, r4
    mr r4, r31
    stw r29, 0x14(r1)
    mr r29, r3
    stw r31, 0xc(r3)
    stw r0, 0x10(r3)
    addi r0, r5, fn_80077E68@l
    stw r0, 0x24(r3)
    lwz r12, 0x0(r3)
    lwz r12, 0x30(r12)
    mtctr r12
    bctrl
    mr r3, r29
    mr r4, r30
    lwz r12, 0x0(r29)
    mr r5, r31
    lwz r12, 0x50(r12)
    mtctr r12
    bctrl
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_80078420(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    lwz r12, 0x0(r3)
    lwz r12, 0x58(r12)
    mtctr r12
    bctrl
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8007844C(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    li r0, 0x0
    stw r31, 0x1c(r1)
    mr r31, r5
    lis r5, fn_80077E68@ha
    stw r30, 0x18(r1)
    mr r30, r4
    mr r4, r31
    stw r29, 0x14(r1)
    mr r29, r3
    stw r31, 0xc(r3)
    stw r0, 0x10(r3)
    addi r0, r5, fn_80077E68@l
    stw r0, 0x24(r3)
    lwz r12, 0x0(r3)
    lwz r12, 0x30(r12)
    mtctr r12
    bctrl
    mr r3, r29
    mr r4, r30
    lwz r12, 0x0(r29)
    mr r5, r31
    lwz r12, 0x5c(r12)
    mtctr r12
    bctrl
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800784D4(void)
{
    nofralloc
    li r3, 0x1
    blr
}

ASM void fn_800784DC(void)
{
    nofralloc
    li r3, 0x1
    blr
}

ASM void fn_800784E4(void)
{
    nofralloc
    blr
}

ASM void fn_800784E8(void)
{
    nofralloc
    blr
}

ASM void fn_800784EC(void)
{
    nofralloc
    li r3, -0x2
    blr
}

ASM void fn_800784F4(void)
{
    nofralloc
    blr
}

ASM void fn_800784F8(void)
{
    nofralloc
    li r0, 0x0
    cmplwi r4, 0x0
    stw r0, 0x3c(r3)
    beqlr
    li r0, 0x2
    stw r0, 0x3c(r3)
    blr
}

ASM void fn_80078514(void)
{
    nofralloc
    lwz r0, 0x3c(r3)
    cntlzw r0, r0
    srwi r3, r0, 5
    blr
}

ASM void fn_80078524(void)
{
    nofralloc
    blr
}

ASM void fn_80078528(void)
{
    nofralloc
    li r0, 0x1
    stw r0, 0x3c(r3)
    blr
}

ASM void fn_80078534(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    clrlwi r7, r4, 16
    stw r0, 0x14(r1)
    extrwi r0, r4, 8, 8
    cmpwi r0, 0xfa
    opword  0x41820064  // beq .L_800785B0
    opword  0x4080001C  // bge .L_8007856C
    cmpwi r0, 0xf8
    opword  0x41820090  // beq .L_800785E8
    opword  0x4080006C  // bge .L_800785C8
    cmpwi r0, 0xf7
    opword  0x408000C0  // bge .L_80078624
    opword  0x480000F8  // b .L_80078660
L_8007856C:
    cmpwi r0, 0xfc
    opword  0x4182000C  // beq .L_8007857C
    opword  0x408000EC  // bge .L_80078660
    opword  0x48000020  // b .L_80078598
L_8007857C:
    li r0, 0x3
    lis r4, fn_800786D8@ha
    stw r0, 0x3c(r3)
    addi r0, r4, fn_800786D8@l
    stw r0, 0x40(r3)
    stw r7, 0x44(r3)
    opword  0x480000D0  // b .L_80078664
L_80078598:
    lis r4, fn_800787A8@ha
    addi r0, r4, fn_800787A8@l
    stw r0, 0x40(r3)
    stw r5, 0x44(r3)
    stw r7, 0x48(r3)
    opword  0x480000B8  // b .L_80078664
L_800785B0:
    lis r4, fn_80078818@ha
    addi r0, r4, fn_80078818@l
    stw r0, 0x40(r3)
    stw r5, 0x44(r3)
    stw r7, 0x48(r3)
    opword  0x480000A0  // b .L_80078664
L_800785C8:
    li r0, 0x4
    mr r4, r7
    stw r0, 0x3c(r3)
    lwz r12, 0x0(r3)
    lwz r12, 0x54(r12)
    mtctr r12
    bctrl
    opword  0x48000080  // b .L_80078664
L_800785E8:
    lis r4, fn_800787A8@ha
    addi r6, r5, 0x2
    addi r0, r4, fn_800787A8@l
    lhz r5, 0x0(r5)
    stw r0, 0x40(r3)
    li r0, 0x4
    mr r4, r7
    stw r6, 0x44(r3)
    stw r5, 0x48(r3)
    stw r0, 0x3c(r3)
    lwz r12, 0x0(r3)
    lwz r12, 0x54(r12)
    mtctr r12
    bctrl
    opword  0x48000044  // b .L_80078664
L_80078624:
    lis r4, fn_80078818@ha
    addi r6, r5, 0x2
    addi r0, r4, fn_80078818@l
    lhz r5, 0x0(r5)
    stw r0, 0x40(r3)
    li r0, 0x4
    mr r4, r7
    stw r6, 0x44(r3)
    stw r5, 0x48(r3)
    stw r0, 0x3c(r3)
    lwz r12, 0x0(r3)
    lwz r12, 0x54(r12)
    mtctr r12
    bctrl
    opword  0x48000008  // b .L_80078664
L_80078660:
    bl fn_800779FC
L_80078664:
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80078674(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    clrlwi r0, r4, 16
    cmpwi r0, 0x6
    opword  0x4182001C  // beq .L_800786A4
    opword  0x40800038  // bge .L_800786C4
    cmpwi r0, 0x4
    opword  0x40800030  // bge .L_800786C4
    cmpwi r0, 0x0
    opword  0x4080002C  // bge .L_800786C8
    opword  0x48000024  // b .L_800786C4
L_800786A4:
    li r0, 0x3
    lis r4, fn_80078744@ha
    stw r0, 0x3c(r3)
    addi r0, r4, fn_80078744@l
    lwz r4, 0x0(r5)
    stw r0, 0x40(r3)
    stw r4, 0x44(r3)
    opword  0x48000008  // b .L_800786C8
L_800786C4:
    bl fn_80077C8C
L_800786C8:
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800786D8(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    lwz r4, 0x8(r3)
    stw r0, 0x14(r1)
    lwz r0, 0x44(r3)
    stw r31, 0xc(r1)
    clrlwi r6, r0, 16
    lwz r4, 0xc(r4)
    cmplwi r6, 0xff00
    lhz r5, 0xc(r4)
    opword  0x4180000C  // blt .L_8007870C
    li r3, 0x0
    opword  0x48000028  // b .L_80078730
L_8007870C:
    lwz r31, 0x38(r3)
    mr r4, r3
    mr r3, r31
    bl fn_80078F4C
    clrlwi. r0, r3, 24
    opword  0x4082000C  // bne .L_8007872C
    li r3, 0x0
    opword  0x48000008  // b .L_80078730
L_8007872C:
    lwz r3, 0x14(r31)
L_80078730:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80078744(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    lwz r0, 0x44(r3)
    stw r31, 0xc(r1)
    clrlwi r6, r0, 16
    cmplwi r6, 0xff00
    opword  0x4180000C  // blt .L_8007876C
    li r3, 0x0
    opword  0x4800002C  // b .L_80078794
L_8007876C:
    lwz r31, 0x38(r3)
    mr r4, r3
    srwi r5, r0, 16
    mr r3, r31
    bl fn_80078F4C
    clrlwi. r0, r3, 24
    opword  0x4082000C  // bne .L_80078790
    li r3, 0x0
    opword  0x48000008  // b .L_80078794
L_80078790:
    lwz r3, 0x14(r31)
L_80078794:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800787A8(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    lwz r5, 0x44(r3)
    stw r0, 0x14(r1)
    slwi r0, r4, 1
    lwz r4, 0x8(r3)
    stw r31, 0xc(r1)
    lhzx r6, r5, r0
    lwz r4, 0xc(r4)
    cmplwi r6, 0xff00
    lhz r5, 0xc(r4)
    opword  0x4180000C  // blt .L_800787E0
    li r3, 0x0
    opword  0x48000028  // b .L_80078804
L_800787E0:
    lwz r31, 0x38(r3)
    mr r4, r3
    mr r3, r31
    bl fn_80078F4C
    clrlwi. r0, r3, 24
    opword  0x4082000C  // bne .L_80078800
    li r3, 0x0
    opword  0x48000008  // b .L_80078804
L_80078800:
    lwz r3, 0x14(r31)
L_80078804:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80078818(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    slwi r0, r4, 2
    lwz r4, 0x44(r3)
    stw r31, 0xc(r1)
    lwzx r0, r4, r0
    clrlwi r6, r0, 16
    cmplwi r6, 0xff00
    opword  0x4180000C  // blt .L_80078848
    li r3, 0x0
    opword  0x4800002C  // b .L_80078870
L_80078848:
    lwz r31, 0x38(r3)
    mr r4, r3
    srwi r5, r0, 16
    mr r3, r31
    bl fn_80078F4C
    clrlwi. r0, r3, 24
    opword  0x4082000C  // bne .L_8007886C
    li r3, 0x0
    opword  0x48000008  // b .L_80078870
L_8007886C:
    lwz r3, 0x14(r31)
L_80078870:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80078884(void)
{
    nofralloc
    lis r7, lbl_80498AB8@ha
    lis r6, fn_80077E68@ha
    addi r0, r7, lbl_80498AB8@l
    lis r5, lbl_80498A10@ha
    stw r0, 0x0(r3)
    li r7, 0x0
    addi r6, r6, fn_80077E68@l
    addi r0, r5, lbl_80498A10@l
    stw r4, 0x4(r3)
    stw r7, 0x8(r3)
    stw r7, 0xc(r3)
    stw r7, 0x10(r3)
    stw r6, 0x24(r3)
    stw r0, 0x0(r3)
    blr
}

ASM void dtor_800788C0(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr. r31, r3
    opword  0x41820030  // beq .L_80078904
    lis r3, lbl_80498A10@ha
    addi r0, r3, lbl_80498A10@l
    stw r0, 0x0(r31)
    opword  0x41820010  // beq .L_800788F4
    lis r3, lbl_80498AB8@ha
    addi r0, r3, lbl_80498AB8@l
    stw r0, 0x0(r31)
L_800788F4:
    extsh. r0, r4
    opword  0x4081000C  // ble .L_80078904
    mr r3, r31
    bl dtor_80084580
L_80078904:
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8007891C(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stmw r27, 0xc(r1)
    mr r30, r3
    mr r31, r4
L_80078934:
    lwz r7, 0xc(r30)
    cmplw r7, r31
    opword  0x40820034  // bne .L_80078970
    mr r3, r30
    lwz r12, 0x0(r30)
    lwz r12, 0x3c(r12)
    mtctr r12
    bctrl
    mr r3, r30
    lwz r12, 0x0(r30)
    lwz r12, 0x14(r12)
    mtctr r12
    bctrl
    li r3, 0x0
    opword  0x48000124  // b .L_80078A90
L_80078970:
    lbz r29, 0x0(r7)
    cmpwi r29, 0x1a
    opword  0x41820034  // beq .L_800789AC
    opword  0x408000A4  // bge .L_80078A20
    cmpwi r29, 0x0
    opword  0x41820008  // beq .L_8007898C
    opword  0x48000098  // b .L_80078A20
L_8007898C:
    lwz r12, 0x24(r30)
    mr r3, r30
    mtctr r12
    bctrl
    clrlwi. r0, r3, 24
    opword  0x408200E0  // bne .L_80078A80
    li r0, 0x0
    opword  0x480000DC  // b .L_80078A84
L_800789AC:
    lbz r29, 0x1(r7)
    addi r27, r7, 0x5
    mr r3, r30
    add r0, r7, r29
    mr r5, r27
    stw r0, 0xc(r30)
    subi r6, r29, 0x5
    lbz r0, 0x3(r7)
    lwz r12, 0x0(r30)
    clrlslwi r28, r0, 24, 8
    lbz r4, 0x2(r7)
    lbz r0, 0x4(r7)
    rlwimi r28, r4, 16, 8, 15
    lwz r12, 0x1c(r12)
    or r28, r28, r0
    mr r4, r28
    mtctr r12
    bctrl
    clrlwi. r0, r3, 24
    opword  0x40820088  // bne .L_80078A80
    mr r3, r30
    mr r4, r28
    lwz r12, 0x0(r30)
    mr r5, r27
    subi r6, r29, 0x5
    lwz r12, 0x40(r12)
    mtctr r12
    bctrl
    opword  0x48000064  // b .L_80078A80
L_80078A20:
    lwz r4, 0x4(r30)
    mr r3, r29
    lwz r4, 0x4(r4)
    lwz r12, 0x4(r4)
    mtctr r12
    bctrl
    clrlwi. r0, r3, 24
    opword  0x41820020  // beq .L_80078A5C
    lwz r3, 0xc(r30)
    slwi r29, r29, 8
    addi r0, r3, 0x1
    stw r0, 0xc(r30)
    lwz r3, 0xc(r30)
    lbz r0, 0x0(r3)
    or r29, r29, r0
L_80078A5C:
    lwz r5, 0xc(r30)
    mr r3, r30
    mr r4, r29
    addi r0, r5, 0x1
    stw r0, 0xc(r30)
    lwz r12, 0x0(r30)
    lwz r12, 0x18(r12)
    mtctr r12
    bctrl
L_80078A80:
    li r0, 0x1
L_80078A84:
    clrlwi. r0, r0, 24
    opword  0x4082FEAC  // bne .L_80078934
    li r3, 0x0
L_80078A90:
    lmw r27, 0xc(r1)
    lwz r0, 0x24(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_80078AA4(void)
{
    nofralloc
    blr
}

ASM void fn_80078AA8(void)
{
    nofralloc
    blr
}

ASM void fn_80078AAC(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    extrwi r0, r4, 8, 8
    cmpwi r0, 0xfd
    opword  0x4080000C  // bge .L_80078ACC
    cmpwi r0, 0xf7
    opword  0x40800008  // bge .L_80078AD0
L_80078ACC:
    bl fn_800779FC
L_80078AD0:
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80078AE0(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    clrlwi r0, r4, 16
    cmpwi r0, 0x6
    opword  0x4182001C  // beq .L_80078B10
    opword  0x40800014  // bge .L_80078B0C
    cmpwi r0, 0x4
    opword  0x4080000C  // bge .L_80078B0C
    cmpwi r0, 0x0
    opword  0x40800008  // bge .L_80078B10
L_80078B0C:
    bl fn_80077C8C
L_80078B10:
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80078B20(void)
{
    nofralloc
    lis r5, lbl_80498B10@ha
    lis r4, 0x1
    addi r0, r5, lbl_80498B10@l
    li r5, 0x0
    stw r0, 0x0(r3)
    subi r0, r4, 0x1
    stw r5, 0x4(r3)
    stw r5, 0x8(r3)
    sth r0, 0xc(r3)
    sth r0, 0xe(r3)
    stw r5, 0x10(r3)
    stw r5, 0x14(r3)
    stw r5, 0x18(r3)
    stw r5, 0x1c(r3)
    stw r5, 0x20(r3)
    stw r5, 0x24(r3)
    blr
}

ASM void fn_80078B64(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr. r31, r3
    opword  0x4182001C  // beq .L_80078B94
    lis r5, lbl_80498B10@ha
    extsh. r0, r4
    addi r0, r5, lbl_80498B10@l
    stw r0, 0x0(r31)
    opword  0x40810008  // ble .L_80078B94
    bl dtor_80084580
L_80078B94:
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80078BAC(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    li r0, 0x0
    stw r31, 0xc(r1)
    mr r31, r3
    stw r0, 0x14(r3)
    stw r0, 0x18(r3)
    stw r0, 0x1c(r3)
    stw r0, 0x20(r3)
    stw r0, 0x24(r3)
    lwz r3, 0x4(r3)
    cmplwi r3, 0x0
    opword  0x41820008  // beq .L_80078BE8
    bl fn_800778DC
L_80078BE8:
    lwz r3, 0x8(r31)
    cmplwi r3, 0x0
    opword  0x41820008  // beq .L_80078BF8
    bl fn_800778DC
L_80078BF8:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80078C0C(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r3
    li r3, 0x0
    lwz r0, 0x18(r31)
    cmplwi r0, 0x0
    opword  0x41820014  // beq .L_80078C40
    lwz r0, 0x4(r31)
    cmplwi r0, 0x0
    opword  0x41820008  // beq .L_80078C40
    li r3, 0x1
L_80078C40:
    clrlwi. r0, r3, 24
    opword  0x4082000C  // bne .L_80078C50
    li r3, 0x0
    opword  0x48000034  // b .L_80078C80
L_80078C50:
    lwz r3, 0x4(r31)
    li r4, 0x0
    bl fn_800780AC
    stw r3, 0x1c(r31)
    lwz r0, 0x1c(r31)
    cmplwi r0, 0x0
    opword  0x40820014  // bne .L_80078C7C
    li r0, 0x0
    li r3, 0x0
    stw r0, 0x18(r31)
    opword  0x48000008  // b .L_80078C80
L_80078C7C:
    li r3, 0x1
L_80078C80:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80078C94(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    mr r31, r3
    li r3, 0x0
    stw r30, 0x18(r1)
    stw r29, 0x14(r1)
    stw r28, 0x10(r1)
    lwz r28, 0x20(r31)
    cmplwi r28, 0x0
    opword  0x41820014  // beq .L_80078CD4
    lwz r0, 0x8(r31)
    cmplwi r0, 0x0
    opword  0x41820008  // beq .L_80078CD4
    li r3, 0x1
L_80078CD4:
    clrlwi. r0, r3, 24
    opword  0x41820138  // beq .L_80078E10
    lwz r30, 0x8(r31)
    lis r3, fn_80077E68@ha
    lwz r29, 0x14(r31)
    li r5, 0x0
    lwz r6, 0x10(r31)
    addi r0, r3, fn_80077E68@l
    mr r3, r30
    mr r4, r28
    stw r6, 0x8(r30)
    stw r28, 0xc(r30)
    stw r5, 0x10(r30)
    stw r0, 0x24(r30)
    lwz r12, 0x0(r30)
    lwz r12, 0x30(r12)
    mtctr r12
    bctrl
    mr r3, r30
    mr r4, r29
    lwz r12, 0x0(r30)
    mr r5, r28
    lwz r12, 0x38(r12)
    mtctr r12
    bctrl
    mr r3, r30
    mr r4, r29
    lwz r12, 0x0(r30)
    mr r5, r28
    lwz r12, 0x10(r12)
    mtctr r12
    bctrl
    lwz r3, 0x8(r31)
    addi r5, r31, 0x28
    lwz r0, 0x24(r31)
    addi r6, r3, 0x14
    stw r0, 0x10(r3)
    lwz r0, 0x24(r31)
    slwi r0, r0, 2
    add r3, r31, r0
    addi r4, r3, 0x28
    addi r3, r4, 0x3
    subf r3, r5, r3
    cmplw r5, r4
    srwi r3, r3, 2
    opword  0x4080007C  // bge .L_80078E04
    srwi. r0, r3, 3
    mtctr r0
    opword  0x41820058  // beq .L_80078DEC
L_80078D98:
    lwz r0, 0x0(r5)
    stw r0, 0x0(r6)
    lwz r0, 0x4(r5)
    stw r0, 0x4(r6)
    lwz r0, 0x8(r5)
    stw r0, 0x8(r6)
    lwz r0, 0xc(r5)
    stw r0, 0xc(r6)
    lwz r0, 0x10(r5)
    stw r0, 0x10(r6)
    lwz r0, 0x14(r5)
    stw r0, 0x14(r6)
    lwz r0, 0x18(r5)
    stw r0, 0x18(r6)
    lwz r0, 0x1c(r5)
    addi r5, r5, 0x20
    stw r0, 0x1c(r6)
    addi r6, r6, 0x20
    opword  0x4200FFB8  // bdnz .L_80078D98
    andi. r3, r3, 0x7
    opword  0x4182001C  // beq .L_80078E04
L_80078DEC:
    mtctr r3
L_80078DF0:
    lwz r0, 0x0(r5)
    addi r5, r5, 0x4
    stw r0, 0x0(r6)
    addi r6, r6, 0x4
    opword  0x4200FFF0  // bdnz .L_80078DF0
L_80078E04:
    lwz r3, 0x8(r31)
    lwz r4, 0x1c(r31)
    bl fn_8007891C
L_80078E10:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    lwz r28, 0x10(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_80078E30(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    mr r6, r5
    stw r0, 0x24(r1)
    mr r0, r4
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    stw r29, 0x14(r1)
    stw r28, 0x10(r1)
    mr r28, r3
    lwz r4, 0x4(r3)
    cmplwi r4, 0x0
    opword  0x41820008  // beq .L_80078E68
    opword  0x48000008  // b .L_80078E6C
L_80078E68:
    lwz r4, 0x8(r28)
L_80078E6C:
    mr r3, r28
    mr r5, r0
    bl fn_80078F4C
    clrlwi. r0, r3, 24
    opword  0x4082000C  // bne .L_80078E88
    li r3, 0x0
    opword  0x480000A8  // b .L_80078F2C
L_80078E88:
    lwz r29, 0x18(r28)
    li r3, 0x0
    cmplwi r29, 0x0
    opword  0x41820014  // beq .L_80078EA8
    lwz r0, 0x4(r28)
    cmplwi r0, 0x0
    opword  0x41820008  // beq .L_80078EA8
    li r3, 0x1
L_80078EA8:
    clrlwi. r0, r3, 24
    opword  0x4182007C  // beq .L_80078F28
    lwz r31, 0x4(r28)
    lis r3, fn_80077E68@ha
    lwz r30, 0x14(r28)
    li r5, 0x0
    lwz r6, 0x10(r28)
    addi r0, r3, fn_80077E68@l
    mr r3, r31
    mr r4, r29
    stw r6, 0x8(r31)
    stw r29, 0xc(r31)
    stw r5, 0x10(r31)
    stw r0, 0x24(r31)
    lwz r12, 0x0(r31)
    lwz r12, 0x30(r12)
    mtctr r12
    bctrl
    mr r3, r31
    mr r4, r30
    lwz r12, 0x0(r31)
    mr r5, r29
    lwz r12, 0x38(r12)
    mtctr r12
    bctrl
    mr r3, r31
    mr r4, r30
    lwz r12, 0x0(r31)
    mr r5, r29
    lwz r12, 0x10(r12)
    mtctr r12
    bctrl
L_80078F28:
    li r3, 0x1
L_80078F2C:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    lwz r28, 0x10(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_80078F4C(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    mr r31, r3
    stw r30, 0x18(r1)
    mr r30, r6
    stw r29, 0x14(r1)
    mr r29, r5
    stw r28, 0x10(r1)
    mr r28, r4
    mr r3, r28
    mr r4, r29
    bl fn_80077944
    cmplwi r3, 0x0
    opword  0x4082000C  // bne .L_80078F94
    li r3, 0x0
    opword  0x48000030  // b .L_80078FC0
L_80078F94:
    lwz r3, 0xc(r3)
    clrlwi r4, r30, 16
    lhz r0, 0x8(r3)
    cmplw r4, r0
    opword  0x40800018  // bge .L_80078FBC
    lhz r0, 0xa(r3)
    mullw r0, r4, r0
    add r3, r3, r0
    addi r3, r3, 0x10
    opword  0x48000008  // b .L_80078FC0
L_80078FBC:
    li r3, 0x0
L_80078FC0:
    stw r3, 0x14(r31)
    lwz r0, 0x14(r31)
    cmplwi r0, 0x0
    opword  0x4082000C  // bne .L_80078FD8
    li r3, 0x0
    opword  0x48000040  // b .L_80079014
L_80078FD8:
    sth r29, 0xc(r31)
    li r0, 0x0
    lwz r4, 0x8(r28)
    li r3, 0x1
    sth r30, 0xe(r31)
    stw r4, 0x10(r31)
    lwz r5, 0x10(r31)
    lwz r4, 0x14(r31)
    lwz r5, 0x10(r5)
    lwz r4, 0x0(r4)
    add r4, r5, r4
    stw r4, 0x18(r31)
    lwz r4, 0x18(r31)
    stw r4, 0x20(r31)
    stw r0, 0x24(r31)
L_80079014:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    lwz r28, 0x10(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_80079034(void)
{
    nofralloc
    li r3, 0x1
    blr
}

ASM void fn_8007903C(void)
{
    nofralloc
    blr
}

ASM void fn_80079040(void)
{
    nofralloc
    blr
}

ASM void fn_80079044(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr. r31, r3
    opword  0x4182001C  // beq .L_80079074
    lis r5, lbl_80498B20@ha
    extsh. r0, r4
    addi r0, r5, lbl_80498B20@l
    stw r0, 0x0(r31)
    opword  0x40810008  // ble .L_80079074
    bl dtor_80084580
L_80079074:
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8007908C(void)
{
    nofralloc
    blr
}

ASM void fn_80079090(void)
{
    nofralloc
    li r3, 0x0
    blr
}

ASM void fn_80079098(void)
{
    nofralloc
    li r3, 0x0
    blr
}

ASM void fn_800790A0(void)
{
    nofralloc
    opword  0xC0228720  // lfs f1, lbl_8053B6C0@sda21(r0)
    blr
}

/**
 * Real name/logic identified via cbr_decomp's src/JSystem/JKernel/JKRAram.cpp
 * (address-verified there at 0x80017A10) and confirmed against FSA's own
 * retail bytes at this address. Kept as a raw nofralloc transcription
 * (already byte-verified as part of this project's passing build) rather
 * than genuine C++ - this class hierarchy (JKRAram : JKRThread :
 * JKRDisposer) is polymorphic, and this project has an unsolved dtk v1.8.3
 * extab-generation bug for polymorphic C++ constructs (see
 * project_fsa_jkraram_cluster_progress in project memory) - real names and
 * signatures give the same "understood" value without that risk.
 *
 * JKRAram* JKRAram::create(u32 aram_audio_buffer_size, u32 aram_audio_graph_size,
 *                          s32 streamPriority, s32 decomp_priority, s32 piece_priority)
 * {
 *     if (!sAramObject)
 *         sAramObject = new (JKRGetSystemHeap(), 0) JKRAram(aram_audio_buffer_size, aram_audio_graph_size, piece_priority);
 *     JKRCreateAramStreamManager(streamPriority);
 *     JKRCreateDecompManager(decomp_priority);
 *     sAramObject->resume();
 *     return sAramObject;
 * }
 */
ASM void* JKRAram_create(register u32 aram_audio_buffer_size, register u32 aram_audio_graph_size, register s32 streamPriority,
                          register s32 decomp_priority, register s32 piece_priority)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stmw r27, 0xc(r1)
    mr r27, r3
    mr r28, r4
    mr r29, r5
    mr r30, r6
    mr r31, r7
    opword  0x800D8BE0  // lwz r0, lbl_8053A7A0@sda21(r0)
    cmplwi r0, 0x0
    opword  0x40820034  // bne .L_80079108
    opword  0x808D8CE8  // lwz r4, lbl_8053A8A8@sda21(r0)
    li r3, 0xa4
    li r5, 0x0
    bl fn_8008440C
    mr. r0, r3
    opword  0x41820018  // beq .L_80079104
    mr r4, r27
    mr r5, r28
    mr r6, r31
    bl JKRAram_ctor
    mr r0, r3
L_80079104:
    opword  0x900D8BE0  // stw r0, lbl_8053A7A0@sda21(r0)
L_80079108:
    mr r3, r29
    bl fn_8007B694
    mr r3, r30
    bl fn_8007E034
    opword  0x806D8BE0  // lwz r3, lbl_8053A7A0@sda21(r0)
    lwz r3, 0x2c(r3)
    bl OSResumeThread
    lmw r27, 0xc(r1)
    lwz r0, 0x24(r1)
    opword  0x806D8BE0  // lwz r3, lbl_8053A7A0@sda21(r0)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

/**
 * JKRAram::JKRAram(u32 bufSize, u32 graphSize, s32 priority)
 *     : JKRThread(0x4000, 0x10, priority)
 * { ...allocates audio/graph/user ARAM regions via ARAlloc, constructs mAramHeap... }
 * See JKRAram_create's comment above for why this stays in raw form.
 */
ASM void JKRAram_ctor(register void* this_, register u32 bufSize, register u32 graphSize, register s32 priority)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    mr r30, r5
    li r5, 0x10
    stw r29, 0x14(r1)
    mr r29, r4
    li r4, 0x4000
    stw r28, 0x10(r1)
    mr r28, r3
    bl fn_80085474
    lis r4, lbl_80498B80@ha
    addi r3, r28, 0x98
    addi r0, r4, lbl_80498B80@l
    li r4, 0x3
    stw r0, 0x0(r28)
    bl fn_8004FFB0
    mr r31, r3
    bl fn_80051AE8
    bl fn_80050074
    addis r0, r30, 0x1
    stw r29, 0x80(r28)
    cmplwi r0, 0xffff
    opword  0x4082001C  // bne .L_800791BC
    subf r3, r29, r3
    li r0, 0x0
    subf r3, r31, r3
    stw r3, 0x88(r28)
    stw r0, 0x90(r28)
    opword  0x48000018  // b .L_800791D0
L_800791BC:
    add r0, r29, r30
    stw r30, 0x88(r28)
    subf r0, r0, r3
    subf r0, r31, r0
    stw r0, 0x90(r28)
L_800791D0:
    lwz r3, 0x80(r28)
    bl fn_8004FF48
    stw r3, 0x7c(r28)
    lwz r3, 0x88(r28)
    bl fn_8004FF48
    stw r3, 0x84(r28)
    lwz r3, 0x90(r28)
    cmplwi r3, 0x0
    opword  0x41820010  // beq .L_80079200
    bl fn_8004FF48
    stw r3, 0x8c(r28)
    opword  0x4800000C  // b .L_80079208
L_80079200:
    li r0, 0x0
    stw r0, 0x8c(r28)
L_80079208:
    opword  0x808D8CE8  // lwz r4, lbl_8053A8A8@sda21(r0)
    li r3, 0x44
    li r5, 0x0
    bl fn_8008440C
    mr. r0, r3
    opword  0x41820014  // beq .L_80079230
    lwz r4, 0x84(r28)
    lwz r5, 0x88(r28)
    bl fn_8007AEB0
    mr r0, r3
L_80079230:
    stw r0, 0x94(r28)
    mr r3, r28
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    lwz r28, 0x10(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

/**
 * JKRAram::~JKRAram() { sAramObject = nullptr; if (mAramHeap) delete mAramHeap; }
 * (r4/shouldFreeThis is the standard vtable "deleting destructor" flag -
 * nonzero means also free `this` itself, per the usual MWCC C++ ABI.)
 */
ASM void JKRAram_dtor(register void* this_, register u16 shouldFreeThis)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    stw r30, 0x8(r1)
    mr. r30, r3
    opword  0x41820058  // beq .L_800792CC
    lis r3, lbl_80498B80@ha
    li r0, 0x0
    addi r3, r3, lbl_80498B80@l
    stw r3, 0x0(r30)
    opword  0x900D8BE0  // stw r0, lbl_8053A7A0@sda21(r0)
    lwz r3, 0x94(r30)
    cmplwi r3, 0x0
    opword  0x4182001C  // beq .L_800792B0
    opword  0x41820018  // beq .L_800792B0
    lwz r12, 0x0(r3)
    li r4, 0x1
    lwz r12, 0x8(r12)
    mtctr r12
    bctrl
L_800792B0:
    mr r3, r30
    li r4, 0x0
    bl fn_80085674
    extsh. r0, r31
    opword  0x4081000C  // ble .L_800792CC
    mr r3, r30
    bl dtor_80084580
L_800792CC:
    lwz r0, 0x14(r1)
    mr r3, r30
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

/**
 * void* JKRAram::run()
 * {
 *     OSInitMessageQueue(&sMessageQueue, sMessageBuffer, 4);
 *     do {
 *         OSReceiveMessage(&sMessageQueue, (OSMessage*)&message, OS_MESSAGE_BLOCK);
 *         ...
 *         if (message->mMsgType == ARAMMSG_DMA) JKRAramPiece::startDMA(command);
 *     } while (true);
 * }
 */
ASM void* JKRAram_run(register void* this_)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    lis r3, lbl_80498B60@ha
    lis r4, lbl_80498B50@ha
    stw r0, 0x24(r1)
    addi r3, r3, lbl_80498B60@l
    li r5, 0x4
    addi r4, r4, lbl_80498B50@l
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    stw r29, 0x14(r1)
    bl OSInitMessageQueue
    lis r3, lbl_80498B60@ha
    addi r31, r3, lbl_80498B60@l
L_80079320:
    mr r3, r31
    addi r4, r1, 0x8
    li r5, 0x1
    bl OSReceiveMessage
    lwz r3, 0x8(r1)
    lwz r30, 0x0(r3)
    lwz r29, 0x4(r3)
    bl dtor_80084580
    cmpwi r30, 0x1
    opword  0x41820008  // beq .L_8007934C
    opword  0x4BFFFFD8  // b .L_80079320
L_8007934C:
    mr r3, r29
    bl fn_8007B418
    opword  0x4BFFFFCC  // b .L_80079320
}

/**
 * JKRAramBlock* JKRAram::mainRamToAram(u8* buf, u32 bufSize, u32 alignedSize, JKRExpandSwitch expandSwitch,
 *                                      u32 fileSize, JKRHeap* heap, int id, u32* pSize)
 * - real name/logic verified per cbr_decomp's JKRAram.cpp (0x80017CC0 there).
 *   `checkOkAddress`/`changeGroupIdIfNeed` (separate methods in cbr's source)
 *   are fully inlined here rather than existing as their own symbols -
 *   confirmed by matching their exact alignment-check/panic logic directly
 *   in this function's body. Kept in raw form per JKRAram_create's note.
 */
ASM JKRAramBlock* JKRAram_mainRamToAram(register u8* buf, register u32 bufSize, register u32 alignedSize,
                                        register JKRExpandSwitch expandSwitch, register u32 fileSize, register JKRHeap* heap,
                                        register int id, register u32* pSize)
{
    nofralloc
    stwu r1, -0x30(r1)
    mflr r0
    stw r0, 0x34(r1)
    clrlwi. r0, r3, 27
    stmw r23, 0xc(r1)
    mr r30, r3
    mr r24, r4
    mr r31, r5
    mr r23, r6
    mr r25, r7
    mr r26, r8
    mr r27, r9
    mr r28, r10
    li r29, 0x0
    opword  0x4182002C  // beq .L_800793BC
    clrlwi. r0, r24, 27
    opword  0x41820024  // beq .L_800793BC
    lis r3, lbl_8045E0C8@ha
    lis r5, lbl_8045E0D4@ha
    addi r6, r5, lbl_8045E0D4@l
    li r4, 0xdb
    addi r3, r3, lbl_8045E0C8@l
    opword  0x38A28728  // li r5, lbl_8053B6C8@sda21
    crclr 6
    bl fn_8008A324
L_800793BC:
    cmpwi r23, 0x1
    opword  0x40820024  // bne .L_800793E4
    mr r3, r30
    bl fn_8007E5F0
    cmpwi r3, 0x3
    opword  0x40820008  // bne .L_800793D8
    li r3, 0x0
L_800793D8:
    neg r0, r3
    or r0, r0, r3
    srwi r23, r0, 31
L_800793E4:
    cmpwi r23, 0x1
    opword  0x40820154  // bne .L_8007953C
    lbz r0, 0x5(r30)
    cmplwi r25, 0x0
    lbz r3, 0x4(r30)
    slwi r0, r0, 16
    lbz r4, 0x6(r30)
    rlwimi r0, r3, 24, 0, 7
    lbz r5, 0x7(r30)
    rlwimi r0, r4, 8, 16, 23
    or r23, r5, r0
    opword  0x4182000C  // beq .L_8007941C
    cmplw r25, r23
    opword  0x4081000C  // ble .L_80079424
L_8007941C:
    addi r0, r23, 0x1f
    clrrwi r25, r0, 5
L_80079424:
    cmplwi r24, 0x0
    opword  0x40820050  // bne .L_80079478
    opword  0x806D8BE0  // lwz r3, lbl_8053A7A0@sda21(r0)
    mr r4, r25
    li r5, 0x0
    lwz r3, 0x94(r3)
    bl fn_8007B030
    cmplwi r3, 0x0
    mr r29, r3
    opword  0x4082000C  // bne .L_80079454
    li r3, 0x0
    opword  0x4800018C  // b .L_800795DC
L_80079454:
    cmpwi r27, 0x0
    opword  0x40800014  // bge .L_8007946C
    opword  0x808D8BE0  // lwz r4, lbl_8053A7A0@sda21(r0)
    lwz r4, 0x94(r4)
    lbz r0, 0x40(r4)
    opword  0x48000008  // b .L_80079470
L_8007946C:
    clrlwi r0, r27, 24
L_80079470:
    stb r0, 0x20(r3)
    lwz r24, 0x14(r3)
L_80079478:
    cmplwi r31, 0x0
    opword  0x4182000C  // beq .L_80079488
    cmplw r31, r23
    opword  0x4081000C  // ble .L_80079490
L_80079488:
    addi r0, r23, 0x1f
    clrrwi r31, r0, 5
L_80079490:
    cmplw r31, r25
    opword  0x40810008  // ble .L_8007949C
    mr r31, r25
L_8007949C:
    mr r3, r25
    mr r5, r26
    li r4, -0x20
    bl fn_80083868
    mr. r23, r3
    opword  0x40820030  // bne .L_800794E0
    cmplwi r29, 0x0
    opword  0x41820020  // beq .L_800794D8
    opword  0x4182001C  // beq .L_800794D8
    mr r3, r29
    li r4, 0x1
    lwz r12, 0x0(r29)
    lwz r12, 0x8(r12)
    mtctr r12
    bctrl
L_800794D8:
    li r3, 0x0
    opword  0x48000100  // b .L_800795DC
L_800794E0:
    mr r3, r30
    mr r4, r23
    mr r5, r25
    li r6, 0x0
    bl fn_8007E23C
    mr r4, r23
    mr r5, r24
    mr r6, r31
    mr r7, r29
    li r3, 0x0
    bl fn_8007B268
    mr r3, r23
    mr r4, r26
    bl fn_800838F4
    cmplwi r29, 0x0
    opword  0x4082000C  // bne .L_80079528
    li r3, -0x1
    opword  0x48000008  // b .L_8007952C
L_80079528:
    mr r3, r29
L_8007952C:
    cmplwi r28, 0x0
    opword  0x418200AC  // beq .L_800795DC
    stw r31, 0x0(r28)
    opword  0x480000A4  // b .L_800795DC
L_8007953C:
    cmplwi r25, 0x0
    opword  0x41820010  // beq .L_80079550
    cmplw r31, r25
    opword  0x40810008  // ble .L_80079550
    mr r31, r25
L_80079550:
    cmplwi r24, 0x0
    opword  0x40820050  // bne .L_800795A4
    opword  0x806D8BE0  // lwz r3, lbl_8053A7A0@sda21(r0)
    mr r4, r31
    li r5, 0x0
    lwz r3, 0x94(r3)
    bl fn_8007B030
    cmpwi r27, 0x0
    mr r29, r3
    opword  0x40800014  // bge .L_80079588
    opword  0x808D8BE0  // lwz r4, lbl_8053A7A0@sda21(r0)
    lwz r4, 0x94(r4)
    lbz r0, 0x40(r4)
    opword  0x48000008  // b .L_8007958C
L_80079588:
    clrlwi r0, r27, 24
L_8007958C:
    cmplwi r3, 0x0
    stb r0, 0x20(r3)
    opword  0x4082000C  // bne .L_800795A0
    li r3, 0x0
    opword  0x48000040  // b .L_800795DC
L_800795A0:
    lwz r24, 0x14(r3)
L_800795A4:
    mr r4, r30
    mr r5, r24
    mr r6, r31
    mr r7, r29
    li r3, 0x0
    bl fn_8007B268
    cmplwi r29, 0x0
    opword  0x4082000C  // bne .L_800795CC
    li r3, -0x1
    opword  0x48000008  // b .L_800795D0
L_800795CC:
    mr r3, r29
L_800795D0:
    cmplwi r28, 0x0
    opword  0x41820008  // beq .L_800795DC
    stw r31, 0x0(r28)
L_800795DC:
    lmw r23, 0xc(r1)
    lwz r0, 0x34(r1)
    mtlr r0
    addi r1, r1, 0x30
    blr
}

/**
 * u8* JKRAram::aramToMainRam(u32 address, u8* buf, u32 size, JKRExpandSwitch expandSwitch,
 *                            u32 maxExpandSize, JKRHeap* heap, int id, u32* pSize)
 * - real name/logic verified per cbr_decomp's JKRAram.cpp (0x80017F4C there).
 *   Named with an `_addr` suffix here since the real class has a second,
 *   overloaded `aramToMainRam(JKRAramBlock*, ...)` - plain C can't overload,
 *   so the two get distinct names. Kept in raw form per JKRAram_create's note.
 */
ASM u8* JKRAram_aramToMainRam_addr(register u32 address, register u8* buf, register u32 size, register JKRExpandSwitch expandSwitch,
                                   register u32 maxExpandSize, register JKRHeap* heap, register int id, register u32* pSize)
{
    nofralloc
    stwu r1, -0x70(r1)
    mflr r0
    stw r0, 0x74(r1)
    stmw r22, 0x48(r1)
    mr. r31, r10
    mr r28, r3
    mr r23, r4
    mr r29, r5
    mr r22, r6
    mr r24, r7
    mr r25, r8
    mr r30, r9
    li r27, 0x0
    opword  0x4182000C  // beq .L_80079630
    li r0, 0x0
    stw r0, 0x0(r31)
L_80079630:
    clrlwi. r0, r23, 27
    opword  0x4182002C  // beq .L_80079660
    clrlwi. r0, r28, 27
    opword  0x41820024  // beq .L_80079660
    lis r3, lbl_8045E0C8@ha
    lis r5, lbl_8045E0D4@ha
    addi r6, r5, lbl_8045E0D4@l
    li r4, 0xdb
    addi r3, r3, lbl_8045E0C8@l
    opword  0x38A28728  // li r5, lbl_8053B6C8@sda21
    crclr 6
    bl fn_8008A324
L_80079660:
    cmpwi r22, 0x1
    opword  0x4082005C  // bne .L_800796C0
    addi r0, r1, 0x27
    mr r4, r28
    clrrwi r26, r0, 5
    li r3, 0x1
    mr r5, r26
    li r6, 0x20
    li r7, 0x0
    bl fn_8007B268
    mr r3, r26
    bl fn_8007E5F0
    cmpwi r3, 0x3
    opword  0x40820008  // bne .L_8007969C
    li r3, 0x0
L_8007969C:
    lbz r0, 0x5(r26)
    mr r27, r3
    lbz r3, 0x4(r26)
    slwi r0, r0, 16
    lbz r4, 0x6(r26)
    rlwimi r0, r3, 24, 0, 7
    lbz r5, 0x7(r26)
    rlwimi r0, r4, 8, 16, 23
    or r26, r5, r0
L_800796C0:
    cmpwi r27, 0x2
    opword  0x40820094  // bne .L_80079758
    cmplwi r24, 0x0
    opword  0x41820010  // beq .L_800796DC
    cmplw r24, r26
    opword  0x40800008  // bge .L_800796DC
    mr r26, r24
L_800796DC:
    cmplwi r23, 0x0
    opword  0x40820018  // bne .L_800796F8
    mr r3, r26
    mr r5, r25
    li r4, 0x20
    bl fn_80083868
    mr r23, r3
L_800796F8:
    cmplwi r23, 0x0
    opword  0x4082000C  // bne .L_80079708
    li r3, 0x0
    opword  0x480001C0  // b .L_800798C4
L_80079708:
    opword  0x806D8CEC  // lwz r3, lbl_8053A8AC@sda21(r0)
    lwz r12, 0x0(r3)
    lwz r12, 0x10(r12)
    mtctr r12
    bctrl
    subis r0, r3, 0x4558
    cmplwi r0, 0x5048
    opword  0x40820010  // bne .L_80079734
    cmpwi r30, 0x0
    opword  0x41800008  // blt .L_80079734
    stb r30, -0xd(r23)
L_80079734:
    mr r3, r28
    mr r4, r23
    mr r5, r29
    mr r6, r26
    mr r8, r31
    li r7, 0x0
    bl JKRDecompressFromAramToMainRam
    mr r3, r23
    opword  0x48000170  // b .L_800798C4
L_80079758:
    cmpwi r27, 0x1
    opword  0x408200E8  // bne .L_80079844
    mr r3, r29
    mr r5, r25
    li r4, -0x20
    bl fn_80083868
    mr. r27, r3
    opword  0x4082000C  // bne .L_80079780
    li r3, 0x0
    opword  0x48000148  // b .L_800798C4
L_80079780:
    mr r4, r28
    mr r5, r27
    mr r6, r29
    li r3, 0x1
    li r7, 0x0
    bl fn_8007B268
    cmplwi r24, 0x0
    opword  0x41820010  // beq .L_800797AC
    cmplw r24, r26
    opword  0x40800008  // bge .L_800797AC
    mr r26, r24
L_800797AC:
    cmplwi r23, 0x0
    opword  0x40820018  // bne .L_800797C8
    mr r3, r26
    mr r5, r25
    li r4, 0x20
    bl fn_80083868
    mr r23, r3
L_800797C8:
    cmplwi r23, 0x0
    opword  0x40820018  // bne .L_800797E4
    mr r3, r27
    li r4, 0x0
    bl fn_800838F4
    li r3, 0x0
    opword  0x480000E4  // b .L_800798C4
L_800797E4:
    opword  0x806D8CEC  // lwz r3, lbl_8053A8AC@sda21(r0)
    lwz r12, 0x0(r3)
    lwz r12, 0x10(r12)
    mtctr r12
    bctrl
    subis r0, r3, 0x4558
    cmplwi r0, 0x5048
    opword  0x40820010  // bne .L_80079810
    cmpwi r30, 0x0
    opword  0x41800008  // blt .L_80079810
    stb r30, -0xd(r23)
L_80079810:
    mr r3, r27
    mr r4, r23
    mr r5, r26
    li r6, 0x0
    bl fn_8007E23C
    mr r3, r27
    mr r4, r25
    bl fn_800838F4
    cmplwi r31, 0x0
    opword  0x41820008  // beq .L_8007983C
    stw r26, 0x0(r31)
L_8007983C:
    mr r3, r23
    opword  0x48000084  // b .L_800798C4
L_80079844:
    cmplwi r23, 0x0
    opword  0x40820018  // bne .L_80079860
    mr r3, r29
    mr r5, r25
    li r4, 0x20
    bl fn_80083868
    mr r23, r3
L_80079860:
    cmplwi r23, 0x0
    opword  0x4082000C  // bne .L_80079870
    li r3, 0x0
    opword  0x48000058  // b .L_800798C4
L_80079870:
    opword  0x806D8CEC  // lwz r3, lbl_8053A8AC@sda21(r0)
    lwz r12, 0x0(r3)
    lwz r12, 0x10(r12)
    mtctr r12
    bctrl
    subis r0, r3, 0x4558
    cmplwi r0, 0x5048
    opword  0x40820010  // bne .L_8007989C
    cmpwi r30, 0x0
    opword  0x41800008  // blt .L_8007989C
    stb r30, -0xd(r23)
L_8007989C:
    mr r4, r28
    mr r5, r23
    mr r6, r29
    li r3, 0x1
    li r7, 0x0
    bl fn_8007B268
    cmplwi r31, 0x0
    opword  0x41820008  // beq .L_800798C0
    stw r29, 0x0(r31)
L_800798C0:
    mr r3, r23
L_800798C4:
    lmw r22, 0x48(r1)
    lwz r0, 0x74(r1)
    mtlr r0
    addi r1, r1, 0x70
    blr
}

/**
 * int JKRDecompressFromAramToMainRam(u32 src, void* dst, u32 srcLength, u32 dstLength, u32 offset, u32* resourceSize)
 * - real, verified name/logic per cbr_decomp's JKRAram.cpp (address-verified
 *   there at 0x80018334). Sets up a decompression mutex/scratch buffer pair,
 *   then runs the SZS (Yaz0) decoder via decompSZS_subroutine/firstSrcData.
 *   Kept in raw form for the same reason as JKRAram_create above.
 */
ASM int JKRDecompressFromAramToMainRam(register u32 src, register void* dst, register u32 srcLength, register u32 dstLength,
                                        register u32 offset, register u32* resourceSize)
{
    nofralloc
    stwu r1, -0x30(r1)
    mflr r0
    stw r0, 0x34(r1)
    stmw r25, 0x14(r1)
    mr r26, r3
    mr r27, r4
    mr r28, r5
    mr r29, r6
    mr r30, r7
    mr r31, r8
    bl OSDisableInterrupts
    opword  0x880D8C14  // lbz r0, lbl_8053A7D4@sda21(r0)
    mr r25, r3
    cmplwi r0, 0x0
    opword  0x40820018  // bne .L_80079928
    lis r3, lbl_804B9FAC@ha
    addi r3, r3, lbl_804B9FAC@l
    bl OSInitMutex
    li r0, 0x1
    opword  0x980D8C14  // stb r0, lbl_8053A7D4@sda21(r0)
L_80079928:
    mr r3, r25
    bl OSRestoreInterrupts
    lis r3, lbl_804B9FAC@ha
    addi r3, r3, lbl_804B9FAC@l
    bl OSLockMutex
    opword  0x832D81A0  // lwz r25, lbl_80539D60@sda21(r0)
    li r5, 0x20
    opword  0x806D8CE8  // lwz r3, lbl_8053A8A8@sda21(r0)
    mr r4, r25
    bl fn_800838C8
    add r0, r3, r25
    cmplwi r30, 0x0
    opword  0x906D8BE4  // stw r3, lbl_8053A7A4@sda21(r0)
    opword  0x900D8BE8  // stw r0, lbl_8053A7A8@sda21(r0)
    opword  0x41820028  // beq .L_80079988
    opword  0x806D8CE8  // lwz r3, lbl_8053A8A8@sda21(r0)
    li r4, 0x1120
    li r5, 0x0
    bl fn_800838C8
    addi r0, r3, 0x1120
    opword  0x906D8BEC  // stw r3, lbl_8053A7AC@sda21(r0)
    opword  0x900D8BF0  // stw r0, lbl_8053A7B0@sda21(r0)
    opword  0x906D8BF4  // stw r3, lbl_8053A7B4@sda21(r0)
    opword  0x4800000C  // b .L_80079990
L_80079988:
    li r0, 0x0
    opword  0x900D8BEC  // stw r0, lbl_8053A7AC@sda21(r0)
L_80079990:
    li r0, 0x0
    cmplwi r28, 0x0
    opword  0x934D8C04  // stw r26, lbl_8053A7C4@sda21(r0)
    li r3, -0x1
    opword  0x900D8BF8  // stw r0, lbl_8053A7B8@sda21(r0)
    opword  0x41820008  // beq .L_800799AC
    mr r3, r28
L_800799AC:
    li r0, 0x0
    cmplwi r31, 0x0
    opword  0x906D8BFC  // stw r3, lbl_8053A7BC@sda21(r0)
    opword  0x93CD8C08  // stw r30, lbl_8053A7C8@sda21(r0)
    opword  0x900D8C0C  // stw r0, lbl_8053A7CC@sda21(r0)
    opword  0x93AD8C10  // stw r29, lbl_8053A7D0@sda21(r0)
    opword  0x4182000C  // beq .L_800799D0
    mr r3, r31
    opword  0x48000008  // b .L_800799D4
L_800799D0:
    opword  0x386D8C1C  // li r3, lbl_8053A7DC@sda21
L_800799D4:
    opword  0x906D8C18  // stw r3, lbl_8053A7D8@sda21(r0)
    li r0, 0x0
    stw r0, 0x0(r3)
    bl firstSrcData
    mr r4, r27
    bl decompSZS_subroutine
    opword  0x806D8BE4  // lwz r3, lbl_8053A7A4@sda21(r0)
    li r4, 0x0
    bl fn_800838F4
    opword  0x806D8BEC  // lwz r3, lbl_8053A7AC@sda21(r0)
    cmplwi r3, 0x0
    opword  0x4182000C  // beq .L_80079A0C
    li r4, 0x0
    bl fn_800838F4
L_80079A0C:
    opword  0x808D8C18  // lwz r4, lbl_8053A7D8@sda21(r0)
    mr r3, r27
    lwz r4, 0x0(r4)
    bl fn_80040FEC
    lis r3, lbl_804B9FAC@ha
    addi r3, r3, lbl_804B9FAC@l
    bl OSUnlockMutex
    lmw r25, 0x14(r1)
    li r3, 0x0
    lwz r0, 0x34(r1)
    mtlr r0
    addi r1, r1, 0x30
    blr
}

/**
 * static int decompSZS_subroutine(u8* src, u8* dest) - the real Yaz0/SZS
 * LZ77-style decompressor loop, verified per cbr_decomp's JKRAram.cpp
 * (address 0x8001849C there). Calls nextSrcData when it runs past the
 * current scratch-buffer chunk.
 */
ASM int decompSZS_subroutine(register u8* src, register u8* dest)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    li r0, 0x0
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    li r30, 0x0
    stw r29, 0x14(r1)
    mr r29, r4
    li r4, 0x0
    lbz r5, 0x0(r3)
    cmpwi r5, 0x59
    opword  0x40820028  // bne .L_80079A98
    lbz r5, 0x1(r3)
    cmpwi r5, 0x61
    opword  0x4082001C  // bne .L_80079A98
    lbz r5, 0x2(r3)
    cmpwi r5, 0x7a
    opword  0x40820010  // bne .L_80079A98
    lbz r5, 0x3(r3)
    cmpwi r5, 0x30
    opword  0x4182000C  // beq .L_80079AA0
L_80079A98:
    li r3, -0x1
    opword  0x48000230  // b .L_80079CCC
L_80079AA0:
    opword  0x80ED8C08  // lwz r7, lbl_8053A7C8@sda21(r0)
    lwz r6, 0x4(r3)
    opword  0x80AD8C10  // lwz r5, lbl_8053A7D0@sda21(r0)
    subf r6, r7, r6
    add r31, r29, r6
    add r5, r29, r5
    cmplw r31, r5
    opword  0x40810008  // ble .L_80079AC4
    mr r31, r5
L_80079AC4:
    addi r3, r3, 0x10
L_80079AC8:
    cmpwi r4, 0x0
    opword  0x4082002C  // bne .L_80079AF8
    opword  0x800D8C00  // lwz r0, lbl_8053A7C0@sda21(r0)
    cmplw r3, r0
    opword  0x40810014  // ble .L_80079AEC
    opword  0x800D8BFC  // lwz r0, lbl_8053A7BC@sda21(r0)
    cmplwi r0, 0x0
    opword  0x41820008  // beq .L_80079AEC
    bl nextSrcData
L_80079AEC:
    lbz r0, 0x0(r3)
    li r4, 0x8
    addi r3, r3, 0x1
L_80079AF8:
    rlwinm. r5, r0, 0, 24, 24
    opword  0x41820094  // beq .L_80079B90
    opword  0x80CD8C08  // lwz r6, lbl_8053A7C8@sda21(r0)
    cmplwi r6, 0x0
    opword  0x4182005C  // beq .L_80079B64
    opword  0x80AD8C0C  // lwz r5, lbl_8053A7CC@sda21(r0)
    cmplw r5, r6
    opword  0x4180001C  // blt .L_80079B30
    lbz r5, 0x0(r3)
    addi r30, r30, 0x1
    stb r5, 0x0(r29)
    addi r29, r29, 0x1
    cmplw r29, r31
    opword  0x41820194  // beq .L_80079CC0
L_80079B30:
    opword  0x80CD8BF4  // lwz r6, lbl_8053A7B4@sda21(r0)
    lbz r7, 0x0(r3)
    addi r5, r6, 0x1
    opword  0x90AD8BF4  // stw r5, lbl_8053A7B4@sda21(r0)
    stb r7, 0x0(r6)
    opword  0x80CD8BF4  // lwz r6, lbl_8053A7B4@sda21(r0)
    opword  0x80AD8BF0  // lwz r5, lbl_8053A7B0@sda21(r0)
    cmplw r6, r5
    opword  0x4082000C  // bne .L_80079B5C
    opword  0x80AD8BEC  // lwz r5, lbl_8053A7AC@sda21(r0)
    opword  0x90AD8BF4  // stw r5, lbl_8053A7B4@sda21(r0)
L_80079B5C:
    addi r3, r3, 0x1
    opword  0x48000020  // b .L_80079B80
L_80079B64:
    lbz r5, 0x0(r3)
    addi r3, r3, 0x1
    addi r30, r30, 0x1
    stb r5, 0x0(r29)
    addi r29, r29, 0x1
    cmplw r29, r31
    opword  0x41820144  // beq .L_80079CC0
L_80079B80:
    opword  0x80AD8C0C  // lwz r5, lbl_8053A7CC@sda21(r0)
    addi r5, r5, 0x1
    opword  0x90AD8C0C  // stw r5, lbl_8053A7CC@sda21(r0)
    opword  0x48000124  // b .L_80079CB0
L_80079B90:
    opword  0x810D8C08  // lwz r8, lbl_8053A7C8@sda21(r0)
    lbz r6, 0x0(r3)
    cmplwi r8, 0x0
    lbz r9, 0x1(r3)
    srawi r5, r6, 4
    rlwimi r9, r6, 8, 20, 23
    addi r3, r3, 0x2
    opword  0x4182002C  // beq .L_80079BD8
    opword  0x80CD8BF4  // lwz r6, lbl_8053A7B4@sda21(r0)
    opword  0x80ED8BEC  // lwz r7, lbl_8053A7AC@sda21(r0)
    subf r6, r9, r6
    subi r9, r6, 0x1
    cmplw r9, r7
    opword  0x4080001C  // bge .L_80079BE0
    opword  0x80CD8BF0  // lwz r6, lbl_8053A7B0@sda21(r0)
    subf r6, r7, r6
    add r9, r9, r6
    opword  0x4800000C  // b .L_80079BE0
L_80079BD8:
    subf r6, r9, r29
    subi r9, r6, 0x1
L_80079BE0:
    cmpwi r5, 0x0
    opword  0x40820014  // bne .L_80079BF8
    lbz r5, 0x0(r3)
    addi r3, r3, 0x1
    addi r5, r5, 0x12
    opword  0x48000008  // b .L_80079BFC
L_80079BF8:
    addi r5, r5, 0x2
L_80079BFC:
    cmplwi r8, 0x0
    opword  0x41820080  // beq .L_80079C80
L_80079C04:
    opword  0x80ED8C0C  // lwz r7, lbl_8053A7CC@sda21(r0)
    opword  0x80CD8C08  // lwz r6, lbl_8053A7C8@sda21(r0)
    cmplw r7, r6
    opword  0x4180001C  // blt .L_80079C2C
    lbz r6, 0x0(r9)
    addi r30, r30, 0x1
    stb r6, 0x0(r29)
    addi r29, r29, 0x1
    cmplw r29, r31
    opword  0x41820088  // beq .L_80079CB0
L_80079C2C:
    opword  0x80ED8BF4  // lwz r7, lbl_8053A7B4@sda21(r0)
    lbz r8, 0x0(r9)
    addi r6, r7, 0x1
    opword  0x90CD8BF4  // stw r6, lbl_8053A7B4@sda21(r0)
    stb r8, 0x0(r7)
    opword  0x80CD8BF4  // lwz r6, lbl_8053A7B4@sda21(r0)
    opword  0x80ED8BF0  // lwz r7, lbl_8053A7B0@sda21(r0)
    cmplw r6, r7
    opword  0x4082000C  // bne .L_80079C58
    opword  0x80CD8BEC  // lwz r6, lbl_8053A7AC@sda21(r0)
    opword  0x90CD8BF4  // stw r6, lbl_8053A7B4@sda21(r0)
L_80079C58:
    addi r9, r9, 0x1
    cmplw r9, r7
    opword  0x40820008  // bne .L_80079C68
    opword  0x812D8BEC  // lwz r9, lbl_8053A7AC@sda21(r0)
L_80079C68:
    opword  0x80CD8C0C  // lwz r6, lbl_8053A7CC@sda21(r0)
    subic. r5, r5, 0x1
    addi r6, r6, 0x1
    opword  0x90CD8C0C  // stw r6, lbl_8053A7CC@sda21(r0)
    opword  0x4082FF8C  // bne .L_80079C04
    opword  0x48000034  // b .L_80079CB0
L_80079C80:
    lbz r6, 0x0(r9)
    addi r30, r30, 0x1
    stb r6, 0x0(r29)
    addi r29, r29, 0x1
    cmplw r29, r31
    opword  0x4182001C  // beq .L_80079CB0
    opword  0x80CD8C0C  // lwz r6, lbl_8053A7CC@sda21(r0)
    subic. r5, r5, 0x1
    addi r9, r9, 0x1
    addi r6, r6, 0x1
    opword  0x90CD8C0C  // stw r6, lbl_8053A7CC@sda21(r0)
    opword  0x4082FFD4  // bne .L_80079C80
L_80079CB0:
    cmplw r29, r31
    slwi r0, r0, 1
    subi r4, r4, 0x1
    opword  0x4180FE0C  // blt .L_80079AC8
L_80079CC0:
    opword  0x808D8C18  // lwz r4, lbl_8053A7D8@sda21(r0)
    li r3, 0x0
    stw r30, 0x0(r4)
L_80079CCC:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

/**
 * static u8* firstSrcData() - fills/returns the SZS scratch buffer's first
 * chunk via JKRAramPcs (verified per cbr_decomp's JKRAram.cpp, address
 * 0x80018744 there).
 */
ASM u8* firstSrcData(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    stw r30, 0x8(r1)
    opword  0x808D8BE8  // lwz r4, lbl_8053A7A8@sda21(r0)
    opword  0x806D8BE4  // lwz r3, lbl_8053A7A4@sda21(r0)
    subi r0, r4, 0x19
    opword  0x80AD8BFC  // lwz r5, lbl_8053A7BC@sda21(r0)
    subf r4, r3, r4
    opword  0x900D8C00  // stw r0, lbl_8053A7C0@sda21(r0)
    cmplw r5, r4
    mr r30, r3
    mr r31, r4
    opword  0x40800008  // bge .L_80079D28
    mr r31, r5
L_80079D28:
    opword  0x80ED8C04  // lwz r7, lbl_8053A7C4@sda21(r0)
    addi r0, r31, 0x1f
    opword  0x808D8BF8  // lwz r4, lbl_8053A7B8@sda21(r0)
    mr r5, r30
    clrrwi r6, r0, 5
    li r3, 0x1
    add r4, r7, r4
    li r7, 0x0
    bl fn_8007B268
    opword  0x800D8BFC  // lwz r0, lbl_8053A7BC@sda21(r0)
    opword  0x806D8BF8  // lwz r3, lbl_8053A7B8@sda21(r0)
    subf. r0, r31, r0
    add r3, r3, r31
    opword  0x906D8BF8  // stw r3, lbl_8053A7B8@sda21(r0)
    opword  0x900D8BFC  // stw r0, lbl_8053A7BC@sda21(r0)
    opword  0x4082000C  // bne .L_80079D70
    add r0, r30, r31
    opword  0x900D8C00  // stw r0, lbl_8053A7C0@sda21(r0)
L_80079D70:
    lwz r0, 0x14(r1)
    mr r3, r30
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

/**
 * static u8* nextSrcData(u8* current) - refills the SZS scratch buffer once
 * the decompressor runs past its current chunk, wrapping/copying leftover
 * bytes. Not directly address-documented in cbr_decomp's copy of
 * JKRAram.cpp, but unambiguously identified: it's the only function
 * decompSZS_subroutine calls besides the already-verified
 * JKRDecompressFromAramToMainRam/firstSrcData/decompSZS_subroutine trio,
 * matching cbr's declared-but-uncommented `static u8* nextSrcData(u8*)`.
 */
ASM u8* nextSrcData(register u8* current)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    mr r4, r3
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    stw r29, 0x14(r1)
    stw r28, 0x10(r1)
    opword  0x800D8BE8  // lwz r0, lbl_8053A7A8@sda21(r0)
    subf r29, r4, r0
    clrlwi. r5, r29, 27
    opword  0x41820014  // beq .L_80079DCC
    opword  0x806D8BE4  // lwz r3, lbl_8053A7A4@sda21(r0)
    addi r0, r3, 0x20
    subf r30, r5, r0
    opword  0x48000008  // b .L_80079DD0
L_80079DCC:
    opword  0x83CD8BE4  // lwz r30, lbl_8053A7A4@sda21(r0)
L_80079DD0:
    mr r3, r30
    mr r5, r29
    bl memcpy
    opword  0x800D8BE8  // lwz r0, lbl_8053A7A8@sda21(r0)
    add r31, r30, r29
    opword  0x806D8BFC  // lwz r3, lbl_8053A7BC@sda21(r0)
    subf r28, r31, r0
    cmplw r28, r3
    opword  0x40810008  // ble .L_80079DF8
    mr r28, r3
L_80079DF8:
    opword  0x80ED8C04  // lwz r7, lbl_8053A7C4@sda21(r0)
    addi r0, r28, 0x1f
    opword  0x808D8BF8  // lwz r4, lbl_8053A7B8@sda21(r0)
    add r5, r30, r29
    clrrwi r6, r0, 5
    li r3, 0x1
    add r4, r7, r4
    li r7, 0x0
    bl fn_8007B268
    opword  0x800D8BFC  // lwz r0, lbl_8053A7BC@sda21(r0)
    opword  0x806D8BF8  // lwz r3, lbl_8053A7B8@sda21(r0)
    subf. r0, r28, r0
    add r3, r3, r28
    opword  0x906D8BF8  // stw r3, lbl_8053A7B8@sda21(r0)
    opword  0x900D8BFC  // stw r0, lbl_8053A7BC@sda21(r0)
    opword  0x4082000C  // bne .L_80079E40
    add r0, r31, r28
    opword  0x900D8C00  // stw r0, lbl_8053A7C0@sda21(r0)
L_80079E40:
    lwz r0, 0x24(r1)
    mr r3, r30
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    lwz r28, 0x10(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

