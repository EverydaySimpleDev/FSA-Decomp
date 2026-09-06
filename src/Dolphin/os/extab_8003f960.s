.text
.balign 4
.global ClearArena
.global InquiryCallback
.global OSInit
.global OSExceptionInit
.global __OSDBIntegrator
.global fn_80040140
.global __OSSetExceptionHandler
.global __OSGetExceptionHandler
.global OSExceptionVector
.global OSDefaultExceptionHandler
.global __OSPSInit
.global __OSDBINTSTART
.global __OSDBINTEND
.global __OSDBJUMPEND
.global __OSEVStart
.global __DBVECTOR
.global __OSEVSetNumber
.global __OSEVEnd

ClearArena:
    mflr 0
    stw 0, 0x4(1)
    stwu 1, -0x10(1)
    stw 31, 0xc(1)
    bl OSGetResetCode
    addis 0, 3, 0x8000
    cmplwi 0, 0x0
    .4byte 0x41820034 # beq .L_8003F9B0
    li 0, 0x0
    .4byte 0x900D883C # stw r0, __OSSavedRegionStart@sda21(r0)
    .4byte 0x900D8838 # stw r0, __OSSavedRegionEnd@sda21(r0)
    bl OSGetArenaHi
    mr 31, 3
    bl OSGetArenaLo
    subf 31, 3, 31
    bl OSGetArenaLo
    mr 5, 31
    li 4, 0x0
    bl memset
    .4byte 0x480000C8 # b .L_8003FA74
L_8003F9B0:
    lis 4, 0x8130
    lwz 3, -0x2010(4)
    lwz 0, -0x2014(4)
    cmplwi 3, 0x0
    .4byte 0x906D883C # stw r3, __OSSavedRegionStart@sda21(r0)
    .4byte 0x900D8838 # stw r0, __OSSavedRegionEnd@sda21(r0)
    .4byte 0x40820028 # bne .L_8003F9F0
    bl OSGetArenaHi
    mr 31, 3
    bl OSGetArenaLo
    subf 31, 3, 31
    bl OSGetArenaLo
    mr 5, 31
    li 4, 0x0
    bl memset
    .4byte 0x48000088 # b .L_8003FA74
L_8003F9F0:
    bl OSGetArenaLo
    .4byte 0x800D883C # lwz r0, __OSSavedRegionStart@sda21(r0)
    cmplw 3, 0
    .4byte 0x40800078 # bge .L_8003FA74
    bl OSGetArenaHi
    .4byte 0x800D883C # lwz r0, __OSSavedRegionStart@sda21(r0)
    cmplw 3, 0
    .4byte 0x41810028 # bgt .L_8003FA34
    bl OSGetArenaHi
    mr 31, 3
    bl OSGetArenaLo
    subf 31, 3, 31
    bl OSGetArenaLo
    mr 5, 31
    li 4, 0x0
    bl memset
    .4byte 0x48000044 # b .L_8003FA74
L_8003FA34:
    bl OSGetArenaLo
    .4byte 0x800D883C # lwz r0, __OSSavedRegionStart@sda21(r0)
    subf 31, 3, 0
    bl OSGetArenaLo
    mr 5, 31
    li 4, 0x0
    bl memset
    bl OSGetArenaHi
    .4byte 0x83ED8838 # lwz r31, __OSSavedRegionEnd@sda21(r0)
    cmplw 3, 31
    .4byte 0x40810018 # ble .L_8003FA74
    bl OSGetArenaHi
    subf 5, 31, 3
    mr 3, 31
    li 4, 0x0
    bl memset
L_8003FA74:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    addi 1, 1, 0x10
    mtlr 0
    blr

InquiryCallback:
    lwz 0, 0xc(4)
    cmpwi 0, 0x0
    .4byte 0x41820008 # beq .L_8003FA98
    .4byte 0x48000020 # b .L_8003FAB4
