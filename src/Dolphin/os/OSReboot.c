#include "Dolphin/os.h"
#include "Dolphin/ai.h"

extern void* SaveStart;
extern void* SaveEnd;
extern BOOL Prepared;

typedef struct _ApploaderHeader {
	char date[16];  // _00
	u32 entry;      // _10
	u32 size;       // _14
	u32 rebootSize; // _18
	u32 reserved2;  // _1C
} ApploaderHeader;

extern ApploaderHeader Header;

extern int DVDSetAutoInvalidation(int newValue);
extern void DVDResume(void);
extern void __DVDPrepareResetAsync(DVDCBCallback callback);
extern BOOL DVDCheckDisk(void);
extern void __OSDoHotReset(s32 code);
extern DVDDiskID* DVDGetCurrentDiskID(void);
extern void AISetStreamVolLeft(u8 volume);
extern void AISetStreamVolRight(u8 volume);
extern BOOL DVDCancelStreamAsync(DVDCommandBlock* block, DVDCBCallback callback);
extern s32 DVDGetCommandBlockStatus(const DVDCommandBlock* block);
extern void AISetStreamPlayState(u32 state);
extern BOOL DVDReadAbsAsyncPrio(DVDCommandBlock* block, void* addr, s32 length, s32 offset, DVDCBCallback callback, s32 prio);

//8004394C
ASM static void Run(register u32 addr)
{
    nofralloc
    sync
    isync
    mtlr    addr
    blr
}

//8004395C
ASM static void Callback(void)
{
    nofralloc
    li      r0, 0x1
    stw     r0, Prepared
    blr
}

//80043968
ASM void __OSReboot(register u32 resetCode, register u32 bootDol)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x380(r1)
    stmw    r26, 0x368(r1)
    lis     r3, Header@ha
    addi    r30, r3, Header@l
    bl      OSDisableInterrupts
    lwz     r5, SaveStart
    lis     r4, 0x8130
    lwz     r0, SaveEnd
    li      r27, 0x0
    lis     r31, 0x8180
    li      r6, 0x1
    stw     r27, -0x4(r31)
    lis     r26, 0x8000
    stw     r27, -0x8(r31)
    addi    r3, r1, 0xa0
    stb     r6, 0x30e2(r26)
    stw     r5, -0x2010(r4)
    stw     r0, -0x2014(r4)
    bl      OSClearContext
    addi    r3, r1, 0xa0
    bl      OSSetCurrentContext
    bl      DVDInit
    li      r3, 0x1
    bl      DVDSetAutoInvalidation
    bl      DVDResume
    lis     r3, Callback@ha
    stw     r27, Prepared
    addi    r3, r3, Callback@l
    bl      __DVDPrepareResetAsync
    li      r3, -0x20
    bl      __OSMaskInterrupts
    li      r3, 0x400
    bl      __OSUnmaskInterrupts
    bl      OSEnableInterrupts
    bl      OSGetTime
    mr      r29, r4
    mr      r28, r3
    opword  0x48000004
_l1_setup:
    lwz     r0, 0xf8(r26)
    xoris   r26, r27, 0x8000
    srwi    r27, r0, 2
    opword  0x48000004
_l1_setup2:
    b       _loop1_check
_loop1_body:
    bl      DVDCheckDisk
    cmpwi   r3, 0x0
    beq     _loop1_reset
    bl      OSGetTime
    subfc   r4, r29, r4
    subfe   r0, r28, r3
    xoris   r3, r0, 0x8000
    subfc   r0, r4, r27
    subfe   r3, r3, r26
    subfe   r3, r26, r26
    neg     r3, r3
    cmpwi   r3, 0x0
    beq     _loop1_check
_loop1_reset:
    lwz     r3, -0x4(r31)
    bl      __OSDoHotReset
_loop1_check:
    lwz     r0, Prepared
    cmpwi   r0, 0x1
    bne     _loop1_body
    lwz     r0, __OSIsGcam
    cmpwi   r0, 0x0
    bne     _stream_done
    bl      DVDGetCurrentDiskID
    lbz     r0, 0x8(r3)
    cmplwi  r0, 0x0
    beq     _notstreaming
    li      r0, 0x1
    b       _streamcheck
_notstreaming:
    li      r0, 0x0
_streamcheck:
    cmpwi   r0, 0x0
    beq     _stream_done
    li      r3, 0x0
    bl      AISetStreamVolLeft
    li      r3, 0x0
    bl      AISetStreamVolRight
    addi    r3, r1, 0x70
    li      r4, 0x0
    bl      DVDCancelStreamAsync
    bl      OSGetTime
    mr      r31, r4
    mr      r29, r3
    opword  0x48000004