L_8003FA98:
    lis 3, DriveInfo_804B4D00@ha
    addi 3, 3, DriveInfo_804B4D00@l
    lhz 0, 0x2(3)
    lis 3, 0x8000
    ori 0, 0, 0x8000
    sth 0, 0x30e6(3)
    .4byte 0x48000010 # b .L_8003FAC0
L_8003FAB4:
    li 0, 0x1
    lis 3, 0x8000
    sth 0, 0x30e6(3)
L_8003FAC0:
    blr

OSInit:
    mflr 0
    stw 0, 0x4(1)
    stwu 1, -0x18(1)
    stw 31, 0x14(1)
    stw 30, 0x10(1)
    stw 29, 0xc(1)
    .4byte 0x800D8830 # lwz r0, AreWeInitialized_8053A3F0@sda21(r0)
    lis 3, DriveInfo_804B4D00@ha
    addi 30, 3, DriveInfo_804B4D00@l
    cmpwi 0, 0x0
    lis 3, "@1_804955F8"@ha
    addi 31, 3, "@1_804955F8"@l
    .4byte 0x4082038C # bne .L_8003FE80
    li 0, 0x1
    .4byte 0x900D8830 # stw r0, AreWeInitialized_8053A3F0@sda21(r0)
    bl __OSGetSystemTime
    .4byte 0x908D884C # stw r4, __OSStartTime+0x4@sda21(r0)
    .4byte 0x906D8848 # stw r3, __OSStartTime@sda21(r0)
    bl OSDisableInterrupts
    li 3, 0x0
    bl PPCMtmmcr0
    li 3, 0x0
    bl PPCMtmmcr1
    li 3, 0x0
    bl PPCMtpmc1
    li 3, 0x0
    bl PPCMtpmc2
    li 3, 0x0
    bl PPCMtpmc3
    li 3, 0x0
    bl PPCMtpmc4
    bl PPCDisableSpeculation
    bl PPCSetFpNonIEEEMode
    li 0, 0x0
    lis 4, 0x8000
    .4byte 0x900D8814 # stw r0, BI2DebugFlag_8053A3D4@sda21(r0)
    .4byte 0x908D8810 # stw r4, BootInfo@sda21(r0)
    .4byte 0x900D893C # stw r0, __DVDLongFileNameFlag@sda21(r0)
    lwz 3, 0xf4(4)
    cmplwi 3, 0x0
    .4byte 0x41820034 # beq .L_8003FB98
    addi 0, 3, 0xc
    .4byte 0x900D8814 # stw r0, BI2DebugFlag_8053A3D4@sda21(r0)
    lwz 0, 0x24(3)
    .4byte 0x806D8814 # lwz r3, BI2DebugFlag_8053A3D4@sda21(r0)
    .4byte 0x900D8A30 # stw r0, __PADSpec@sda21(r0)
    lwz 0, 0x0(3)
    clrlwi 0, 0, 24
    stb 0, 0x30e8(4)
    .4byte 0x800D8A30 # lwz r0, __PADSpec@sda21(r0)
    clrlwi 0, 0, 24
    stb 0, 0x30e9(4)
    .4byte 0x48000028 # b .L_8003FBBC
L_8003FB98:
    lwz 0, 0x34(4)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_8003FBBC
    lbz 3, 0x30e8(4)
    .4byte 0x380D8818 # li r0, BI2DebugFlagHolder_8053A3D8@sda21
    .4byte 0x906D8818 # stw r3, BI2DebugFlagHolder_8053A3D8@sda21(r0)
    .4byte 0x900D8814 # stw r0, BI2DebugFlag_8053A3D4@sda21(r0)
    lbz 0, 0x30e9(4)
    .4byte 0x900D8A30 # stw r0, __PADSpec@sda21(r0)
L_8003FBBC:
    li 0, 0x1
    .4byte 0x806D8810 # lwz r3, BootInfo@sda21(r0)
    .4byte 0x900D893C # stw r0, __DVDLongFileNameFlag@sda21(r0)
    lwz 3, 0x30(3)
    cmplwi 3, 0x0
    .4byte 0x40820010 # bne .L_8003FBE0
    lis 3, __ArenaLo@ha
    addi 3, 3, __ArenaLo@l
    .4byte 0x48000004 # b .L_8003FBE0
L_8003FBE0:
    bl OSSetArenaLo
    .4byte 0x806D8810 # lwz r3, BootInfo@sda21(r0)
    lwz 0, 0x30(3)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_8003FC20
    .4byte 0x806D8814 # lwz r3, BI2DebugFlag_8053A3D4@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_8003FC20
    lwz 0, 0x0(3)
    cmplwi 0, 0x2
    .4byte 0x40800018 # bge .L_8003FC20
    lis 3, _stack_addr@ha
    addi 3, 3, _stack_addr@l
    addi 0, 3, 0x1f
    clrrwi 3, 0, 5
    bl OSSetArenaLo
L_8003FC20:
    .4byte 0x806D8810 # lwz r3, BootInfo@sda21(r0)
    lwz 3, 0x34(3)
    cmplwi 3, 0x0
    .4byte 0x40820010 # bne .L_8003FC3C
    lis 3, __ArenaHi@ha
    addi 3, 3, __ArenaHi@l
    .4byte 0x48000004 # b .L_8003FC3C
L_8003FC3C:
    bl OSSetArenaHi
    bl OSExceptionInit
    bl __OSInitSystemCall
    bl OSInitAlarm
    bl __OSModuleInit
    bl __OSInterruptInit
    lis 3, __OSResetSWInterruptHandler@ha
    addi 4, 3, __OSResetSWInterruptHandler@l
    li 3, 0x16
    bl __OSSetInterruptHandler
    bl __OSContextInit
    bl __OSCacheInit
    bl EXIInit
    bl SIInit
    bl __OSInitSram
    bl __OSThreadInit
    bl __OSInitAudioSystem
    bl PPCMfhid2
    rlwinm 3, 3, 0, 2, 0
    bl PPCMthid2
    .4byte 0x800D8840 # lwz r0, __OSInIPL@sda21(r0)
    cmpwi 0, 0x0
    .4byte 0x40820008 # bne .L_8003FC9C
    bl __OSInitMemoryProtection
L_8003FC9C:
    addi 3, 31, 0x44
    crclr 6
    bl OSReport
    addi 3, 31, 0x54
    crclr 6
    addi 4, 31, 0x6c
    addi 5, 31, 0x78
    bl OSReport
    addi 3, 31, 0x84
    crclr 6
    bl OSReport
    .4byte 0x806D8810 # lwz r3, BootInfo@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8003FCE0
    lwz 4, 0x2c(3)
    cmplwi 4, 0x0
    .4byte 0x40820010 # bne .L_8003FCEC
L_8003FCE0:
    lis 3, 0x1000
    addi 4, 3, 0x2
    .4byte 0x48000004 # b .L_8003FCEC
L_8003FCEC:
    clrrwi 3, 4, 28
    lis 0, 0x1000
    cmpw 3, 0
    .4byte 0x41820034 # beq .L_8003FD2C
    .4byte 0x40800010 # bge .L_8003FD0C
    cmpwi 3, 0x0
    .4byte 0x41820018 # beq .L_8003FD1C
    .4byte 0x480000B8 # b .L_8003FDC0
L_8003FD0C:
    lis 0, 0x2000
    cmpw 3, 0
    .4byte 0x41820018 # beq .L_8003FD2C
    .4byte 0x480000A8 # b .L_8003FDC0
L_8003FD1C:
    crclr 6
    addi 3, 31, 0x94
    bl OSReport
    .4byte 0x480000A4 # b .L_8003FDCC