_l2_setup:
    lis     r3, 0x8000
    lwz     r3, 0xf8(r3)
    li      r0, 0x0
    xoris   r27, r0, 0x8000
    srwi    r28, r3, 2
    lis     r26, 0x8180
    opword  0x48000004
_l2_setup2:
    b       _loop2_check
_loop2_body:
    bl      DVDCheckDisk
    cmpwi   r3, 0x0
    beq     _loop2_reset
    bl      OSGetTime
    subfc   r4, r31, r4
    subfe   r0, r29, r3
    xoris   r3, r0, 0x8000
    subfc   r0, r4, r28
    subfe   r3, r3, r27
    subfe   r3, r27, r27
    neg     r3, r3
    cmpwi   r3, 0x0
    beq     _loop2_check
_loop2_reset:
    lwz     r3, -0x4(r26)
    bl      __OSDoHotReset
_loop2_check:
    addi    r3, r1, 0x70
    bl      DVDGetCommandBlockStatus
    cmpwi   r3, 0x0
    bne     _loop2_body
    li      r3, 0x0
    bl      AISetStreamPlayState
_stream_done:
    mr      r4, r30
    addi    r3, r1, 0x40
    li      r5, 0x20
    li      r6, 0x2440
    li      r7, 0x0
    li      r8, 0x0
    bl      DVDReadAbsAsyncPrio
    bl      OSGetTime
    mr      r26, r4
    mr      r31, r3
    opword  0x48000004
_l3_setup:
    lis     r3, 0x8000
    lwz     r3, 0xf8(r3)
    li      r0, 0x0
    xoris   r28, r0, 0x8000
    srwi    r29, r3, 2
    lis     r27, 0x8180
    opword  0x48000004
_l3_setup2:
    b       _loop3_check
_loop3_body:
    bl      DVDCheckDisk
    cmpwi   r3, 0x0
    beq     _loop3_reset
    bl      OSGetTime
    subfc   r4, r26, r4
    subfe   r0, r31, r3
    xoris   r3, r0, 0x8000
    subfc   r0, r4, r29
    subfe   r3, r3, r28
    subfe   r3, r28, r28
    neg     r3, r3
    cmpwi   r3, 0x0
    beq     _loop3_check
_loop3_reset:
    lwz     r3, -0x4(r27)
    bl      __OSDoHotReset
_loop3_check:
    addi    r3, r1, 0x40
    bl      DVDGetCommandBlockStatus
    cmpwi   r3, 0x0
    bne     _loop3_body
    lwz     r5, 0x18(r30)
    addi    r3, r1, 0x10
    lwz     r6, 0x14(r30)
    lis     r4, 0x8130
    addi    r0, r5, 0x1f
    addi    r6, r6, 0x20
    clrrwi  r26, r0, 5
    mr      r5, r26
    addi    r6, r6, 0x2440
    li      r7, 0x0
    li      r8, 0x0
    bl      DVDReadAbsAsyncPrio
    bl      OSGetTime
    mr      r27, r4
    mr      r28, r3
    opword  0x48000004
_l4_setup:
    lis     r3, 0x8000
    lwz     r3, 0xf8(r3)
    li      r0, 0x0
    xoris   r31, r0, 0x8000
    srwi    r29, r3, 2
    lis     r30, 0x8180
    opword  0x48000004
_l4_setup2:
    b       _loop4_check
_loop4_body:
    bl      DVDCheckDisk
    cmpwi   r3, 0x0
    beq     _loop4_reset
    bl      OSGetTime
    subfc   r4, r27, r4
    subfe   r0, r28, r3
    xoris   r3, r0, 0x8000
    subfc   r0, r4, r29
    subfe   r3, r3, r31
    subfe   r3, r31, r31
    neg     r3, r3
    cmpwi   r3, 0x0
    beq     _loop4_check
_loop4_reset:
    lwz     r3, -0x4(r30)
    bl      __OSDoHotReset
_loop4_check:
    addi    r3, r1, 0x10
    bl      DVDGetCommandBlockStatus
    cmpwi   r3, 0x0
    bne     _loop4_body
    lis     r3, 0x8130
    mr      r4, r26
    bl      ICInvalidateRange
    bl      OSDisableInterrupts
    bl      ICFlashInvalidate
    lis     r3, 0x8130
    bl      Run
    lmw     r26, 0x368(r1)
    lwz     r0, 0x384(r1)
    addi    r1, r1, 0x380
    mtlr    r0
    blr
}

//80043CA8
ASM void OSSetSaveRegion(register void* start, register void* end)
{
    nofralloc
    stw     r3, SaveStart
    stw     r4, SaveEnd
    blr
}