L_8003FD2C:
    lis 3, 0x1000
    clrlwi 5, 4, 4
    addi 0, 3, 0x2
    cmpw 5, 0
    .4byte 0x41820048 # beq .L_8003FD84
    .4byte 0x40800014 # bge .L_8003FD54
    cmpw 5, 3
    .4byte 0x4182001C # beq .L_8003FD64
    .4byte 0x40800028 # bge .L_8003FD74
    .4byte 0x48000054 # b .L_8003FDA4
L_8003FD54:
    addi 0, 3, 0x4
    cmpw 5, 0
    .4byte 0x40800048 # bge .L_8003FDA4
    .4byte 0x48000034 # b .L_8003FD94
L_8003FD64:
    addi 3, 31, 0xa0
    crclr 6
    bl OSReport
    .4byte 0x4800005C # b .L_8003FDCC
L_8003FD74:
    addi 3, 31, 0xb0
    crclr 6
    bl OSReport
    .4byte 0x4800004C # b .L_8003FDCC
L_8003FD84:
    addi 3, 31, 0xc0
    crclr 6
    bl OSReport
    .4byte 0x4800003C # b .L_8003FDCC
L_8003FD94:
    addi 3, 31, 0xd0
    crclr 6
    bl OSReport
    .4byte 0x4800002C # b .L_8003FDCC
L_8003FDA4:
    clrlwi 6, 4, 4
    crclr 6
    mr 5, 4
    addi 3, 31, 0xe0
    subi 4, 6, 0x3
    bl OSReport
    .4byte 0x48000010 # b .L_8003FDCC
L_8003FDC0:
    crclr 6
    .4byte 0x386D8034 # li r3, "@97_80539BF4"@sda21
    bl OSReport
L_8003FDCC:
    .4byte 0x808D8810 # lwz r4, BootInfo@sda21(r0)
    addi 3, 31, 0xfc
    crclr 6
    lwz 0, 0x28(4)
    srwi 4, 0, 20
    bl OSReport
    bl OSGetArenaHi
    mr 29, 3
    bl OSGetArenaLo
    mr 4, 3
    crclr 6
    mr 5, 29
    addi 3, 31, 0x10c
    bl OSReport
    .4byte 0x806D8030 # lwz r3, __OSVersion@sda21(r0)
    bl OSRegisterVersion
    .4byte 0x806D8814 # lwz r3, BI2DebugFlag_8053A3D4@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x41820014 # beq .L_8003FE28
    lwz 0, 0x0(3)
    cmplwi 0, 0x2
    .4byte 0x41800008 # blt .L_8003FE28
    bl EnableMetroTRKInterrupts
L_8003FE28:
    bl ClearArena
    bl OSEnableInterrupts
    .4byte 0x800D8840 # lwz r0, __OSInIPL@sda21(r0)
    cmpwi 0, 0x0
    .4byte 0x40820048 # bne .L_8003FE80
    bl DVDInit
    .4byte 0x800D881C # lwz r0, __OSIsGcam@sda21(r0)
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_8003FE60
    lis 3, 0x1
    subi 0, 3, 0x7000
    lis 3, 0x8000
    sth 0, 0x30e6(3)
    .4byte 0x48000024 # b .L_8003FE80
L_8003FE60:
    mr 3, 30
    li 4, 0x20
    bl DCInvalidateRange
    lis 3, InquiryCallback@ha
    addi 5, 3, InquiryCallback@l
    mr 4, 30
    addi 3, 30, 0x20
    bl DVDInquiryAsync
L_8003FE80:
    lwz 0, 0x1c(1)
    lwz 31, 0x14(1)
    lwz 30, 0x10(1)
    lwz 29, 0xc(1)
    addi 1, 1, 0x18
    mtlr 0
    blr

OSExceptionInit:
    mflr 0
    stw 0, 0x4(1)
    stwu 1, -0x38(1)
    stmw 20, 0x8(1)
    lis 3, 0x8000
    lwz 0, 0x60(3)
    lis 4, __OSEVSetNumber@ha
    addi 30, 4, __OSEVSetNumber@l
    lis 5, __OSEVStart@ha
    lwz 25, 0x0(30)
    lis 4, __OSEVEnd@ha
    addi 5, 5, __OSEVStart@l
    addi 4, 4, __OSEVEnd@l
    lis 6, "@1_804955F8"@ha
    cmplwi 0, 0x0
    mr 24, 5
    addi 29, 6, "@1_804955F8"@l
    subf 23, 5, 4
    addi 20, 3, 0x60
    .4byte 0x4082004C # bne .L_8003FF34
    addi 3, 29, 0x160
    crclr 6
    bl DBPrintf
    lis 4, __OSDBINTSTART@ha
    lis 3, __OSDBINTEND@ha
    addi 0, 3, __OSDBINTEND@l
    addi 4, 4, __OSDBINTSTART@l
    subf 21, 4, 0
    mr 3, 20
    mr 5, 21
    bl memcpy
    mr 3, 20
    mr 4, 21
    bl DCFlushRangeNoSync
    sync
    mr 3, 20
    mr 4, 21
    bl ICInvalidateRange
L_8003FF34:
    lis 4, __OSDBINTEND@ha
    lis 3, __OSDBJUMPEND@ha
    addi 31, 4, __OSDBINTEND@l
    addi 0, 3, __OSDBJUMPEND@l
    addi 28, 29, 0x124
    subf 27, 31, 0
    li 26, 0x0
    .4byte 0x48000004 # b .L_8003FF54
L_8003FF54:
    lis 3, __DBVECTOR@ha
    addi 21, 3, __DBVECTOR@l
    lis 22, 0x6000
    .4byte 0x48000004 # b .L_8003FF64
L_8003FF64:
    .4byte 0x48000148 # b .L_800400AC
L_8003FF68:
    .4byte 0x806D8814 # lwz r3, BI2DebugFlag_8053A3D4@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x41820034 # beq .L_8003FFA4
    lwz 0, 0x0(3)
    cmplwi 0, 0x2
    .4byte 0x41800028 # blt .L_8003FFA4
    mr 3, 26
    bl __DBIsExceptionMarked
    cmpwi 3, 0x0
    .4byte 0x41820018 # beq .L_8003FFA4
    addi 3, 29, 0x17c
    crclr 6
    clrlwi 4, 26, 24
    bl DBPrintf
    .4byte 0x48000104 # b .L_800400A4
L_8003FFA4:
    clrlwi 20, 26, 24
    or 0, 25, 20
    stw 0, 0x0(30)
    mr 3, 26
    bl __DBIsExceptionMarked
    cmpwi 3, 0x0
    .4byte 0x41820028 # beq .L_8003FFE4
    mr 4, 20
    crclr 6
    addi 3, 29, 0x1ac
    bl DBPrintf
    mr 3, 21
    mr 4, 31
    mr 5, 27
    bl memcpy
    .4byte 0x48000090 # b .L_80040070
L_8003FFE4:
    mr 4, 21
    .4byte 0x48000004 # b .L_8003FFEC
L_8003FFEC:
    cmplwi 27, 0x0
    addi 3, 27, 0x3
    srwi 3, 3, 2
    .4byte 0x40810078 # ble .L_80040070
    srwi 0, 3, 3
    cmplwi 0, 0x0
    mtctr 0
    .4byte 0x41820054 # beq .L_8004005C
    .4byte 0x48000004 # b .L_80040010
L_80040010:
    stw 22, 0x0(4)
    addi 4, 4, 0x4
    stw 22, 0x0(4)
    addi 4, 4, 0x4
    stw 22, 0x0(4)
    addi 4, 4, 0x4
    stw 22, 0x0(4)
    addi 4, 4, 0x4
    stw 22, 0x0(4)
    addi 4, 4, 0x4
    stw 22, 0x0(4)
    addi 4, 4, 0x4
    stw 22, 0x0(4)
    addi 4, 4, 0x4
    stw 22, 0x0(4)
    addi 4, 4, 0x4
    .4byte 0x4200FFC0 # bdnz .L_80040010
    andi. 3, 3, 0x7
    .4byte 0x41820018 # beq .L_80040070
L_8004005C:
    mtctr 3
    .4byte 0x48000004 # b .L_80040064
L_80040064:
    stw 22, 0x0(4)
    addi 4, 4, 0x4
    .4byte 0x4200FFF8 # bdnz .L_80040064
L_80040070:
    lwz 3, 0x0(28)
    mr 4, 24
    mr 5, 23
    addis 20, 3, 0x8000
    mr 3, 20
    bl memcpy
    mr 3, 20
    mr 4, 23
    bl DCFlushRangeNoSync
    sync
    mr 3, 20
    mr 4, 23
    bl ICInvalidateRange
L_800400A4:
    addi 28, 28, 0x4
    addi 26, 26, 0x1
L_800400AC:
    clrlwi 0, 26, 24
    cmplwi 0, 0xf
    .4byte 0x4180FEB4 # blt .L_8003FF68
    lis 3, 0x8000
    addi 0, 3, 0x3000
    .4byte 0x900D8834 # stw r0, OSExceptionTable_8053A3F4@sda21(r0)
    li 20, 0x0
    .4byte 0x48000004 # b .L_800400CC
L_800400CC:
    lis 3, OSDefaultExceptionHandler@ha
    addi 23, 3, OSDefaultExceptionHandler@l
    .4byte 0x48000004 # b .L_800400D8
L_800400D8:
    .4byte 0x48000014 # b .L_800400EC
L_800400DC:
    mr 3, 20
    mr 4, 23
    bl __OSSetExceptionHandler
    addi 20, 20, 0x1
L_800400EC:
    clrlwi 0, 20, 24
    cmplwi 0, 0xf
    .4byte 0x4180FFE8 # blt .L_800400DC
    stw 25, 0x0(30)
    addi 3, 29, 0x1dc
    crclr 6
    bl DBPrintf
    lmw 20, 0x8(1)
    lwz 0, 0x3c(1)
    addi 1, 1, 0x38
    mtlr 0
    blr

__OSDBIntegrator:
__OSDBINTSTART:
    li 5, 0x40
    mflr 3
    stw 3, 0xc(5)
    lwz 3, 0x8(5)
    oris 3, 3, 0x8000
    mtlr 3
    li 3, 0x30
    mtmsr 3
    blr

fn_80040140:
__OSDBINTEND:
    bla 0x60

# __OSSetExceptionHandler(exception, handler) / __OSGetExceptionHandler(exception)
# NOTE: attempted real-C++ promotion (continuation session). CORRECTED
# a real misunderstanding first: `OSExceptionTable` is NOT a fixed-size
# array - confirmed via zeldaret/tww's real src/dolphin/os/OS.c, it's a
# genuine global POINTER variable (`OSExceptionHandler* OSExceptionTable;`,
# initialized at runtime to a fixed physical address via
# `OSPhysicalToCached(OS_EXCEPTIONTABLE_ADDR)`) - matching dtk's own
# `size:0x4` exactly (a pointer, not a multi-entry table) and explaining
# retail's `lwz r3,-30668(r13)` (loading the POINTER's value from small
# data, not indexing into inline table storage). Declaring it correctly
# as `OSExceptionHandlerFn* OSExceptionTable;` got `__OSGetExceptionHandler`
# to fully match retail's STRUCTURE (lwz-pointer, then index, then lwzx) -
# but one persistent 4-byte gap remains in BOTH functions: retail computes
# the byte-index-to-word-offset conversion as 2 SEPARATE instructions
# (`clrlwi` mask-to-u8, then `slwi` shift-by-2), while every phrasing
# tried (direct indexing, explicit u32 intermediate, declare-then-assign
# split, pointer arithmetic - 5 attempts) fuses them into ONE `rlwinm`
# instead - a stubborn -O4 instruction-fusion choice not reachable from
# source, matching this session's other "MWCC's own scheduler decides"
# walls. `__OSSetExceptionHandler` ADDITIONALLY hits the confirmed
# `lwzx`/`stwx` wall (retail computes the table-entry address ONCE via
# `add` then does 2 SEPARATE zero-offset `lwz`/`stw`; natural C++ always
# re-fuses each access into its own indexed instruction, even through an
# explicit intermediate pointer variable). Left as raw asm - the pointer-
# vs-array type correction is real, durable understanding regardless.
__OSSetExceptionHandler:
__OSDBJUMPEND:
    clrlwi 0, 3, 24
    .4byte 0x806D8834 # lwz r3, OSExceptionTable_8053A3F4@sda21(r0)
    slwi 0, 0, 2
    add 5, 3, 0
    lwz 3, 0x0(5)
    stw 4, 0x0(5)
    blr

__OSGetExceptionHandler:
    clrlwi 0, 3, 24
    .4byte 0x806D8834 # lwz r3, OSExceptionTable_8053A3F4@sda21(r0)
    slwi 0, 0, 2
    lwzx 3, 3, 0
    blr

OSExceptionVector:
__OSEVStart:
    mtsprg 0, 4
    lwz 4, 0xc0(0)
    stw 3, 0xc(4)
    mfsprg 3, 0
    stw 3, 0x10(4)
    stw 5, 0x14(4)
    lhz 3, 0x1a2(4)
    ori 3, 3, 0x2
    sth 3, 0x1a2(4)
    mfcr 3
    stw 3, 0x80(4)
    mflr 3
    stw 3, 0x84(4)
    mfctr 3
    stw 3, 0x88(4)
    mfxer 3
    stw 3, 0x8c(4)
    mfsrr0 3
    stw 3, 0x198(4)
    mfsrr1 3
    stw 3, 0x19c(4)
    mr 5, 3
__DBVECTOR:
    nop
    mfmsr 3
    ori 3, 3, 0x30
    mtsrr1 3
__OSEVSetNumber:
    li 3, 0x0
    lwz 4, 0xd4(0)
    rlwinm. 5, 5, 0, 30, 30
    .4byte 0x40820014 # bne .L_800401FC
    lis 5, OSDefaultExceptionHandler@ha
    addi 5, 5, OSDefaultExceptionHandler@l
    mtsrr0 5
    rfi
L_800401FC:
    clrlslwi 5, 3, 24, 2
    lwz 5, 0x3000(5)
    mtsrr0 5
    rfi
__OSEVEnd:
    nop

OSDefaultExceptionHandler:
    stw 0, 0x0(4)
    stw 1, 0x4(4)
    stw 2, 0x8(4)
    stmw 6, 0x18(4)
    mfspr 0, 913
    stw 0, 0x1a8(4)
    mfspr 0, 914
    stw 0, 0x1ac(4)
    mfspr 0, 915
    stw 0, 0x1b0(4)
    mfspr 0, 916
    stw 0, 0x1b4(4)
    mfspr 0, 917
    stw 0, 0x1b8(4)
    mfspr 0, 918
    stw 0, 0x1bc(4)
    mfspr 0, 919
    stw 0, 0x1c0(4)
    mfdsisr 5
    mfdar 6
    stwu 1, -0x8(1)
    b __OSUnhandledException

__OSPSInit:
    mflr 0
    stw 0, 0x4(1)
    stwu 1, -0x8(1)
    bl PPCMfhid2
    oris 3, 3, 0xa000
    bl PPCMthid2
    bl ICFlashInvalidate
    sync
    li 3, 0x0
    mtspr 912, 3
    mtspr 913, 3
    mtspr 914, 3
    mtspr 915, 3
    mtspr 916, 3
    mtspr 917, 3
    mtspr 918, 3
    mtspr 919, 3
    lwz 0, 0xc(1)
    addi 1, 1, 0x8
    mtlr 0
    blr

