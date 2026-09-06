#include "types.h"

extern f32 AlarmForTimeout;
extern f32 BB2;
extern f32 CommandList;
extern f32 DummyCommandBlock;
extern f32 FifoObj;
extern f32 GXResetFuncInfo;
extern f32 GXTexRegionAddrTable;
extern f32 PPCHalt;
extern f32 TRK_Use_BBA;
extern f32 TRK_mainError;
extern f32 TRK_saved_exceptionID;
extern f32 WaitingQueue;
extern f32 bb2Buf;
extern f32 fn_8003A120;
extern f32 gDBCommTable;
extern f32 gTRKBigEndian;
extern f32 gTRKCPUState;
extern f32 gTRKExceptionStatus;
extern f32 gTRKInputPendingPtr;
extern f32 gTRKInterruptVectorTable;
extern f32 gTRKRestoreFlags;
extern f32 gTRKSaveState;
extern f32 gTRKState;
extern f32 jumptable_80496238;
extern f32 jumptable_804962C8;
extern f32 jumptable_804962FC;
extern f32 jumptable_804965DC;
extern f32 jumptable_80496EE0;
extern f32 jumptable_80496F48;
extern f32 jumptable_80496FB0;
extern f32 jumptable_80497018;
extern f32 jumptable_8049705C;
extern f32 jumptable_804970A0;
extern f32 jumptable_804970E4;
extern f32 jumptable_80497100;
extern f32 jumptable_80497288;
extern f32 jumptable_8049737C;
extern f32 jumptable_80497470;
extern f32 jumptable_80497858;
extern f32 jumptable_804978B4;
extern f32 jumptable_80497948;
extern f32 jumptable_804979B8;
extern f32 jumptable_804979D4;
extern f32 lbl_8045D440;
extern f32 lbl_8045D480;
extern f32 lbl_8045D4A8;
extern f32 lbl_8045D4C8;
extern f32 lbl_8045D658;
extern f32 lbl_8045D674;
extern f32 lbl_8045D698;
extern f32 lbl_8045D6CC;
extern f32 lbl_8045D6F8;
extern f32 lbl_8045D718;
extern f32 lbl_8045D874;
extern f32 lbl_8045D87C;
extern f32 lbl_8045D880;
extern f32 lbl_8045D928;
extern f32 lbl_8045D938;
extern f32 lbl_8045D960;
extern f32 lbl_8045D988;
extern f32 lbl_8045D9B0;
extern f32 lbl_8045D9D4;
extern f32 lbl_8045DAD8;
extern f32 lbl_8045DB34;
extern f32 lbl_8045DB5C;
extern f32 lbl_8045DB8C;
extern f32 lbl_8045DBA0;
extern f32 lbl_8045DBB8;
extern f32 lbl_8045DC14;
extern f32 lbl_8045DC3C;
extern f32 lbl_8045DC6C;
extern f32 lbl_8045DC80;
extern f32 lbl_80496048;
extern f32 lbl_80496110;
extern f32 lbl_80496148;
extern f32 lbl_8049617C;
extern f32 lbl_80496204;
extern f32 lbl_80496278;
extern f32 lbl_80496330;
extern f32 lbl_804963E8;
extern f32 lbl_80496800;
extern f32 lbl_804968E8;
extern f32 lbl_80496968;
extern f32 lbl_80496AF0;
extern f32 lbl_80496B00;
extern f32 lbl_80496C60;
extern f32 lbl_80496C80;
extern f32 lbl_80496CA0;
extern f32 lbl_80497158;
extern f32 lbl_804971D0;
extern f32 lbl_8049720C;
extern f32 lbl_80497248;
extern f32 lbl_804974B0;
extern f32 lbl_80497500;
extern f32 lbl_80497528;
extern f32 lbl_80497548;
extern f32 lbl_80497A0C;
extern f32 lbl_80497A20;
extern f32 lbl_804B58A0;
extern f32 lbl_804B5900;
extern f32 lbl_804B5950;
extern f32 lbl_804B5A08;
extern f32 lbl_804B5AF8;
extern f32 lbl_804B5B50;
extern f32 lbl_804B5B60;
extern f32 lbl_804B5BA0;
extern f32 lbl_804B5DC0;
extern f32 lbl_804B6410;
extern f32 lbl_804B6698;
extern f32 lbl_804B66C8;
extern f32 lbl_804B8078;
extern f32 lbl_804B8090;
extern f32 lbl_804B8604;
extern f32 lbl_804B8618;
extern f32 lbl_804B8630;
extern f32 lbl_804B8638;
extern f32 lbl_804B8E38;
extern f32 lbl_804B8E58;
extern f32 lbl_804B9358;
extern f32 lbl_8053A600;
extern f32 lbl_8053A604;

extern void AMC_IsStub(void);
extern void DCFlushRange(void);
extern void DCInvalidateRange(void);
extern void EXIAttach(void);
extern void EXIDeselect(void);
extern void EXIDetach(void);
extern void EXIDma(void);
extern void EXIGetID(void);
extern void EXIGetState(void);
extern void EXIImm(void);
extern void EXIImmEx(void);
extern void EXILock(void);
extern void EXIProbe(void);
extern void EXIProbeEx(void);
extern void EXISelect(void);
extern void EXISetExiCallback(void);
extern void EXISync(void);
extern void EXIUnlock(void);
extern void Hu_IsStub(void);
extern void ICInvalidateRange(void);
extern void OSClearContext(void);
extern void OSCreateAlarm(void);
extern void OSDisableInterrupts(void);
extern void OSEnableScheduler(void);
extern void OSGetArenaHi(void);
extern void OSGetCurrentThread(void);
extern void OSGetTick(void);
extern void OSGetTime(void);
extern void OSInitAlarm(void);
extern void OSInitThreadQueue(void);
extern void OSPanic(void);
extern void OSRegisterResetFunction(void);
extern void OSRegisterVersion(void);
extern void OSReport(void);
extern void OSRestoreInterrupts(void);
extern void OSResumeThread(void);
extern void OSSetAlarm(void);
extern void OSSetArenaHi(void);
extern void OSSetCurrentContext(void);
extern void OSSetWirelessID(void);
extern void OSSleepThread(void);
extern void OSSuspendThread(void);
extern void OSWakeupThread(void);
extern void PPCMfhid2(void);
extern void PPCMthid2(void);
extern void PPCMtwpar(void);
extern void PPCSync(void);
extern void SIGetType(void);
extern void SITransfer(void);
extern void __OSGetSystemTime(void);
extern void __OSLockSram(void);
extern void __OSLockSramEx(void);
extern void __OSMaskInterrupts(void);
extern void __OSSetInterruptHandler(void);
extern void __OSUnlockSram(void);
extern void __OSUnlockSramEx(void);
extern void __OSUnmaskInterrupts(void);
extern void __cvt_fp2unsigned(void);
extern void __div2i(void);
extern void __shl2i(void);
extern void __shr2i(void);
extern void __shr2u(void);
extern void fn_80003458(void);
extern void fn_80003488(void);
extern void fn_800053E0(void);
extern void fn_8003A040(void);
extern void fn_8004061C(void);
extern void fn_80040F90(void);
extern void fn_800425E0(void);
extern void fn_8006A36C(void);
extern void fn_8006AEE4(void);
extern void fn_800705E0(void);
extern void fn_800705E4(void);
extern void fn_800705E8(void);
extern void fn_800705F0(void);
extern void fn_800705F8(void);
extern void fn_80070600(void);
extern void fn_80070604(void);
extern void fn_80070618(void);
extern void fn_8007061C(void);
extern void fn_80070620(void);
extern void fn_80070880(void);
extern void fn_8007090C(void);
extern void fn_800709A8(void);
extern void fn_800709FC(void);
extern void fn_80073BC4(void);
extern void fn_80073BE4(void);
extern void fn_800742F8(void);
extern void fn_800743C4(void);
extern void fn_80074778(void);
extern void fn_800747F4(void);
extern void fn_80074808(void);
extern void fn_80074884(void);
extern void fn_80074920(void);
extern void fn_80074A60(void);
extern void fn_80075178(void);
extern void fn_80075508(void);
extern void memcpy(void);
extern void memset(void);
extern void strlen(void);
extern void strncat(void);
extern void strncmp(void);

ASM void __DVDInitWA(void);
ASM void __DVDInterruptHandler(void);
ASM void fn_80047578(void);
ASM void AlarmHandlerForTimeout(void);
ASM void fn_8004766C(void);
ASM void fn_8004777C(void);
ASM void fn_800477FC(void);
ASM void fn_80047A94(void);
ASM void DVDLowWaitCoverClose(void);
ASM void fn_80047B54(void);
ASM void DVDLowStopMotor(void);
ASM void fn_80047C84(void);
ASM void fn_80047D10(void);
ASM void fn_80047DAC(void);
ASM void fn_80047E44(void);
ASM void fn_80047ED0(void);
ASM void DVDLowReset(void);
ASM void fn_80048028(void);
ASM void fn_8004803C(void);
ASM void __DVDLowSetWAType(void);
ASM void fn_8004809C(void);
ASM void __DVDFSInit(void);
ASM void fn_8004810C(void);
ASM void fn_80048400(void);
ASM void fn_80048474(void);
ASM void fn_8004853C(void);
ASM void fn_80048560(void);
ASM void fn_800486C0(void);
ASM void fn_80048784(void);
ASM void fn_80048844(void);
ASM void fn_80048874(void);
ASM void fn_8004898C(void);
ASM void fn_800489B0(void);
ASM void DVDInit(void);
ASM void fn_80048A80(void);
ASM void fn_80048B14(void);
ASM void cbForStateError(void);
ASM void fn_80048C4C(void);
ASM void fn_80048C80(void);
ASM void fn_80048CA8(void);
ASM void fn_80048D5C(void);
ASM void fn_80048FF0(void);
ASM void fn_80049058(void);
ASM void fn_800490F0(void);
ASM void fn_80049118(void);
ASM void fn_80049270(void);
ASM void fn_80049350(void);
ASM void fn_80049384(void);
ASM void fn_800493B8(void);
ASM void fn_8004942C(void);
ASM void fn_80049464(void);
ASM void fn_80049578(void);
ASM void fn_8004965C(void);
ASM void AlarmHandler(void);
ASM void fn_8004979C(void);
ASM void fn_80049868(void);
ASM void fn_80049898(void);
ASM void fn_80049908(void);
ASM void cbForStateMotorStopped(void);
ASM void stateReady(void);
ASM void stateBusy_80049C44(void);
ASM void fn_80049F64(void);
ASM void DVDReadAbsAsyncPrio(void);
ASM void fn_8004A678(void);
ASM void DVDReadDiskID(void);
ASM void DVDCancelStreamAsync(void);
ASM void DVDInquiryAsync(void);
ASM void DVDReset(void);
ASM void DVDGetCommandBlockStatus(void);
ASM void DVDGetDriveStatus(void);
ASM void DVDSetAutoInvalidation(void);
ASM void DVDResume(void);
ASM void fn_8004AB44(void);
ASM void fn_8004ADC0(void);
ASM void fn_8004AE6C(void);
ASM void DVDGetCurrentDiskID(void);
ASM void DVDCheckDisk(void);
ASM void __DVDPrepareResetAsync(void);
ASM void fn_8004B0AC(void);
ASM void __DVDClearWaitingQueue(void);
ASM void __DVDPushWaitingQueue(void);
ASM void __DVDPopWaitingQueue(void);
ASM void __DVDCheckWaitingQueue(void);
ASM void fn_8004B27C(void);
ASM void ErrorCode2Num(void);
ASM void __DVDStoreErrorCode(void);
ASM void fn_8004B474(void);
ASM void fn_8004B56C(void);
ASM void cb(void);
ASM void __fstLoad(void);
ASM void fn_8004B7DC(void);
ASM void fn_8004BA50(void);
ASM void fn_8004BA94(void);
ASM void fn_8004BAD8(void);
ASM void fn_8004BB78(void);
ASM void fn_8004BD78(void);
ASM void fn_8004C228(void);
ASM void fn_8004C27C(void);
ASM void fn_8004C550(void);
ASM void fn_8004C6F0(void);
ASM void fn_8004CF18(void);
ASM void fn_8004D048(void);
ASM void fn_8004D0B4(void);
ASM void fn_8004D0BC(void);
ASM void fn_8004D0C4(void);
ASM void fn_8004D140(void);
ASM void fn_8004D148(void);
ASM void fn_8004D184(void);
ASM void fn_8004D1EC(void);
ASM void fn_8004D288(void);
ASM void VIGetTvFormat(void);
ASM void fn_8004D388(void);
ASM void fn_8004D3C4(void);
ASM void fn_8004D5E0(void);
ASM void fn_8004D640(void);
ASM void fn_8004D770(void);
ASM void fn_8004D918(void);
ASM void fn_8004DA2C(void);
ASM void fn_8004DB38(void);
ASM void fn_8004DCDC(void);
ASM void fn_8004DDA0(void);
ASM void fn_8004DE6C(void);
ASM void fn_8004DF44(void);
ASM void fn_8004E270(void);
ASM void fn_8004E3B0(void);
ASM void fn_8004E4C0(void);
ASM void fn_8004E5D4(void);
ASM void fn_8004E724(void);
ASM void fn_8004EA24(void);
ASM void fn_8004EADC(void);
ASM void fn_8004EB3C(void);
ASM void fn_8004ECB0(void);
ASM void fn_8004EE24(void);
ASM void fn_8004F294(void);
ASM void fn_8004F308(void);
ASM void fn_8004F3C4(void);
ASM void fn_8004F424(void);
ASM void __PADDisableRecalibration(void);
ASM void fn_8004F4F4(void);
ASM void fn_8004F538(void);
ASM void fn_8004F5C0(void);
ASM void fn_8004F5D8(void);
ASM void AISetStreamPlayState(void);
ASM void fn_8004F6C8(void);
ASM void fn_8004F6D8(void);
ASM void fn_8004F7B8(void);
ASM void fn_8004F7CC(void);
ASM void fn_8004F8A0(void);
ASM void AISetStreamVolLeft(void);
ASM void fn_8004F8CC(void);
ASM void AISetStreamVolRight(void);
ASM void fn_8004F8F8(void);
ASM void fn_8004F908(void);
ASM void fn_8004FA74(void);
ASM void fn_8004FAF0(void);
ASM void fn_8004FB9C(void);
ASM void fn_8004FBF4(void);
ASM void fn_8004FDD8(void);
ASM void fn_8004FE1C(void);
ASM void fn_8004FE58(void);
ASM void fn_8004FF48(void);
ASM void fn_8004FFB0(void);
ASM void fn_80050074(void);
ASM void fn_8005007C(void);
ASM void fn_800500F4(void);
ASM void fn_80050114(void);
ASM void fn_80050124(void);
ASM void fn_80051918(void);
ASM void fn_80051A18(void);
ASM void fn_80051A1C(void);
ASM void fn_80051AE8(void);
ASM void fn_80051B58(void);
ASM void fn_80051CB4(void);
ASM void fn_80051CC4(void);
ASM void fn_80051CD4(void);
ASM void fn_80051CEC(void);
ASM void fn_80051D00(void);
ASM void fn_80051D40(void);
ASM void fn_80051E04(void);
ASM void fn_80051E54(void);
ASM void fn_80051FF4(void);
ASM void fn_80052180(void);
ASM void fn_80052220(void);
ASM void fn_800522B4(void);
ASM void fn_800522B8(void);
ASM void fn_800522EC(void);
ASM void fn_800523C4(void);
ASM void fn_800524DC(void);
ASM void fn_80052584(void);
ASM void fn_80052608(void);
ASM void fn_800526C8(void);
ASM void fn_800527B8(void);
ASM void fn_80052864(void);
ASM void fn_80052908(void);
ASM void fn_80052B34(void);
ASM void fn_80052C44(void);
ASM void fn_80052DF8(void);
ASM void fn_80052F2C(void);
ASM void fn_80053048(void);
ASM void fn_80053128(void);
ASM void fn_800531D4(void);
ASM void fn_800531DC(void);
ASM void fn_80053214(void);
ASM void fn_800532CC(void);
ASM void fn_80053330(void);
ASM void fn_80053480(void);
ASM void fn_80053518(void);
ASM void fn_80053568(void);
ASM void fn_800536D4(void);
ASM void fn_80053818(void);
ASM void fn_800538DC(void);
ASM void fn_80054434(void);
ASM void fn_800544A4(void);
ASM void fn_800547C8(void);
ASM void fn_800548A4(void);
ASM void fn_80054908(void);
ASM void fn_800549E4(void);
ASM void fn_80054A48(void);
ASM void fn_80054A50(void);
ASM void fn_80054B24(void);
ASM void fn_80054BEC(void);
ASM void fn_80054D04(void);
ASM void fn_80054DB0(void);
ASM void fn_80054DB8(void);
ASM void fn_80054E88(void);
ASM void fn_80054F50(void);
ASM void fn_80055014(void);
ASM void fn_800551C4(void);
ASM void fn_80055448(void);
ASM void fn_80055688(void);
ASM void fn_8005590C(void);
ASM void fn_80055998(void);
ASM void fn_80055F28(void);
ASM void fn_80055F7C(void);
ASM void fn_80056048(void);
ASM void fn_80056080(void);
ASM void fn_800561FC(void);
ASM void fn_8005660C(void);
ASM void fn_80056744(void);
ASM void fn_800568E4(void);
ASM void fn_8005692C(void);
ASM void fn_800569C8(void);
ASM void fn_80056A74(void);
ASM void fn_80056BB8(void);
ASM void fn_80057210(void);
ASM void fn_80057264(void);
ASM void fn_800572CC(void);
ASM void fn_80057360(void);
ASM void fn_80057494(void);
ASM void fn_80057588(void);
ASM void fn_800576A4(void);
ASM void fn_800576F8(void);
ASM void fn_80057828(void);
ASM void fn_80057A48(void);
ASM void fn_80057A90(void);
ASM void fn_80057C48(void);
ASM void fn_80057D78(void);
ASM void fn_80057EBC(void);
ASM void fn_80057F04(void);
ASM void fn_80058074(void);
ASM void fn_80058124(void);
ASM void fn_80058238(void);
ASM void fn_80058280(void);
ASM void fn_80058478(void);
ASM void fn_8005858C(void);
ASM void fn_80058700(void);
ASM void fn_80058748(void);
ASM void fn_8005880C(void);
ASM void fn_80058908(void);
ASM void fn_8005892C(void);
ASM void GXInit(void);
ASM void __GXInitGX(void);
ASM void fn_80059B8C(void);
ASM void GXInitFifoBase(void);
ASM void fn_80059D2C(void);
ASM void fn_80059D9C(void);
ASM void GXSetCPUFifo(void);
ASM void GXSetGPFifo(void);
ASM void fn_8005A048(void);
ASM void fn_8005A068(void);
ASM void fn_8005A144(void);
ASM void fn_8005A194(void);
ASM void __GXFifoInit(void);
ASM void fn_8005A224(void);
ASM void fn_8005A248(void);
ASM void fn_8005A26C(void);
ASM void fn_8005A2A0(void);
ASM void fn_8005A2D0(void);
ASM void fn_8005A300(void);
ASM void fn_8005A400(void);
ASM void fn_8005A44C(void);
ASM void fn_8005A454(void);
ASM void fn_8005A45C(void);
ASM void fn_8005A464(void);
ASM void fn_8005A6D0(void);
ASM void fn_8005A958(void);
ASM void fn_8005AA14(void);
ASM void fn_8005AB38(void);
ASM void fn_8005ACEC(void);
ASM void fn_8005AD7C(void);
ASM void fn_8005ADB4(void);
ASM void fn_8005B010(void);
ASM void fn_8005B290(void);
ASM void fn_8005B32C(void);
ASM void fn_8005B5AC(void);
ASM void fn_8005B620(void);
ASM void fn_8005B6AC(void);
ASM void fn_8005B6BC(void);
ASM void fn_8005B93C(void);
ASM void GXSetMisc(void);
ASM void fn_8005BA0C(void);
ASM void fn_8005BA68(void);
ASM void fn_8005BBD4(void);
ASM void fn_8005BD44(void);
ASM void fn_8005BDDC(void);
ASM void fn_8005BE5C(void);
ASM void fn_8005BE80(void);
ASM void fn_8005BE94(void);
ASM void fn_8005BEB4(void);
ASM void fn_8005BECC(void);
ASM void fn_8005BF30(void);
ASM void fn_8005BF48(void);
ASM void fn_8005BF6C(void);
ASM void fn_8005BF84(void);
ASM void fn_8005BFA4(void);
ASM void fn_8005BFC8(void);
ASM void fn_8005C00C(void);
ASM void fn_8005C094(void);
ASM void fn_8005C0D8(void);
ASM void __GXPEInit(void);
ASM void fn_8005C1CC(void);
ASM void fn_8005C24C(void);
ASM void fn_8005C31C(void);
ASM void fn_8005C3A4(void);
ASM void fn_8005C3E4(void);
ASM void fn_8005C424(void);
ASM void fn_8005C46C(void);
ASM void fn_8005C4B0(void);
ASM void fn_8005C4E4(void);
ASM void fn_8005C508(void);
ASM void fn_8005C584(void);
ASM void fn_8005C600(void);
ASM void fn_8005C634(void);
ASM void fn_8005C764(void);
ASM void fn_8005C788(void);
ASM void fn_8005C7E0(void);
ASM void fn_8005C870(void);
ASM void fn_8005CAA8(void);
ASM void fn_8005CB74(void);
ASM void fn_8005CBEC(void);
ASM void fn_8005CDF4(void);
ASM void fn_8005CE08(void);
ASM void fn_8005CF70(void);
ASM void fn_8005D0FC(void);
ASM void fn_8005D134(void);
ASM void fn_8005D150(void);
ASM void fn_8005D160(void);
ASM void fn_8005D16C(void);
ASM void fn_8005D1E8(void);
ASM void fn_8005D2D8(void);
ASM void fn_8005D3C8(void);
ASM void fn_8005D404(void);
ASM void fn_8005D4BC(void);
ASM void fn_8005D618(void);
ASM void fn_8005D6E0(void);
ASM void fn_8005D92C(void);
ASM void fn_8005D974(void);
ASM void fn_8005DAD8(void);
ASM void fn_8005DAE0(void);
ASM void fn_8005DAF8(void);
ASM void fn_8005DC74(void);
ASM void fn_8005DCC8(void);
ASM void fn_8005DD00(void);
ASM void GXInitTexCacheRegion(void);
ASM void GXInitTlutRegion(void);
ASM void fn_8005DEC4(void);
ASM void fn_8005DF0C(void);
ASM void fn_8005DF20(void);
ASM void fn_8005DF34(void);
ASM void fn_8005DFD4(void);
ASM void __GXSetTmemConfig(void);
ASM void fn_8005E4A4(void);
ASM void fn_8005E510(void);
ASM void fn_8005E688(void);
ASM void fn_8005E7CC(void);
ASM void fn_8005E8B8(void);
ASM void fn_8005E8DC(void);
ASM void fn_8005E924(void);
ASM void fn_8005E988(void);
ASM void __GXSetIndirectMask(void);
ASM void __GXFlushTextureState(void);
ASM void fn_8005E9E0(void);
ASM void fn_8005EA6C(void);
ASM void fn_8005EAB0(void);
ASM void fn_8005EAF4(void);
ASM void fn_8005EB5C(void);
ASM void fn_8005EBC4(void);
ASM void fn_8005EC40(void);
ASM void fn_8005ECBC(void);
ASM void fn_8005ED30(void);
ASM void fn_8005ED8C(void);
ASM void fn_8005EDE8(void);
ASM void fn_8005EE30(void);
ASM void fn_8005EEB0(void);
ASM void fn_8005EEF4(void);
ASM void fn_8005EF80(void);
ASM void fn_8005F11C(void);
ASM void fn_8005F144(void);
ASM void fn_8005F368(void);
ASM void fn_8005F48C(void);
ASM void fn_8005F4E0(void);
ASM void fn_8005F50C(void);
ASM void fn_8005F538(void);
ASM void fn_8005F56C(void);
ASM void fn_8005F5A0(void);
ASM void fn_8005F674(void);
ASM void fn_8005F6A0(void);
ASM void fn_8005F6DC(void);
ASM void fn_8005F714(void);
ASM void fn_8005F78C(void);
ASM void fn_8005FB40(void);
ASM void fn_8005FC54(void);
ASM void fn_8005FCC4(void);
ASM void fn_8005FD68(void);
ASM void fn_8005FDF4(void);
ASM void fn_8005FE44(void);
ASM void fn_8005FE94(void);
ASM void fn_8005FEC8(void);
ASM void fn_8005FF7C(void);
ASM void fn_8006000C(void);
ASM void fn_80060054(void);
ASM void fn_800600C0(void);
ASM void fn_80060138(void);
ASM void fn_80060180(void);
ASM void fn_800601C0(void);
ASM void fn_800601E8(void);
ASM void fn_8006026C(void);
ASM void fn_80060AB4(void);
ASM void fn_80060AC4(void);
ASM void TRKNubMainLoop(void);
ASM void TRKDestructEvent(void);
ASM void fn_80060CA4(void);
ASM void fn_80060CBC(void);
ASM void TRKGetNextEvent(void);
ASM void TRKInitializeEventQueue(void);
ASM void TRKNubWelcome(void);
ASM void TRKTerminateNub(void);
ASM void TRKInitializeNub(void);
ASM void fn_80061040(void);
ASM void fn_80061084(void);
ASM void fn_80061174(void);
ASM void fn_8006120C(void);
ASM void fn_800612F4(void);
ASM void fn_800613F0(void);
ASM void fn_80061458(void);
ASM void fn_80061554(void);
ASM void fn_800615E0(void);
ASM void fn_80061684(void);
ASM void fn_800616B4(void);
ASM void fn_800616F4(void);
ASM void TRKGetBuffer(void);
ASM void fn_80061784(void);
ASM void TRKInitializeMessageBuffers(void);
ASM void fn_800618C0(void);
ASM void TRKInitializeSerialHandler(void);
ASM void fn_8006198C(void);
ASM void TRKGetInput(void);
ASM void fn_80061A3C(void);
ASM void usr_put_initialize(void);
ASM void fn_80061B7C(void);
ASM void TRKDispatchMessage(void);
ASM void TRKInitializeDispatcher(void);
ASM void fn_80061D7C(void);
ASM void fn_80061E24(void);
ASM void fn_80061ECC(void);
ASM void fn_800620EC(void);
ASM void fn_8006219C(void);
ASM void fn_8006242C(void);
ASM void fn_8006270C(void);
ASM void fn_80062948(void);
ASM void fn_80062B8C(void);
ASM void fn_80062B94(void);
ASM void fn_80062B9C(void);
ASM void fn_80062BF4(void);
ASM void fn_80062C4C(void);
ASM void fn_80062CC4(void);
ASM void fn_80062D28(void);
ASM void fn_80062D34(void);
ASM void fn_80062D44(void);
ASM void fn_80062DEC(void);
ASM void fn_80062EFC(void);
ASM void fn_80062FE4(void);
ASM void fn_80063100(void);
ASM void fn_800632E0(void);
ASM void fn_80063500(void);
ASM void fn_80063508(void);
ASM void fn_80063510(void);
ASM void fn_80063518(void);
ASM void fn_800635B0(void);
ASM void fn_800635E8(void);
ASM void fn_800636A0(void);
ASM void fn_800636A8(void);
ASM void fn_800636B0(void);
ASM void TRKInterruptHandler(void);
ASM void TRKExceptionHandler(void);
ASM void TRKSwapAndGo(void);
ASM void TRKInterruptHandlerEnableInterrupts(void);
ASM void fn_80063A34(void);
ASM void fn_80063A58(void);
ASM void fn_80063A7C(void);
ASM void TRKTargetSetInputPendingPtr(void);
ASM void fn_80063B50(void);
ASM void TRKTargetSetStopped(void);
ASM void TRKTargetStopped(void);
ASM void TRKTargetSupportRequest(void);
ASM void fn_80063D88(void);
ASM void fn_80063D98(void);
ASM void fn_80063E50(void);
ASM void fn_80063EFC(void);
ASM void fn_80063F80(void);
ASM void TRKTargetInterrupt(void);
ASM void TRKPostInterruptEvent(void);
ASM void fn_80064248(void);
ASM void fn_80064680(void);
ASM void fn_800647F0(void);
ASM void fn_80064CFC(void);
ASM void fn_80064DF0(void);
ASM void fn_80064E3C(void);
ASM void fn_80064F88(void);
ASM void fn_80065230(void);
ASM void fn_80065240(void);
ASM void TRKSaveExtended1Block(void);
ASM void TRKRestoreExtended1Block(void);
ASM void InitMetroTRK(void);
ASM void InitMetroTRK_BBA(void);
ASM void fn_800656EC(void);
ASM void fn_800658D8(void);
ASM void TRKInitializeTarget(void);
ASM void fn_80065A58(void);
ASM void fn_80065B84(void);
ASM void EnableMetroTRKInterrupts(void);
ASM void TRK_main(void);
ASM void TRKLoadContext(void);
ASM void TRKUARTInterruptHandler(void);
ASM void InitializeProgramEndTrap(void);
ASM void TRK_board_display(void);
ASM void UnreserveEXI2Port(void);
ASM void ReserveEXI2Port(void);
ASM void fn_80065DC8(void);
ASM void fn_80065E04(void);
ASM void fn_80065E40(void);
ASM void fn_80065E70(void);
ASM void TRKInitializeIntDrivenUART(void);
ASM void InitMetroTRKCommTable(void);
ASM void TRKEXICallBack(void);
ASM void TRKTargetContinue(void);
ASM void fn_800661E0(void);
ASM void fn_800661F0(void);
ASM void fn_800661FC(void);
ASM void fn_80066280(void);
ASM void fn_8006633C(void);
ASM void udp_cc_post_stop(void);
ASM void udp_cc_pre_continue(void);
ASM void udp_cc_peek(void);
ASM void udp_cc_write(void);
ASM void udp_cc_read(void);
ASM void udp_cc_close(void);
ASM void udp_cc_open(void);
ASM void udp_cc_shutdown(void);
ASM void udp_cc_initialize(void);
ASM void ddh_cc_initinterrupts(void);
ASM void ddh_cc_peek(void);
ASM void ddh_cc_post_stop(void);
ASM void ddh_cc_pre_continue(void);
ASM void ddh_cc_write(void);
ASM void ddh_cc_read(void);
ASM void ddh_cc_close(void);
ASM void ddh_cc_open(void);
ASM void ddh_cc_shutdown(void);
ASM void ddh_cc_initialize(void);
ASM void fn_80066784(void);
ASM void fn_8006688C(void);
ASM void fn_80066994(void);
ASM void fn_800669E4(void);
ASM void gdev_cc_initinterrupts(void);
ASM void gdev_cc_peek(void);
ASM void gdev_cc_post_stop(void);
ASM void gdev_cc_pre_continue(void);
ASM void gdev_cc_write(void);
ASM void gdev_cc_read(void);
ASM void gdev_cc_close(void);
ASM void gdev_cc_open(void);
ASM void gdev_cc_shutdown(void);
ASM void gdev_cc_initialize(void);
ASM void MWTRACE(void);
ASM void fn_80066D88(void);
ASM void fn_80066DAC(void);
ASM void fn_80066DDC(void);
ASM void __va_arg(void);

ASM void __DVDInitWA(void)
{
    nofralloc
    mflr r0
    lis r3, CommandList@ha
    stw r0, 0x4(r1)
    li r0, 0x0
    li r4, 0x0
    stwu r1, -0x8(r1)
    opword  0x900D8924  // stw r0, NextCommandNumber_8053A4E4@sda21(r0)
    li r0, -0x1
    stw r0, CommandList@l(r3)
    li r3, 0x0
    bl __DVDLowSetWAType
    bl OSInitAlarm
    lwz r0, 0xc(r1)
    addi r1, r1, 0x8
    mtlr r0
    blr
}

ASM void __DVDInterruptHandler(void)
{
    nofralloc
    mflr r0
    lis r3, CommandList@ha
    stw r0, 0x4(r1)
    stwu r1, -0x2f0(r1)
    stmw r27, 0x2dc(r1)
    addi r28, r4, 0x0
    addi r30, r3, CommandList@l
    li r29, 0x0
    opword  0x800D8920  // lwz r0, lbl_8053A4E0@sda21(r0)
    cmpwi r0, 0x0
    opword  0x41820040  // beq .L_80047300
    bl __OSGetSystemTime
    opword  0x908D8914  // stw r4, lbl_8053A4D4@sda21(r0)
    li r0, 0x0
    opword  0x906D8910  // stw r3, lbl_8053A4D0@sda21(r0)
    opword  0x900D8070  // stw r0, lbl_80539C30@sda21(r0)
    lwz r0, 0xc4(r30)
    stw r0, 0xb8(r30)
    lwz r0, 0xc8(r30)
    stw r0, 0xbc(r30)
    lwz r0, 0xcc(r30)
    stw r0, 0xc0(r30)
    opword  0x800D88E0  // lwz r0, StopAtNextInt_8053A4A0@sda21(r0)
    cmpwi r0, 0x1
    opword  0x40820008  // bne .L_80047300
    ori r29, r29, 0x8
L_80047300:
    li r0, 0x0
    opword  0x900D8920  // stw r0, lbl_8053A4E0@sda21(r0)
    lis r3, 0xcc00
    opword  0x900D88E0  // stw r0, StopAtNextInt_8053A4A0@sda21(r0)
    lwz r0, 0x6000(r3)
    andi. r31, r0, 0x2a
    andi. r3, r0, 0x54
    slwi r0, r31, 1
    and r27, r3, r0
    rlwinm. r0, r27, 0, 25, 25
    opword  0x41820008  // beq .L_80047330
    ori r29, r29, 0x8
L_80047330:
    rlwinm. r0, r27, 0, 27, 27
    opword  0x41820008  // beq .L_8004733C
    ori r29, r29, 0x1
L_8004733C:
    rlwinm. r0, r27, 0, 29, 29
    opword  0x41820008  // beq .L_80047348
    ori r29, r29, 0x2
L_80047348:
    cmplwi r29, 0x0
    opword  0x41820014  // beq .L_80047360
    li r0, 0x0
    opword  0x900D88F8  // stw r0, ResetOccurred_8053A4B8@sda21(r0)
    addi r3, r30, 0x68
    bl fn_8004061C
L_80047360:
    or r0, r27, r31
    lis r31, 0xcc00
    stw r0, 0x6000(r31)
    opword  0x800D88F8  // lwz r0, ResetOccurred_8053A4B8@sda21(r0)
    cmplwi r0, 0x0
    opword  0x418200A0  // beq .L_80047414
    bl __OSGetSystemTime
    lis r5, 0x8000
    opword  0x80ED88F0  // lwz r7, LastResetEnd_8053A4B0@sda21(r0)
    lwz r6, 0xf8(r5)
    lis r5, 0x1062
    addi r5, r5, 0x4dd3
    opword  0x810D88F4  // lwz r8, LastResetEnd_8053A4B0+0x4@sda21(r0)
    srwi r6, r6, 2
    mulhwu r5, r5, r6
    srwi r5, r5, 6
    mulli r5, r5, 0xc8
    subfc r6, r8, r4
    subfe r3, r7, r3
    li r0, 0x0
    xoris r4, r3, 0x8000
    xoris r3, r0, 0x8000
    subfc r0, r5, r6
    subfe r3, r3, r4
    subfe r3, r4, r4
    neg. r3, r3
    opword  0x4182004C  // beq .L_80047414
    addi r27, r31, 0x6000
    lwzu r0, 0x4(r27)
    rlwinm r3, r0, 0, 29, 29
    rlwinm r0, r0, 1, 29, 29
    and r0, r3, r0
    rlwinm. r0, r0, 0, 29, 29
    opword  0x41820024  // beq .L_80047408
    opword  0x818D88EC  // lwz r12, lbl_8053A4AC@sda21(r0)
    cmplwi r12, 0x0
    opword  0x41820010  // beq .L_80047400
    mtlr r12
    li r3, 0x4
    blrl
L_80047400:
    li r0, 0x0
    opword  0x900D88EC  // stw r0, lbl_8053A4AC@sda21(r0)
L_80047408:
    lwz r0, 0x0(r27)
    stw r0, 0x0(r27)
    opword  0x48000058  // b .L_80047468
L_80047414:
    opword  0x800D88FC  // lwz r0, WaitingCoverClose_8053A4BC@sda21(r0)
    cmpwi r0, 0x0
    opword  0x41820040  // beq .L_8004745C
    lis r3, 0xcc00
    addi r5, r3, 0x6000
    lwzu r0, 0x4(r5)
    rlwinm r4, r0, 0, 30, 30
    rlwinm r3, r0, 0, 29, 29
    rlwinm r0, r0, 1, 29, 29
    and r3, r3, r0
    rlwinm. r0, r3, 0, 29, 29
    opword  0x41820008  // beq .L_80047448
    ori r29, r29, 0x4
L_80047448:
    or r0, r3, r4
    stw r0, 0x0(r5)
    li r0, 0x0
    opword  0x900D88FC  // stw r0, WaitingCoverClose_8053A4BC@sda21(r0)
    opword  0x48000010  // b .L_80047468
L_8004745C:
    lis r3, 0xcc00
    li r0, 0x0
    stw r0, 0x6004(r3)
L_80047468:
    rlwinm. r0, r29, 0, 28, 28
    opword  0x41820014  // beq .L_80047480
    opword  0x800D8900  // lwz r0, lbl_8053A4C0@sda21(r0)
    cmpwi r0, 0x0
    opword  0x40820008  // bne .L_80047480
    rlwinm r29, r29, 0, 29, 27
L_80047480:
    clrlwi. r0, r29, 31
    opword  0x41820080  // beq .L_80047504
    opword  0x800D8924  // lwz r0, NextCommandNumber_8053A4E4@sda21(r0)
    mulli r0, r0, 0x14
    lwzx r3, r30, r0
    cmpwi r3, 0x1
    opword  0x40820030  // bne .L_800474C8
    opword  0x806D8924  // lwz r3, NextCommandNumber_8053A4E4@sda21(r0)
    add r6, r30, r0
    addi r0, r3, 0x1
    opword  0x900D8924  // stw r0, NextCommandNumber_8053A4E4@sda21(r0)
    lwz r3, 0x4(r6)
    lwz r4, 0x8(r6)
    lwz r5, 0xc(r6)
    lwz r6, 0x10(r6)
    bl fn_8004766C
    li r0, 0x1
    opword  0x48000034  // b .L_800474F8
L_800474C8:
    cmpwi r3, 0x2
    opword  0x40820028  // bne .L_800474F4
    opword  0x806D8924  // lwz r3, NextCommandNumber_8053A4E4@sda21(r0)
    add r4, r30, r0
    addi r0, r3, 0x1
    opword  0x900D8924  // stw r0, NextCommandNumber_8053A4E4@sda21(r0)
    lwz r3, 0xc(r4)
    lwz r4, 0x10(r4)
    bl fn_80047A94
    li r0, 0x1
    opword  0x48000008  // b .L_800474F8
L_800474F4:
    li r0, 0x0
L_800474F8:
    cmpwi r0, 0x0
    opword  0x41820018  // beq .L_80047514
    opword  0x48000064  // b .L_80047564
L_80047504:
    li r0, -0x1
    stw r0, 0x0(r30)
    li r0, 0x0
    opword  0x900D8924  // stw r0, NextCommandNumber_8053A4E4@sda21(r0)
L_80047514:
    addi r3, r1, 0x10
    bl OSClearContext
    addi r3, r1, 0x10
    bl OSSetCurrentContext
    cmplwi r29, 0x0
    opword  0x4182002C  // beq .L_80047554
    opword  0x818D88E8  // lwz r12, Callback_8053A4A8@sda21(r0)
    li r0, 0x0
    cmplwi r12, 0x0
    opword  0x900D88E8  // stw r0, Callback_8053A4A8@sda21(r0)
    opword  0x41820010  // beq .L_8004754C
    mtlr r12
    addi r3, r29, 0x0
    blrl
L_8004754C:
    li r0, 0x0
    opword  0x900D8900  // stw r0, lbl_8053A4C0@sda21(r0)
L_80047554:
    addi r3, r1, 0x10
    bl OSClearContext
    mr r3, r28
    bl OSSetCurrentContext
L_80047564:
    lmw r27, 0x2dc(r1)
    lwz r0, 0x2f4(r1)
    addi r1, r1, 0x2f0
    mtlr r0
    blr
}

ASM void fn_80047578(void)
{
    nofralloc
    mflr r0
    lis r3, CommandList@ha
    stw r0, 0x4(r1)
    addi r4, r3, CommandList@l
    stwu r1, -0x8(r1)
    opword  0x800D8924  // lwz r0, NextCommandNumber_8053A4E4@sda21(r0)
    mulli r0, r0, 0x14
    lwzx r3, r4, r0
    cmpwi r3, 0x1
    opword  0x4082002C  // bne .L_800475C8
    opword  0x806D8924  // lwz r3, NextCommandNumber_8053A4E4@sda21(r0)
    add r6, r4, r0
    addi r0, r3, 0x1
    opword  0x900D8924  // stw r0, NextCommandNumber_8053A4E4@sda21(r0)
    lwz r3, 0x4(r6)
    lwz r4, 0x8(r6)
    lwz r5, 0xc(r6)
    lwz r6, 0x10(r6)
    bl fn_8004766C
    opword  0x48000028  // b .L_800475EC
L_800475C8:
    cmpwi r3, 0x2
    opword  0x40820020  // bne .L_800475EC
    opword  0x806D8924  // lwz r3, NextCommandNumber_8053A4E4@sda21(r0)
    add r4, r4, r0
    addi r0, r3, 0x1
    opword  0x900D8924  // stw r0, NextCommandNumber_8053A4E4@sda21(r0)
    lwz r3, 0xc(r4)
    lwz r4, 0x10(r4)
    bl fn_80047A94
L_800475EC:
    lwz r0, 0xc(r1)
    addi r1, r1, 0x8
    mtlr r0
    blr
}

ASM void AlarmHandlerForTimeout(void)
{
    nofralloc
    mflr r0
    li r3, 0x400
    stw r0, 0x4(r1)
    stwu r1, -0x2e0(r1)
    stw r31, 0x2dc(r1)
    addi r31, r4, 0x0
    bl __OSMaskInterrupts
    addi r3, r1, 0x10
    bl OSClearContext
    addi r3, r1, 0x10
    bl OSSetCurrentContext
    opword  0x818D88E8  // lwz r12, Callback_8053A4A8@sda21(r0)
    li r0, 0x0
    cmplwi r12, 0x0
    opword  0x900D88E8  // stw r0, Callback_8053A4A8@sda21(r0)
    opword  0x41820010  // beq .L_80047648
    mtlr r12
    li r3, 0x10
    blrl
L_80047648:
    addi r3, r1, 0x10
    bl OSClearContext
    mr r3, r31
    bl OSSetCurrentContext
    lwz r0, 0x2e4(r1)
    lwz r31, 0x2dc(r1)
    addi r1, r1, 0x2e0
    mtlr r0
    blr
}

ASM void fn_8004766C(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    li r0, 0x0
    stwu r1, -0x28(r1)
    stw r31, 0x24(r1)
    stw r30, 0x20(r1)
    addi r30, r5, 0x0
    stw r29, 0x1c(r1)
    addi r29, r4, 0x0
    stw r28, 0x18(r1)
    addi r28, r3, 0x0
    opword  0x900D88E0  // stw r0, StopAtNextInt_8053A4A0@sda21(r0)
    li r0, 0x1
    opword  0x90CD88E8  // stw r6, Callback_8053A4A8@sda21(r0)
    lis r6, CommandList@ha
    addi r31, r6, CommandList@l
    opword  0x900D8920  // stw r0, lbl_8053A4E0@sda21(r0)
    bl __OSGetSystemTime
    opword  0x908D891C  // stw r4, lbl_8053A4DC@sda21(r0)
    lis r4, 0xcc00
    lis r0, 0xa0
    opword  0x906D8918  // stw r3, lbl_8053A4D8@sda21(r0)
    addi r4, r4, 0x6000
    lis r3, 0xa800
    stw r3, 0x8(r4)
    srwi r3, r30, 2
    cmplw r29, r0
    stw r3, 0xc(r4)
    li r0, 0x3
    stw r29, 0x10(r4)
    stw r28, 0x14(r4)
    stw r29, 0x18(r4)
    opword  0x93AD88E4  // stw r29, lbl_8053A4A4@sda21(r0)
    stw r0, 0x1c(r4)
    opword  0x40810038  // ble .L_8004772C
    lis r3, 0x8000
    lwz r0, 0xf8(r3)
    addi r3, r31, 0x68
    srwi r0, r0, 2
    mulli r30, r0, 0x14
    bl OSCreateAlarm
    lis r3, AlarmHandlerForTimeout@ha
    addi r7, r3, AlarmHandlerForTimeout@l
    addi r6, r30, 0x0
    addi r3, r31, 0x68
    li r5, 0x0
    bl OSSetAlarm
    opword  0x48000034  // b .L_8004775C
L_8004772C:
    lis r3, 0x8000
    lwz r0, 0xf8(r3)
    addi r3, r31, 0x68
    srwi r0, r0, 2
    mulli r30, r0, 0xa
    bl OSCreateAlarm
    lis r3, AlarmHandlerForTimeout@ha
    addi r7, r3, AlarmHandlerForTimeout@l
    addi r6, r30, 0x0
    addi r3, r31, 0x68
    li r5, 0x0
    bl OSSetAlarm
L_8004775C:
    lwz r0, 0x2c(r1)
    lwz r31, 0x24(r1)
    lwz r30, 0x20(r1)
    lwz r29, 0x1c(r1)
    lwz r28, 0x18(r1)
    addi r1, r1, 0x28
    mtlr r0
    blr
}

ASM void fn_8004777C(void)
{
    nofralloc
    mflr r0
    lis r7, CommandList@ha
    stw r0, 0x4(r1)
    clrrwi. r8, r5, 15
    addi r9, r7, CommandList@l
    stwu r1, -0x8(r1)
    opword  0x4082000C  // bne .L_800477A0
    li r10, 0x0
    opword  0x4800000C  // b .L_800477A8
L_800477A0:
    opword  0x800D8908  // lwz r0, WorkAroundSeekLocation_8053A4C8@sda21(r0)
    add r10, r8, r0
L_800477A8:
    li r0, 0x2
    stw r0, 0x0(r9)
    li r8, 0x1
    li r7, -0x1
    stw r10, 0xc(r9)
    li r0, 0x0
    stw r6, 0x10(r9)
    stw r8, 0x14(r9)
    stw r3, 0x18(r9)
    mr r3, r10
    stw r4, 0x1c(r9)
    mr r4, r6
    stw r5, 0x20(r9)
    stw r6, 0x24(r9)
    stw r7, 0x28(r9)
    opword  0x900D8924  // stw r0, NextCommandNumber_8053A4E4@sda21(r0)
    bl fn_80047A94
    lwz r0, 0xc(r1)
    addi r1, r1, 0x8
    mtlr r0
    blr
}

ASM void fn_800477FC(void)
{
    nofralloc
    mflr r0
    lis r7, 0xcc00
    stw r0, 0x4(r1)
    stwu r1, -0x40(r1)
    stmw r22, 0x18(r1)
    addi r25, r4, 0x0
    addi r4, r7, 0x6000
    lis r7, CommandList@ha
    addi r31, r7, CommandList@l
    addi r24, r3, 0x0
    addi r26, r5, 0x0
    addi r30, r31, 0xcc
    mr r27, r6
    stw r25, 0x18(r4)
    stw r24, 0xc4(r31)
    stw r25, 0xc8(r31)
    stw r26, 0xcc(r31)
    opword  0x800D8904  // lwz r0, WorkAroundType_8053A4C4@sda21(r0)
    cmplwi r0, 0x0
    opword  0x4082002C  // bne .L_80047874
    li r0, -0x1
    stw r0, 0x0(r31)
    li r0, 0x0
    addi r3, r24, 0x0
    opword  0x900D8924  // stw r0, NextCommandNumber_8053A4E4@sda21(r0)
    addi r4, r25, 0x0
    addi r5, r26, 0x0
    addi r6, r27, 0x0
    bl fn_8004766C
    opword  0x4800020C  // b .L_80047A7C
L_80047874:
    opword  0x800D8904  // lwz r0, WorkAroundType_8053A4C4@sda21(r0)
    cmplwi r0, 0x1
    opword  0x40820200  // bne .L_80047A7C
    opword  0x800D8070  // lwz r0, lbl_80539C30@sda21(r0)
    cmpwi r0, 0x0
    opword  0x4182001C  // beq .L_800478A4
    addi r3, r24, 0x0
    addi r4, r25, 0x0
    addi r5, r26, 0x0
    addi r6, r27, 0x0
    bl fn_8004777C
    opword  0x480001DC  // b .L_80047A7C
L_800478A4:
    addi r29, r31, 0xbc
    lwz r0, 0x0(r30)
    addi r28, r31, 0xc0
    lwz r3, 0xbc(r31)
    lwz r4, 0xc0(r31)
    srwi r23, r0, 15
    subi r0, r3, 0x1
    add r0, r4, r0
    srwi r22, r0, 15
    bl DVDGetCurrentDiskID
    lbz r0, 0x8(r3)
    cmplwi r0, 0x0
    opword  0x4182000C  // beq .L_800478E0
    li r0, 0x1
    opword  0x48000008  // b .L_800478E4
L_800478E0:
    li r0, 0x0
L_800478E4:
    cmpwi r0, 0x0
    opword  0x4182000C  // beq .L_800478F4
    li r3, 0x5
    opword  0x48000008  // b .L_800478F8
L_800478F4:
    li r3, 0xf
L_800478F8:
    subi r0, r22, 0x2
    cmplw r23, r0
    opword  0x41810014  // bgt .L_80047914
    addi r0, r3, 0x3
    add r0, r22, r0
    cmplw r23, r0
    opword  0x4080000C  // bge .L_8004791C
L_80047914:
    li r0, 0x1
    opword  0x48000008  // b .L_80047920
L_8004791C:
    li r0, 0x0
L_80047920:
    cmpwi r0, 0x0
    opword  0x4082002C  // bne .L_80047950
    li r0, -0x1
    stw r0, 0x0(r31)
    li r0, 0x0
    addi r3, r24, 0x0
    opword  0x900D8924  // stw r0, NextCommandNumber_8053A4E4@sda21(r0)
    addi r4, r25, 0x0
    addi r5, r26, 0x0
    addi r6, r27, 0x0
    bl fn_8004766C
    opword  0x48000130  // b .L_80047A7C
L_80047950:
    lwz r3, 0x0(r29)
    lwz r4, 0x0(r28)
    subi r3, r3, 0x1
    lwz r0, 0x0(r30)
    add r3, r4, r3
    srwi r3, r3, 15
    srwi r4, r0, 15
    cmplw r3, r4
    opword  0x41820010  // beq .L_80047980
    addi r0, r3, 0x1
    cmplw r0, r4
    opword  0x408200EC  // bne .L_80047A68
L_80047980:
    bl __OSGetSystemTime
    lis r5, 0x8000
    opword  0x810D8910  // lwz r8, lbl_8053A4D0@sda21(r0)
    lwz r0, 0xf8(r5)
    lis r5, 0x1062
    opword  0x812D8914  // lwz r9, lbl_8053A4D4@sda21(r0)
    li r6, 0x0
    srwi r7, r0, 2
    addi r0, r5, 0x4dd3
    mulhwu r0, r0, r7
    srwi r0, r0, 6
    subfc r9, r9, r4
    subfe r8, r8, r3
    mulli r5, r0, 0x5
    xoris r4, r6, 0x8000
    xoris r3, r8, 0x8000
    subfc r0, r9, r5
    subfe r3, r3, r4
    subfe r3, r4, r4
    neg. r3, r3
    opword  0x41820028  // beq .L_800479F8
    li r0, -0x1
    stw r0, 0x0(r31)
    addi r3, r24, 0x0
    addi r4, r25, 0x0
    opword  0x90CD8924  // stw r6, NextCommandNumber_8053A4E4@sda21(r0)
    addi r5, r26, 0x0
    addi r6, r27, 0x0
    bl fn_8004766C
    opword  0x48000088  // b .L_80047A7C
L_800479F8:
    li r0, 0x1
    stw r0, 0x0(r31)
    lis r3, 0x431c
    subi r0, r3, 0x217d
    stw r24, 0x4(r31)
    mulhwu r0, r0, r7
    stw r25, 0x8(r31)
    stw r26, 0xc(r31)
    srwi r0, r0, 15
    mulli r3, r0, 0x1f4
    stw r27, 0x10(r31)
    li r0, -0x1
    stw r0, 0x14(r31)
    subfc r5, r9, r5
    subfe r4, r8, r6
    srwi r0, r3, 3
    opword  0x90CD8924  // stw r6, NextCommandNumber_8053A4E4@sda21(r0)
    addc r23, r5, r0
    adde r22, r4, r6
    addi r3, r31, 0x40
    bl OSCreateAlarm
    lis r3, fn_80047578@ha
    addi r7, r3, fn_80047578@l
    addi r6, r23, 0x0
    addi r5, r22, 0x0
    addi r3, r31, 0x40
    bl OSSetAlarm
    opword  0x48000018  // b .L_80047A7C
L_80047A68:
    addi r3, r24, 0x0
    addi r4, r25, 0x0
    addi r5, r26, 0x0
    addi r6, r27, 0x0
    bl fn_8004777C
L_80047A7C:
    lmw r22, 0x18(r1)
    li r3, 0x1
    lwz r0, 0x44(r1)
    addi r1, r1, 0x40
    mtlr r0
    blr
}

ASM void fn_80047A94(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    li r0, 0x0
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    stw r30, 0x10(r1)
    opword  0x908D88E8  // stw r4, Callback_8053A4A8@sda21(r0)
    lis r4, 0xcc00
    addi r4, r4, 0x6000
    opword  0x900D88E0  // stw r0, StopAtNextInt_8053A4A0@sda21(r0)
    lis r0, 0xab00
    stw r0, 0x8(r4)
    srwi r0, r3, 2
    lis r3, AlarmForTimeout@ha
    stw r0, 0xc(r4)
    li r0, 0x1
    addi r31, r3, AlarmForTimeout@l
    stw r0, 0x1c(r4)
    lis r4, 0x8000
    addi r3, r31, 0x0
    lwz r0, 0xf8(r4)
    srwi r0, r0, 2
    mulli r30, r0, 0xa
    bl OSCreateAlarm
    lis r3, AlarmHandlerForTimeout@ha
    addi r7, r3, AlarmHandlerForTimeout@l
    addi r3, r31, 0x0
    addi r6, r30, 0x0
    li r5, 0x0
    bl OSSetAlarm
    lwz r0, 0x1c(r1)
    li r3, 0x1
    lwz r31, 0x14(r1)
    lwz r30, 0x10(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

ASM void DVDLowWaitCoverClose(void)
{
    nofralloc
    li r0, 0x1
    opword  0x906D88E8  // stw r3, Callback_8053A4A8@sda21(r0)
    lis r3, 0xcc00
    opword  0x900D88FC  // stw r0, WaitingCoverClose_8053A4BC@sda21(r0)
    li r0, 0x0
    addi r4, r3, 0x6000
    opword  0x900D88E0  // stw r0, StopAtNextInt_8053A4A0@sda21(r0)
    li r0, 0x2
    li r3, 0x1
    stw r0, 0x4(r4)
    blr
}

ASM void fn_80047B54(void)
{
    nofralloc
    mflr r0
    li r8, 0x0
    stw r0, 0x4(r1)
    lis r5, 0xa800
    addi r0, r5, 0x40
    stwu r1, -0x18(r1)
    li r6, 0x20
    lis r5, 0x8000
    stw r31, 0x14(r1)
    stw r30, 0x10(r1)
    opword  0x908D88E8  // stw r4, Callback_8053A4A8@sda21(r0)
    lis r4, 0xcc00
    addi r7, r4, 0x6000
    opword  0x910D88E0  // stw r8, StopAtNextInt_8053A4A0@sda21(r0)
    stw r0, 0x6008(r4)
    lis r4, AlarmForTimeout@ha
    li r0, 0x3
    stw r8, 0xc(r7)
    addi r31, r4, AlarmForTimeout@l
    stw r6, 0x10(r7)
    stw r3, 0x14(r7)
    mr r3, r31
    stw r6, 0x18(r7)
    stw r0, 0x1c(r7)
    lwz r0, 0xf8(r5)
    srwi r0, r0, 2
    mulli r30, r0, 0xa
    bl OSCreateAlarm
    lis r3, AlarmHandlerForTimeout@ha
    addi r7, r3, AlarmHandlerForTimeout@l
    addi r3, r31, 0x0
    addi r6, r30, 0x0
    li r5, 0x0
    bl OSSetAlarm
    lwz r0, 0x1c(r1)
    li r3, 0x1
    lwz r31, 0x14(r1)
    lwz r30, 0x10(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

ASM void DVDLowStopMotor(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    li r0, 0x0
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    stw r30, 0x10(r1)
    opword  0x906D88E8  // stw r3, Callback_8053A4A8@sda21(r0)
    lis r3, 0xcc00
    addi r4, r3, 0x6000
    opword  0x900D88E0  // stw r0, StopAtNextInt_8053A4A0@sda21(r0)
    lis r0, 0xe300
    stw r0, 0x6008(r3)
    li r0, 0x1
    lis r3, AlarmForTimeout@ha
    stw r0, 0x1c(r4)
    lis r4, 0x8000
    addi r31, r3, AlarmForTimeout@l
    lwz r0, 0xf8(r4)
    addi r3, r31, 0x0
    srwi r0, r0, 2
    mulli r30, r0, 0xa
    bl OSCreateAlarm
    lis r3, AlarmHandlerForTimeout@ha
    addi r7, r3, AlarmHandlerForTimeout@l
    addi r3, r31, 0x0
    addi r6, r30, 0x0
    li r5, 0x0
    bl OSSetAlarm
    lwz r0, 0x1c(r1)
    li r3, 0x1
    lwz r31, 0x14(r1)
    lwz r30, 0x10(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

ASM void fn_80047C84(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    li r0, 0x0
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    stw r30, 0x10(r1)
    opword  0x906D88E8  // stw r3, Callback_8053A4A8@sda21(r0)
    lis r3, 0xcc00
    addi r4, r3, 0x6000
    opword  0x900D88E0  // stw r0, StopAtNextInt_8053A4A0@sda21(r0)
    lis r0, 0xe000
    stw r0, 0x6008(r3)
    li r0, 0x1
    lis r3, AlarmForTimeout@ha
    stw r0, 0x1c(r4)
    lis r4, 0x8000
    addi r31, r3, AlarmForTimeout@l
    lwz r0, 0xf8(r4)
    addi r3, r31, 0x0
    srwi r0, r0, 2
    mulli r30, r0, 0xa
    bl OSCreateAlarm
    lis r3, AlarmHandlerForTimeout@ha
    addi r7, r3, AlarmHandlerForTimeout@l
    addi r3, r31, 0x0
    addi r6, r30, 0x0
    li r5, 0x0
    bl OSSetAlarm
    lwz r0, 0x1c(r1)
    li r3, 0x1
    lwz r31, 0x14(r1)
    lwz r30, 0x10(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

ASM void fn_80047D10(void)
{
    nofralloc
    mflr r0
    li r6, 0x20
    stw r0, 0x4(r1)
    li r0, 0x0
    lis r5, 0x8000
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    stw r30, 0x10(r1)
    opword  0x908D88E8  // stw r4, Callback_8053A4A8@sda21(r0)
    lis r4, 0xcc00
    addi r7, r4, 0x6000
    opword  0x900D88E0  // stw r0, StopAtNextInt_8053A4A0@sda21(r0)
    lis r0, 0x1200
    stw r0, 0x6008(r4)
    lis r4, AlarmForTimeout@ha
    li r0, 0x3
    stw r6, 0x10(r7)
    addi r31, r4, AlarmForTimeout@l
    stw r3, 0x14(r7)
    addi r3, r31, 0x0
    stw r6, 0x18(r7)
    stw r0, 0x1c(r7)
    lwz r0, 0xf8(r5)
    srwi r0, r0, 2
    mulli r30, r0, 0xa
    bl OSCreateAlarm
    lis r3, AlarmHandlerForTimeout@ha
    addi r7, r3, AlarmHandlerForTimeout@l
    addi r3, r31, 0x0
    addi r6, r30, 0x0
    li r5, 0x0
    bl OSSetAlarm
    lwz r0, 0x1c(r1)
    li r3, 0x1
    lwz r31, 0x14(r1)
    lwz r30, 0x10(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

ASM void fn_80047DAC(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    li r0, 0x0
    stwu r1, -0x20(r1)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    opword  0x90CD88E8  // stw r6, Callback_8053A4A8@sda21(r0)
    lis r6, 0xcc00
    addi r6, r6, 0x6000
    opword  0x900D88E0  // stw r0, StopAtNextInt_8053A4A0@sda21(r0)
    oris r0, r3, 0xe100
    lis r3, AlarmForTimeout@ha
    stw r0, 0x8(r6)
    srwi r0, r5, 2
    addi r31, r3, AlarmForTimeout@l
    stw r0, 0xc(r6)
    li r0, 0x1
    addi r3, r31, 0x0
    stw r4, 0x10(r6)
    lis r4, 0x8000
    stw r0, 0x1c(r6)
    lwz r0, 0xf8(r4)
    srwi r0, r0, 2
    mulli r30, r0, 0xa
    bl OSCreateAlarm
    lis r3, AlarmHandlerForTimeout@ha
    addi r7, r3, AlarmHandlerForTimeout@l
    addi r3, r31, 0x0
    addi r6, r30, 0x0
    li r5, 0x0
    bl OSSetAlarm
    lwz r0, 0x24(r1)
    li r3, 0x1
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    addi r1, r1, 0x20
    mtlr r0
    blr
}

ASM void fn_80047E44(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    li r0, 0x0
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    stw r30, 0x10(r1)
    opword  0x908D88E8  // stw r4, Callback_8053A4A8@sda21(r0)
    lis r4, 0xcc00
    addi r4, r4, 0x6000
    opword  0x900D88E0  // stw r0, StopAtNextInt_8053A4A0@sda21(r0)
    oris r0, r3, 0xe200
    lis r3, AlarmForTimeout@ha
    stw r0, 0x8(r4)
    li r0, 0x1
    addi r31, r3, AlarmForTimeout@l
    stw r0, 0x1c(r4)
    lis r4, 0x8000
    addi r3, r31, 0x0
    lwz r0, 0xf8(r4)
    srwi r0, r0, 2
    mulli r30, r0, 0xa
    bl OSCreateAlarm
    lis r3, AlarmHandlerForTimeout@ha
    addi r7, r3, AlarmHandlerForTimeout@l
    addi r3, r31, 0x0
    addi r6, r30, 0x0
    li r5, 0x0
    bl OSSetAlarm
    lwz r0, 0x1c(r1)
    li r3, 0x1
    lwz r31, 0x14(r1)
    lwz r30, 0x10(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

ASM void fn_80047ED0(void)
{
    nofralloc
    mflr r0
    cmpwi r3, 0x0
    stw r0, 0x4(r1)
    li r0, 0x0
    stwu r1, -0x20(r1)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    opword  0x90AD88E8  // stw r5, Callback_8053A4A8@sda21(r0)
    opword  0x900D88E0  // stw r0, StopAtNextInt_8053A4A0@sda21(r0)
    opword  0x41820008  // beq .L_80047EFC
    lis r0, 0x1
L_80047EFC:
    oris r0, r0, 0xe400
    lis r3, 0xcc00
    or r0, r4, r0
    addi r3, r3, 0x6000
    stw r0, 0x8(r3)
    li r0, 0x1
    lis r4, 0x8000
    stw r0, 0x1c(r3)
    lis r3, AlarmForTimeout@ha
    addi r31, r3, AlarmForTimeout@l
    lwz r0, 0xf8(r4)
    addi r3, r31, 0x0
    srwi r0, r0, 2
    mulli r30, r0, 0xa
    bl OSCreateAlarm
    lis r3, AlarmHandlerForTimeout@ha
    addi r7, r3, AlarmHandlerForTimeout@l
    addi r3, r31, 0x0
    addi r6, r30, 0x0
    li r5, 0x0
    bl OSSetAlarm
    lwz r0, 0x24(r1)
    li r3, 0x1
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    addi r1, r1, 0x20
    mtlr r0
    blr
}

ASM void DVDLowReset(void)
{
    nofralloc
    mflr r0
    lis r4, 0xcc00
    stw r0, 0x4(r1)
    li r0, 0x2
    stwu r1, -0x20(r1)
    stmw r26, 0x8(r1)
    addi r31, r4, 0x3000
    stw r0, 0x6004(r4)
    lwz r30, 0x3024(r4)
    rlwinm r0, r30, 0, 30, 28
    ori r0, r0, 0x1
    stwu r0, 0x24(r31)
    bl __OSGetSystemTime
    lis r5, 0x8000
    lwz r0, 0xf8(r5)
    lis r5, 0x431c
    subi r5, r5, 0x217d
    srwi r0, r0, 2
    mulhwu r0, r5, r0
    srwi r0, r0, 15
    mulli r0, r0, 0xc
    addi r26, r4, 0x0
    addi r27, r3, 0x0
    srwi r28, r0, 3
    li r29, 0x0
L_80047FD0:
    bl __OSGetSystemTime
    subfc r5, r26, r4
    subfe r0, r27, r3
    xoris r4, r0, 0x8000
    xoris r3, r29, 0x8000
    subfc r0, r28, r5
    subfe r3, r3, r4
    subfe r3, r4, r4
    neg. r3, r3
    opword  0x4082FFDC  // bne .L_80047FD0
    ori r0, r30, 0x5
    stw r0, 0x0(r31)
    li r0, 0x1
    opword  0x900D88F8  // stw r0, ResetOccurred_8053A4B8@sda21(r0)
    bl __OSGetSystemTime
    opword  0x908D88F4  // stw r4, LastResetEnd_8053A4B0+0x4@sda21(r0)
    opword  0x906D88F0  // stw r3, LastResetEnd_8053A4B0@sda21(r0)
    lmw r26, 0x8(r1)
    lwz r0, 0x24(r1)
    addi r1, r1, 0x20
    mtlr r0
    blr
}

ASM void fn_80048028(void)
{
    nofralloc
    li r0, 0x1
    opword  0x900D88E0  // stw r0, StopAtNextInt_8053A4A0@sda21(r0)
    li r3, 0x1
    opword  0x900D8900  // stw r0, lbl_8053A4C0@sda21(r0)
    blr
}

ASM void fn_8004803C(void)
{
    nofralloc
    lis r3, 0xcc00
    li r0, 0x0
    stw r0, 0x6004(r3)
    opword  0x806D88E8  // lwz r3, Callback_8053A4A8@sda21(r0)
    opword  0x900D88FC  // stw r0, WaitingCoverClose_8053A4BC@sda21(r0)
    opword  0x900D88E8  // stw r0, Callback_8053A4A8@sda21(r0)
    blr
}

ASM void __DVDLowSetWAType(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    addi r31, r4, 0x0
    stw r30, 0x10(r1)
    addi r30, r3, 0x0
    bl OSDisableInterrupts
    opword  0x93CD8904  // stw r30, WorkAroundType_8053A4C4@sda21(r0)
    opword  0x93ED8908  // stw r31, WorkAroundSeekLocation_8053A4C8@sda21(r0)
    bl OSRestoreInterrupts
    lwz r0, 0x1c(r1)
    lwz r31, 0x14(r1)
    lwz r30, 0x10(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

ASM void fn_8004809C(void)
{
    nofralloc
    lis r4, lbl_804B58A0@ha
    addi r0, r4, lbl_804B58A0@l
    cmplw r3, r0
    opword  0x4082000C  // bne .L_800480B4
    li r3, 0x1
    blr
L_800480B4:
    lis r4, AlarmForTimeout@ha
    addi r0, r4, AlarmForTimeout@l
    cmplw r3, r0
    opword  0x4082000C  // bne .L_800480CC
    li r3, 0x1
    blr
L_800480CC:
    li r3, 0x0
    blr
}

ASM void __DVDFSInit(void)
{
    nofralloc
    lis r3, 0x8000
    opword  0x906D8928  // stw r3, BootInfo_8053A4E8@sda21(r0)
    lwz r0, 0x38(r3)
    opword  0x900D892C  // stw r0, FstStart_8053A4EC@sda21(r0)
    opword  0x806D892C  // lwz r3, FstStart_8053A4EC@sda21(r0)
    cmplwi r3, 0x0
    beqlr
    lwz r0, 0x8(r3)
    opword  0x900D8934  // stw r0, MaxEntryNum_8053A4F4@sda21(r0)
    opword  0x800D8934  // lwz r0, MaxEntryNum_8053A4F4@sda21(r0)
    mulli r0, r0, 0xc
    add r0, r3, r0
    opword  0x900D8930  // stw r0, FstStringStart_8053A4F0@sda21(r0)
    blr
}

ASM void fn_8004810C(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x48(r1)
    stmw r20, 0x18(r1)
    mr r23, r3
    lis r3, lbl_80496048@ha
    addi r25, r23, 0x0
    addi r31, r3, lbl_80496048@l
    opword  0x834D8938  // lwz r26, lbl_8053A4F8@sda21(r0)
L_80048130:
    lbz r3, 0x0(r23)
    extsb. r0, r3
    opword  0x4082000C  // bne .L_80048144
    mr r3, r26
    opword  0x480002AC  // b .L_800483EC
L_80048144:
    extsb r0, r3
    cmpwi r0, 0x2f
    opword  0x40820010  // bne .L_8004815C
    li r26, 0x0
    addi r23, r23, 0x1
    opword  0x4BFFFFD8  // b .L_80048130
L_8004815C:
    cmpwi r0, 0x2e
    opword  0x40820074  // bne .L_800481D4
    lbz r3, 0x1(r23)
    extsb r0, r3
    cmpwi r0, 0x2e
    opword  0x40820044  // bne .L_800481B4
    lbz r3, 0x2(r23)
    cmpwi r3, 0x2f
    opword  0x4082001C  // bne .L_80048198
    mulli r3, r26, 0xc
    opword  0x808D892C  // lwz r4, FstStart_8053A4EC@sda21(r0)
    addi r0, r3, 0x4
    lwzx r26, r4, r0
    addi r23, r23, 0x3
    opword  0x4BFFFF9C  // b .L_80048130
L_80048198:
    extsb. r0, r3
    opword  0x40820038  // bne .L_800481D4
    mulli r0, r26, 0xc
    opword  0x806D892C  // lwz r3, FstStart_8053A4EC@sda21(r0)
    add r3, r3, r0
    lwz r3, 0x4(r3)
    opword  0x4800023C  // b .L_800483EC
L_800481B4:
    cmpwi r0, 0x2f
    opword  0x4082000C  // bne .L_800481C4
    addi r23, r23, 0x2
    opword  0x4BFFFF70  // b .L_80048130
L_800481C4:
    extsb. r0, r3
    opword  0x4082000C  // bne .L_800481D4
    mr r3, r26
    opword  0x4800021C  // b .L_800483EC
L_800481D4:
    opword  0x800D893C  // lwz r0, __DVDLongFileNameFlag@sda21(r0)
    cmplwi r0, 0x0
    opword  0x408200AC  // bne .L_80048288
    addi r28, r23, 0x0
    li r5, 0x0
    li r4, 0x0
    opword  0x48000048  // b .L_80048234
L_800481F0:
    extsb r0, r3
    cmpwi r0, 0x2e
    opword  0x4082002C  // bne .L_80048224
    subf r0, r23, r28
    cmpwi r0, 0x8
    opword  0x4181000C  // bgt .L_80048210
    cmpwi r5, 0x1
    opword  0x4082000C  // bne .L_80048218
L_80048210:
    li r4, 0x1
    opword  0x48000038  // b .L_8004824C
L_80048218:
    addi r24, r28, 0x1
    li r5, 0x1
    opword  0x48000010  // b .L_80048230
L_80048224:
    cmpwi r0, 0x20
    opword  0x40820008  // bne .L_80048230
    li r4, 0x1
L_80048230:
    addi r28, r28, 0x1
L_80048234:
    lbz r3, 0x0(r28)
    extsb. r0, r3
    opword  0x41820010  // beq .L_8004824C
    extsb r0, r3
    cmpwi r0, 0x2f
    opword  0x4082FFA8  // bne .L_800481F0
L_8004824C:
    cmpwi r5, 0x1
    opword  0x40820014  // bne .L_80048264
    subf r0, r24, r28
    cmpwi r0, 0x3
    opword  0x40810008  // ble .L_80048264
    li r4, 0x1
L_80048264:
    cmpwi r4, 0x0
    opword  0x41820044  // beq .L_800482AC
    addi r5, r31, 0x0
    crclr 6
    addi r6, r25, 0x0
    opword  0x386D8078  // li r3, lbl_80539C38@sda21
    li r4, 0x183
    bl OSPanic
    opword  0x48000028  // b .L_800482AC
L_80048288:
    mr r28, r23
    opword  0x48000008  // b .L_80048294
L_80048290:
    addi r28, r28, 0x1
L_80048294:
    lbz r3, 0x0(r28)
    extsb. r0, r3
    opword  0x41820010  // beq .L_800482AC
    extsb r0, r3
    cmpwi r0, 0x2f
    opword  0x4082FFE8  // bne .L_80048290
L_800482AC:
    lbz r0, 0x0(r28)
    extsb. r0, r0
    opword  0x4082000C  // bne .L_800482C0
    li r30, 0x0
    opword  0x48000008  // b .L_800482C4
L_800482C0:
    li r30, 0x1
L_800482C4:
    mulli r29, r26, 0xc
    subf r27, r23, r28
    addi r26, r26, 0x1
    opword  0x480000E4  // b .L_800483B4
L_800482D4:
    mulli r28, r26, 0xc
    lwzx r4, r3, r28
    clrrwi. r0, r4, 24
    opword  0x4082000C  // bne .L_800482EC
    li r0, 0x0
    opword  0x48000008  // b .L_800482F0
L_800482EC:
    li r0, 0x1
L_800482F0:
    cmpwi r0, 0x0
    opword  0x4082000C  // bne .L_80048300
    cmpwi r30, 0x1
    opword  0x41820080  // beq .L_8004837C
L_80048300:
    opword  0x806D8930  // lwz r3, FstStringStart_8053A4F0@sda21(r0)
    clrlwi r0, r4, 8
    addi r21, r23, 0x0
    add r20, r3, r0
    opword  0x48000038  // b .L_80048348
L_80048314:
    lbz r0, 0x0(r20)
    addi r20, r20, 0x1
    extsb r3, r0
    bl fn_8006A36C
    lbz r0, 0x0(r21)
    addi r22, r3, 0x0
    addi r21, r21, 0x1
    extsb r3, r0
    bl fn_8006A36C
    cmpw r3, r22
    opword  0x4182000C  // beq .L_80048348
    li r0, 0x0
    opword  0x48000030  // b .L_80048374
L_80048348:
    lbz r0, 0x0(r20)
    extsb. r0, r0
    opword  0x4082FFC4  // bne .L_80048314
    lbz r3, 0x0(r21)
    cmpwi r3, 0x2f
    opword  0x4182000C  // beq .L_80048368
    extsb. r0, r3
    opword  0x4082000C  // bne .L_80048370
L_80048368:
    li r0, 0x1
    opword  0x48000008  // b .L_80048374
L_80048370:
    li r0, 0x0
L_80048374:
    cmpwi r0, 0x1
    opword  0x41820058  // beq .L_800483D0
L_8004837C:
    opword  0x800D892C  // lwz r0, FstStart_8053A4EC@sda21(r0)
    add r3, r0, r28
    lwz r0, 0x0(r3)
    clrrwi. r0, r0, 24
    opword  0x4082000C  // bne .L_80048398
    li r0, 0x0
    opword  0x48000008  // b .L_8004839C
L_80048398:
    li r0, 0x1
L_8004839C:
    cmpwi r0, 0x0
    opword  0x4182000C  // beq .L_800483AC
    lwz r0, 0x8(r3)
    opword  0x48000008  // b .L_800483B0
L_800483AC:
    addi r0, r26, 0x1
L_800483B0:
    mr r26, r0
L_800483B4:
    opword  0x806D892C  // lwz r3, FstStart_8053A4EC@sda21(r0)
    addi r0, r3, 0x8
    lwzx r0, r29, r0
    cmplw r26, r0
    opword  0x4180FF10  // blt .L_800482D4
    li r3, -0x1
    opword  0x48000020  // b .L_800483EC
L_800483D0:
    cmpwi r30, 0x0
    opword  0x4082000C  // bne .L_800483E0
    mr r3, r26
    opword  0x48000010  // b .L_800483EC
L_800483E0:
    add r23, r27, r23
    addi r23, r23, 0x1
    opword  0x4BFFFD48  // b .L_80048130
L_800483EC:
    lmw r20, 0x18(r1)
    lwz r0, 0x4c(r1)
    addi r1, r1, 0x48
    mtlr r0
    blr
}

ASM void fn_80048400(void)
{
    nofralloc
    cmpwi r3, 0x0
    opword  0x41800038  // blt .L_8004843C
    opword  0x800D8934  // lwz r0, MaxEntryNum_8053A4F4@sda21(r0)
    cmplw r3, r0
    opword  0x4080002C  // bge .L_8004843C
    mulli r6, r3, 0xc
    opword  0x806D892C  // lwz r3, FstStart_8053A4EC@sda21(r0)
    lwzx r0, r3, r6
    clrrwi. r0, r0, 24
    opword  0x4082000C  // bne .L_80048430
    li r0, 0x0
    opword  0x48000008  // b .L_80048434
L_80048430:
    li r0, 0x1
L_80048434:
    cmpwi r0, 0x0
    opword  0x4182000C  // beq .L_80048444
L_8004843C:
    li r3, 0x0
    blr
L_80048444:
    add r3, r3, r6
    lwz r5, 0x4(r3)
    li r0, 0x0
    li r3, 0x1
    stw r5, 0x30(r4)
    opword  0x80AD892C  // lwz r5, FstStart_8053A4EC@sda21(r0)
    add r5, r5, r6
    lwz r5, 0x8(r5)
    stw r5, 0x34(r4)
    stw r0, 0x38(r4)
    stw r0, 0xc(r4)
    blr
}

ASM void fn_80048474(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x98(r1)
    stw r31, 0x94(r1)
    addi r31, r4, 0x0
    stw r30, 0x90(r1)
    addi r30, r3, 0x0
    bl fn_8004810C
    cmpwi r3, 0x0
    opword  0x40800030  // bge .L_800484C8
    addi r3, r1, 0x10
    li r4, 0x80
    bl fn_800486C0
    lis r3, lbl_80496110@ha
    crclr 6
    addi r3, r3, lbl_80496110@l
    addi r4, r30, 0x0
    addi r5, r1, 0x10
    bl OSReport
    li r3, 0x0
    opword  0x48000060  // b .L_80048524
L_800484C8:
    mulli r5, r3, 0xc
    opword  0x806D892C  // lwz r3, FstStart_8053A4EC@sda21(r0)
    lwzx r0, r3, r5
    clrrwi. r0, r0, 24
    opword  0x4082000C  // bne .L_800484E4
    li r0, 0x0
    opword  0x48000008  // b .L_800484E8
L_800484E4:
    li r0, 0x1
L_800484E8:
    cmpwi r0, 0x0
    opword  0x4182000C  // beq .L_800484F8
    li r3, 0x0
    opword  0x48000030  // b .L_80048524
L_800484F8:
    add r3, r3, r5
    lwz r4, 0x4(r3)
    li r0, 0x0
    li r3, 0x1
    stw r4, 0x30(r31)
    opword  0x808D892C  // lwz r4, FstStart_8053A4EC@sda21(r0)
    add r4, r4, r5
    lwz r4, 0x8(r4)
    stw r4, 0x34(r31)
    stw r0, 0x38(r31)
    stw r0, 0xc(r31)
L_80048524:
    lwz r0, 0x9c(r1)
    lwz r31, 0x94(r1)
    lwz r30, 0x90(r1)
    addi r1, r1, 0x98
    mtlr r0
    blr
}

ASM void fn_8004853C(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x8(r1)
    bl fn_8004ADC0
    li r3, 0x1
    lwz r0, 0xc(r1)
    addi r1, r1, 0x8
    mtlr r0
    blr
}

ASM void fn_80048560(void)
{
    nofralloc
    mflr r0
    cmplwi r3, 0x0
    stw r0, 0x4(r1)
    stwu r1, -0x30(r1)
    stw r31, 0x2c(r1)
    stw r30, 0x28(r1)
    addi r30, r5, 0x0
    stw r29, 0x24(r1)
    addi r29, r4, 0x0
    stw r28, 0x20(r1)
    opword  0x4082000C  // bne .L_80048594
    li r3, 0x0
    opword  0x48000110  // b .L_800486A0
L_80048594:
    opword  0x808D892C  // lwz r4, FstStart_8053A4EC@sda21(r0)
    mulli r3, r3, 0xc
    opword  0x80CD8930  // lwz r6, FstStringStart_8053A4F0@sda21(r0)
    addi r5, r4, 0x4
    lwzx r0, r4, r3
    lwzx r3, r5, r3
    clrlwi r0, r0, 8
    cmplwi r3, 0x0
    add r31, r6, r0
    opword  0x4082000C  // bne .L_800485C4
    li r3, 0x0
    opword  0x48000080  // b .L_80048640
L_800485C4:
    mulli r3, r3, 0xc
    lwzx r0, r4, r3
    mr r4, r29
    lwzx r3, r5, r3
    addi r5, r30, 0x0
    clrlwi r0, r0, 8
    add r28, r6, r0
    bl fn_80048560
    cmplw r3, r30
    opword  0x40820008  // bne .L_800485F0
    opword  0x48000054  // b .L_80048640
L_800485F0:
    addi r0, r3, 0x0
    addi r3, r3, 0x1
    li r4, 0x2f
    subf r6, r3, r30
    stbx r4, r29, r0
    addi r4, r6, 0x0
    add r5, r29, r3
    opword  0x48000018  // b .L_80048624
L_80048610:
    lbz r0, 0x0(r28)
    addi r28, r28, 0x1
    subi r4, r4, 0x1
    stb r0, 0x0(r5)
    addi r5, r5, 0x1
L_80048624:
    cmplwi r4, 0x0
    opword  0x41820010  // beq .L_80048638
    lbz r0, 0x0(r28)
    extsb. r0, r0
    opword  0x4082FFDC  // bne .L_80048610
L_80048638:
    subf r0, r4, r6
    add r3, r3, r0
L_80048640:
    cmplw r3, r30
    opword  0x40820008  // bne .L_8004864C
    opword  0x48000058  // b .L_800486A0
L_8004864C:
    addi r0, r3, 0x0
    addi r3, r3, 0x1
    li r4, 0x2f
    subf r7, r3, r30
    stbx r4, r29, r0
    addi r6, r31, 0x0
    addi r4, r7, 0x0
    add r5, r29, r3
    opword  0x48000018  // b .L_80048684
L_80048670:
    lbz r0, 0x0(r6)
    addi r6, r6, 0x1
    subi r4, r4, 0x1
    stb r0, 0x0(r5)
    addi r5, r5, 0x1
L_80048684:
    cmplwi r4, 0x0
    opword  0x41820010  // beq .L_80048698
    lbz r0, 0x0(r6)
    extsb. r0, r0
    opword  0x4082FFDC  // bne .L_80048670
L_80048698:
    subf r0, r4, r7
    add r3, r3, r0
L_800486A0:
    lwz r0, 0x34(r1)
    lwz r31, 0x2c(r1)
    lwz r30, 0x28(r1)
    lwz r29, 0x24(r1)
    lwz r28, 0x20(r1)
    addi r1, r1, 0x30
    mtlr r0
    blr
}

ASM void fn_800486C0(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x20(r1)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    addi r30, r4, 0x0
    addi r5, r30, 0x0
    stw r29, 0x14(r1)
    addi r29, r3, 0x0
    addi r4, r29, 0x0
    opword  0x83ED8938  // lwz r31, lbl_8053A4F8@sda21(r0)
    addi r3, r31, 0x0
    bl fn_80048560
    cmplw r3, r30
    opword  0x40820014  // bne .L_8004870C
    li r0, 0x0
    add r3, r29, r30
    stb r0, -0x1(r3)
    opword  0x4800005C  // b .L_80048764
L_8004870C:
    mulli r0, r31, 0xc
    opword  0x808D892C  // lwz r4, FstStart_8053A4EC@sda21(r0)
    lwzx r0, r4, r0
    clrrwi. r0, r0, 24
    opword  0x4082000C  // bne .L_80048728
    li r0, 0x0
    opword  0x48000008  // b .L_8004872C
L_80048728:
    li r0, 0x1
L_8004872C:
    cmpwi r0, 0x0
    opword  0x41820028  // beq .L_80048758
    subi r0, r30, 0x1
    cmplw r3, r0
    opword  0x40820010  // bne .L_8004874C
    li r0, 0x0
    stbx r0, r29, r3
    opword  0x4800001C  // b .L_80048764
L_8004874C:
    li r0, 0x2f
    stbx r0, r29, r3
    addi r3, r3, 0x1
L_80048758:
    li r0, 0x0
    stbx r0, r29, r3
    li r0, 0x1
L_80048764:
    mr r3, r0
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    addi r1, r1, 0x20
    mtlr r0
    blr
}

ASM void fn_80048784(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x38(r1)
    stmw r26, 0x20(r1)
    mr. r29, r6
    addi r26, r3, 0x0
    addi r27, r4, 0x0
    addi r28, r5, 0x0
    addi r30, r7, 0x0
    addi r31, r8, 0x0
    opword  0x41800010  // blt .L_800487BC
    lwz r0, 0x34(r26)
    cmplw r29, r0
    opword  0x4081001C  // ble .L_800487D4
L_800487BC:
    lis r3, lbl_80496148@ha
    crclr 6
    addi r5, r3, lbl_80496148@l
    opword  0x386D8078  // li r3, lbl_80539C38@sda21
    li r4, 0x2ee
    bl OSPanic
L_800487D4:
    add. r4, r29, r28
    opword  0x41800014  // blt .L_800487EC
    lwz r3, 0x34(r26)
    addi r0, r3, 0x20
    cmplw r4, r0
    opword  0x4180001C  // blt .L_80048804
L_800487EC:
    lis r3, lbl_80496148@ha
    crclr 6
    addi r5, r3, lbl_80496148@l
    opword  0x386D8078  // li r3, lbl_80539C38@sda21
    li r4, 0x2f4
    bl OSPanic
L_80048804:
    stw r30, 0x38(r26)
    lis r3, fn_80048844@ha
    addi r7, r3, fn_80048844@l
    lwz r0, 0x30(r26)
    addi r3, r26, 0x0
    addi r4, r27, 0x0
    addi r5, r28, 0x0
    addi r8, r31, 0x0
    add r6, r0, r29
    bl DVDReadAbsAsyncPrio
    lmw r26, 0x20(r1)
    li r3, 0x1
    lwz r0, 0x3c(r1)
    addi r1, r1, 0x38
    mtlr r0
    blr
}

ASM void fn_80048844(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x8(r1)
    lwz r12, 0x38(r4)
    cmplwi r12, 0x0
    opword  0x4182000C  // beq .L_80048864
    mtlr r12
    blrl
L_80048864:
    lwz r0, 0xc(r1)
    addi r1, r1, 0x8
    mtlr r0
    blr
}

ASM void fn_80048874(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x38(r1)
    stmw r27, 0x24(r1)
    mr. r29, r6
    addi r31, r3, 0x0
    addi r27, r4, 0x0
    addi r28, r5, 0x0
    addi r30, r7, 0x0
    opword  0x41800010  // blt .L_800488A8
    lwz r0, 0x34(r31)
    cmplw r29, r0
    opword  0x4081001C  // ble .L_800488C0
L_800488A8:
    lis r3, lbl_8049617C@ha
    crclr 6
    addi r5, r3, lbl_8049617C@l
    opword  0x386D8078  // li r3, lbl_80539C38@sda21
    li r4, 0x334
    bl OSPanic
L_800488C0:
    add. r4, r29, r28
    opword  0x41800014  // blt .L_800488D8
    lwz r3, 0x34(r31)
    addi r0, r3, 0x20
    cmplw r4, r0
    opword  0x4180001C  // blt .L_800488F0
L_800488D8:
    lis r3, lbl_8049617C@ha
    crclr 6
    addi r5, r3, lbl_8049617C@l
    opword  0x386D8078  // li r3, lbl_80539C38@sda21
    li r4, 0x33a
    bl OSPanic
L_800488F0:
    lwz r0, 0x30(r31)
    lis r4, fn_8004898C@ha
    addi r7, r4, fn_8004898C@l
    addi r3, r31, 0x0
    addi r4, r27, 0x0
    addi r5, r28, 0x0
    addi r8, r30, 0x0
    add r6, r0, r29
    bl DVDReadAbsAsyncPrio
    cmpwi r3, 0x0
    opword  0x4082000C  // bne .L_80048924
    li r3, -0x1
    opword  0x48000058  // b .L_80048978
L_80048924:
    bl OSDisableInterrupts
    mr r30, r3
L_8004892C:
    lwz r0, 0xc(r31)
    cmpwi r0, 0x0
    opword  0x4082000C  // bne .L_80048940
    lwz r31, 0x20(r31)
    opword  0x48000030  // b .L_8004896C
L_80048940:
    cmpwi r0, -0x1
    opword  0x4082000C  // bne .L_80048950
    li r31, -0x1
    opword  0x48000020  // b .L_8004896C
L_80048950:
    cmpwi r0, 0xa
    opword  0x4082000C  // bne .L_80048960
    li r31, -0x3
    opword  0x48000010  // b .L_8004896C
L_80048960:
    opword  0x386D8940  // li r3, __DVDThreadQueue@sda21
    bl OSSleepThread
    opword  0x4BFFFFC4  // b .L_8004892C
L_8004896C:
    mr r3, r30
    bl OSRestoreInterrupts
    mr r3, r31
L_80048978:
    lmw r27, 0x24(r1)
    lwz r0, 0x3c(r1)
    addi r1, r1, 0x38
    mtlr r0
    blr
}

ASM void fn_8004898C(void)
{
    nofralloc
    mflr r0
    opword  0x386D8940  // li r3, __DVDThreadQueue@sda21
    stw r0, 0x4(r1)
    stwu r1, -0x8(r1)
    bl OSWakeupThread
    lwz r0, 0xc(r1)
    addi r1, r1, 0x8
    mtlr r0
    blr
}

ASM void fn_800489B0(void)
{
    nofralloc
    blr
}

ASM void DVDInit(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x10(r1)
    stw r31, 0xc(r1)
    opword  0x800D8988  // lwz r0, DVDInitialized_8053A548@sda21(r0)
    cmpwi r0, 0x0
    opword  0x408200A0  // bne .L_80048A6C
    opword  0x806D8080  // lwz r3, __DVDVersion@sda21(r0)
    bl OSRegisterVersion
    li r31, 0x1
    opword  0x93ED8988  // stw r31, DVDInitialized_8053A548@sda21(r0)
    bl __DVDFSInit
    bl __DVDClearWaitingQueue
    bl __DVDInitWA
    lis r0, 0x8000
    lis r3, __DVDInterruptHandler@ha
    opword  0x900D8950  // stw r0, bootInfo_8053A510@sda21(r0)
    addi r4, r3, __DVDInterruptHandler@l
    opword  0x900D894C  // stw r0, IDShouldBe_8053A50C@sda21(r0)
    li r3, 0x15
    bl __OSSetInterruptHandler
    li r3, 0x400
    bl __OSUnmaskInterrupts
    opword  0x386D8940  // li r3, __DVDThreadQueue@sda21
    bl OSInitThreadQueue
    lis r3, 0xcc00
    li r0, 0x2a
    stw r0, 0x6000(r3)
    li r0, 0x0
    stw r0, 0x6004(r3)
    opword  0x806D8950  // lwz r3, bootInfo_8053A510@sda21(r0)
    addi r3, r3, 0x20
    lwz r3, 0x0(r3)
    addis r0, r3, 0x1ae0
    cmplwi r0, 0x7c22
    opword  0x4082001C  // bne .L_80048A5C
    opword  0x3C608049  // lis r3, "@18_804961F8"@ha
    crclr 6
    opword  0x386361F8  // addi r3, r3, "@18_804961F8"@l
    bl OSReport
    bl __fstLoad
    opword  0x48000014  // b .L_80048A6C
L_80048A5C:
    subis r0, r3, 0xd15
    cmplwi r0, 0xea5e
    opword  0x41820008  // beq .L_80048A6C
    opword  0x93ED8984  // stw r31, FirstTimeInBootrom_8053A544@sda21(r0)
L_80048A6C:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    addi r1, r1, 0x10
    mtlr r0
    blr
}

ASM void fn_80048A80(void)
{
    nofralloc
    mflr r0
    lis r3, fn_80048A80@ha
    stw r0, 0x4(r1)
    addi r0, r3, fn_80048A80@l
    lis r3, BB2@ha
    stwu r1, -0x10(r1)
    addi r3, r3, BB2@l
    stw r31, 0xc(r1)
    addi r31, r3, 0x8
    opword  0x900D898C  // stw r0, lbl_8053A54C@sda21(r0)
    opword  0x808D8950  // lwz r4, bootInfo_8053A510@sda21(r0)
    lwz r0, 0x0(r31)
    lwz r3, 0x3c(r4)
    cmplw r3, r0
    opword  0x4080001C  // bge .L_80048AD4
    lis r3, lbl_80496204@ha
    crclr 6
    addi r5, r3, lbl_80496204@l
    opword  0x386D808C  // li r3, lbl_80539C4C@sda21
    li r4, 0x28a
    bl OSPanic
L_80048AD4:
    lis r3, BB2@ha
    lwz r6, 0x0(r31)
    addi r5, r3, BB2@l
    opword  0x80ED8950  // lwz r7, bootInfo_8053A510@sda21(r0)
    lis r4, fn_80048B14@ha
    lwz r5, 0x4(r5)
    addi r0, r6, 0x1f
    lwz r3, 0x38(r7)
    addi r6, r4, fn_80048B14@l
    clrrwi r4, r0, 5
    bl fn_800477FC
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    addi r1, r1, 0x10
    mtlr r0
    blr
}

ASM void fn_80048B14(void)
{
    nofralloc
    mflr r0
    cmplwi r3, 0x10
    stw r0, 0x4(r1)
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    opword  0x40820018  // bne .L_80048B40
    opword  0x806D8948  // lwz r3, executing_8053A508@sda21(r0)
    li r0, -0x1
    stw r0, 0xc(r3)
    bl fn_80048C4C
    opword  0x48000050  // b .L_80048B8C
L_80048B40:
    clrlwi. r0, r3, 31
    opword  0x41820044  // beq .L_80048B88
    li r31, 0x0
    opword  0x93ED897C  // stw r31, lbl_8053A53C@sda21(r0)
    bl __DVDFSInit
    lis r3, DummyCommandBlock@ha
    opword  0x808D8948  // lwz r4, executing_8053A508@sda21(r0)
    addi r0, r3, DummyCommandBlock@l
    opword  0x900D8948  // stw r0, executing_8053A508@sda21(r0)
    stw r31, 0xc(r4)
    lwz r12, 0x28(r4)
    cmplwi r12, 0x0
    opword  0x41820010  // beq .L_80048B80
    mtlr r12
    li r3, 0x0
    blrl
L_80048B80:
    bl stateReady
    opword  0x48000008  // b .L_80048B8C
L_80048B88:
    bl fn_80048C80
L_80048B8C:
    lwz r0, 0x1c(r1)
    lwz r31, 0x14(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

ASM void cbForStateError(void)
{
    nofralloc
    mflr r0
    cmplwi r3, 0x10
    stw r0, 0x4(r1)
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    opword  0x40820018  // bne .L_80048BCC
    opword  0x806D8948  // lwz r3, executing_8053A508@sda21(r0)
    li r0, -0x1
    stw r0, 0xc(r3)
    bl fn_80048C4C
    opword  0x48000070  // b .L_80048C38
L_80048BCC:
    bl fn_8004B56C
    lis r3, DummyCommandBlock@ha
    opword  0x83ED8948  // lwz r31, executing_8053A508@sda21(r0)
    addi r0, r3, DummyCommandBlock@l
    li r3, 0x1
    opword  0x900D8948  // stw r0, executing_8053A508@sda21(r0)
    opword  0x906D8960  // stw r3, FatalErrorFlag_8053A520@sda21(r0)
    lwz r12, 0x28(r31)
    cmplwi r12, 0x0
    opword  0x41820014  // beq .L_80048C04
    mtlr r12
    addi r4, r31, 0x0
    li r3, -0x1
    blrl
L_80048C04:
    opword  0x800D8968  // lwz r0, lbl_8053A528@sda21(r0)
    cmplwi r0, 0x0
    opword  0x41820028  // beq .L_80048C34
    opword  0x818D896C  // lwz r12, lbl_8053A52C@sda21(r0)
    li r0, 0x0
    opword  0x900D8968  // stw r0, lbl_8053A528@sda21(r0)
    cmplwi r12, 0x0
    opword  0x41820014  // beq .L_80048C34
    mtlr r12
    addi r4, r31, 0x0
    li r3, 0x0
    blrl
L_80048C34:
    bl stateReady
L_80048C38:
    lwz r0, 0x1c(r1)
    lwz r31, 0x14(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

ASM void fn_80048C4C(void)
{
    nofralloc
    mflr r0
    lis r3, 0x123
    stw r0, 0x4(r1)
    addi r3, r3, 0x4568
    stwu r1, -0x8(r1)
    bl __DVDStoreErrorCode
    bl DVDReset
    li r3, 0x0
    bl cbForStateError
    lwz r0, 0xc(r1)
    addi r1, r1, 0x8
    mtlr r0
    blr
}

ASM void fn_80048C80(void)
{
    nofralloc
    mflr r0
    lis r3, fn_80048D5C@ha
    stw r0, 0x4(r1)
    addi r3, r3, fn_80048D5C@l
    stwu r1, -0x8(r1)
    bl fn_80047C84
    lwz r0, 0xc(r1)
    addi r1, r1, 0x8
    mtlr r0
    blr
}

ASM void fn_80048CA8(void)
{
    nofralloc
    subis r0, r3, 0x2
    cmplwi r0, 0x400
    opword  0x40820010  // bne .L_80048CC0
    opword  0x906D8978  // stw r3, lbl_8053A538@sda21(r0)
    li r3, 0x1
    blr
L_80048CC0:
    clrlwi r4, r3, 8
    subis r0, r4, 0x6
    cmplwi r0, 0x2800
    opword  0x4182001C  // beq .L_80048CE8
    subis r0, r4, 0x2
    cmplwi r0, 0x3a00
    opword  0x41820010  // beq .L_80048CE8
    subis r0, r4, 0xb
    cmplwi r0, 0x5a01
    opword  0x4082000C  // bne .L_80048CF0
L_80048CE8:
    li r3, 0x0
    blr
L_80048CF0:
    opword  0x806D897C  // lwz r3, lbl_8053A53C@sda21(r0)
    addi r0, r3, 0x1
    opword  0x900D897C  // stw r0, lbl_8053A53C@sda21(r0)
    opword  0x800D897C  // lwz r0, lbl_8053A53C@sda21(r0)
    cmpwi r0, 0x2
    opword  0x40820028  // bne .L_80048D2C
    opword  0x800D8978  // lwz r0, lbl_8053A538@sda21(r0)
    cmplw r4, r0
    opword  0x40820010  // bne .L_80048D20
    opword  0x908D8978  // stw r4, lbl_8053A538@sda21(r0)
    li r3, 0x1
    blr
L_80048D20:
    opword  0x908D8978  // stw r4, lbl_8053A538@sda21(r0)
    li r3, 0x2
    blr
L_80048D2C:
    subis r0, r4, 0x3
    opword  0x908D8978  // stw r4, lbl_8053A538@sda21(r0)
    cmplwi r0, 0x1100
    opword  0x41820014  // beq .L_80048D4C
    opword  0x806D8948  // lwz r3, executing_8053A508@sda21(r0)
    lwz r0, 0x8(r3)
    cmplwi r0, 0x5
    opword  0x4082000C  // bne .L_80048D54
L_80048D4C:
    li r3, 0x2
    blr
L_80048D54:
    li r3, 0x3
    blr
}

ASM void fn_80048D5C(void)
{
    nofralloc
    mflr r0
    cmplwi r3, 0x10
    stw r0, 0x4(r1)
    stwu r1, -0x20(r1)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    stw r29, 0x14(r1)
    stw r28, 0x10(r1)
    opword  0x4082002C  // bne .L_80048DA8
    opword  0x808D8948  // lwz r4, executing_8053A508@sda21(r0)
    li r0, -0x1
    lis r3, 0x123
    stw r0, 0xc(r4)
    addi r3, r3, 0x4568
    bl __DVDStoreErrorCode
    bl DVDReset
    li r3, 0x0
    bl cbForStateError
    opword  0x4800022C  // b .L_80048FD0
L_80048DA8:
    rlwinm. r0, r3, 0, 30, 30
    opword  0x4182002C  // beq .L_80048DD8
    opword  0x808D8948  // lwz r4, executing_8053A508@sda21(r0)
    li r0, -0x1
    lis r3, 0x123
    stw r0, 0xc(r4)
    addi r3, r3, 0x4567
    bl __DVDStoreErrorCode
    lis r3, cbForStateError@ha
    addi r3, r3, cbForStateError@l
    bl DVDLowStopMotor
    opword  0x480001FC  // b .L_80048FD0
L_80048DD8:
    lis r3, 0xcc00
    lwz r29, 0x6020(r3)
    addi r3, r29, 0x0
    clrrwi r28, r29, 24
    bl fn_80048CA8
    addi r31, r3, 0x0
    cmplwi r31, 0x1
    opword  0x40820028  // bne .L_80048E1C
    opword  0x808D8948  // lwz r4, executing_8053A508@sda21(r0)
    li r0, -0x1
    addi r3, r29, 0x0
    stw r0, 0xc(r4)
    bl __DVDStoreErrorCode
    lis r3, cbForStateError@ha
    addi r3, r3, cbForStateError@l
    bl DVDLowStopMotor
    opword  0x480001B8  // b .L_80048FD0
L_80048E1C:
    subi r0, r31, 0x2
    cmplwi r0, 0x1
    opword  0x4181000C  // bgt .L_80048E30
    li r4, 0x0
    opword  0x48000044  // b .L_80048E70
L_80048E30:
    subis r0, r28, 0x100
    cmplwi r0, 0x0
    opword  0x4082000C  // bne .L_80048E44
    li r4, 0x4
    opword  0x48000030  // b .L_80048E70
L_80048E44:
    subis r0, r28, 0x200
    cmplwi r0, 0x0
    opword  0x4082000C  // bne .L_80048E58
    li r4, 0x6
    opword  0x4800001C  // b .L_80048E70
L_80048E58:
    subis r0, r28, 0x300
    cmplwi r0, 0x0
    opword  0x4082000C  // bne .L_80048E6C
    li r4, 0x3
    opword  0x48000008  // b .L_80048E70
L_80048E6C:
    li r4, 0x5
L_80048E70:
    opword  0x800D8968  // lwz r0, lbl_8053A528@sda21(r0)
    cmplwi r0, 0x0
    opword  0x4182006C  // beq .L_80048EE4
    lis r3, DummyCommandBlock@ha
    opword  0x908D8970  // stw r4, ResumeFromHere_8053A530@sda21(r0)
    li r0, 0x0
    opword  0x83CD8948  // lwz r30, executing_8053A508@sda21(r0)
    addi r3, r3, DummyCommandBlock@l
    opword  0x900D8968  // stw r0, lbl_8053A528@sda21(r0)
    li r0, 0xa
    opword  0x906D8948  // stw r3, executing_8053A508@sda21(r0)
    stw r0, 0xc(r30)
    lwz r12, 0x28(r30)
    cmplwi r12, 0x0
    opword  0x41820014  // beq .L_80048EBC
    mtlr r12
    addi r4, r30, 0x0
    li r3, -0x3
    blrl
L_80048EBC:
    opword  0x818D896C  // lwz r12, lbl_8053A52C@sda21(r0)
    cmplwi r12, 0x0
    opword  0x41820014  // beq .L_80048ED8
    mtlr r12
    addi r4, r30, 0x0
    li r3, 0x0
    blrl
L_80048ED8:
    bl stateReady
    li r0, 0x1
    opword  0x48000008  // b .L_80048EE8
L_80048EE4:
    li r0, 0x0
L_80048EE8:
    cmpwi r0, 0x0
    opword  0x408200E4  // bne .L_80048FD0
    cmplwi r31, 0x2
    opword  0x40820014  // bne .L_80048F08
    mr r3, r29
    bl __DVDStoreErrorCode
    bl fn_800490F0
    opword  0x480000CC  // b .L_80048FD0
L_80048F08:
    cmplwi r31, 0x3
    opword  0x40820040  // bne .L_80048F4C
    clrlwi r3, r29, 8
    subis r0, r3, 0x3
    cmplwi r0, 0x1100
    opword  0x4082001C  // bne .L_80048F38
    opword  0x80AD8948  // lwz r5, executing_8053A508@sda21(r0)
    lis r3, fn_80048FF0@ha
    addi r4, r3, fn_80048FF0@l
    lwz r3, 0x10(r5)
    bl fn_80047A94
    opword  0x4800009C  // b .L_80048FD0
L_80048F38:
    opword  0x818D898C  // lwz r12, lbl_8053A54C@sda21(r0)
    opword  0x806D8948  // lwz r3, executing_8053A508@sda21(r0)
    mtlr r12
    blrl
    opword  0x48000088  // b .L_80048FD0
L_80048F4C:
    subis r0, r28, 0x100
    cmplwi r0, 0x0
    opword  0x40820018  // bne .L_80048F6C
    opword  0x806D8948  // lwz r3, executing_8053A508@sda21(r0)
    li r0, 0x5
    stw r0, 0xc(r3)
    bl fn_80049908
    opword  0x48000068  // b .L_80048FD0
L_80048F6C:
    subis r0, r28, 0x200
    cmplwi r0, 0x0
    opword  0x40820018  // bne .L_80048F8C
    opword  0x806D8948  // lwz r3, executing_8053A508@sda21(r0)
    li r0, 0x3
    stw r0, 0xc(r3)
    bl fn_8004979C
    opword  0x48000048  // b .L_80048FD0
L_80048F8C:
    subis r0, r28, 0x300
    cmplwi r0, 0x0
    opword  0x40820018  // bne .L_80048FAC
    opword  0x806D8948  // lwz r3, executing_8053A508@sda21(r0)
    li r0, 0x4
    stw r0, 0xc(r3)
    bl fn_80049908
    opword  0x48000028  // b .L_80048FD0
L_80048FAC:
    opword  0x808D8948  // lwz r4, executing_8053A508@sda21(r0)
    li r0, -0x1
    lis r3, 0x123
    stw r0, 0xc(r4)
    addi r3, r3, 0x4567
    bl __DVDStoreErrorCode
    lis r3, cbForStateError@ha
    addi r3, r3, cbForStateError@l
    bl DVDLowStopMotor
L_80048FD0:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    lwz r28, 0x10(r1)
    addi r1, r1, 0x20
    mtlr r0
    blr
}

ASM void fn_80048FF0(void)
{
    nofralloc
    mflr r0
    cmplwi r3, 0x10
    stw r0, 0x4(r1)
    stwu r1, -0x8(r1)
    opword  0x4082002C  // bne .L_8004902C
    opword  0x808D8948  // lwz r4, executing_8053A508@sda21(r0)
    li r0, -0x1
    lis r3, 0x123
    stw r0, 0xc(r4)
    addi r3, r3, 0x4568
    bl __DVDStoreErrorCode
    bl DVDReset
    li r3, 0x0
    bl cbForStateError
    opword  0x48000020  // b .L_80049048
L_8004902C:
    clrlwi. r0, r3, 31
    opword  0x4182000C  // beq .L_8004903C
    bl fn_800490F0
    opword  0x48000010  // b .L_80049048
L_8004903C:
    lis r3, fn_80049058@ha
    addi r3, r3, fn_80049058@l
    bl fn_80047C84
L_80049048:
    lwz r0, 0xc(r1)
    addi r1, r1, 0x8
    mtlr r0
    blr
}

ASM void fn_80049058(void)
{
    nofralloc
    mflr r0
    cmplwi r3, 0x10
    stw r0, 0x4(r1)
    stwu r1, -0x8(r1)
    opword  0x4082002C  // bne .L_80049094
    opword  0x808D8948  // lwz r4, executing_8053A508@sda21(r0)
    li r0, -0x1
    lis r3, 0x123
    stw r0, 0xc(r4)
    addi r3, r3, 0x4568
    bl __DVDStoreErrorCode
    bl DVDReset
    li r3, 0x0
    bl cbForStateError
    opword  0x48000050  // b .L_800490E0
L_80049094:
    rlwinm. r0, r3, 0, 30, 30
    opword  0x806D8948  // lwz r3, executing_8053A508@sda21(r0)
    li r4, -0x1
    stw r4, 0xc(r3)
    opword  0x41820020  // beq .L_800490C4
    lis r3, 0x123
    addi r3, r3, 0x4567
    bl __DVDStoreErrorCode
    lis r3, cbForStateError@ha
    addi r3, r3, cbForStateError@l
    bl DVDLowStopMotor
    opword  0x48000020  // b .L_800490E0
L_800490C4:
    lis r3, 0xcc00
    addi r3, r3, 0x6000
    lwz r3, 0x20(r3)
    bl __DVDStoreErrorCode
    lis r3, cbForStateError@ha
    addi r3, r3, cbForStateError@l
    bl DVDLowStopMotor
L_800490E0:
    lwz r0, 0xc(r1)
    addi r1, r1, 0x8
    mtlr r0
    blr
}

ASM void fn_800490F0(void)
{
    nofralloc
    mflr r0
    lis r3, fn_80049118@ha
    stw r0, 0x4(r1)
    addi r3, r3, fn_80049118@l
    stwu r1, -0x8(r1)
    bl DVDLowStopMotor
    lwz r0, 0xc(r1)
    addi r1, r1, 0x8
    mtlr r0
    blr
}

ASM void fn_80049118(void)
{
    nofralloc
    mflr r0
    cmplwi r3, 0x10
    stw r0, 0x4(r1)
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    opword  0x4082002C  // bne .L_80049158
    opword  0x808D8948  // lwz r4, executing_8053A508@sda21(r0)
    li r0, -0x1
    lis r3, 0x123
    stw r0, 0xc(r4)
    addi r3, r3, 0x4568
    bl __DVDStoreErrorCode
    bl DVDReset
    li r3, 0x0
    bl cbForStateError
    opword  0x48000108  // b .L_8004925C
L_80049158:
    rlwinm. r0, r3, 0, 30, 30
    opword  0x4182002C  // beq .L_80049188
    opword  0x808D8948  // lwz r4, executing_8053A508@sda21(r0)
    li r0, -0x1
    lis r3, 0x123
    stw r0, 0xc(r4)
    addi r3, r3, 0x4567
    bl __DVDStoreErrorCode
    lis r3, cbForStateError@ha
    addi r3, r3, cbForStateError@l
    bl DVDLowStopMotor
    opword  0x480000D8  // b .L_8004925C
L_80049188:
    li r0, 0x0
    opword  0x900D897C  // stw r0, lbl_8053A53C@sda21(r0)
    opword  0x800D8964  // lwz r0, CurrCommand_8053A524@sda21(r0)
    cmplwi r0, 0x4
    opword  0x41820028  // beq .L_800491C0
    opword  0x800D8964  // lwz r0, CurrCommand_8053A524@sda21(r0)
    cmplwi r0, 0x5
    opword  0x4182001C  // beq .L_800491C0
    opword  0x800D8964  // lwz r0, CurrCommand_8053A524@sda21(r0)
    cmplwi r0, 0xd
    opword  0x41820010  // beq .L_800491C0
    opword  0x800D8964  // lwz r0, CurrCommand_8053A524@sda21(r0)
    cmplwi r0, 0xf
    opword  0x4082000C  // bne .L_800491C8
L_800491C0:
    li r0, 0x1
    opword  0x900D8980  // stw r0, ResetRequired_8053A540@sda21(r0)
L_800491C8:
    opword  0x800D8968  // lwz r0, lbl_8053A528@sda21(r0)
    cmplwi r0, 0x0
    opword  0x41820070  // beq .L_80049240
    li r0, 0x2
    opword  0x83ED8948  // lwz r31, executing_8053A508@sda21(r0)
    lis r3, DummyCommandBlock@ha
    opword  0x900D8970  // stw r0, ResumeFromHere_8053A530@sda21(r0)
    addi r0, r3, DummyCommandBlock@l
    li r3, 0x0
    opword  0x900D8948  // stw r0, executing_8053A508@sda21(r0)
    li r0, 0xa
    opword  0x906D8968  // stw r3, lbl_8053A528@sda21(r0)
    stw r0, 0xc(r31)
    lwz r12, 0x28(r31)
    cmplwi r12, 0x0
    opword  0x41820014  // beq .L_80049218
    mtlr r12
    addi r4, r31, 0x0
    li r3, -0x3
    blrl
L_80049218:
    opword  0x818D896C  // lwz r12, lbl_8053A52C@sda21(r0)
    cmplwi r12, 0x0
    opword  0x41820014  // beq .L_80049234
    mtlr r12
    addi r4, r31, 0x0
    li r3, 0x0
    blrl
L_80049234:
    bl stateReady
    li r0, 0x1
    opword  0x48000008  // b .L_80049244
L_80049240:
    li r0, 0x0
L_80049244:
    cmpwi r0, 0x0
    opword  0x40820014  // bne .L_8004925C
    opword  0x806D8948  // lwz r3, executing_8053A508@sda21(r0)
    li r0, 0xb
    stw r0, 0xc(r3)
    bl fn_80049908
L_8004925C:
    lwz r0, 0x1c(r1)
    lwz r31, 0x14(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

ASM void fn_80049270(void)
{
    nofralloc
    mflr r0
    lis r3, BB2@ha
    stw r0, 0x4(r1)
    stwu r1, -0x10(r1)
    stw r31, 0xc(r1)
    addi r31, r3, BB2@l
    opword  0x800D8964  // lwz r0, CurrCommand_8053A524@sda21(r0)
    cmpwi r0, 0x3
    opword  0x41820008  // beq .L_80049298
    opword  0x4800006C  // b .L_80049300
L_80049298:
    opword  0x808D8948  // lwz r4, executing_8053A508@sda21(r0)
    addi r3, r31, 0x20
    lwz r4, 0x24(r4)
    bl fn_8004B474
    cmpwi r3, 0x0
    opword  0x41820044  // beq .L_800492F0
    opword  0x806D894C  // lwz r3, IDShouldBe_8053A50C@sda21(r0)
    addi r4, r31, 0x20
    li r5, 0x20
    bl memcpy
    opword  0x808D8948  // lwz r4, executing_8053A508@sda21(r0)
    li r0, 0x1
    addi r3, r31, 0x0
    stw r0, 0xc(r4)
    li r4, 0x20
    bl DCInvalidateRange
    lis r4, fn_80049384@ha
    opword  0x806D8948  // lwz r3, executing_8053A508@sda21(r0)
    addi r0, r4, fn_80049384@l
    opword  0x900D898C  // stw r0, lbl_8053A54C@sda21(r0)
    bl fn_80049384
    opword  0x48000050  // b .L_8004933C
L_800492F0:
    lis r3, fn_80049464@ha
    addi r3, r3, fn_80049464@l
    bl DVDLowStopMotor
    opword  0x48000040  // b .L_8004933C
L_80049300:
    opword  0x808D894C  // lwz r4, IDShouldBe_8053A50C@sda21(r0)
    addi r3, r31, 0x20
    li r5, 0x20
    bl fn_8006AEE4
    cmpwi r3, 0x0
    opword  0x41820014  // beq .L_80049328
    lis r3, fn_80049464@ha
    addi r3, r3, fn_80049464@l
    bl DVDLowStopMotor
    opword  0x48000018  // b .L_8004933C
L_80049328:
    lis r4, fn_80049350@ha
    opword  0x806D8948  // lwz r3, executing_8053A508@sda21(r0)
    addi r0, r4, fn_80049350@l
    opword  0x900D898C  // stw r0, lbl_8053A54C@sda21(r0)
    bl fn_80049350
L_8004933C:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    addi r1, r1, 0x10
    mtlr r0
    blr
}

ASM void fn_80049350(void)
{
    nofralloc
    mflr r0
    lis r3, fn_8004965C@ha
    stw r0, 0x4(r1)
    addi r5, r3, fn_8004965C@l
    stwu r1, -0x8(r1)
    opword  0x808D894C  // lwz r4, IDShouldBe_8053A50C@sda21(r0)
    lbz r3, 0x8(r4)
    li r4, 0xa
    bl fn_80047ED0
    lwz r0, 0xc(r1)
    addi r1, r1, 0x8
    mtlr r0
    blr
}

ASM void fn_80049384(void)
{
    nofralloc
    mflr r0
    lis r3, fn_800493B8@ha
    stw r0, 0x4(r1)
    addi r5, r3, fn_800493B8@l
    stwu r1, -0x8(r1)
    opword  0x808D894C  // lwz r4, IDShouldBe_8053A50C@sda21(r0)
    lbz r3, 0x8(r4)
    li r4, 0xa
    bl fn_80047ED0
    lwz r0, 0xc(r1)
    addi r1, r1, 0x8
    mtlr r0
    blr
}

ASM void fn_800493B8(void)
{
    nofralloc
    mflr r0
    cmplwi r3, 0x10
    stw r0, 0x4(r1)
    stwu r1, -0x8(r1)
    opword  0x4082002C  // bne .L_800493F4
    opword  0x808D8948  // lwz r4, executing_8053A508@sda21(r0)
    li r0, -0x1
    lis r3, 0x123
    stw r0, 0xc(r4)
    addi r3, r3, 0x4568
    bl __DVDStoreErrorCode
    bl DVDReset
    li r3, 0x0
    bl cbForStateError
    opword  0x4800002C  // b .L_8004941C
L_800493F4:
    clrlwi. r0, r3, 31
    opword  0x41820018  // beq .L_80049410
    li r0, 0x0
    opword  0x806D8948  // lwz r3, executing_8053A508@sda21(r0)
    opword  0x900D897C  // stw r0, lbl_8053A53C@sda21(r0)
    bl fn_8004942C
    opword  0x48000010  // b .L_8004941C
L_80049410:
    lis r3, fn_80048D5C@ha
    addi r3, r3, fn_80048D5C@l
    bl fn_80047C84
L_8004941C:
    lwz r0, 0xc(r1)
    addi r1, r1, 0x8
    mtlr r0
    blr
}

ASM void fn_8004942C(void)
{
    nofralloc
    mflr r0
    lis r3, BB2@ha
    stw r0, 0x4(r1)
    lis r4, fn_80049578@ha
    addi r6, r4, fn_80049578@l
    stwu r1, -0x8(r1)
    addi r3, r3, BB2@l
    li r4, 0x20
    li r5, 0x420
    bl fn_800477FC
    lwz r0, 0xc(r1)
    addi r1, r1, 0x8
    mtlr r0
    blr
}

ASM void fn_80049464(void)
{
    nofralloc
    mflr r0
    cmplwi r3, 0x10
    stw r0, 0x4(r1)
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    opword  0x4082002C  // bne .L_800494A4
    opword  0x808D8948  // lwz r4, executing_8053A508@sda21(r0)
    li r0, -0x1
    lis r3, 0x123
    stw r0, 0xc(r4)
    addi r3, r3, 0x4568
    bl __DVDStoreErrorCode
    bl DVDReset
    li r3, 0x0
    bl cbForStateError
    opword  0x480000C4  // b .L_80049564
L_800494A4:
    rlwinm. r0, r3, 0, 30, 30
    opword  0x4182002C  // beq .L_800494D4
    opword  0x808D8948  // lwz r4, executing_8053A508@sda21(r0)
    li r0, -0x1
    lis r3, 0x123
    stw r0, 0xc(r4)
    addi r3, r3, 0x4567
    bl __DVDStoreErrorCode
    lis r3, cbForStateError@ha
    addi r3, r3, cbForStateError@l
    bl DVDLowStopMotor
    opword  0x48000094  // b .L_80049564
L_800494D4:
    li r4, 0x0
    opword  0x908D897C  // stw r4, lbl_8053A53C@sda21(r0)
    opword  0x800D8968  // lwz r0, lbl_8053A528@sda21(r0)
    cmplwi r0, 0x0
    opword  0x41820068  // beq .L_8004954C
    li r0, 0x1
    opword  0x83ED8948  // lwz r31, executing_8053A508@sda21(r0)
    opword  0x900D8970  // stw r0, ResumeFromHere_8053A530@sda21(r0)
    lis r3, DummyCommandBlock@ha
    addi r3, r3, DummyCommandBlock@l
    opword  0x908D8968  // stw r4, lbl_8053A528@sda21(r0)
    li r0, 0xa
    opword  0x906D8948  // stw r3, executing_8053A508@sda21(r0)
    stw r0, 0xc(r31)
    lwz r12, 0x28(r31)
    cmplwi r12, 0x0
    opword  0x41820014  // beq .L_80049528
    mtlr r12
    addi r4, r31, 0x0
    li r3, -0x3
    blrl
L_80049528:
    opword  0x818D896C  // lwz r12, lbl_8053A52C@sda21(r0)
    cmplwi r12, 0x0
    opword  0x41820014  // beq .L_80049544
    mtlr r12
    addi r4, r31, 0x0
    li r3, 0x0
    blrl
L_80049544:
    bl stateReady
    li r4, 0x1
L_8004954C:
    cmpwi r4, 0x0
    opword  0x40820014  // bne .L_80049564
    opword  0x806D8948  // lwz r3, executing_8053A508@sda21(r0)
    li r0, 0x6
    stw r0, 0xc(r3)
    bl fn_80049908
L_80049564:
    lwz r0, 0x1c(r1)
    lwz r31, 0x14(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

ASM void fn_80049578(void)
{
    nofralloc
    mflr r0
    cmplwi r3, 0x10
    stw r0, 0x4(r1)
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    opword  0x4082002C  // bne .L_800495B8
    opword  0x808D8948  // lwz r4, executing_8053A508@sda21(r0)
    li r0, -0x1
    lis r3, 0x123
    stw r0, 0xc(r4)
    addi r3, r3, 0x4568
    bl __DVDStoreErrorCode
    bl DVDReset
    li r3, 0x0
    bl cbForStateError
    opword  0x48000094  // b .L_80049648
L_800495B8:
    clrlwi. r0, r3, 31
    opword  0x41820080  // beq .L_8004963C
    lis r3, fn_80048A80@ha
    opword  0x808D8950  // lwz r4, bootInfo_8053A510@sda21(r0)
    addi r0, r3, fn_80048A80@l
    li r5, 0x0
    opword  0x900D898C  // stw r0, lbl_8053A54C@sda21(r0)
    lis r3, BB2@ha
    opword  0x90AD897C  // stw r5, lbl_8053A53C@sda21(r0)
    addi r3, r3, BB2@l
    addi r31, r3, 0x8
    lwz r3, 0x3c(r4)
    lwz r0, 0x0(r31)
    cmplw r3, r0
    opword  0x4080001C  // bge .L_8004960C
    lis r3, lbl_80496204@ha
    crclr 6
    addi r5, r3, lbl_80496204@l
    opword  0x386D808C  // li r3, lbl_80539C4C@sda21
    li r4, 0x28a
    bl OSPanic
L_8004960C:
    lis r3, BB2@ha
    lwz r6, 0x0(r31)
    addi r5, r3, BB2@l
    opword  0x80ED8950  // lwz r7, bootInfo_8053A510@sda21(r0)
    lis r4, fn_80048B14@ha
    lwz r5, 0x4(r5)
    addi r0, r6, 0x1f
    lwz r3, 0x38(r7)
    addi r6, r4, fn_80048B14@l
    clrrwi r4, r0, 5
    bl fn_800477FC
    opword  0x48000010  // b .L_80049648
L_8004963C:
    lis r3, fn_80048D5C@ha
    addi r3, r3, fn_80048D5C@l
    bl fn_80047C84
L_80049648:
    lwz r0, 0x1c(r1)
    lwz r31, 0x14(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

ASM void fn_8004965C(void)
{
    nofralloc
    mflr r0
    cmplwi r3, 0x10
    stw r0, 0x4(r1)
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    opword  0x4082002C  // bne .L_8004969C
    opword  0x808D8948  // lwz r4, executing_8053A508@sda21(r0)
    li r0, -0x1
    lis r3, 0x123
    stw r0, 0xc(r4)
    addi r3, r3, 0x4568
    bl __DVDStoreErrorCode
    bl DVDReset
    li r3, 0x0
    bl cbForStateError
    opword  0x480000AC  // b .L_80049744
L_8004969C:
    clrlwi. r0, r3, 31
    opword  0x41820098  // beq .L_80049738
    li r4, 0x0
    opword  0x908D897C  // stw r4, lbl_8053A53C@sda21(r0)
    opword  0x800D8968  // lwz r0, lbl_8053A528@sda21(r0)
    cmplwi r0, 0x0
    opword  0x41820064  // beq .L_80049718
    opword  0x908D8970  // stw r4, ResumeFromHere_8053A530@sda21(r0)
    lis r3, DummyCommandBlock@ha
    opword  0x83ED8948  // lwz r31, executing_8053A508@sda21(r0)
    addi r3, r3, DummyCommandBlock@l
    opword  0x908D8968  // stw r4, lbl_8053A528@sda21(r0)
    li r0, 0xa
    opword  0x906D8948  // stw r3, executing_8053A508@sda21(r0)
    stw r0, 0xc(r31)
    lwz r12, 0x28(r31)
    cmplwi r12, 0x0
    opword  0x41820014  // beq .L_800496F4
    mtlr r12
    addi r4, r31, 0x0
    li r3, -0x3
    blrl
L_800496F4:
    opword  0x818D896C  // lwz r12, lbl_8053A52C@sda21(r0)
    cmplwi r12, 0x0
    opword  0x41820014  // beq .L_80049710
    mtlr r12
    addi r4, r31, 0x0
    li r3, 0x0
    blrl
L_80049710:
    bl stateReady
    li r4, 0x1
L_80049718:
    cmpwi r4, 0x0
    opword  0x40820028  // bne .L_80049744
    opword  0x806D8948  // lwz r3, executing_8053A508@sda21(r0)
    li r0, 0x1
    stw r0, 0xc(r3)
    opword  0x806D8948  // lwz r3, executing_8053A508@sda21(r0)
    bl stateBusy_80049C44
    opword  0x48000010  // b .L_80049744
L_80049738:
    lis r3, fn_80048D5C@ha
    addi r3, r3, fn_80048D5C@l
    bl fn_80047C84
L_80049744:
    lwz r0, 0x1c(r1)
    lwz r31, 0x14(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

ASM void AlarmHandler(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x8(r1)
    bl DVDReset
    lis r3, lbl_804B5900@ha
    addi r3, r3, lbl_804B5900@l
    li r4, 0x20
    bl DCInvalidateRange
    lis r4, fn_80049868@ha
    opword  0x806D8948  // lwz r3, executing_8053A508@sda21(r0)
    addi r0, r4, fn_80049868@l
    opword  0x900D898C  // stw r0, lbl_8053A54C@sda21(r0)
    bl fn_80049868
    lwz r0, 0xc(r1)
    addi r1, r1, 0x8
    mtlr r0
    blr
}

ASM void fn_8004979C(void)
{
    nofralloc
    mflr r0
    lis r3, BB2@ha
    stw r0, 0x4(r1)
    stwu r1, -0x10(r1)
    stw r31, 0xc(r1)
    addi r31, r3, BB2@l
    opword  0x800D8964  // lwz r0, CurrCommand_8053A524@sda21(r0)
    cmpwi r0, 0xd
    opword  0x41820028  // beq .L_800497E4
    opword  0x40800018  // bge .L_800497D8
    cmpwi r0, 0x6
    opword  0x4080004C  // bge .L_80049814
    cmpwi r0, 0x4
    opword  0x40800014  // bge .L_800497E4
    opword  0x48000040  // b .L_80049814
L_800497D8:
    cmpwi r0, 0xf
    opword  0x41820008  // beq .L_800497E4
    opword  0x48000034  // b .L_80049814
L_800497E4:
    bl __DVDClearWaitingQueue
    opword  0x808D8948  // lwz r4, executing_8053A508@sda21(r0)
    addi r0, r31, 0x40
    opword  0x900D8948  // stw r0, executing_8053A508@sda21(r0)
    lwz r12, 0x28(r4)
    cmplwi r12, 0x0
    opword  0x41820010  // beq .L_8004980C
    mtlr r12
    li r3, -0x4
    blrl
L_8004980C:
    bl stateReady
    opword  0x48000044  // b .L_80049854
L_80049814:
    bl DVDReset
    addi r3, r31, 0x70
    bl OSCreateAlarm
    lis r3, 0x8000
    lwz r0, 0xf8(r3)
    lis r4, 0x1062
    lis r3, AlarmHandler@ha
    srwi r0, r0, 2
    addi r4, r4, 0x4dd3
    mulhwu r0, r4, r0
    srwi r0, r0, 6
    mulli r6, r0, 0x47e
    addi r7, r3, AlarmHandler@l
    addi r3, r31, 0x70
    li r5, 0x0
    bl OSSetAlarm
L_80049854:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    addi r1, r1, 0x10
    mtlr r0
    blr
}

ASM void fn_80049868(void)
{
    nofralloc
    mflr r0
    lis r3, lbl_804B5900@ha
    stw r0, 0x4(r1)
    lis r4, fn_80049898@ha
    addi r3, r3, lbl_804B5900@l
    stwu r1, -0x8(r1)
    addi r4, r4, fn_80049898@l
    bl fn_80047B54
    lwz r0, 0xc(r1)
    addi r1, r1, 0x8
    mtlr r0
    blr
}

ASM void fn_80049898(void)
{
    nofralloc
    mflr r0
    cmplwi r3, 0x10
    stw r0, 0x4(r1)
    stwu r1, -0x8(r1)
    opword  0x4082002C  // bne .L_800498D4
    opword  0x808D8948  // lwz r4, executing_8053A508@sda21(r0)
    li r0, -0x1
    lis r3, 0x123
    stw r0, 0xc(r4)
    addi r3, r3, 0x4568
    bl __DVDStoreErrorCode
    bl DVDReset
    li r3, 0x0
    bl cbForStateError
    opword  0x48000028  // b .L_800498F8
L_800498D4:
    clrlwi. r0, r3, 31
    opword  0x41820014  // beq .L_800498EC
    li r0, 0x0
    opword  0x900D897C  // stw r0, lbl_8053A53C@sda21(r0)
    bl fn_80049270
    opword  0x48000010  // b .L_800498F8
L_800498EC:
    lis r3, fn_80048D5C@ha
    addi r3, r3, fn_80048D5C@l
    bl fn_80047C84
L_800498F8:
    lwz r0, 0xc(r1)
    addi r1, r1, 0x8
    mtlr r0
    blr
}

ASM void fn_80049908(void)
{
    nofralloc
    mflr r0
    lis r3, cbForStateMotorStopped@ha
    stw r0, 0x4(r1)
    addi r3, r3, cbForStateMotorStopped@l
    stwu r1, -0x8(r1)
    bl DVDLowWaitCoverClose
    lwz r0, 0xc(r1)
    addi r1, r1, 0x8
    mtlr r0
    blr
}

ASM void cbForStateMotorStopped(void)
{
    nofralloc
    mflr r0
    lis r3, 0xcc00
    stw r0, 0x4(r1)
    li r0, 0x0
    lis r4, BB2@ha
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    addi r31, r4, BB2@l
    stw r0, 0x6004(r3)
    li r0, 0x3
    opword  0x806D8948  // lwz r3, executing_8053A508@sda21(r0)
    stw r0, 0xc(r3)
    opword  0x800D8964  // lwz r0, CurrCommand_8053A524@sda21(r0)
    cmpwi r0, 0xd
    opword  0x41820028  // beq .L_80049990
    opword  0x40800018  // bge .L_80049984
    cmpwi r0, 0x6
    opword  0x4080004C  // bge .L_800499C0
    cmpwi r0, 0x4
    opword  0x40800014  // bge .L_80049990
    opword  0x48000040  // b .L_800499C0
L_80049984:
    cmpwi r0, 0xf
    opword  0x41820008  // beq .L_80049990
    opword  0x48000034  // b .L_800499C0
L_80049990:
    bl __DVDClearWaitingQueue
    opword  0x808D8948  // lwz r4, executing_8053A508@sda21(r0)
    addi r0, r31, 0x40
    opword  0x900D8948  // stw r0, executing_8053A508@sda21(r0)
    lwz r12, 0x28(r4)
    cmplwi r12, 0x0
    opword  0x41820010  // beq .L_800499B8
    mtlr r12
    li r3, -0x4
    blrl
L_800499B8:
    bl stateReady
    opword  0x48000044  // b .L_80049A00
L_800499C0:
    bl DVDReset
    addi r3, r31, 0x70
    bl OSCreateAlarm
    lis r3, 0x8000
    lwz r0, 0xf8(r3)
    lis r4, 0x1062
    lis r3, AlarmHandler@ha
    srwi r0, r0, 2
    addi r4, r4, 0x4dd3
    mulhwu r0, r4, r0
    srwi r0, r0, 6
    mulli r6, r0, 0x47e
    addi r7, r3, AlarmHandler@l
    addi r3, r31, 0x70
    li r5, 0x0
    bl OSSetAlarm
L_80049A00:
    lwz r0, 0x1c(r1)
    lwz r31, 0x14(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

ASM void stateReady(void)
{
    nofralloc
    mflr r0
    lis r3, BB2@ha
    stw r0, 0x4(r1)
    stwu r1, -0x10(r1)
    stw r31, 0xc(r1)
    addi r31, r3, BB2@l
    bl __DVDCheckWaitingQueue
    cmpwi r3, 0x0
    opword  0x40820010  // bne .L_80049A44
    li r0, 0x0
    opword  0x900D8948  // stw r0, executing_8053A508@sda21(r0)
    opword  0x480001F0  // b .L_80049C30
L_80049A44:
    opword  0x800D8954  // lwz r0, PauseFlag_8053A514@sda21(r0)
    cmpwi r0, 0x0
    opword  0x41820018  // beq .L_80049A64
    li r3, 0x1
    li r0, 0x0
    opword  0x906D8958  // stw r3, PausingFlag_8053A518@sda21(r0)
    opword  0x900D8948  // stw r0, executing_8053A508@sda21(r0)
    opword  0x480001D0  // b .L_80049C30
L_80049A64:
    bl __DVDPopWaitingQueue
    opword  0x800D8960  // lwz r0, FatalErrorFlag_8053A520@sda21(r0)
    opword  0x906D8948  // stw r3, executing_8053A508@sda21(r0)
    cmpwi r0, 0x0
    opword  0x4182003C  // beq .L_80049AB0
    opword  0x806D8948  // lwz r3, executing_8053A508@sda21(r0)
    li r4, -0x1
    addi r0, r31, 0x40
    stw r4, 0xc(r3)
    opword  0x808D8948  // lwz r4, executing_8053A508@sda21(r0)
    opword  0x900D8948  // stw r0, executing_8053A508@sda21(r0)
    lwz r12, 0x28(r4)
    cmplwi r12, 0x0
    opword  0x41820010  // beq .L_80049AA8
    mtlr r12
    li r3, -0x1
    blrl
L_80049AA8:
    bl stateReady
    opword  0x48000184  // b .L_80049C30
L_80049AB0:
    opword  0x808D8948  // lwz r4, executing_8053A508@sda21(r0)
    lwz r0, 0x8(r4)
    opword  0x900D8964  // stw r0, CurrCommand_8053A524@sda21(r0)
    opword  0x800D8970  // lwz r0, ResumeFromHere_8053A530@sda21(r0)
    cmplwi r0, 0x0
    opword  0x4182015C  // beq .L_80049C20
    opword  0x800D8970  // lwz r0, ResumeFromHere_8053A530@sda21(r0)
    cmpwi r0, 0x4
    opword  0x41820064  // beq .L_80049B34
    opword  0x4080001C  // bge .L_80049AF0
    cmpwi r0, 0x2
    opword  0x41820028  // beq .L_80049B04
    opword  0x4080003C  // bge .L_80049B1C
    cmpwi r0, 0x1
    opword  0x40800064  // bge .L_80049B4C
    opword  0x48000128  // b .L_80049C14
L_80049AF0:
    cmpwi r0, 0x8
    opword  0x40800120  // bge .L_80049C14
    cmpwi r0, 0x6
    opword  0x40800050  // bge .L_80049B4C
    opword  0x480000F8  // b .L_80049BF8
L_80049B04:
    li r0, 0xb
    lis r3, cbForStateMotorStopped@ha
    stw r0, 0xc(r4)
    addi r3, r3, cbForStateMotorStopped@l
    bl DVDLowWaitCoverClose
    opword  0x480000FC  // b .L_80049C14
L_80049B1C:
    li r0, 0x4
    lis r3, cbForStateMotorStopped@ha
    stw r0, 0xc(r4)
    addi r3, r3, cbForStateMotorStopped@l
    bl DVDLowWaitCoverClose
    opword  0x480000E4  // b .L_80049C14
L_80049B34:
    li r0, 0x5
    lis r3, cbForStateMotorStopped@ha
    stw r0, 0xc(r4)
    addi r3, r3, cbForStateMotorStopped@l
    bl DVDLowWaitCoverClose
    opword  0x480000CC  // b .L_80049C14
L_80049B4C:
    li r0, 0x3
    stw r0, 0xc(r4)
    opword  0x800D8964  // lwz r0, CurrCommand_8053A524@sda21(r0)
    cmpwi r0, 0xd
    opword  0x41820028  // beq .L_80049B84
    opword  0x40800018  // bge .L_80049B78
    cmpwi r0, 0x6
    opword  0x4080004C  // bge .L_80049BB4
    cmpwi r0, 0x4
    opword  0x40800014  // bge .L_80049B84
    opword  0x48000040  // b .L_80049BB4
L_80049B78:
    cmpwi r0, 0xf
    opword  0x41820008  // beq .L_80049B84
    opword  0x48000034  // b .L_80049BB4
L_80049B84:
    bl __DVDClearWaitingQueue
    opword  0x808D8948  // lwz r4, executing_8053A508@sda21(r0)
    addi r0, r31, 0x40
    opword  0x900D8948  // stw r0, executing_8053A508@sda21(r0)
    lwz r12, 0x28(r4)
    cmplwi r12, 0x0
    opword  0x41820010  // beq .L_80049BAC
    mtlr r12
    li r3, -0x4
    blrl
L_80049BAC:
    bl stateReady
    opword  0x48000064  // b .L_80049C14
L_80049BB4:
    bl DVDReset
    addi r3, r31, 0x70
    bl OSCreateAlarm
    lis r3, 0x8000
    lwz r0, 0xf8(r3)
    lis r4, 0x1062
    lis r3, AlarmHandler@ha
    srwi r0, r0, 2
    addi r4, r4, 0x4dd3
    mulhwu r0, r4, r0
    srwi r0, r0, 6
    mulli r6, r0, 0x47e
    addi r7, r3, AlarmHandler@l
    addi r3, r31, 0x70
    li r5, 0x0
    bl OSSetAlarm
    opword  0x48000020  // b .L_80049C14
L_80049BF8:
    li r0, -0x1
    stw r0, 0xc(r4)
    opword  0x806D8974  // lwz r3, CancelLastError_8053A534@sda21(r0)
    bl __DVDStoreErrorCode
    lis r3, cbForStateError@ha
    addi r3, r3, cbForStateError@l
    bl DVDLowStopMotor
L_80049C14:
    li r0, 0x0
    opword  0x900D8970  // stw r0, ResumeFromHere_8053A530@sda21(r0)
    opword  0x48000014  // b .L_80049C30
L_80049C20:
    li r0, 0x1
    stw r0, 0xc(r4)
    opword  0x806D8948  // lwz r3, executing_8053A508@sda21(r0)
    bl stateBusy_80049C44
L_80049C30:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    addi r1, r1, 0x10
    mtlr r0
    blr
}

ASM void stateBusy_80049C44(void)
{
    nofralloc
    mflr r0
    lis r4, stateBusy_80049C44@ha
    stw r0, 0x4(r1)
    addi r0, r4, stateBusy_80049C44@l
    mr r7, r3
    stwu r1, -0x8(r1)
    opword  0x900D898C  // stw r0, lbl_8053A54C@sda21(r0)
    lwz r0, 0x8(r3)
    cmplwi r0, 0xf
    opword  0x418102D4  // bgt .L_80049F3C
    lis r3, jumptable_80496238@ha
    addi r3, r3, jumptable_80496238@l
    slwi r0, r0, 2
    lwzx r0, r3, r0
    mtctr r0
    bctr
    lis r3, 0xcc00
    lwz r0, 0x6004(r3)
    addi r5, r3, 0x6000
    lis r3, fn_80049F64@ha
    stw r0, 0x4(r5)
    li r0, 0x20
    addi r4, r3, fn_80049F64@l
    stw r0, 0x1c(r7)
    lwz r3, 0x18(r7)
    bl fn_80047B54
    opword  0x480002A8  // b .L_80049F54
    lwz r0, 0x14(r7)
    cmplwi r0, 0x0
    opword  0x4082003C  // bne .L_80049CF4
    lis r3, DummyCommandBlock@ha
    opword  0x808D8948  // lwz r4, executing_8053A508@sda21(r0)
    addi r0, r3, DummyCommandBlock@l
    opword  0x900D8948  // stw r0, executing_8053A508@sda21(r0)
    li r0, 0x0
    stw r0, 0xc(r4)
    lwz r12, 0x28(r4)
    cmplwi r12, 0x0
    opword  0x41820010  // beq .L_80049CEC
    mtlr r12
    li r3, 0x0
    blrl
L_80049CEC:
    bl stateReady
    opword  0x48000264  // b .L_80049F54
L_80049CF4:
    lis r3, 0xcc00
    addi r3, r3, 0x6000
    lwz r0, 0x4(r3)
    lis r4, 0x8
    stw r0, 0x4(r3)
    lwz r3, 0x20(r7)
    lwz r0, 0x14(r7)
    subf r0, r3, r0
    cmplw r0, r4
    opword  0x40810008  // ble .L_80049D20
    opword  0x48000008  // b .L_80049D24
L_80049D20:
    mr r4, r0
L_80049D24:
    stw r4, 0x1c(r7)
    lis r3, fn_80049F64@ha
    addi r6, r3, fn_80049F64@l
    lwz r5, 0x20(r7)
    lwz r3, 0x18(r7)
    lwz r0, 0x10(r7)
    add r3, r3, r5
    lwz r4, 0x1c(r7)
    add r5, r0, r5
    bl fn_800477FC
    opword  0x48000208  // b .L_80049F54
    lis r3, 0xcc00
    lwz r0, 0x6004(r3)
    addi r5, r3, 0x6000
    lis r3, fn_80049F64@ha
    stw r0, 0x4(r5)
    addi r4, r3, fn_80049F64@l
    lwz r3, 0x10(r7)
    bl fn_80047A94
    opword  0x480001E4  // b .L_80049F54
    lis r3, fn_80049F64@ha
    addi r3, r3, fn_80049F64@l
    bl DVDLowStopMotor
    opword  0x480001D4  // b .L_80049F54
    lis r3, fn_80049F64@ha
    addi r3, r3, fn_80049F64@l
    bl DVDLowStopMotor
    opword  0x480001C4  // b .L_80049F54
    lis r3, 0xcc00
    addi r3, r3, 0x6000
    lwz r0, 0x4(r3)
    stw r0, 0x4(r3)
    opword  0x800D895C  // lwz r0, lbl_8053A51C@sda21(r0)
    cmpwi r0, 0x0
    opword  0x41820024  // beq .L_80049DD0
    opword  0x80AD8948  // lwz r5, executing_8053A508@sda21(r0)
    li r0, 0x0
    lis r3, fn_80049F64@ha
    stw r0, 0x1c(r5)
    addi r4, r3, fn_80049F64@l
    li r3, 0x0
    bl fn_80047E44
    opword  0x48000188  // b .L_80049F54
L_80049DD0:
    opword  0x808D8948  // lwz r4, executing_8053A508@sda21(r0)
    li r0, 0x1
    lis r3, fn_80049F64@ha
    stw r0, 0x1c(r4)
    addi r6, r3, fn_80049F64@l
    li r3, 0x0
    lwz r4, 0x14(r7)
    lwz r5, 0x10(r7)
    bl fn_80047DAC
    opword  0x48000160  // b .L_80049F54
    lis r3, 0xcc00
    lwz r0, 0x6004(r3)
    addi r4, r3, 0x6000
    lis r3, fn_80049F64@ha
    stw r0, 0x4(r4)
    addi r6, r3, fn_80049F64@l
    lis r3, 0x1
    li r4, 0x0
    li r5, 0x0
    bl fn_80047DAC
    opword  0x48000134  // b .L_80049F54
    lis r3, 0xcc00
    lwz r0, 0x6004(r3)
    addi r4, r3, 0x6000
    lis r3, fn_80049F64@ha
    stw r0, 0x4(r4)
    li r0, 0x1
    addi r6, r3, fn_80049F64@l
    opword  0x900D895C  // stw r0, lbl_8053A51C@sda21(r0)
    li r3, 0x0
    li r4, 0x0
    li r5, 0x0
    bl fn_80047DAC
    opword  0x48000100  // b .L_80049F54
    lis r3, 0xcc00
    lwz r0, 0x6004(r3)
    addi r5, r3, 0x6000
    lis r3, fn_80049F64@ha
    stw r0, 0x4(r5)
    addi r4, r3, fn_80049F64@l
    li r3, 0x0
    bl fn_80047E44
    opword  0x480000DC  // b .L_80049F54
    lis r3, 0xcc00
    lwz r0, 0x6004(r3)
    addi r5, r3, 0x6000
    lis r3, fn_80049F64@ha
    stw r0, 0x4(r5)
    addi r4, r3, fn_80049F64@l
    lis r3, 0x1
    bl fn_80047E44
    opword  0x480000B8  // b .L_80049F54
    lis r3, 0xcc00
    lwz r0, 0x6004(r3)
    addi r5, r3, 0x6000
    lis r3, fn_80049F64@ha
    stw r0, 0x4(r5)
    addi r4, r3, fn_80049F64@l
    lis r3, 0x2
    bl fn_80047E44
    opword  0x48000094  // b .L_80049F54
    lis r3, 0xcc00
    lwz r0, 0x6004(r3)
    addi r5, r3, 0x6000
    lis r3, fn_80049F64@ha
    stw r0, 0x4(r5)
    addi r4, r3, fn_80049F64@l
    lis r3, 0x3
    bl fn_80047E44
    opword  0x48000070  // b .L_80049F54
    lis r3, 0xcc00
    lwz r0, 0x6004(r3)
    addi r4, r3, 0x6000
    lis r3, fn_80049F64@ha
    stw r0, 0x4(r4)
    addi r5, r3, fn_80049F64@l
    lwz r3, 0x10(r7)
    lwz r4, 0x14(r7)
    bl fn_80047ED0
    opword  0x48000048  // b .L_80049F54
    lis r3, 0xcc00
    lwz r0, 0x6004(r3)
    addi r5, r3, 0x6000
    lis r3, fn_80049F64@ha
    stw r0, 0x4(r5)
    li r0, 0x20
    addi r4, r3, fn_80049F64@l
    stw r0, 0x1c(r7)
    lwz r3, 0x18(r7)
    bl fn_80047D10
    opword  0x4800001C  // b .L_80049F54
L_80049F3C:
    opword  0x818D8088  // lwz r12, lbl_80539C48@sda21(r0)
    lis r3, fn_80049F64@ha
    addi r4, r3, fn_80049F64@l
    mtlr r12
    addi r3, r7, 0x0
    blrl
L_80049F54:
    lwz r0, 0xc(r1)
    addi r1, r1, 0x8
    mtlr r0
    blr
}

ASM void fn_80049F64(void)
{
    nofralloc
    mflr r0
    cmplwi r3, 0x10
    stw r0, 0x4(r1)
    lis r4, BB2@ha
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    addi r31, r4, BB2@l
    stw r30, 0x10(r1)
    opword  0x4082002C  // bne .L_80049FB0
    opword  0x808D8948  // lwz r4, executing_8053A508@sda21(r0)
    li r0, -0x1
    lis r3, 0x123
    stw r0, 0xc(r4)
    addi r3, r3, 0x4568
    bl __DVDStoreErrorCode
    bl DVDReset
    li r3, 0x0
    bl cbForStateError
    opword  0x480005D8  // b .L_8004A584
L_80049FB0:
    opword  0x800D8964  // lwz r0, CurrCommand_8053A524@sda21(r0)
    cmplwi r0, 0x3
    opword  0x41820010  // beq .L_80049FC8
    opword  0x800D8964  // lwz r0, CurrCommand_8053A524@sda21(r0)
    cmplwi r0, 0xf
    opword  0x408200EC  // bne .L_8004A0B0
L_80049FC8:
    rlwinm. r0, r3, 0, 30, 30
    opword  0x4182002C  // beq .L_80049FF8
    opword  0x808D8948  // lwz r4, executing_8053A508@sda21(r0)
    li r0, -0x1
    lis r3, 0x123
    stw r0, 0xc(r4)
    addi r3, r3, 0x4567
    bl __DVDStoreErrorCode
    lis r3, cbForStateError@ha
    addi r3, r3, cbForStateError@l
    bl DVDLowStopMotor
    opword  0x48000590  // b .L_8004A584
L_80049FF8:
    li r0, 0x0
    opword  0x900D897C  // stw r0, lbl_8053A53C@sda21(r0)
    opword  0x800D8964  // lwz r0, CurrCommand_8053A524@sda21(r0)
    cmplwi r0, 0xf
    opword  0x4082000C  // bne .L_8004A014
    li r0, 0x1
    opword  0x900D8980  // stw r0, ResetRequired_8053A540@sda21(r0)
L_8004A014:
    opword  0x800D8968  // lwz r0, lbl_8053A528@sda21(r0)
    cmplwi r0, 0x0
    opword  0x4182006C  // beq .L_8004A088
    li r0, 0x7
    opword  0x83CD8948  // lwz r30, executing_8053A508@sda21(r0)
    opword  0x900D8970  // stw r0, ResumeFromHere_8053A530@sda21(r0)
    addi r3, r31, 0x40
    li r0, 0x0
    opword  0x900D8968  // stw r0, lbl_8053A528@sda21(r0)
    li r0, 0xa
    opword  0x906D8948  // stw r3, executing_8053A508@sda21(r0)
    stw r0, 0xc(r30)
    lwz r12, 0x28(r30)
    cmplwi r12, 0x0
    opword  0x41820014  // beq .L_8004A060
    mtlr r12
    addi r4, r30, 0x0
    li r3, -0x3
    blrl
L_8004A060:
    opword  0x818D896C  // lwz r12, lbl_8053A52C@sda21(r0)
    cmplwi r12, 0x0
    opword  0x41820014  // beq .L_8004A07C
    mtlr r12
    addi r4, r30, 0x0
    li r3, 0x0
    blrl
L_8004A07C:
    bl stateReady
    li r0, 0x1
    opword  0x48000008  // b .L_8004A08C
L_8004A088:
    li r0, 0x0
L_8004A08C:
    cmpwi r0, 0x0
    opword  0x408204F4  // bne .L_8004A584
    opword  0x808D8948  // lwz r4, executing_8053A508@sda21(r0)
    li r0, 0x7
    lis r3, cbForStateMotorStopped@ha
    stw r0, 0xc(r4)
    addi r3, r3, cbForStateMotorStopped@l
    bl DVDLowWaitCoverClose
    opword  0x480004D8  // b .L_8004A584
L_8004A0B0:
    opword  0x808D8964  // lwz r4, CurrCommand_8053A524@sda21(r0)
    cmplwi r4, 0x1
    opword  0x41820018  // beq .L_8004A0D0
    subi r0, r4, 0x4
    cmplwi r0, 0x1
    opword  0x4081000C  // ble .L_8004A0D0
    cmplwi r4, 0xe
    opword  0x4082000C  // bne .L_8004A0D8
L_8004A0D0:
    li r0, 0x1
    opword  0x4800001C  // b .L_8004A0F0
L_8004A0D8:
    opword  0x800D8094  // lwz r0, lbl_80539C54@sda21(r0)
    cmplw r4, r0
    opword  0x4082000C  // bne .L_8004A0EC
    li r0, 0x1
    opword  0x48000008  // b .L_8004A0F0
L_8004A0EC:
    li r0, 0x0
L_8004A0F0:
    cmpwi r0, 0x0
    opword  0x41820028  // beq .L_8004A11C
    opword  0x80CD8948  // lwz r6, executing_8053A508@sda21(r0)
    lis r4, 0xcc00
    addi r4, r4, 0x6000
    lwz r4, 0x18(r4)
    lwz r0, 0x1c(r6)
    lwz r5, 0x20(r6)
    subf r0, r4, r0
    add r0, r5, r0
    stw r0, 0x20(r6)
L_8004A11C:
    rlwinm. r0, r3, 0, 28, 28
    opword  0x41820060  // beq .L_8004A180
    opword  0x83CD8948  // lwz r30, executing_8053A508@sda21(r0)
    addi r3, r31, 0x40
    li r0, 0x0
    opword  0x900D8968  // stw r0, lbl_8053A528@sda21(r0)
    li r0, 0xa
    opword  0x906D8948  // stw r3, executing_8053A508@sda21(r0)
    stw r0, 0xc(r30)
    lwz r12, 0x28(r30)
    cmplwi r12, 0x0
    opword  0x41820014  // beq .L_8004A15C
    mtlr r12
    addi r4, r30, 0x0
    li r3, -0x3
    blrl
L_8004A15C:
    opword  0x818D896C  // lwz r12, lbl_8053A52C@sda21(r0)
    cmplwi r12, 0x0
    opword  0x41820014  // beq .L_8004A178
    mtlr r12
    addi r4, r30, 0x0
    li r3, 0x0
    blrl
L_8004A178:
    bl stateReady
    opword  0x48000408  // b .L_8004A584
L_8004A180:
    clrlwi. r0, r3, 31
    opword  0x418202D0  // beq .L_8004A454
    li r4, 0x0
    opword  0x908D897C  // stw r4, lbl_8053A53C@sda21(r0)
    opword  0x800D8968  // lwz r0, lbl_8053A528@sda21(r0)
    cmplwi r0, 0x0
    opword  0x41820060  // beq .L_8004A1F8
    opword  0x908D8970  // stw r4, ResumeFromHere_8053A530@sda21(r0)
    addi r3, r31, 0x40
    opword  0x83CD8948  // lwz r30, executing_8053A508@sda21(r0)
    li r0, 0xa
    opword  0x908D8968  // stw r4, lbl_8053A528@sda21(r0)
    opword  0x906D8948  // stw r3, executing_8053A508@sda21(r0)
    stw r0, 0xc(r30)
    lwz r12, 0x28(r30)
    cmplwi r12, 0x0
    opword  0x41820014  // beq .L_8004A1D4
    mtlr r12
    addi r4, r30, 0x0
    li r3, -0x3
    blrl
L_8004A1D4:
    opword  0x818D896C  // lwz r12, lbl_8053A52C@sda21(r0)
    cmplwi r12, 0x0
    opword  0x41820014  // beq .L_8004A1F0
    mtlr r12
    addi r4, r30, 0x0
    li r3, 0x0
    blrl
L_8004A1F0:
    bl stateReady
    li r4, 0x1
L_8004A1F8:
    cmpwi r4, 0x0
    opword  0x40820388  // bne .L_8004A584
    opword  0x806D8964  // lwz r3, CurrCommand_8053A524@sda21(r0)
    cmplwi r3, 0x1
    opword  0x41820018  // beq .L_8004A220
    subi r0, r3, 0x4
    cmplwi r0, 0x1
    opword  0x4081000C  // ble .L_8004A220
    cmplwi r3, 0xe
    opword  0x4082000C  // bne .L_8004A228
L_8004A220:
    li r0, 0x1
    opword  0x4800001C  // b .L_8004A240
L_8004A228:
    opword  0x800D8094  // lwz r0, lbl_80539C54@sda21(r0)
    cmplw r3, r0
    opword  0x4082000C  // bne .L_8004A23C
    li r0, 0x1
    opword  0x48000008  // b .L_8004A240
L_8004A23C:
    li r0, 0x0
L_8004A240:
    cmpwi r0, 0x0
    opword  0x41820054  // beq .L_8004A298
    opword  0x806D8948  // lwz r3, executing_8053A508@sda21(r0)
    lwz r4, 0x20(r3)
    lwz r0, 0x14(r3)
    cmplw r4, r0
    opword  0x4182000C  // beq .L_8004A264
    bl stateBusy_80049C44
    opword  0x48000324  // b .L_8004A584
L_8004A264:
    addi r0, r31, 0x40
    opword  0x900D8948  // stw r0, executing_8053A508@sda21(r0)
    li r0, 0x0
    addi r4, r3, 0x0
    stw r0, 0xc(r3)
    lwz r12, 0x28(r3)
    cmplwi r12, 0x0
    opword  0x41820010  // beq .L_8004A290
    lwz r3, 0x20(r4)
    mtlr r12
    blrl
L_8004A290:
    bl stateReady
    opword  0x480002F0  // b .L_8004A584
L_8004A298:
    opword  0x808D8964  // lwz r4, CurrCommand_8053A524@sda21(r0)
    subi r0, r4, 0x9
    cmplwi r0, 0x3
    opword  0x4181000C  // bgt .L_8004A2B0
    li r0, 0x1
    opword  0x48000048  // b .L_8004A2F4
L_8004A2B0:
    lis r3, lbl_80496278@ha
    lwzu r0, lbl_80496278@l(r3)
    cmplw r4, r0
    opword  0x4082000C  // bne .L_8004A2C8
    li r0, 0x1
    opword  0x48000030  // b .L_8004A2F4
L_8004A2C8:
    lwzu r0, 0x4(r3)
    cmplw r4, r0
    opword  0x4082000C  // bne .L_8004A2DC
    li r0, 0x1
    opword  0x4800001C  // b .L_8004A2F4
L_8004A2DC:
    lwz r0, 0x4(r3)
    cmplw r4, r0
    opword  0x4082000C  // bne .L_8004A2F0
    li r0, 0x1
    opword  0x48000008  // b .L_8004A2F4
L_8004A2F0:
    li r0, 0x0
L_8004A2F4:
    cmpwi r0, 0x0
    opword  0x41820068  // beq .L_8004A360
    opword  0x800D8964  // lwz r0, CurrCommand_8053A524@sda21(r0)
    cmplwi r0, 0xb
    opword  0x41820010  // beq .L_8004A314
    opword  0x800D8964  // lwz r0, CurrCommand_8053A524@sda21(r0)
    cmplwi r0, 0xa
    opword  0x40820014  // bne .L_8004A324
L_8004A314:
    lis r3, 0xcc00
    lwz r0, 0x6020(r3)
    slwi r3, r0, 2
    opword  0x48000010  // b .L_8004A330
L_8004A324:
    lis r3, 0xcc00
    addi r3, r3, 0x6000
    lwz r3, 0x20(r3)
L_8004A330:
    opword  0x808D8948  // lwz r4, executing_8053A508@sda21(r0)
    addi r5, r31, 0x40
    li r0, 0x0
    opword  0x90AD8948  // stw r5, executing_8053A508@sda21(r0)
    stw r0, 0xc(r4)
    lwz r12, 0x28(r4)
    cmplwi r12, 0x0
    opword  0x4182000C  // beq .L_8004A358
    mtlr r12
    blrl
L_8004A358:
    bl stateReady
    opword  0x48000228  // b .L_8004A584
L_8004A360:
    opword  0x800D8964  // lwz r0, CurrCommand_8053A524@sda21(r0)
    cmplwi r0, 0x6
    opword  0x408200B8  // bne .L_8004A420
    opword  0x808D8948  // lwz r4, executing_8053A508@sda21(r0)
    addi r5, r4, 0x1c
    lwz r0, 0x1c(r4)
    cmplwi r0, 0x0
    opword  0x40820074  // bne .L_8004A3F0
    lis r3, 0xcc00
    lwz r0, 0x6020(r3)
    clrlwi. r0, r0, 31
    opword  0x41820034  // beq .L_8004A3C0
    addi r0, r31, 0x40
    opword  0x900D8948  // stw r0, executing_8053A508@sda21(r0)
    li r0, 0x9
    stw r0, 0xc(r4)
    lwz r12, 0x28(r4)
    cmplwi r12, 0x0
    opword  0x41820010  // beq .L_8004A3B8
    mtlr r12
    li r3, -0x2
    blrl
L_8004A3B8:
    bl stateReady
    opword  0x480001C8  // b .L_8004A584
L_8004A3C0:
    li r0, 0x0
    opword  0x900D895C  // stw r0, lbl_8053A51C@sda21(r0)
    li r0, 0x1
    lis r3, fn_80049F64@ha
    stw r0, 0x0(r5)
    addi r6, r3, fn_80049F64@l
    li r3, 0x0
    opword  0x80AD8948  // lwz r5, executing_8053A508@sda21(r0)
    lwz r4, 0x14(r5)
    lwz r5, 0x10(r5)
    bl fn_80047DAC
    opword  0x48000198  // b .L_8004A584
L_8004A3F0:
    addi r0, r31, 0x40
    opword  0x900D8948  // stw r0, executing_8053A508@sda21(r0)
    li r0, 0x0
    stw r0, 0xc(r4)
    lwz r12, 0x28(r4)
    cmplwi r12, 0x0
    opword  0x41820010  // beq .L_8004A418
    mtlr r12
    li r3, 0x0
    blrl
L_8004A418:
    bl stateReady
    opword  0x48000168  // b .L_8004A584
L_8004A420:
    opword  0x808D8948  // lwz r4, executing_8053A508@sda21(r0)
    addi r3, r31, 0x40
    li r0, 0x0
    opword  0x906D8948  // stw r3, executing_8053A508@sda21(r0)
    stw r0, 0xc(r4)
    lwz r12, 0x28(r4)
    cmplwi r12, 0x0
    opword  0x41820010  // beq .L_8004A44C
    mtlr r12
    li r3, 0x0
    blrl
L_8004A44C:
    bl stateReady
    opword  0x48000134  // b .L_8004A584
L_8004A454:
    opword  0x800D8964  // lwz r0, CurrCommand_8053A524@sda21(r0)
    cmplwi r0, 0xe
    opword  0x4082002C  // bne .L_8004A488
    opword  0x808D8948  // lwz r4, executing_8053A508@sda21(r0)
    li r0, -0x1
    lis r3, 0x123
    stw r0, 0xc(r4)
    addi r3, r3, 0x4567
    bl __DVDStoreErrorCode
    lis r3, cbForStateError@ha
    addi r3, r3, cbForStateError@l
    bl DVDLowStopMotor
    opword  0x48000100  // b .L_8004A584
L_8004A488:
    opword  0x800D8964  // lwz r0, CurrCommand_8053A524@sda21(r0)
    cmplwi r0, 0x1
    opword  0x41820028  // beq .L_8004A4B8
    opword  0x800D8964  // lwz r0, CurrCommand_8053A524@sda21(r0)
    cmplwi r0, 0x4
    opword  0x4182001C  // beq .L_8004A4B8
    opword  0x800D8964  // lwz r0, CurrCommand_8053A524@sda21(r0)
    cmplwi r0, 0x5
    opword  0x41820010  // beq .L_8004A4B8
    opword  0x800D8964  // lwz r0, CurrCommand_8053A524@sda21(r0)
    cmplwi r0, 0xe
    opword  0x408200C4  // bne .L_8004A578
L_8004A4B8:
    opword  0x83CD8948  // lwz r30, executing_8053A508@sda21(r0)
    lwz r3, 0x20(r30)
    lwz r0, 0x14(r30)
    cmplw r3, r0
    opword  0x408200B0  // bne .L_8004A578
    opword  0x800D8968  // lwz r0, lbl_8053A528@sda21(r0)
    cmplwi r0, 0x0
    opword  0x41820064  // beq .L_8004A538
    li r4, 0x0
    opword  0x908D8970  // stw r4, ResumeFromHere_8053A530@sda21(r0)
    addi r3, r31, 0x40
    li r0, 0xa
    opword  0x908D8968  // stw r4, lbl_8053A528@sda21(r0)
    opword  0x906D8948  // stw r3, executing_8053A508@sda21(r0)
    stw r0, 0xc(r30)
    lwz r12, 0x28(r30)
    cmplwi r12, 0x0
    opword  0x41820014  // beq .L_8004A510
    mtlr r12
    addi r4, r30, 0x0
    li r3, -0x3
    blrl
L_8004A510:
    opword  0x818D896C  // lwz r12, lbl_8053A52C@sda21(r0)
    cmplwi r12, 0x0
    opword  0x41820014  // beq .L_8004A52C
    mtlr r12
    addi r4, r30, 0x0
    li r3, 0x0
    blrl
L_8004A52C:
    bl stateReady
    li r0, 0x1
    opword  0x48000008  // b .L_8004A53C
L_8004A538:
    li r0, 0x0
L_8004A53C:
    cmpwi r0, 0x0
    opword  0x40820044  // bne .L_8004A584
    opword  0x808D8948  // lwz r4, executing_8053A508@sda21(r0)
    addi r3, r31, 0x40
    li r0, 0x0
    opword  0x906D8948  // stw r3, executing_8053A508@sda21(r0)
    stw r0, 0xc(r4)
    lwz r12, 0x28(r4)
    cmplwi r12, 0x0
    opword  0x41820010  // beq .L_8004A570
    lwz r3, 0x20(r4)
    mtlr r12
    blrl
L_8004A570:
    bl stateReady
    opword  0x48000010  // b .L_8004A584
L_8004A578:
    lis r3, fn_80048D5C@ha
    addi r3, r3, fn_80048D5C@l
    bl fn_80047C84
L_8004A584:
    lwz r0, 0x1c(r1)
    lwz r31, 0x14(r1)
    lwz r30, 0x10(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

ASM void DVDReadAbsAsyncPrio(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    li r0, 0x1
    stwu r1, -0x38(r1)
    stw r31, 0x34(r1)
    addi r31, r8, 0x0
    stw r30, 0x30(r1)
    stw r29, 0x2c(r1)
    addi r29, r3, 0x0
    stw r0, 0x8(r3)
    li r0, 0x0
    stw r4, 0x18(r3)
    stw r5, 0x14(r3)
    stw r6, 0x10(r3)
    stw r0, 0x20(r3)
    stw r7, 0x28(r3)
    opword  0x800D8084  // lwz r0, autoInvalidation_80539C44@sda21(r0)
    cmpwi r0, 0x0
    opword  0x41820030  // beq .L_8004A614
    lwz r3, 0x8(r29)
    cmplwi r3, 0x1
    opword  0x41820018  // beq .L_8004A608
    subi r0, r3, 0x4
    cmplwi r0, 0x1
    opword  0x4081000C  // ble .L_8004A608
    cmplwi r3, 0xe
    opword  0x40820010  // bne .L_8004A614
L_8004A608:
    lwz r3, 0x18(r29)
    lwz r4, 0x14(r29)
    bl DCInvalidateRange
L_8004A614:
    bl OSDisableInterrupts
    li r0, 0x2
    stw r0, 0xc(r29)
    addi r30, r3, 0x0
    addi r3, r31, 0x0
    addi r4, r29, 0x0
    bl __DVDPushWaitingQueue
    opword  0x800D8948  // lwz r0, executing_8053A508@sda21(r0)
    addi r31, r3, 0x0
    cmplwi r0, 0x0
    opword  0x40820014  // bne .L_8004A650
    opword  0x800D8954  // lwz r0, PauseFlag_8053A514@sda21(r0)
    cmpwi r0, 0x0
    opword  0x40820008  // bne .L_8004A650
    bl stateReady
L_8004A650:
    mr r3, r30
    bl OSRestoreInterrupts
    mr r3, r31
    lwz r0, 0x3c(r1)
    lwz r31, 0x34(r1)
    lwz r30, 0x30(r1)
    lwz r29, 0x2c(r1)
    addi r1, r1, 0x38
    mtlr r0
    blr
}

ASM void fn_8004A678(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    li r0, 0x4
    stwu r1, -0x30(r1)
    stw r31, 0x2c(r1)
    addi r31, r3, 0x0
    stw r30, 0x28(r1)
    stw r0, 0x8(r3)
    li r0, 0x0
    stw r4, 0x18(r3)
    stw r5, 0x14(r3)
    stw r6, 0x10(r3)
    stw r0, 0x20(r3)
    stw r7, 0x28(r3)
    opword  0x800D8084  // lwz r0, autoInvalidation_80539C44@sda21(r0)
    cmpwi r0, 0x0
    opword  0x41820030  // beq .L_8004A6E8
    lwz r3, 0x8(r31)
    cmplwi r3, 0x1
    opword  0x41820018  // beq .L_8004A6DC
    subi r0, r3, 0x4
    cmplwi r0, 0x1
    opword  0x4081000C  // ble .L_8004A6DC
    cmplwi r3, 0xe
    opword  0x40820010  // bne .L_8004A6E8
L_8004A6DC:
    lwz r3, 0x18(r31)
    lwz r4, 0x14(r31)
    bl DCInvalidateRange
L_8004A6E8:
    bl OSDisableInterrupts
    li r0, 0x2
    stw r0, 0xc(r31)
    addi r30, r3, 0x0
    addi r4, r31, 0x0
    li r3, 0x2
    bl __DVDPushWaitingQueue
    opword  0x800D8948  // lwz r0, executing_8053A508@sda21(r0)
    addi r31, r3, 0x0
    cmplwi r0, 0x0
    opword  0x40820014  // bne .L_8004A724
    opword  0x800D8954  // lwz r0, PauseFlag_8053A514@sda21(r0)
    cmpwi r0, 0x0
    opword  0x40820008  // bne .L_8004A724
    bl stateReady
L_8004A724:
    mr r3, r30
    bl OSRestoreInterrupts
    mr r3, r31
    lwz r0, 0x34(r1)
    lwz r31, 0x2c(r1)
    lwz r30, 0x28(r1)
    addi r1, r1, 0x30
    mtlr r0
    blr
}

ASM void DVDReadDiskID(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    li r0, 0x5
    stwu r1, -0x28(r1)
    stw r31, 0x24(r1)
    addi r31, r3, 0x0
    stw r30, 0x20(r1)
    stw r0, 0x8(r3)
    li r3, 0x20
    li r0, 0x0
    stw r4, 0x18(r31)
    stw r3, 0x14(r31)
    stw r0, 0x10(r31)
    stw r0, 0x20(r31)
    stw r5, 0x28(r31)
    opword  0x800D8084  // lwz r0, autoInvalidation_80539C44@sda21(r0)
    cmpwi r0, 0x0
    opword  0x41820030  // beq .L_8004A7BC
    lwz r3, 0x8(r31)
    cmplwi r3, 0x1
    opword  0x41820018  // beq .L_8004A7B0
    subi r0, r3, 0x4
    cmplwi r0, 0x1
    opword  0x4081000C  // ble .L_8004A7B0
    cmplwi r3, 0xe
    opword  0x40820010  // bne .L_8004A7BC
L_8004A7B0:
    lwz r3, 0x18(r31)
    lwz r4, 0x14(r31)
    bl DCInvalidateRange
L_8004A7BC:
    bl OSDisableInterrupts
    li r0, 0x2
    stw r0, 0xc(r31)
    addi r30, r3, 0x0
    addi r4, r31, 0x0
    li r3, 0x2
    bl __DVDPushWaitingQueue
    opword  0x800D8948  // lwz r0, executing_8053A508@sda21(r0)
    addi r31, r3, 0x0
    cmplwi r0, 0x0
    opword  0x40820014  // bne .L_8004A7F8
    opword  0x800D8954  // lwz r0, PauseFlag_8053A514@sda21(r0)
    cmpwi r0, 0x0
    opword  0x40820008  // bne .L_8004A7F8
    bl stateReady
L_8004A7F8:
    mr r3, r30
    bl OSRestoreInterrupts
    mr r3, r31
    lwz r0, 0x2c(r1)
    lwz r31, 0x24(r1)
    lwz r30, 0x20(r1)
    addi r1, r1, 0x28
    mtlr r0
    blr
}

ASM void DVDCancelStreamAsync(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    li r0, 0x7
    stwu r1, -0x20(r1)
    stw r31, 0x1c(r1)
    addi r31, r3, 0x0
    stw r30, 0x18(r1)
    stw r0, 0x8(r3)
    stw r4, 0x28(r3)
    opword  0x800D8084  // lwz r0, autoInvalidation_80539C44@sda21(r0)
    cmpwi r0, 0x0
    opword  0x41820030  // beq .L_8004A878
    lwz r3, 0x8(r31)
    cmplwi r3, 0x1
    opword  0x41820018  // beq .L_8004A86C
    subi r0, r3, 0x4
    cmplwi r0, 0x1
    opword  0x4081000C  // ble .L_8004A86C
    cmplwi r3, 0xe
    opword  0x40820010  // bne .L_8004A878
L_8004A86C:
    lwz r3, 0x18(r31)
    lwz r4, 0x14(r31)
    bl DCInvalidateRange
L_8004A878:
    bl OSDisableInterrupts
    li r0, 0x2
    stw r0, 0xc(r31)
    addi r30, r3, 0x0
    addi r4, r31, 0x0
    li r3, 0x1
    bl __DVDPushWaitingQueue
    opword  0x800D8948  // lwz r0, executing_8053A508@sda21(r0)
    addi r31, r3, 0x0
    cmplwi r0, 0x0
    opword  0x40820014  // bne .L_8004A8B4
    opword  0x800D8954  // lwz r0, PauseFlag_8053A514@sda21(r0)
    cmpwi r0, 0x0
    opword  0x40820008  // bne .L_8004A8B4
    bl stateReady
L_8004A8B4:
    mr r3, r30
    bl OSRestoreInterrupts
    mr r3, r31
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    addi r1, r1, 0x20
    mtlr r0
    blr
}

ASM void DVDInquiryAsync(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    li r0, 0xe
    stwu r1, -0x28(r1)
    stw r31, 0x24(r1)
    addi r31, r3, 0x0
    stw r30, 0x20(r1)
    stw r0, 0x8(r3)
    li r3, 0x20
    li r0, 0x0
    stw r4, 0x18(r31)
    stw r3, 0x14(r31)
    stw r0, 0x20(r31)
    stw r5, 0x28(r31)
    opword  0x800D8084  // lwz r0, autoInvalidation_80539C44@sda21(r0)
    cmpwi r0, 0x0
    opword  0x41820030  // beq .L_8004A948
    lwz r3, 0x8(r31)
    cmplwi r3, 0x1
    opword  0x41820018  // beq .L_8004A93C
    subi r0, r3, 0x4
    cmplwi r0, 0x1
    opword  0x4081000C  // ble .L_8004A93C
    cmplwi r3, 0xe
    opword  0x40820010  // bne .L_8004A948
L_8004A93C:
    lwz r3, 0x18(r31)
    lwz r4, 0x14(r31)
    bl DCInvalidateRange
L_8004A948:
    bl OSDisableInterrupts
    li r0, 0x2
    stw r0, 0xc(r31)
    addi r30, r3, 0x0
    addi r4, r31, 0x0
    li r3, 0x2
    bl __DVDPushWaitingQueue
    opword  0x800D8948  // lwz r0, executing_8053A508@sda21(r0)
    addi r31, r3, 0x0
    cmplwi r0, 0x0
    opword  0x40820014  // bne .L_8004A984
    opword  0x800D8954  // lwz r0, PauseFlag_8053A514@sda21(r0)
    cmpwi r0, 0x0
    opword  0x40820008  // bne .L_8004A984
    bl stateReady
L_8004A984:
    mr r3, r30
    bl OSRestoreInterrupts
    mr r3, r31
    lwz r0, 0x2c(r1)
    lwz r31, 0x24(r1)
    lwz r30, 0x20(r1)
    addi r1, r1, 0x28
    mtlr r0
    blr
}

ASM void DVDReset(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x8(r1)
    bl DVDLowReset
    lis r3, 0xcc00
    li r0, 0x2a
    stw r0, 0x6000(r3)
    addi r4, r3, 0x6000
    li r0, 0x0
    lwz r3, 0x6004(r3)
    stw r3, 0x4(r4)
    opword  0x900D8980  // stw r0, ResetRequired_8053A540@sda21(r0)
    opword  0x900D8970  // stw r0, ResumeFromHere_8053A530@sda21(r0)
    lwz r0, 0xc(r1)
    addi r1, r1, 0x8
    mtlr r0
    blr
}

ASM void DVDGetCommandBlockStatus(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    mr r31, r3
    bl OSDisableInterrupts
    lwz r0, 0xc(r31)
    cmpwi r0, 0x3
    opword  0x4082000C  // bne .L_8004AA18
    li r31, 0x1
    opword  0x48000008  // b .L_8004AA1C
L_8004AA18:
    mr r31, r0
L_8004AA1C:
    bl OSRestoreInterrupts
    mr r3, r31
    lwz r0, 0x1c(r1)
    lwz r31, 0x14(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

ASM void DVDGetDriveStatus(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    stw r30, 0x10(r1)
    bl OSDisableInterrupts
    opword  0x800D8960  // lwz r0, FatalErrorFlag_8053A520@sda21(r0)
    addi r30, r3, 0x0
    cmpwi r0, 0x0
    opword  0x4182000C  // beq .L_8004AA68
    li r31, -0x1
    opword  0x4800005C  // b .L_8004AAC0
L_8004AA68:
    opword  0x800D8958  // lwz r0, PausingFlag_8053A518@sda21(r0)
    cmpwi r0, 0x0
    opword  0x4182000C  // beq .L_8004AA7C
    li r31, 0x8
    opword  0x48000048  // b .L_8004AAC0
L_8004AA7C:
    opword  0x83ED8948  // lwz r31, executing_8053A508@sda21(r0)
    cmplwi r31, 0x0
    opword  0x4082000C  // bne .L_8004AA90
    li r31, 0x0
    opword  0x48000034  // b .L_8004AAC0
L_8004AA90:
    lis r3, DummyCommandBlock@ha
    addi r0, r3, DummyCommandBlock@l
    cmplw r31, r0
    opword  0x4082000C  // bne .L_8004AAA8
    li r31, 0x0
    opword  0x4800001C  // b .L_8004AAC0
L_8004AAA8:
    bl OSDisableInterrupts
    lwz r31, 0xc(r31)
    cmpwi r31, 0x3
    opword  0x40820008  // bne .L_8004AABC
    li r31, 0x1
L_8004AABC:
    bl OSRestoreInterrupts
L_8004AAC0:
    mr r3, r30
    bl OSRestoreInterrupts
    mr r3, r31
    lwz r0, 0x1c(r1)
    lwz r31, 0x14(r1)
    lwz r30, 0x10(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

ASM void DVDSetAutoInvalidation(void)
{
    nofralloc
    opword  0x800D8084  // lwz r0, autoInvalidation_80539C44@sda21(r0)
    opword  0x906D8084  // stw r3, autoInvalidation_80539C44@sda21(r0)
    mr r3, r0
    blr
}

ASM void DVDResume(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x10(r1)
    stw r31, 0xc(r1)
    bl OSDisableInterrupts
    li r4, 0x0
    opword  0x908D8954  // stw r4, PauseFlag_8053A514@sda21(r0)
    mr r31, r3
    opword  0x800D8958  // lwz r0, PausingFlag_8053A518@sda21(r0)
    cmpwi r0, 0x0
    opword  0x4182000C  // beq .L_8004AB28
    opword  0x908D8958  // stw r4, PausingFlag_8053A518@sda21(r0)
    bl stateReady
L_8004AB28:
    mr r3, r31
    bl OSRestoreInterrupts
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    addi r1, r1, 0x10
    mtlr r0
    blr
}

ASM void fn_8004AB44(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x28(r1)
    stw r31, 0x24(r1)
    stw r30, 0x20(r1)
    addi r30, r4, 0x0
    stw r29, 0x1c(r1)
    addi r29, r3, 0x0
    bl OSDisableInterrupts
    lwz r4, 0xc(r29)
    addi r31, r3, 0x0
    addi r0, r4, 0x1
    cmplwi r0, 0xc
    opword  0x41810220  // bgt .L_8004AD98
    lis r3, jumptable_804962C8@ha
    addi r3, r3, jumptable_804962C8@l
    slwi r0, r0, 2
    lwzx r0, r3, r0
    mtctr r0
    bctr
    cmplwi r30, 0x0
    opword  0x41820200  // beq .L_8004AD98
    addi r12, r30, 0x0
    mtlr r12
    addi r4, r29, 0x0
    li r3, 0x0
    blrl
    opword  0x480001E8  // b .L_8004AD98
    opword  0x800D8968  // lwz r0, lbl_8053A528@sda21(r0)
    cmplwi r0, 0x0
    opword  0x41820014  // beq .L_8004ABD0
    mr r3, r31
    bl OSRestoreInterrupts
    li r3, 0x0
    opword  0x480001D8  // b .L_8004ADA4
L_8004ABD0:
    li r0, 0x1
    opword  0x93CD896C  // stw r30, lbl_8053A52C@sda21(r0)
    opword  0x900D8968  // stw r0, lbl_8053A528@sda21(r0)
    lwz r0, 0x8(r29)
    cmplwi r0, 0x4
    opword  0x4182000C  // beq .L_8004ABF0
    cmplwi r0, 0x1
    opword  0x408201AC  // bne .L_8004AD98
L_8004ABF0:
    bl fn_80048028
    opword  0x480001A4  // b .L_8004AD98
    mr r3, r29
    bl fn_8004B27C
    li r0, 0xa
    stw r0, 0xc(r29)
    lwz r12, 0x28(r29)
    cmplwi r12, 0x0
    opword  0x41820014  // beq .L_8004AC24
    mtlr r12
    addi r4, r29, 0x0
    li r3, -0x3
    blrl
L_8004AC24:
    cmplwi r30, 0x0
    opword  0x41820170  // beq .L_8004AD98
    addi r12, r30, 0x0
    mtlr r12
    addi r4, r29, 0x0
    li r3, 0x0
    blrl
    opword  0x48000158  // b .L_8004AD98
    lwz r0, 0x8(r29)
    cmpwi r0, 0xd
    opword  0x41820028  // beq .L_8004AC74
    opword  0x40800018  // bge .L_8004AC68
    cmpwi r0, 0x6
    opword  0x4080003C  // bge .L_8004AC94
    cmpwi r0, 0x4
    opword  0x40800014  // bge .L_8004AC74
    opword  0x48000030  // b .L_8004AC94
L_8004AC68:
    cmpwi r0, 0xf
    opword  0x41820008  // beq .L_8004AC74
    opword  0x48000024  // b .L_8004AC94
L_8004AC74:
    cmplwi r30, 0x0
    opword  0x41820120  // beq .L_8004AD98
    addi r12, r30, 0x0
    mtlr r12
    addi r4, r29, 0x0
    li r3, 0x0
    blrl
    opword  0x48000108  // b .L_8004AD98
L_8004AC94:
    opword  0x800D8968  // lwz r0, lbl_8053A528@sda21(r0)
    cmplwi r0, 0x0
    opword  0x41820014  // beq .L_8004ACB0
    mr r3, r31
    bl OSRestoreInterrupts
    li r3, 0x0
    opword  0x480000F8  // b .L_8004ADA4
L_8004ACB0:
    li r0, 0x1
    opword  0x93CD896C  // stw r30, lbl_8053A52C@sda21(r0)
    opword  0x900D8968  // stw r0, lbl_8053A528@sda21(r0)
    opword  0x480000DC  // b .L_8004AD98
    bl fn_8004803C
    lis r4, cbForStateMotorStopped@ha
    addi r0, r4, cbForStateMotorStopped@l
    cmplw r3, r0
    opword  0x41820014  // beq .L_8004ACE4
    mr r3, r31
    bl OSRestoreInterrupts
    li r3, 0x0
    opword  0x480000C4  // b .L_8004ADA4
L_8004ACE4:
    lwz r0, 0xc(r29)
    cmpwi r0, 0x4
    opword  0x4082000C  // bne .L_8004ACF8
    li r0, 0x3
    opword  0x900D8970  // stw r0, ResumeFromHere_8053A530@sda21(r0)
L_8004ACF8:
    lwz r0, 0xc(r29)
    cmpwi r0, 0x5
    opword  0x4082000C  // bne .L_8004AD0C
    li r0, 0x4
    opword  0x900D8970  // stw r0, ResumeFromHere_8053A530@sda21(r0)
L_8004AD0C:
    lwz r0, 0xc(r29)
    cmpwi r0, 0x6
    opword  0x4082000C  // bne .L_8004AD20
    li r0, 0x1
    opword  0x900D8970  // stw r0, ResumeFromHere_8053A530@sda21(r0)
L_8004AD20:
    lwz r0, 0xc(r29)
    cmpwi r0, 0xb
    opword  0x4082000C  // bne .L_8004AD34
    li r0, 0x2
    opword  0x900D8970  // stw r0, ResumeFromHere_8053A530@sda21(r0)
L_8004AD34:
    lwz r0, 0xc(r29)
    cmpwi r0, 0x7
    opword  0x4082000C  // bne .L_8004AD48
    li r0, 0x7
    opword  0x900D8970  // stw r0, ResumeFromHere_8053A530@sda21(r0)
L_8004AD48:
    lis r3, DummyCommandBlock@ha
    addi r0, r3, DummyCommandBlock@l
    opword  0x900D8948  // stw r0, executing_8053A508@sda21(r0)
    li r0, 0xa
    stw r0, 0xc(r29)
    lwz r12, 0x28(r29)
    cmplwi r12, 0x0
    opword  0x41820014  // beq .L_8004AD78
    mtlr r12
    addi r4, r29, 0x0
    li r3, -0x3
    blrl
L_8004AD78:
    cmplwi r30, 0x0
    opword  0x41820018  // beq .L_8004AD94
    addi r12, r30, 0x0
    mtlr r12
    addi r4, r29, 0x0
    li r3, 0x0
    blrl
L_8004AD94:
    bl stateReady
L_8004AD98:
    mr r3, r31
    bl OSRestoreInterrupts
    li r3, 0x1
L_8004ADA4:
    lwz r0, 0x2c(r1)
    lwz r31, 0x24(r1)
    lwz r30, 0x20(r1)
    lwz r29, 0x1c(r1)
    addi r1, r1, 0x28
    mtlr r0
    blr
}

ASM void fn_8004ADC0(void)
{
    nofralloc
    mflr r0
    lis r4, fn_8004AE6C@ha
    stw r0, 0x4(r1)
    addi r4, r4, fn_8004AE6C@l
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    stw r30, 0x10(r1)
    addi r30, r3, 0x0
    bl fn_8004AB44
    cmpwi r3, 0x0
    opword  0x4082000C  // bne .L_8004ADF4
    li r3, -0x1
    opword  0x48000064  // b .L_8004AE54
L_8004ADF4:
    bl OSDisableInterrupts
    mr r31, r3
L_8004ADFC:
    lwz r3, 0xc(r30)
    addi r0, r3, 0x1
    cmplwi r0, 0x1
    opword  0x40810040  // ble .L_8004AE48
    cmpwi r3, 0xa
    opword  0x41820038  // beq .L_8004AE48
    cmpwi r3, 0x3
    opword  0x40820024  // bne .L_8004AE3C
    lwz r3, 0x8(r30)
    subi r0, r3, 0x4
    cmplwi r0, 0x1
    opword  0x40810020  // ble .L_8004AE48
    cmplwi r3, 0xd
    opword  0x41820018  // beq .L_8004AE48
    cmplwi r3, 0xf
    opword  0x41820010  // beq .L_8004AE48
L_8004AE3C:
    opword  0x386D8940  // li r3, __DVDThreadQueue@sda21
    bl OSSleepThread
    opword  0x4BFFFFB8  // b .L_8004ADFC
L_8004AE48:
    mr r3, r31
    bl OSRestoreInterrupts
    li r3, 0x0
L_8004AE54:
    lwz r0, 0x1c(r1)
    lwz r31, 0x14(r1)
    lwz r30, 0x10(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

ASM void fn_8004AE6C(void)
{
    nofralloc
    mflr r0
    opword  0x386D8940  // li r3, __DVDThreadQueue@sda21
    stw r0, 0x4(r1)
    stwu r1, -0x8(r1)
    bl OSWakeupThread
    lwz r0, 0xc(r1)
    addi r1, r1, 0x8
    mtlr r0
    blr
}

ASM void DVDGetCurrentDiskID(void)
{
    nofralloc
    lis r3, 0x8000
    blr
}

ASM void DVDCheckDisk(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x10(r1)
    stw r31, 0xc(r1)
    bl OSDisableInterrupts
    opword  0x800D8960  // lwz r0, FatalErrorFlag_8053A520@sda21(r0)
    cmpwi r0, 0x0
    opword  0x4182000C  // beq .L_8004AEC0
    li r4, -0x1
    opword  0x48000048  // b .L_8004AF04
L_8004AEC0:
    opword  0x800D8958  // lwz r0, PausingFlag_8053A518@sda21(r0)
    cmpwi r0, 0x0
    opword  0x4182000C  // beq .L_8004AED4
    li r4, 0x8
    opword  0x48000034  // b .L_8004AF04
L_8004AED4:
    opword  0x80AD8948  // lwz r5, executing_8053A508@sda21(r0)
    cmplwi r5, 0x0
    opword  0x4082000C  // bne .L_8004AEE8
    li r4, 0x0
    opword  0x48000020  // b .L_8004AF04
L_8004AEE8:
    lis r4, DummyCommandBlock@ha
    addi r0, r4, DummyCommandBlock@l
    cmplw r5, r0
    opword  0x4082000C  // bne .L_8004AF00
    li r4, 0x0
    opword  0x48000008  // b .L_8004AF04
L_8004AF00:
    lwz r4, 0xc(r5)
L_8004AF04:
    addi r0, r4, 0x1
    cmplwi r0, 0xc
    opword  0x41810068  // bgt .L_8004AF74
    lis r4, jumptable_804962FC@ha
    addi r4, r4, jumptable_804962FC@l
    slwi r0, r0, 2
    lwzx r0, r4, r0
    mtctr r0
    bctr
    li r31, 0x1
    opword  0x48000048  // b .L_8004AF74
    li r31, 0x0
    opword  0x48000040  // b .L_8004AF74
    lis r4, 0xcc00
    addi r4, r4, 0x6000
    lwz r4, 0x4(r4)
    extrwi. r0, r4, 1, 29
    opword  0x4082000C  // bne .L_8004AF54
    clrlwi. r0, r4, 31
    opword  0x4182000C  // beq .L_8004AF5C
L_8004AF54:
    li r31, 0x0
    opword  0x4800001C  // b .L_8004AF74
L_8004AF5C:
    opword  0x800D8970  // lwz r0, ResumeFromHere_8053A530@sda21(r0)
    cmplwi r0, 0x0
    opword  0x4182000C  // beq .L_8004AF70
    li r31, 0x0
    opword  0x48000008  // b .L_8004AF74
L_8004AF70:
    li r31, 0x1
L_8004AF74:
    bl OSRestoreInterrupts
    mr r3, r31
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    addi r1, r1, 0x10
    mtlr r0
    blr
}

ASM void __DVDPrepareResetAsync(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x20(r1)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    mr r30, r3
    stw r29, 0x14(r1)
    bl OSDisableInterrupts
    mr r29, r3
    bl __DVDClearWaitingQueue
    opword  0x800D8968  // lwz r0, lbl_8053A528@sda21(r0)
    cmplwi r0, 0x0
    opword  0x4182000C  // beq .L_8004AFCC
    opword  0x93CD896C  // stw r30, lbl_8053A52C@sda21(r0)
    opword  0x480000C0  // b .L_8004B088
L_8004AFCC:
    opword  0x806D8948  // lwz r3, executing_8053A508@sda21(r0)
    cmplwi r3, 0x0
    opword  0x4182000C  // beq .L_8004AFE0
    li r0, 0x0
    stw r0, 0x28(r3)
L_8004AFE0:
    bl OSDisableInterrupts
    mr r31, r3
    bl OSDisableInterrupts
    opword  0x800D8948  // lwz r0, executing_8053A508@sda21(r0)
    li r4, 0x1
    opword  0x908D8954  // stw r4, PauseFlag_8053A514@sda21(r0)
    cmplwi r0, 0x0
    opword  0x40820008  // bne .L_8004B004
    opword  0x908D8958  // stw r4, PausingFlag_8053A518@sda21(r0)
L_8004B004:
    bl OSRestoreInterrupts
    opword  0x4800000C  // b .L_8004B014
L_8004B00C:
    li r4, 0x0
    bl fn_8004AB44
L_8004B014:
    bl __DVDPopWaitingQueue
    cmplwi r3, 0x0
    opword  0x4082FFF0  // bne .L_8004B00C
    opword  0x806D8948  // lwz r3, executing_8053A508@sda21(r0)
    cmplwi r3, 0x0
    opword  0x41820010  // beq .L_8004B038
    mr r4, r30
    bl fn_8004AB44
    opword  0x48000020  // b .L_8004B054
L_8004B038:
    cmplwi r30, 0x0
    opword  0x41820018  // beq .L_8004B054
    addi r12, r30, 0x0
    mtlr r12
    li r3, 0x0
    li r4, 0x0
    blrl
L_8004B054:
    bl OSDisableInterrupts
    li r4, 0x0
    opword  0x908D8954  // stw r4, PauseFlag_8053A514@sda21(r0)
    mr r30, r3
    opword  0x800D8958  // lwz r0, PausingFlag_8053A518@sda21(r0)
    cmpwi r0, 0x0
    opword  0x4182000C  // beq .L_8004B078
    opword  0x908D8958  // stw r4, PausingFlag_8053A518@sda21(r0)
    bl stateReady
L_8004B078:
    mr r3, r30
    bl OSRestoreInterrupts
    mr r3, r31
    bl OSRestoreInterrupts
L_8004B088:
    mr r3, r29
    bl OSRestoreInterrupts
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    addi r1, r1, 0x20
    mtlr r0
    blr
}

ASM void fn_8004B0AC(void)
{
    nofralloc
    mflr r0
    lis r4, lbl_804B5950@ha
    stw r0, 0x4(r1)
    addi r0, r4, lbl_804B5950@l
    cmplw r3, r0
    stwu r1, -0x8(r1)
    opword  0x4082000C  // bne .L_8004B0D0
    li r3, 0x1
    opword  0x48000008  // b .L_8004B0D4
L_8004B0D0:
    bl fn_8004809C
L_8004B0D4:
    lwz r0, 0xc(r1)
    addi r1, r1, 0x8
    mtlr r0
    blr
}

ASM void __DVDClearWaitingQueue(void)
{
    nofralloc
    lis r3, WaitingQueue@ha
    addi r3, r3, WaitingQueue@l
    stw r3, 0x0(r3)
    addi r5, r3, 0x8
    addi r4, r3, 0x10
    stw r3, 0x4(r3)
    addi r3, r3, 0x18
    stw r5, 0x0(r5)
    stw r5, 0x4(r5)
    stw r4, 0x0(r4)
    stw r4, 0x4(r4)
    stw r3, 0x0(r3)
    stw r3, 0x4(r3)
    blr
}

ASM void __DVDPushWaitingQueue(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    addi r31, r4, 0x0
    stw r30, 0x10(r1)
    addi r30, r3, 0x0
    bl OSDisableInterrupts
    lis r4, WaitingQueue@ha
    slwi r5, r30, 3
    addi r0, r4, WaitingQueue@l
    add r5, r0, r5
    lwz r4, 0x4(r5)
    stw r31, 0x0(r4)
    lwz r0, 0x4(r5)
    stw r0, 0x4(r31)
    stw r5, 0x0(r31)
    stw r31, 0x4(r5)
    bl OSRestoreInterrupts
    lwz r0, 0x1c(r1)
    li r3, 0x1
    lwz r31, 0x14(r1)
    lwz r30, 0x10(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

ASM void __DVDPopWaitingQueue(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x10(r1)
    stw r31, 0xc(r1)
    bl OSDisableInterrupts
    li r0, 0x4
    lis r4, WaitingQueue@ha
    mtctr r0
    addi r4, r4, WaitingQueue@l
    li r31, 0x0
L_8004B1AC:
    lwz r0, 0x0(r4)
    cmplw r0, r4
    opword  0x41820048  // beq .L_8004B1FC
    bl OSRestoreInterrupts
    bl OSDisableInterrupts
    lis r4, WaitingQueue@ha
    slwi r5, r31, 3
    addi r0, r4, WaitingQueue@l
    add r5, r0, r5
    lwz r31, 0x0(r5)
    lwz r0, 0x0(r31)
    stw r0, 0x0(r5)
    lwz r4, 0x0(r31)
    stw r5, 0x4(r4)
    bl OSRestoreInterrupts
    li r0, 0x0
    stw r0, 0x0(r31)
    mr r3, r31
    stw r0, 0x4(r31)
    opword  0x48000018  // b .L_8004B210
L_8004B1FC:
    addi r4, r4, 0x8
    addi r31, r31, 0x1
    opword  0x4200FFA8  // bdnz .L_8004B1AC
    bl OSRestoreInterrupts
    li r3, 0x0
L_8004B210:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    addi r1, r1, 0x10
    mtlr r0
    blr
}

ASM void __DVDCheckWaitingQueue(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x8(r1)
    bl OSDisableInterrupts
    li r0, 0x4
    lis r4, WaitingQueue@ha
    mtctr r0
    addi r4, r4, WaitingQueue@l
L_8004B244:
    lwz r0, 0x0(r4)
    cmplw r0, r4
    opword  0x41820010  // beq .L_8004B25C
    bl OSRestoreInterrupts
    li r3, 0x1
    opword  0x48000014  // b .L_8004B26C
L_8004B25C:
    addi r4, r4, 0x8
    opword  0x4200FFE4  // bdnz .L_8004B244
    bl OSRestoreInterrupts
    li r3, 0x0
L_8004B26C:
    lwz r0, 0xc(r1)
    addi r1, r1, 0x8
    mtlr r0
    blr
}

ASM void fn_8004B27C(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    mr r31, r3
    bl OSDisableInterrupts
    lwz r4, 0x4(r31)
    lwz r5, 0x0(r31)
    cmplwi r4, 0x0
    opword  0x4182000C  // beq .L_8004B2AC
    cmplwi r5, 0x0
    opword  0x40820010  // bne .L_8004B2B8
L_8004B2AC:
    bl OSRestoreInterrupts
    li r3, 0x0
    opword  0x48000014  // b .L_8004B2C8
L_8004B2B8:
    stw r5, 0x0(r4)
    stw r4, 0x4(r5)
    bl OSRestoreInterrupts
    li r3, 0x1
L_8004B2C8:
    lwz r0, 0x1c(r1)
    lwz r31, 0x14(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

ASM void ErrorCode2Num(void)
{
    nofralloc
    li r0, 0x2
    lis r4, lbl_80496330@ha
    mtctr r0
    addi r4, r4, lbl_80496330@l
    li r5, 0x0
L_8004B2F0:
    lwz r0, 0x0(r4)
    cmplw r3, r0
    opword  0x4082000C  // bne .L_8004B304
    clrlwi r3, r5, 24
    blr
L_8004B304:
    lwzu r0, 0x4(r4)
    addi r5, r5, 0x1
    cmplw r3, r0
    opword  0x4082000C  // bne .L_8004B31C
    clrlwi r3, r5, 24
    blr
L_8004B31C:
    lwzu r0, 0x4(r4)
    addi r5, r5, 0x1
    cmplw r3, r0
    opword  0x4082000C  // bne .L_8004B334
    clrlwi r3, r5, 24
    blr
L_8004B334:
    lwzu r0, 0x4(r4)
    addi r5, r5, 0x1
    cmplw r3, r0
    opword  0x4082000C  // bne .L_8004B34C
    clrlwi r3, r5, 24
    blr
L_8004B34C:
    lwzu r0, 0x4(r4)
    addi r5, r5, 0x1
    cmplw r3, r0
    opword  0x4082000C  // bne .L_8004B364
    clrlwi r3, r5, 24
    blr
L_8004B364:
    lwzu r0, 0x4(r4)
    addi r5, r5, 0x1
    cmplw r3, r0
    opword  0x4082000C  // bne .L_8004B37C
    clrlwi r3, r5, 24
    blr
L_8004B37C:
    lwzu r0, 0x4(r4)
    addi r5, r5, 0x1
    cmplw r3, r0
    opword  0x4082000C  // bne .L_8004B394
    clrlwi r3, r5, 24
    blr
L_8004B394:
    lwzu r0, 0x4(r4)
    addi r5, r5, 0x1
    cmplw r3, r0
    opword  0x4082000C  // bne .L_8004B3AC
    clrlwi r3, r5, 24
    blr
L_8004B3AC:
    lwzu r0, 0x4(r4)
    addi r5, r5, 0x1
    cmplw r3, r0
    opword  0x4082000C  // bne .L_8004B3C4
    clrlwi r3, r5, 24
    blr
L_8004B3C4:
    addi r4, r4, 0x4
    addi r5, r5, 0x1
    opword  0x4200FF24  // bdnz .L_8004B2F0
    lis r4, 0x10
    cmplw r3, r4
    opword  0x41800018  // blt .L_8004B3F0
    addi r0, r4, 0x8
    cmplw r3, r0
    opword  0x4181000C  // bgt .L_8004B3F0
    li r3, 0x11
    blr
L_8004B3F0:
    li r3, 0x1d
    blr
}

ASM void __DVDStoreErrorCode(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    subis r0, r3, 0x123
    cmplwi r0, 0x4567
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    opword  0x4082000C  // bne .L_8004B41C
    li r31, 0xff
    opword  0x48000038  // b .L_8004B450
L_8004B41C:
    cmplwi r0, 0x4568
    opword  0x4082000C  // bne .L_8004B42C
    li r31, 0xfe
    opword  0x48000028  // b .L_8004B450
L_8004B42C:
    srwi r31, r3, 24
    clrlwi r3, r3, 8
    bl ErrorCode2Num
    cmplwi r31, 0x6
    opword  0x41800008  // blt .L_8004B444
    li r31, 0x6
L_8004B444:
    mulli r0, r31, 0x1e
    clrlwi r3, r3, 24
    add r31, r3, r0
L_8004B450:
    bl __OSLockSramEx
    stb r31, 0x24(r3)
    li r3, 0x1
    bl __OSUnlockSramEx
    lwz r0, 0x1c(r1)
    lwz r31, 0x14(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

ASM void fn_8004B474(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    addi r31, r4, 0x0
    stw r30, 0x10(r1)
    mr r30, r3
    lbz r0, 0x0(r3)
    extsb. r0, r0
    opword  0x41820030  // beq .L_8004B4C8
    lbz r0, 0x0(r31)
    extsb. r0, r0
    opword  0x41820024  // beq .L_8004B4C8
    addi r3, r30, 0x0
    addi r4, r31, 0x0
    li r5, 0x4
    bl strncmp
    cmpwi r3, 0x0
    opword  0x4182000C  // beq .L_8004B4C8
    li r3, 0x0
    opword  0x48000090  // b .L_8004B554
L_8004B4C8:
    lbz r0, 0x4(r30)
    extsb. r0, r0
    opword  0x41820028  // beq .L_8004B4F8
    lbz r0, 0x4(r31)
    extsb. r0, r0
    opword  0x4182001C  // beq .L_8004B4F8
    addi r3, r30, 0x4
    addi r4, r31, 0x4
    li r5, 0x2
    bl strncmp
    cmpwi r3, 0x0
    opword  0x4182000C  // beq .L_8004B500
L_8004B4F8:
    li r3, 0x0
    opword  0x48000058  // b .L_8004B554
L_8004B500:
    lbz r3, 0x6(r30)
    cmplwi r3, 0xff
    opword  0x41820020  // beq .L_8004B528
    lbz r0, 0x6(r31)
    cmplwi r0, 0xff
    opword  0x41820014  // beq .L_8004B528
    cmplw r3, r0
    opword  0x4182000C  // beq .L_8004B528
    li r3, 0x0
    opword  0x48000030  // b .L_8004B554
L_8004B528:
    lbz r3, 0x7(r30)
    cmplwi r3, 0xff
    opword  0x41820020  // beq .L_8004B550
    lbz r0, 0x7(r31)
    cmplwi r0, 0xff
    opword  0x41820014  // beq .L_8004B550
    cmplw r3, r0
    opword  0x4182000C  // beq .L_8004B550
    li r3, 0x0
    opword  0x48000008  // b .L_8004B554
L_8004B550:
    li r3, 0x1
L_8004B554:
    lwz r0, 0x1c(r1)
    lwz r31, 0x14(r1)
    lwz r30, 0x10(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

ASM void fn_8004B56C(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x8(r1)
    opword  0x818D8990  // lwz r12, lbl_8053A550@sda21(r0)
    cmplwi r12, 0x0
    opword  0x4182000C  // beq .L_8004B58C
    mtlr r12
    blrl
L_8004B58C:
    lwz r0, 0xc(r1)
    addi r1, r1, 0x8
    mtlr r0
    blr
}

ASM void cb(void)
{
    nofralloc
    mflr r0
    cmpwi r3, 0x0
    stw r0, 0x4(r1)
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    addi r31, r4, 0x0
    opword  0x4081007C  // ble .L_8004B630
    opword  0x800D8998  // lwz r0, lbl_8053A558@sda21(r0)
    cmpwi r0, 0x1
    opword  0x4182003C  // beq .L_8004B5FC
    opword  0x4080009C  // bge .L_8004B660
    cmpwi r0, 0x0
    opword  0x40800008  // bge .L_8004B5D4
    opword  0x48000090  // b .L_8004B660
L_8004B5D4:
    li r0, 0x1
    opword  0x808D899C  // lwz r4, bb2_8053A55C@sda21(r0)
    lis r3, cb@ha
    opword  0x900D8998  // stw r0, lbl_8053A558@sda21(r0)
    addi r7, r3, cb@l
    addi r3, r31, 0x0
    li r5, 0x20
    li r6, 0x420
    bl fn_8004A678
    opword  0x48000068  // b .L_8004B660
L_8004B5FC:
    li r0, 0x2
    opword  0x80CD899C  // lwz r6, bb2_8053A55C@sda21(r0)
    opword  0x900D8998  // stw r0, lbl_8053A558@sda21(r0)
    lis r3, cb@ha
    addi r7, r3, cb@l
    lwz r5, 0x8(r6)
    mr r3, r31
    lwz r4, 0x10(r6)
    addi r0, r5, 0x1f
    lwz r6, 0x4(r6)
    clrrwi r5, r0, 5
    bl fn_8004A678
    opword  0x48000034  // b .L_8004B660
L_8004B630:
    cmpwi r3, -0x1
    opword  0x4182002C  // beq .L_8004B660
    cmpwi r3, -0x4
    opword  0x40820024  // bne .L_8004B660
    li r0, 0x0
    opword  0x900D8998  // stw r0, lbl_8053A558@sda21(r0)
    bl DVDReset
    lis r3, cb@ha
    opword  0x808D89A0  // lwz r4, idTmp_8053A560@sda21(r0)
    addi r5, r3, cb@l
    addi r3, r31, 0x0
    bl DVDReadDiskID
L_8004B660:
    lwz r0, 0x1c(r1)
    lwz r31, 0x14(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

ASM void __fstLoad(void)
{
    nofralloc
    mflr r0
    opword  0x3C608049  // lis r3, "@36_80496378"@ha
    stw r0, 0x4(r1)
    stwu r1, -0x60(r1)
    stw r31, 0x5c(r1)
    opword  0x3BE36378  // addi r31, r3, "@36_80496378"@l
    stw r30, 0x58(r1)
    stw r29, 0x54(r1)
    bl OSGetArenaHi
    lis r3, bb2Buf@ha
    addi r3, r3, bb2Buf@l
    addi r4, r1, 0x2b
    addi r0, r3, 0x1f
    clrrwi r3, r4, 5
    clrrwi r0, r0, 5
    opword  0x906D89A0  // stw r3, idTmp_8053A560@sda21(r0)
    opword  0x900D899C  // stw r0, bb2_8053A55C@sda21(r0)
    bl DVDReset
    opword  0x3C60804B  // lis r3, block$16_804B59D8@ha
    opword  0x808D89A0  // lwz r4, idTmp_8053A560@sda21(r0)
    lis r5, cb@ha
    opword  0x386359D8  // addi r3, r3, block$16_804B59D8@l
    addi r5, r5, cb@l
    bl DVDReadDiskID
L_8004B6D4:
    bl DVDGetDriveStatus
    cmpwi r3, 0x0
    opword  0x4082FFF8  // bne .L_8004B6D4
    opword  0x806D899C  // lwz r3, bb2_8053A55C@sda21(r0)
    lis r29, 0x8000
    lis r30, 0x8000
    lwz r0, 0x10(r3)
    addi r3, r29, 0x0
    li r5, 0x20
    stw r0, 0x38(r30)
    opword  0x808D899C  // lwz r4, bb2_8053A55C@sda21(r0)
    lwz r0, 0xc(r4)
    stw r0, 0x3c(r30)
    opword  0x808D89A0  // lwz r4, idTmp_8053A560@sda21(r0)
    bl memcpy
    opword  0x386D8098  // li r3, "@35_80539C58"@sda21
    crclr 6
    bl OSReport
    lbz r4, 0x0(r29)
    mr r3, r31
    lbz r5, 0x1(r29)
    crclr 6
    lbz r6, 0x2(r29)
    lbz r7, 0x3(r29)
    extsb r4, r4
    extsb r5, r5
    extsb r6, r6
    extsb r7, r7
    bl OSReport
    lbz r4, 0x4(r29)
    addi r3, r31, 0x1c
    lbz r5, 0x5(r29)
    crclr 6
    extsb r4, r4
    extsb r5, r5
    bl OSReport
    lbz r4, 0x6(r29)
    addi r3, r31, 0x34
    crclr 6
    bl OSReport
    lbz r4, 0x7(r29)
    addi r3, r31, 0x48
    crclr 6
    bl OSReport
    lbz r0, 0x8(r30)
    cmplwi r0, 0x0
    opword  0x4082000C  // bne .L_8004B798
    opword  0x388D809C  // li r4, "@40_80539C5C"@sda21
    opword  0x48000008  // b .L_8004B79C
L_8004B798:
    opword  0x388D80A0  // li r4, "@41_80539C60"@sda21
L_8004B79C:
    crclr 6
    addi r3, r31, 0x5c
    bl OSReport
    opword  0x386D8098  // li r3, "@35_80539C58"@sda21
    crclr 6
    bl OSReport
    opword  0x806D899C  // lwz r3, bb2_8053A55C@sda21(r0)
    lwz r3, 0x10(r3)
    bl OSSetArenaHi
    lwz r0, 0x64(r1)
    lwz r31, 0x5c(r1)
    lwz r30, 0x58(r1)
    lwz r29, 0x54(r1)
    addi r1, r1, 0x60
    mtlr r0
    blr
}

ASM void fn_8004B7DC(void)
{
    nofralloc
    mflr r0
    lis r3, 0xcc00
    stw r0, 0x4(r1)
    addi r5, r3, 0x2000
    lis r3, lbl_804B5A08@ha
    stwu r1, -0x2f8(r1)
    li r7, 0x0
    stmw r27, 0x2e4(r1)
    addi r30, r4, 0x0
    addi r31, r3, lbl_804B5A08@l
    lhzu r6, 0x30(r5)
    rlwinm. r0, r6, 0, 16, 16
    opword  0x41820010  // beq .L_8004B81C
    rlwinm r0, r6, 0, 17, 15
    sth r0, 0x0(r5)
    ori r7, r7, 0x1
L_8004B81C:
    lis r3, 0xcc00
    lhzu r4, 0x2034(r3)
    rlwinm. r0, r4, 0, 16, 16
    opword  0x41820010  // beq .L_8004B838
    rlwinm r0, r4, 0, 17, 15
    sth r0, 0x0(r3)
    ori r7, r7, 0x2
L_8004B838:
    lis r3, 0xcc00
    lhzu r4, 0x2038(r3)
    rlwinm. r0, r4, 0, 16, 16
    opword  0x41820010  // beq .L_8004B854
    rlwinm r0, r4, 0, 17, 15
    sth r0, 0x0(r3)
    ori r7, r7, 0x4
L_8004B854:
    lis r3, 0xcc00
    lhzu r4, 0x203c(r3)
    rlwinm. r0, r4, 0, 16, 16
    opword  0x41820010  // beq .L_8004B870
    rlwinm r0, r4, 0, 17, 15
    sth r0, 0x0(r3)
    ori r7, r7, 0x8
L_8004B870:
    rlwinm. r0, r7, 0, 29, 29
    opword  0x4082000C  // bne .L_8004B880
    rlwinm. r0, r7, 0, 28, 28
    opword  0x41820054  // beq .L_8004B8D0
L_8004B880:
    addi r3, r1, 0x18
    bl OSClearContext
    addi r3, r1, 0x18
    bl OSSetCurrentContext
    opword  0x800D89C4  // lwz r0, lbl_8053A584@sda21(r0)
    cmplwi r0, 0x0
    opword  0x41820024  // beq .L_8004B8BC
    addi r3, r1, 0x16
    addi r4, r1, 0x14
    bl fn_8004D5E0
    opword  0x818D89C4  // lwz r12, lbl_8053A584@sda21(r0)
    lha r3, 0x16(r1)
    mtlr r12
    lha r4, 0x14(r1)
    blrl
L_8004B8BC:
    addi r3, r1, 0x18
    bl OSClearContext
    mr r3, r30
    bl OSSetCurrentContext
    opword  0x48000170  // b .L_8004BA3C
L_8004B8D0:
    opword  0x808D89AC  // lwz r4, lbl_8053A56C@sda21(r0)
    addi r3, r1, 0x18
    addi r0, r4, 0x1
    opword  0x900D89AC  // stw r0, lbl_8053A56C@sda21(r0)
    bl OSClearContext
    addi r3, r1, 0x18
    bl OSSetCurrentContext
    opword  0x818D89BC  // lwz r12, lbl_8053A57C@sda21(r0)
    cmplwi r12, 0x0
    opword  0x41820010  // beq .L_8004B904
    opword  0x806D89AC  // lwz r3, lbl_8053A56C@sda21(r0)
    mtlr r12
    blrl
L_8004B904:
    opword  0x800D89B0  // lwz r0, lbl_8053A570@sda21(r0)
    cmplwi r0, 0x0
    opword  0x418200F4  // beq .L_8004BA00
    opword  0x800D89E0  // lwz r0, lbl_8053A5A0@sda21(r0)
    cmplwi r0, 0x1
    opword  0x40820010  // bne .L_8004B928
    bl fn_8004D184
    cmplwi r3, 0x0
    opword  0x418200C4  // beq .L_8004B9E8
L_8004B928:
    lis r3, 0xcc00
    addi r29, r3, 0x2000
    opword  0x48000078  // b .L_8004B9A8
L_8004B934:
    opword  0x806D89E8  // lwz r3, lbl_8053A5A8@sda21(r0)
    li r5, 0x20
    opword  0x836D89EC  // lwz r27, lbl_8053A5AC@sda21(r0)
    addi r4, r27, 0x0
    bl __shr2u
    cntlzw r4, r4
    cmpwi r4, 0x20
    li r0, -0x1
    and r0, r27, r0
    opword  0x40800008  // bge .L_8004B960
    opword  0x4800000C  // b .L_8004B968
L_8004B960:
    cntlzw r3, r0
    addi r4, r3, 0x20
L_8004B968:
    slwi r6, r4, 1
    add r3, r31, r6
    lhz r0, 0x78(r3)
    subfic r5, r4, 0x3f
    li r3, 0x0
    sthx r0, r29, r6
    li r4, 0x1
    bl __shl2i
    opword  0x800D89E8  // lwz r0, lbl_8053A5A8@sda21(r0)
    nor r5, r3, r3
    nor r4, r4, r4
    opword  0x806D89EC  // lwz r3, lbl_8053A5AC@sda21(r0)
    and r0, r0, r5
    and r3, r3, r4
    opword  0x906D89EC  // stw r3, lbl_8053A5AC@sda21(r0)
    opword  0x900D89E8  // stw r0, lbl_8053A5A8@sda21(r0)
L_8004B9A8:
    opword  0x800D89E8  // lwz r0, lbl_8053A5A8@sda21(r0)
    li r4, 0x0
    opword  0x806D89EC  // lwz r3, lbl_8053A5AC@sda21(r0)
    xor r0, r0, r4
    xor r3, r3, r4
    or. r0, r3, r0
    opword  0x4082FF74  // bne .L_8004B934
    opword  0x908D89E0  // stw r4, lbl_8053A5A0@sda21(r0)
    li r4, 0x1
    opword  0x800D89F8  // lwz r0, lbl_8053A5B8@sda21(r0)
    lwz r3, 0x144(r31)
    opword  0x906D89F0  // stw r3, lbl_8053A5B0@sda21(r0)
    lwz r3, 0x118(r31)
    opword  0x906D89F4  // stw r3, CurrTvMode_8053A5B4@sda21(r0)
    opword  0x900D89FC  // stw r0, lbl_8053A5BC@sda21(r0)
    opword  0x48000008  // b .L_8004B9EC
L_8004B9E8:
    li r4, 0x0
L_8004B9EC:
    cmpwi r4, 0x0
    opword  0x41820010  // beq .L_8004BA00
    li r0, 0x0
    opword  0x900D89B0  // stw r0, lbl_8053A570@sda21(r0)
    bl fn_80075508
L_8004BA00:
    opword  0x800D89C0  // lwz r0, lbl_8053A580@sda21(r0)
    cmplwi r0, 0x0
    opword  0x4182001C  // beq .L_8004BA24
    addi r3, r1, 0x18
    bl OSClearContext
    opword  0x818D89C0  // lwz r12, lbl_8053A580@sda21(r0)
    opword  0x806D89AC  // lwz r3, lbl_8053A56C@sda21(r0)
    mtlr r12
    blrl
L_8004BA24:
    opword  0x386D89B4  // li r3, lbl_8053A574@sda21
    bl OSWakeupThread
    addi r3, r1, 0x18
    bl OSClearContext
    mr r3, r30
    bl OSSetCurrentContext
L_8004BA3C:
    lmw r27, 0x2e4(r1)
    lwz r0, 0x2fc(r1)
    addi r1, r1, 0x2f8
    mtlr r0
    blr
}

ASM void fn_8004BA50(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    stw r30, 0x10(r1)
    mr r30, r3
    opword  0x83ED89BC  // lwz r31, lbl_8053A57C@sda21(r0)
    bl OSDisableInterrupts
    opword  0x93CD89BC  // stw r30, lbl_8053A57C@sda21(r0)
    bl OSRestoreInterrupts
    mr r3, r31
    lwz r0, 0x1c(r1)
    lwz r31, 0x14(r1)
    lwz r30, 0x10(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

ASM void fn_8004BA94(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    stw r30, 0x10(r1)
    mr r30, r3
    opword  0x83ED89C0  // lwz r31, lbl_8053A580@sda21(r0)
    bl OSDisableInterrupts
    opword  0x93CD89C0  // stw r30, lbl_8053A580@sda21(r0)
    bl OSRestoreInterrupts
    mr r3, r31
    lwz r0, 0x1c(r1)
    lwz r31, 0x14(r1)
    lwz r30, 0x10(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

ASM void fn_8004BAD8(void)
{
    nofralloc
    cmplwi r3, 0x1a
    lis r4, lbl_804963E8@ha
    addi r5, r4, lbl_804963E8@l
    opword  0x4181008C  // bgt .L_8004BB70
    lis r4, jumptable_804965DC@ha
    addi r4, r4, jumptable_804965DC@l
    slwi r0, r3, 2
    lwzx r0, r4, r0
    mtctr r0
    bctr
    addi r3, r5, 0x44
    blr
    addi r3, r5, 0x6a
    blr
    addi r3, r5, 0x90
    blr
    addi r3, r5, 0xb6
    blr
    addi r3, r5, 0x44
    blr
    addi r3, r5, 0x6a
    blr
    addi r3, r5, 0xdc
    blr
    addi r3, r5, 0x102
    blr
    addi r3, r5, 0x128
    blr
    addi r3, r5, 0x14e
    blr
    addi r3, r5, 0x90
    blr
    addi r3, r5, 0xb6
    blr
    addi r3, r5, 0x174
    blr
    addi r3, r5, 0x19a
    blr
L_8004BB70:
    li r3, 0x0
    blr
}

ASM void fn_8004BB78(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x30(r1)
    stw r31, 0x2c(r1)
    srwi r31, r3, 2
    stw r30, 0x28(r1)
    stw r29, 0x24(r1)
    addi r29, r3, 0x0
    lis r3, 0x8000
    stw r31, 0xcc(r3)
    addi r3, r29, 0x0
    rlwinm r30, r29, 0, 30, 30
    bl fn_8004BAD8
    lis r4, 0xcc00
    li r0, 0x2
    addi r5, r4, 0x2000
    sthu r0, 0x2(r5)
    li r0, 0x0
    stw r0, 0x1c(r1)
    lwz r0, 0x1c(r1)
    cmplwi r0, 0x3e8
    opword  0x40800020  // bge .L_8004BBEC
    opword  0x48000010  // b .L_8004BBE0
L_8004BBD4:
    lwz r4, 0x1c(r1)
    addi r0, r4, 0x8
    stw r0, 0x1c(r1)
L_8004BBE0:
    lwz r0, 0x1c(r1)
    cmplwi r0, 0x3e8
    opword  0x4180FFEC  // blt .L_8004BBD4
L_8004BBEC:
    li r0, 0x0
    sth r0, 0x0(r5)
    lis r12, 0xcc00
    li r8, 0x2828
    lhz r6, 0x1a(r3)
    li r7, 0x1
    cmpwi r29, 0x2
    sth r6, 0x2006(r12)
    li r6, 0x1001
    addi r4, r12, 0x2000
    lbz r9, 0x1d(r3)
    lbz r10, 0x1e(r3)
    rlwimi r10, r9, 8, 16, 23
    sth r10, 0x2004(r12)
    lbz r9, 0x1f(r3)
    lbz r10, 0x1c(r3)
    slwi r9, r9, 7
    or r9, r10, r9
    sth r9, 0x200a(r12)
    lhz r9, 0x20(r3)
    clrlslwi r9, r9, 17, 1
    sth r9, 0x2008(r12)
    lhz r9, 0x2(r3)
    lbz r11, 0x0(r3)
    slwi r9, r9, 1
    lhz r10, 0x4(r3)
    subi r9, r9, 0x2
    sth r11, 0x2000(r12)
    add r9, r10, r9
    sth r9, 0x200e(r12)
    lhz r9, 0x8(r3)
    addi r9, r9, 0x2
    sth r9, 0x200c(r12)
    lhz r9, 0x2(r3)
    lhz r10, 0x6(r3)
    slwi r9, r9, 1
    subi r9, r9, 0x2
    add r9, r10, r9
    sth r9, 0x2012(r12)
    lhz r9, 0xa(r3)
    addi r9, r9, 0x2
    sth r9, 0x2010(r12)
    lhz r9, 0x10(r3)
    lbz r10, 0xc(r3)
    slwi r9, r9, 5
    or r9, r10, r9
    sth r9, 0x2016(r12)
    lhz r9, 0x14(r3)
    lbz r10, 0xe(r3)
    slwi r9, r9, 5
    or r9, r10, r9
    sth r9, 0x2014(r12)
    lhz r9, 0x12(r3)
    lbz r10, 0xd(r3)
    slwi r9, r9, 5
    or r9, r10, r9
    sth r9, 0x201a(r12)
    lhz r9, 0x16(r3)
    lbz r10, 0xf(r3)
    slwi r9, r9, 5
    or r9, r10, r9
    sth r9, 0x2018(r12)
    sth r8, 0x2048(r12)
    sth r7, 0x2036(r12)
    sth r6, 0x2034(r12)
    lhz r6, 0x18(r3)
    lhz r3, 0x1a(r3)
    srawi r6, r6, 1
    addi r3, r3, 0x1
    addze r6, r6
    sth r3, 0x2032(r12)
    addi r6, r6, 0x1
    ori r3, r6, 0x1000
    sth r3, 0x2030(r12)
    opword  0x41820030  // beq .L_8004BD44
    cmpwi r29, 0x3
    opword  0x41820028  // beq .L_8004BD44
    cmpwi r29, 0x1a
    opword  0x41820020  // beq .L_8004BD44
    slwi r3, r30, 2
    ori r6, r3, 0x1
    slwi r3, r31, 8
    or r3, r6, r3
    sth r3, 0x0(r5)
    sth r0, 0x6c(r4)
    opword  0x4800001C  // b .L_8004BD5C
L_8004BD44:
    slwi r0, r31, 8
    ori r0, r0, 0x5
    sth r0, 0x0(r5)
    lis r3, 0xcc00
    li r0, 0x1
    sth r0, 0x206c(r3)
L_8004BD5C:
    lwz r0, 0x34(r1)
    lwz r31, 0x2c(r1)
    lwz r30, 0x28(r1)
    lwz r29, 0x24(r1)
    addi r1, r1, 0x30
    mtlr r0
    blr
}

ASM void fn_8004BD78(void)
{
    nofralloc
    mflr r0
    lis r4, lbl_804963E8@ha
    stw r0, 0x4(r1)
    lis r3, lbl_804B5A08@ha
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    stw r30, 0x10(r1)
    addi r30, r3, lbl_804B5A08@l
    stw r29, 0xc(r1)
    addi r29, r4, lbl_804963E8@l
    stw r28, 0x8(r1)
    opword  0x800D89A8  // lwz r0, lbl_8053A568@sda21(r0)
    cmpwi r0, 0x0
    opword  0x4082045C  // bne .L_8004C208
    opword  0x806D80A8  // lwz r3, lbl_80539C68@sda21(r0)
    bl OSRegisterVersion
    li r0, 0x1
    opword  0x900D89A8  // stw r0, lbl_8053A568@sda21(r0)
    lis r3, 0xcc00
    addi r28, r3, 0x2000
    opword  0x900D89C8  // stw r0, lbl_8053A588@sda21(r0)
    lhzu r0, 0x2(r28)
    clrlwi. r0, r0, 31
    opword  0x4082000C  // bne .L_8004BDE0
    li r3, 0x0
    bl fn_8004BB78
L_8004BDE0:
    li r31, 0x0
    opword  0x93ED89AC  // stw r31, lbl_8053A56C@sda21(r0)
    lis r3, 0xcc00
    addi r3, r3, 0x2000
    opword  0x93ED89DC  // stw r31, lbl_8053A59C@sda21(r0)
    li r0, 0x280
    opword  0x93ED89D8  // stw r31, lbl_8053A598@sda21(r0)
    opword  0x93ED89EC  // stw r31, lbl_8053A5AC@sda21(r0)
    opword  0x93ED89E8  // stw r31, lbl_8053A5A8@sda21(r0)
    opword  0x93ED89D0  // stw r31, lbl_8053A590@sda21(r0)
    opword  0x93ED89E0  // stw r31, lbl_8053A5A0@sda21(r0)
    opword  0x93ED89B0  // stw r31, lbl_8053A570@sda21(r0)
    lhz r5, 0x1c2(r29)
    lhz r6, 0x1c0(r29)
    clrlslwi r5, r5, 26, 10
    or r5, r6, r5
    sth r5, 0x4e(r3)
    lhz r6, 0x1c2(r29)
    lhz r5, 0x1c4(r29)
    srawi r6, r6, 6
    slwi r5, r5, 4
    or r5, r6, r5
    sth r5, 0x4c(r3)
    lhz r5, 0x1c8(r29)
    lhz r6, 0x1c6(r29)
    clrlslwi r5, r5, 26, 10
    or r5, r6, r5
    sth r5, 0x52(r3)
    lhz r6, 0x1c8(r29)
    lhz r5, 0x1ca(r29)
    srawi r6, r6, 6
    slwi r5, r5, 4
    or r5, r6, r5
    sth r5, 0x50(r3)
    lhz r5, 0x1ce(r29)
    lhz r6, 0x1cc(r29)
    clrlslwi r5, r5, 26, 10
    or r5, r6, r5
    sth r5, 0x56(r3)
    lhz r5, 0x1ce(r29)
    lhz r4, 0x1d0(r29)
    srawi r5, r5, 6
    slwi r4, r4, 4
    or r4, r5, r4
    sth r4, 0x54(r3)
    lhz r4, 0x1d4(r29)
    lhz r5, 0x1d2(r29)
    slwi r4, r4, 8
    or r4, r5, r4
    sth r4, 0x5a(r3)
    lhz r4, 0x1d8(r29)
    lhz r5, 0x1d6(r29)
    slwi r4, r4, 8
    or r4, r5, r4
    sth r4, 0x58(r3)
    lhz r4, 0x1dc(r29)
    lhz r5, 0x1da(r29)
    slwi r4, r4, 8
    or r4, r5, r4
    sth r4, 0x5e(r3)
    lhz r4, 0x1e0(r29)
    lhz r5, 0x1de(r29)
    slwi r4, r4, 8
    or r4, r5, r4
    sth r4, 0x5c(r3)
    lhz r4, 0x1e4(r29)
    lhz r5, 0x1e2(r29)
    slwi r4, r4, 8
    or r4, r5, r4
    sth r4, 0x62(r3)
    lhz r4, 0x1e8(r29)
    lhz r5, 0x1e6(r29)
    slwi r4, r4, 8
    or r4, r5, r4
    sth r4, 0x60(r3)
    lhz r4, 0x1ec(r29)
    lhz r5, 0x1ea(r29)
    slwi r4, r4, 8
    or r4, r5, r4
    sth r4, 0x66(r3)
    lhz r4, 0x1f0(r29)
    lhz r5, 0x1ee(r29)
    slwi r4, r4, 8
    or r4, r5, r4
    sth r4, 0x64(r3)
    sth r0, 0x70(r3)
    bl __OSLockSram
    lbz r0, 0x10(r3)
    li r3, 0x0
    extsb r0, r0
    opword  0xB3ED89CE  // sth r31, lbl_8053A58E@sda21(r0)
    opword  0xB00D89CC  // sth r0, lbl_8053A58C@sda21(r0)
    bl __OSUnlockSram
    lhz r29, 0x0(r28)
    lis r3, 0x8000
    lwz r3, 0xcc(r3)
    addi r4, r30, 0x114
    extrwi r0, r29, 1, 29
    stw r0, 0x114(r30)
    extrwi r0, r29, 2, 22
    cmplwi r3, 0x1
    stw r0, 0x118(r30)
    addi r28, r30, 0x118
    opword  0x40820018  // bne .L_8004BF94
    lwz r0, 0x0(r28)
    cmplwi r0, 0x0
    opword  0x4082000C  // bne .L_8004BF94
    li r0, 0x5
    stw r0, 0x0(r28)
L_8004BF94:
    lwz r3, 0x0(r28)
    cmplwi r3, 0x3
    opword  0x40820008  // bne .L_8004BFA4
    li r3, 0x0
L_8004BFA4:
    lwz r0, 0x0(r4)
    slwi r3, r3, 2
    add r3, r3, r0
    bl fn_8004BAD8
    stw r3, 0x144(r30)
    addi r4, r30, 0x144
    li r0, 0x280
    sth r29, 0x2(r30)
    li r8, 0x0
    addi r6, r30, 0xf6
    lwz r4, 0x0(r4)
    addi r3, r30, 0xf2
    opword  0x908D89F0  // stw r4, lbl_8053A5B0@sda21(r0)
    lwz r4, 0x0(r28)
    opword  0x908D89F4  // stw r4, CurrTvMode_8053A5B4@sda21(r0)
    sth r0, 0xf4(r30)
    opword  0x808D89F0  // lwz r4, lbl_8053A5B0@sda21(r0)
    lhzu r0, 0x2(r4)
    clrlslwi r0, r0, 17, 1
    sth r0, 0xf6(r30)
    lhz r0, 0xf4(r30)
    subfic r0, r0, 0x2d0
    srawi r0, r0, 1
    addze r0, r0
    sth r0, 0xf0(r30)
    sth r8, 0xf2(r30)
    lhz r0, 0xf4(r30)
    lha r7, 0xf0(r30)
    opword  0xA8AD89CC  // lha r5, lbl_8053A58C@sda21(r0)
    subfic r0, r0, 0x2d0
    lhz r9, 0x0(r4)
    add r5, r7, r5
    cmpw r5, r0
    opword  0x40810008  // ble .L_8004C030
    opword  0x48000018  // b .L_8004C044
L_8004C030:
    cmpwi r5, 0x0
    opword  0x40800008  // bge .L_8004C03C
    opword  0x48000008  // b .L_8004C040
L_8004C03C:
    mr r8, r5
L_8004C040:
    mr r0, r8
L_8004C044:
    sth r0, 0xf8(r30)
    addi r8, r30, 0x110
    lwz r0, 0x110(r30)
    cmpwi r0, 0x0
    opword  0x4082000C  // bne .L_8004C060
    li r11, 0x2
    opword  0x48000008  // b .L_8004C064
L_8004C060:
    li r11, 0x1
L_8004C064:
    lhz r0, 0x0(r3)
    opword  0xA8AD89CE  // lha r5, lbl_8053A58E@sda21(r0)
    extsh r7, r0
    clrlwi r0, r0, 31
    add r7, r7, r5
    cmpw r7, r0
    opword  0x40810008  // ble .L_8004C084
    opword  0x48000008  // b .L_8004C088
L_8004C084:
    mr r7, r0
L_8004C088:
    sth r7, 0xfa(r30)
    extsh r7, r9
    slwi r7, r7, 1
    lhz r28, 0x0(r6)
    subf r12, r0, r7
    lha r10, 0x0(r3)
    extsh r7, r28
    add r9, r7, r5
    add r9, r10, r9
    subf. r7, r12, r9
    opword  0x4081000C  // ble .L_8004C0BC
    subf r9, r12, r9
    opword  0x48000008  // b .L_8004C0C0
L_8004C0BC:
    li r9, 0x0
L_8004C0C0:
    add r10, r10, r5
    subf. r7, r0, r10
    opword  0x4080000C  // bge .L_8004C0D4
    subf r7, r0, r10
    opword  0x48000008  // b .L_8004C0D8
L_8004C0D4:
    li r7, 0x0
L_8004C0D8:
    add r7, r28, r7
    subf r7, r9, r7
    sth r7, 0xfc(r30)
    lha r7, 0x0(r3)
    add r9, r7, r5
    subf. r7, r0, r9
    opword  0x4080000C  // bge .L_8004C0FC
    subf r7, r0, r9
    opword  0x48000008  // b .L_8004C100
L_8004C0FC:
    li r7, 0x0
L_8004C100:
    divw r10, r7, r11
    addi r7, r30, 0x108
    lhz r9, 0x108(r30)
    subf r9, r10, r9
    sth r9, 0xfe(r30)
    lha r6, 0x0(r6)
    lha r9, 0x0(r3)
    add r6, r6, r5
    add r6, r9, r6
    subf. r3, r12, r6
    opword  0x4081000C  // ble .L_8004C134
    subf r6, r12, r6
    opword  0x48000008  // b .L_8004C138
L_8004C134:
    li r6, 0x0
L_8004C138:
    add r5, r9, r5
    subf. r3, r0, r5
    opword  0x4080000C  // bge .L_8004C14C
    subf r0, r0, r5
    opword  0x48000008  // b .L_8004C150
L_8004C14C:
    li r0, 0x0
L_8004C150:
    divw r0, r0, r11
    lhz r3, 0x10c(r30)
    add r0, r3, r0
    divw r5, r6, r11
    subf r0, r5, r0
    sth r0, 0x100(r30)
    li r9, 0x280
    li r28, 0x0
    sth r9, 0x102(r30)
    li r5, 0x28
    li r0, 0x1
    lhz r6, 0x0(r4)
    opword  0x386D89B4  // li r3, lbl_8053A574@sda21
    clrlslwi r6, r6, 17, 1
    sth r6, 0x104(r30)
    sth r28, 0x106(r30)
    sth r28, 0x0(r7)
    sth r9, 0x10a(r30)
    lhz r4, 0x0(r4)
    clrlslwi r4, r4, 17, 1
    sth r4, 0x10c(r30)
    stw r28, 0x0(r8)
    stb r5, 0x11c(r30)
    stb r5, 0x11d(r30)
    stb r5, 0x11e(r30)
    stb r28, 0x12c(r30)
    stw r0, 0x130(r30)
    stw r28, 0x134(r30)
    bl OSInitThreadQueue
    lis r3, 0xcc00
    lhz r0, 0x2030(r3)
    addi r4, r3, 0x2000
    addi r5, r3, 0x2000
    clrlwi r0, r0, 17
    sth r0, 0x30(r4)
    lis r3, fn_8004B7DC@ha
    addi r4, r3, fn_8004B7DC@l
    lhz r0, 0x34(r5)
    li r3, 0x18
    clrlwi r0, r0, 17
    sth r0, 0x34(r5)
    opword  0x938D89BC  // stw r28, lbl_8053A57C@sda21(r0)
    opword  0x938D89C0  // stw r28, lbl_8053A580@sda21(r0)
    bl __OSSetInterruptHandler
    li r3, 0x80
    bl __OSUnmaskInterrupts
L_8004C208:
    lwz r0, 0x1c(r1)
    lwz r31, 0x14(r1)
    lwz r30, 0x10(r1)
    lwz r29, 0xc(r1)
    lwz r28, 0x8(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

ASM void fn_8004C228(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x10(r1)
    stw r31, 0xc(r1)
    stw r30, 0x8(r1)
    bl OSDisableInterrupts
    opword  0x83CD89AC  // lwz r30, lbl_8053A56C@sda21(r0)
    mr r31, r3
L_8004C248:
    opword  0x386D89B4  // li r3, lbl_8053A574@sda21
    bl OSSleepThread
    opword  0x800D89AC  // lwz r0, lbl_8053A56C@sda21(r0)
    cmplw r30, r0
    opword  0x4182FFF0  // beq .L_8004C248
    mr r3, r31
    bl OSRestoreInterrupts
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    addi r1, r1, 0x10
    mtlr r0
    blr
}

ASM void fn_8004C27C(void)
{
    nofralloc
    stwu r1, -0x48(r1)
    lis r9, lbl_804B5A08@ha
    addi r9, r9, lbl_804B5A08@l
    stw r31, 0x44(r1)
    lbz r8, 0x2c(r3)
    lhz r0, 0xe(r3)
    slwi r31, r8, 5
    lhz r8, 0x16(r3)
    mullw r0, r31, r0
    lwz r11, 0x20(r3)
    lwz r10, 0x30(r3)
    lhz r12, 0xa(r3)
    extlwi r8, r8, 27, 1
    add r0, r8, r0
    add r0, r10, r0
    cmpwi r11, 0x0
    stw r0, 0x0(r4)
    opword  0x4082000C  // bne .L_8004C2CC
    lwz r8, 0x0(r4)
    opword  0x4800000C  // b .L_8004C2D4
L_8004C2CC:
    lwz r0, 0x0(r4)
    add r8, r0, r31
L_8004C2D4:
    srawi r0, r12, 1
    stw r8, 0x0(r5)
    addze r0, r0
    slwi r0, r0, 1
    subfc r0, r0, r12
    cmpwi r0, 0x1
    opword  0x40820014  // bne .L_8004C300
    lwz r8, 0x0(r4)
    lwz r0, 0x0(r5)
    stw r0, 0x0(r4)
    stw r8, 0x0(r5)
L_8004C300:
    lwz r0, 0x0(r4)
    clrlwi r0, r0, 2
    stw r0, 0x0(r4)
    lwz r0, 0x0(r5)
    clrlwi r0, r0, 2
    stw r0, 0x0(r5)
    lwz r0, 0x44(r3)
    cmpwi r0, 0x0
    opword  0x41820090  // beq .L_8004C3B0
    lbz r8, 0x2c(r3)
    lhz r0, 0xe(r3)
    slwi r31, r8, 5
    lhz r8, 0x16(r3)
    mullw r0, r31, r0
    lwz r11, 0x20(r3)
    lwz r10, 0x48(r3)
    lhz r12, 0xa(r3)
    extlwi r8, r8, 27, 1
    add r0, r8, r0
    add r0, r10, r0
    cmpwi r11, 0x0
    stw r0, 0x0(r6)
    opword  0x4082000C  // bne .L_8004C364
    lwz r8, 0x0(r6)
    opword  0x4800000C  // b .L_8004C36C
L_8004C364:
    lwz r0, 0x0(r6)
    add r8, r0, r31
L_8004C36C:
    srawi r0, r12, 1
    stw r8, 0x0(r7)
    addze r0, r0
    slwi r0, r0, 1
    subfc r0, r0, r12
    cmpwi r0, 0x1
    opword  0x40820014  // bne .L_8004C398
    lwz r8, 0x0(r6)
    lwz r0, 0x0(r7)
    stw r0, 0x0(r6)
    stw r8, 0x0(r7)
L_8004C398:
    lwz r0, 0x0(r6)
    clrlwi r0, r0, 2
    stw r0, 0x0(r6)
    lwz r0, 0x0(r7)
    clrlwi r0, r0, 2
    stw r0, 0x0(r7)
L_8004C3B0:
    lwz r0, 0x0(r4)
    lis r8, 0x100
    cmplw r0, r8
    opword  0x40800030  // bge .L_8004C3EC
    lwz r0, 0x0(r5)
    cmplw r0, r8
    opword  0x40800024  // bge .L_8004C3EC
    lwz r0, 0x0(r6)
    cmplw r0, r8
    opword  0x40800018  // bge .L_8004C3EC
    lwz r0, 0x0(r7)
    cmplw r0, r8
    opword  0x4080000C  // bge .L_8004C3EC
    li r10, 0x0
    opword  0x48000008  // b .L_8004C3F0
L_8004C3EC:
    li r10, 0x1
L_8004C3F0:
    cmplwi r10, 0x0
    opword  0x41820034  // beq .L_8004C428
    lwz r0, 0x0(r4)
    srwi r0, r0, 5
    stw r0, 0x0(r4)
    lwz r0, 0x0(r5)
    srwi r0, r0, 5
    stw r0, 0x0(r5)
    lwz r0, 0x0(r6)
    srwi r0, r0, 5
    stw r0, 0x0(r6)
    lwz r0, 0x0(r7)
    srwi r0, r0, 5
    stw r0, 0x0(r7)
L_8004C428:
    lwz r0, 0x0(r4)
    slwi r11, r10, 12
    lis r8, 0x1
    sth r0, 0x1e(r9)
    lis r0, 0x2
    opword  0x814D89D8  // lwz r10, lbl_8053A598@sda21(r0)
    opword  0x818D89DC  // lwz r12, lbl_8053A59C@sda21(r0)
    or r10, r10, r8
    opword  0x918D89DC  // stw r12, lbl_8053A59C@sda21(r0)
    opword  0x914D89D8  // stw r10, lbl_8053A598@sda21(r0)
    lwz r10, 0x0(r4)
    lbz r4, 0x3c(r3)
    srwi r10, r10, 16
    slwi r4, r4, 8
    or r4, r10, r4
    or r4, r11, r4
    sth r4, 0x1c(r9)
    opword  0x808D89D8  // lwz r4, lbl_8053A598@sda21(r0)
    opword  0x814D89DC  // lwz r10, lbl_8053A59C@sda21(r0)
    or r0, r4, r0
    opword  0x914D89DC  // stw r10, lbl_8053A59C@sda21(r0)
    opword  0x900D89D8  // stw r0, lbl_8053A598@sda21(r0)
    lwz r0, 0x0(r5)
    sth r0, 0x26(r9)
    opword  0x800D89D8  // lwz r0, lbl_8053A598@sda21(r0)
    opword  0x808D89DC  // lwz r4, lbl_8053A59C@sda21(r0)
    ori r0, r0, 0x1000
    opword  0x908D89DC  // stw r4, lbl_8053A59C@sda21(r0)
    opword  0x900D89D8  // stw r0, lbl_8053A598@sda21(r0)
    lwz r0, 0x0(r5)
    srwi r0, r0, 16
    sth r0, 0x24(r9)
    opword  0x800D89D8  // lwz r0, lbl_8053A598@sda21(r0)
    opword  0x808D89DC  // lwz r4, lbl_8053A59C@sda21(r0)
    ori r0, r0, 0x2000
    opword  0x908D89DC  // stw r4, lbl_8053A59C@sda21(r0)
    opword  0x900D89D8  // stw r0, lbl_8053A598@sda21(r0)
    lwz r0, 0x44(r3)
    cmpwi r0, 0x0
    opword  0x41820080  // beq .L_8004C544
    lwz r3, 0x0(r6)
    addi r0, r8, -0x8000
    sth r3, 0x22(r9)
    opword  0x806D89D8  // lwz r3, lbl_8053A598@sda21(r0)
    opword  0x808D89DC  // lwz r4, lbl_8053A59C@sda21(r0)
    ori r3, r3, 0x4000
    opword  0x908D89DC  // stw r4, lbl_8053A59C@sda21(r0)
    opword  0x906D89D8  // stw r3, lbl_8053A598@sda21(r0)
    lwz r3, 0x0(r6)
    srwi r3, r3, 16
    sth r3, 0x20(r9)
    opword  0x806D89D8  // lwz r3, lbl_8053A598@sda21(r0)
    opword  0x808D89DC  // lwz r4, lbl_8053A59C@sda21(r0)
    or r0, r3, r0
    opword  0x908D89DC  // stw r4, lbl_8053A59C@sda21(r0)
    opword  0x900D89D8  // stw r0, lbl_8053A598@sda21(r0)
    lwz r0, 0x0(r7)
    sth r0, 0x2a(r9)
    opword  0x800D89D8  // lwz r0, lbl_8053A598@sda21(r0)
    opword  0x806D89DC  // lwz r3, lbl_8053A59C@sda21(r0)
    ori r0, r0, 0x400
    opword  0x906D89DC  // stw r3, lbl_8053A59C@sda21(r0)
    opword  0x900D89D8  // stw r0, lbl_8053A598@sda21(r0)
    lwz r0, 0x0(r7)
    srwi r0, r0, 16
    sth r0, 0x28(r9)
    opword  0x800D89D8  // lwz r0, lbl_8053A598@sda21(r0)
    opword  0x806D89DC  // lwz r3, lbl_8053A59C@sda21(r0)
    ori r0, r0, 0x800
    opword  0x906D89DC  // stw r3, lbl_8053A59C@sda21(r0)
    opword  0x900D89D8  // stw r0, lbl_8053A598@sda21(r0)
L_8004C544:
    lwz r31, 0x44(r1)
    addi r1, r1, 0x48
    blr
}

ASM void fn_8004C550(void)
{
    nofralloc
    stwu r1, -0x28(r1)
    lis r11, lbl_804B5A08@ha
    addi r11, r11, lbl_804B5A08@l
    stw r31, 0x24(r1)
    lwz r31, 0x30(r1)
    stw r30, 0x20(r1)
    stw r29, 0x1c(r1)
    lhz r0, 0x6c(r11)
    clrlwi. r0, r0, 31
    opword  0x41820010  // beq .L_8004C584
    li r12, 0x1
    li r29, 0x2
    opword  0x4800000C  // b .L_8004C58C
L_8004C584:
    li r12, 0x2
    li r29, 0x1
L_8004C58C:
    clrlwi r30, r3, 16
    srawi r0, r30, 1
    addze r0, r0
    slwi r0, r0, 1
    subfc. r0, r0, r30
    opword  0x4082003C  // bne .L_8004C5DC
    clrlwi r3, r12, 16
    clrlwi r0, r6, 16
    mullw r0, r3, r0
    clrlwi r3, r4, 16
    subf r0, r3, r0
    clrlwi r3, r29, 16
    mullw r29, r3, r30
    subf r0, r30, r0
    mullw r30, r3, r0
    add r0, r7, r29
    add r6, r9, r30
    add r3, r8, r29
    add r7, r10, r30
    opword  0x48000038  // b .L_8004C610
L_8004C5DC:
    clrlwi r3, r12, 16
    clrlwi r0, r6, 16
    mullw r0, r3, r0
    clrlwi r3, r4, 16
    subf r0, r3, r0
    clrlwi r3, r29, 16
    mullw r29, r3, r30
    subf r0, r30, r0
    mullw r30, r3, r0
    add r0, r8, r29
    add r6, r10, r30
    add r3, r7, r29
    add r7, r9, r30
L_8004C610:
    clrlwi r8, r4, 16
    clrlwi r4, r12, 16
    divw r4, r8, r4
    cmpwi r31, 0x0
    clrlwi r4, r4, 16
    opword  0x41820020  // beq .L_8004C644
    slwi r4, r4, 1
    subi r4, r4, 0x2
    add r0, r0, r4
    add r3, r3, r4
    li r4, 0x0
    addi r6, r6, 0x2
    addi r7, r7, 0x2
L_8004C644:
    clrlwi r5, r5, 24
    clrlslwi r4, r4, 16, 4
    or r4, r5, r4
    sth r4, 0x0(r11)
    lis r4, 0x8000
    lis r9, 0x100
    opword  0x80AD89D8  // lwz r5, lbl_8053A598@sda21(r0)
    lis r8, 0x200
    opword  0x814D89DC  // lwz r10, lbl_8053A59C@sda21(r0)
    or r4, r5, r4
    lis r5, 0x40
    opword  0x914D89DC  // stw r10, lbl_8053A59C@sda21(r0)
    opword  0x908D89D8  // stw r4, lbl_8053A598@sda21(r0)
    lis r4, 0x80
    sth r0, 0xe(r11)
    opword  0x800D89D8  // lwz r0, lbl_8053A598@sda21(r0)
    opword  0x814D89DC  // lwz r10, lbl_8053A59C@sda21(r0)
    or r0, r0, r9
    opword  0x914D89DC  // stw r10, lbl_8053A59C@sda21(r0)
    opword  0x900D89D8  // stw r0, lbl_8053A598@sda21(r0)
    sth r6, 0xc(r11)
    opword  0x800D89D8  // lwz r0, lbl_8053A598@sda21(r0)
    opword  0x80CD89DC  // lwz r6, lbl_8053A59C@sda21(r0)
    or r0, r0, r8
    opword  0x90CD89DC  // stw r6, lbl_8053A59C@sda21(r0)
    opword  0x900D89D8  // stw r0, lbl_8053A598@sda21(r0)
    sth r3, 0x12(r11)
    opword  0x800D89D8  // lwz r0, lbl_8053A598@sda21(r0)
    opword  0x806D89DC  // lwz r3, lbl_8053A59C@sda21(r0)
    or r0, r0, r5
    opword  0x906D89DC  // stw r3, lbl_8053A59C@sda21(r0)
    opword  0x900D89D8  // stw r0, lbl_8053A598@sda21(r0)
    sth r7, 0x10(r11)
    opword  0x800D89D8  // lwz r0, lbl_8053A598@sda21(r0)
    opword  0x806D89DC  // lwz r3, lbl_8053A59C@sda21(r0)
    or r0, r0, r4
    opword  0x906D89DC  // stw r3, lbl_8053A59C@sda21(r0)
    opword  0x900D89D8  // stw r0, lbl_8053A598@sda21(r0)
    lwz r31, 0x24(r1)
    lwz r30, 0x20(r1)
    lwz r29, 0x1c(r1)
    addi r1, r1, 0x28
    blr
}

ASM void fn_8004C6F0(void)
{
    nofralloc
    mflr r0
    lis r5, lbl_804963E8@ha
    stw r0, 0x4(r1)
    lis r4, lbl_804B5A08@ha
    stwu r1, -0x78(r1)
    stmw r14, 0x30(r1)
    addi r31, r3, 0x0
    addi r15, r5, lbl_804963E8@l
    addi r29, r4, lbl_804B5A08@l
    bl OSDisableInterrupts
    lwz r4, 0x0(r31)
    addi r28, r29, 0x114
    lwz r0, 0x114(r29)
    addi r14, r3, 0x0
    clrlwi r4, r4, 30
    cmplw r0, r4
    opword  0x41820010  // beq .L_8004C740
    li r0, 0x1
    opword  0x900D89D0  // stw r0, lbl_8053A590@sda21(r0)
    stw r4, 0x0(r28)
L_8004C740:
    lwz r0, 0x0(r31)
    lis r3, 0x8000
    lwz r16, 0xcc(r3)
    srwi r0, r0, 2
    cmplwi r0, 0x4
    mr r17, r0
    opword  0x4082006C  // bne .L_8004C7C4
    opword  0x800D8A04  // lwz r0, lbl_8053A5C4@sda21(r0)
    cmplwi r0, 0x0
    opword  0x40820060  // bne .L_8004C7C4
    li r0, 0x1
    crclr 6
    opword  0x900D8A04  // stw r0, lbl_8053A5C4@sda21(r0)
    addi r3, r15, 0x260
    bl OSReport
    addi r3, r15, 0x28c
    crclr 6
    bl OSReport
    addi r3, r15, 0x2b8
    crclr 6
    bl OSReport
    addi r3, r15, 0x2e4
    crclr 6
    bl OSReport
    addi r3, r15, 0x310
    crclr 6
    bl OSReport
    addi r3, r15, 0x33c
    crclr 6
    bl OSReport
    addi r3, r15, 0x260
    crclr 6
    bl OSReport
L_8004C7C4:
    cmpwi r16, 0x2
    opword  0x41820030  // beq .L_8004C7F8
    opword  0x40800014  // bge .L_8004C7E0
    cmpwi r16, 0x0
    opword  0x41820024  // beq .L_8004C7F8
    opword  0x4080003C  // bge .L_8004C814
    opword  0x48000048  // b .L_8004C824
L_8004C7E0:
    cmpwi r16, 0x6
    opword  0x41820014  // beq .L_8004C7F8
    opword  0x4080003C  // bge .L_8004C824
    cmpwi r16, 0x5
    opword  0x40800024  // bge .L_8004C814
    opword  0x48000030  // b .L_8004C824
L_8004C7F8:
    cmplwi r17, 0x0
    opword  0x41820044  // beq .L_8004C840
    cmplwi r17, 0x2
    opword  0x4182003C  // beq .L_8004C840
    cmplwi r17, 0x6
    opword  0x40820018  // bne .L_8004C824
    opword  0x48000030  // b .L_8004C840
L_8004C814:
    cmplwi r17, 0x1
    opword  0x41820028  // beq .L_8004C840
    cmplwi r17, 0x5
    opword  0x41820020  // beq .L_8004C840
L_8004C824:
    addi r6, r16, 0x0
    crclr 6
    addi r7, r17, 0x0
    addi r5, r15, 0x368
    opword  0x386D80AC  // li r3, lbl_80539C6C@sda21
    li r4, 0x774
    bl OSPanic
L_8004C840:
    cmplwi r17, 0x0
    opword  0x4182000C  // beq .L_8004C850
    cmplwi r17, 0x2
    opword  0x4082000C  // bne .L_8004C858
L_8004C850:
    stw r16, 0x118(r29)
    opword  0x48000008  // b .L_8004C85C
L_8004C858:
    stw r17, 0x118(r29)
L_8004C85C:
    lhz r0, 0xa(r31)
    sth r0, 0xf0(r29)
    lwz r0, 0x0(r28)
    cmplwi r0, 0x1
    opword  0x40820010  // bne .L_8004C87C
    lhz r0, 0xc(r31)
    clrlslwi r0, r0, 17, 1
    opword  0x48000008  // b .L_8004C880
L_8004C87C:
    lhz r0, 0xc(r31)
L_8004C880:
    sth r0, 0xf2(r29)
    addi r23, r29, 0xf2
    addi r24, r29, 0xf4
    lhz r0, 0xe(r31)
    addi r27, r29, 0x102
    addi r25, r29, 0x110
    sth r0, 0xf4(r29)
    li r0, 0x0
    addi r16, r29, 0x10a
    lhz r3, 0x4(r31)
    addi r26, r29, 0x10c
    addi r15, r29, 0x106
    sth r3, 0x102(r29)
    addi r17, r29, 0x108
    lhz r3, 0x8(r31)
    sth r3, 0x104(r29)
    lwz r3, 0x14(r31)
    stw r3, 0x110(r29)
    lhz r3, 0x102(r29)
    sth r3, 0x10a(r29)
    lhz r3, 0x104(r29)
    sth r3, 0x10c(r29)
    sth r0, 0x106(r29)
    sth r0, 0x108(r29)
    lwz r0, 0x0(r28)
    cmplwi r0, 0x2
    opword  0x4082000C  // bne .L_8004C8F4
    lhz r0, 0x0(r26)
    opword  0x48000030  // b .L_8004C920
L_8004C8F4:
    cmplwi r0, 0x3
    opword  0x4082000C  // bne .L_8004C904
    lhz r0, 0x0(r26)
    opword  0x48000020  // b .L_8004C920
L_8004C904:
    lwz r0, 0x0(r25)
    cmpwi r0, 0x0
    opword  0x40820010  // bne .L_8004C91C
    lhz r0, 0x0(r26)
    clrlslwi r0, r0, 17, 1
    opword  0x48000008  // b .L_8004C920
L_8004C91C:
    lhz r0, 0x0(r26)
L_8004C920:
    addi r22, r29, 0xf6
    sth r0, 0xf6(r29)
    lwz r0, 0x0(r28)
    cmplwi r0, 0x3
    opword  0x4082000C  // bne .L_8004C93C
    li r0, 0x1
    opword  0x48000008  // b .L_8004C940
L_8004C93C:
    li r0, 0x0
L_8004C940:
    addi r18, r29, 0x134
    stw r0, 0x134(r29)
    addi r21, r29, 0x118
    lwz r3, 0x118(r29)
    lwz r0, 0x0(r28)
    slwi r3, r3, 2
    add r3, r3, r0
    bl fn_8004BAD8
    mr r30, r3
    stw r30, 0x144(r29)
    lhz r0, 0x0(r24)
    lha r4, 0xf0(r29)
    opword  0xA86D89CC  // lha r3, lbl_8053A58C@sda21(r0)
    subfic r5, r0, 0x2d0
    lhz r0, 0x2(r30)
    add r3, r4, r3
    cmpw r3, r5
    opword  0x40810008  // ble .L_8004C98C
    opword  0x48000014  // b .L_8004C99C
L_8004C98C:
    cmpwi r3, 0x0
    opword  0x40800008  // bge .L_8004C998
    li r3, 0x0
L_8004C998:
    mr r5, r3
L_8004C99C:
    sth r5, 0xf8(r29)
    addi r3, r29, 0xf8
    lwz r4, 0x0(r25)
    cmpwi r4, 0x0
    opword  0x4082000C  // bne .L_8004C9B8
    li r4, 0x2
    opword  0x48000008  // b .L_8004C9BC
L_8004C9B8:
    li r4, 0x1
L_8004C9BC:
    lhz r5, 0x0(r23)
    opword  0xA8CD89CE  // lha r6, lbl_8053A58E@sda21(r0)
    extsh r7, r5
    clrlwi r5, r5, 31
    add r7, r7, r6
    cmpw r7, r5
    opword  0x40810008  // ble .L_8004C9DC
    opword  0x48000008  // b .L_8004C9E0
L_8004C9DC:
    mr r7, r5
L_8004C9E0:
    sth r7, 0xfa(r29)
    extsh r0, r0
    slwi r0, r0, 1
    lhz r8, 0x0(r22)
    subf r0, r5, r0
    lha r7, 0x0(r23)
    addi r19, r29, 0xfa
    extsh r9, r8
    add r10, r9, r6
    add r10, r7, r10
    subf. r9, r0, r10
    opword  0x4081000C  // ble .L_8004CA18
    subf r9, r0, r10
    opword  0x48000008  // b .L_8004CA1C
L_8004CA18:
    li r9, 0x0
L_8004CA1C:
    add r10, r7, r6
    subf. r7, r5, r10
    opword  0x4080000C  // bge .L_8004CA30
    subf r7, r5, r10
    opword  0x48000008  // b .L_8004CA34
L_8004CA30:
    li r7, 0x0
L_8004CA34:
    add r7, r8, r7
    subf r7, r9, r7
    addi r20, r29, 0xfc
    sth r7, 0xfc(r29)
    lha r7, 0x0(r23)
    add r8, r7, r6
    subf. r7, r5, r8
    opword  0x4080000C  // bge .L_8004CA5C
    subf r7, r5, r8
    opword  0x48000008  // b .L_8004CA60
L_8004CA5C:
    li r7, 0x0
L_8004CA60:
    divw r8, r7, r4
    lhz r7, 0x0(r17)
    subf r7, r8, r7
    sth r7, 0xfe(r29)
    lha r7, 0x0(r22)
    lha r9, 0x0(r23)
    add r8, r7, r6
    add r8, r9, r8
    subf. r7, r0, r8
    opword  0x4081000C  // ble .L_8004CA90
    subf r7, r0, r8
    opword  0x48000008  // b .L_8004CA94
L_8004CA90:
    li r7, 0x0
L_8004CA94:
    add r6, r9, r6
    subf. r0, r5, r6
    opword  0x4080000C  // bge .L_8004CAA8
    subf r0, r5, r6
    opword  0x48000008  // b .L_8004CAAC
L_8004CAA8:
    li r0, 0x0
L_8004CAAC:
    divw r0, r0, r4
    lhz r5, 0x0(r26)
    divw r4, r7, r4
    add r0, r5, r0
    subf r0, r4, r0
    sth r0, 0x100(r29)
    opword  0x800D89C8  // lwz r0, lbl_8053A588@sda21(r0)
    cmplwi r0, 0x0
    opword  0x4082000C  // bne .L_8004CAD8
    li r0, 0x3
    stw r0, 0x0(r21)
L_8004CAD8:
    lhz r5, 0x18(r30)
    srawi r4, r5, 1
    addze r4, r4
    srawi r0, r5, 1
    addze r0, r0
    slwi r0, r0, 1
    subfc r0, r0, r5
    clrlwi. r0, r0, 16
    clrlwi r4, r4, 16
    opword  0x4182000C  // beq .L_8004CB08
    lhz r5, 0x1a(r30)
    opword  0x48000008  // b .L_8004CB0C
L_8004CB08:
    li r5, 0x0
L_8004CB0C:
    addi r0, r5, 0x1
    sth r0, 0x32(r29)
    addi r0, r4, 0x1
    ori r0, r0, 0x1000
    opword  0x80AD89D8  // lwz r5, lbl_8053A598@sda21(r0)
    addi r4, r29, 0x2
    opword  0x80CD89DC  // lwz r6, lbl_8053A59C@sda21(r0)
    ori r5, r5, 0x40
    opword  0x90CD89DC  // stw r6, lbl_8053A59C@sda21(r0)
    opword  0x90AD89D8  // stw r5, lbl_8053A598@sda21(r0)
    sth r0, 0x30(r29)
    opword  0x800D89D8  // lwz r0, lbl_8053A598@sda21(r0)
    opword  0x80AD89DC  // lwz r5, lbl_8053A59C@sda21(r0)
    ori r0, r0, 0x80
    opword  0x90AD89DC  // stw r5, lbl_8053A59C@sda21(r0)
    opword  0x900D89D8  // stw r0, lbl_8053A598@sda21(r0)
    lwz r0, 0x0(r28)
    lhz r5, 0x2(r29)
    cmplwi r0, 0x2
    opword  0x4182000C  // beq .L_8004CB64
    cmplwi r0, 0x3
    opword  0x40820010  // bne .L_8004CB70
L_8004CB64:
    rlwinm r0, r5, 0, 30, 28
    ori r5, r0, 0x4
    opword  0x4800000C  // b .L_8004CB78
L_8004CB70:
    rlwinm r5, r5, 0, 30, 28
    rlwimi r5, r0, 2, 29, 29
L_8004CB78:
    lwz r6, 0x0(r21)
    rlwinm r5, r5, 0, 29, 27
    lwz r7, 0x0(r18)
    cmplwi r6, 0x4
    slwi r0, r7, 3
    or r5, r5, r0
    opword  0x41820010  // beq .L_8004CBA0
    subi r0, r6, 0x5
    cmplwi r0, 0x1
    opword  0x4181000C  // bgt .L_8004CBA8
L_8004CBA0:
    rlwinm r0, r5, 0, 24, 21
    opword  0x48000010  // b .L_8004CBB4
L_8004CBA8:
    rlwinm r5, r5, 0, 24, 21
    slwi r0, r6, 8
    or r0, r5, r0
L_8004CBB4:
    sth r0, 0x0(r4)
    lis r0, 0x4000
    addi r6, r29, 0x6c
    opword  0x808D89D8  // lwz r4, lbl_8053A598@sda21(r0)
    opword  0x80AD89DC  // lwz r5, lbl_8053A59C@sda21(r0)
    or r0, r4, r0
    opword  0x90AD89DC  // stw r5, lbl_8053A59C@sda21(r0)
    opword  0x900D89D8  // stw r0, lbl_8053A598@sda21(r0)
    lwz r0, 0x0(r31)
    lhz r4, 0x6c(r29)
    cmpwi r0, 0x2
    opword  0x41820014  // beq .L_8004CBF4
    cmpwi r0, 0x3
    opword  0x4182000C  // beq .L_8004CBF4
    cmpwi r0, 0x1a
    opword  0x40820010  // bne .L_8004CC00
L_8004CBF4:
    clrrwi r0, r4, 1
    ori r0, r0, 0x1
    opword  0x48000008  // b .L_8004CC04
L_8004CC00:
    clrrwi r0, r4, 1
L_8004CC04:
    sth r0, 0x0(r6)
    cmpwi r7, 0x0
    opword  0x808D89D8  // lwz r4, lbl_8053A598@sda21(r0)
    opword  0x800D89DC  // lwz r0, lbl_8053A59C@sda21(r0)
    ori r0, r0, 0x200
    opword  0x900D89DC  // stw r0, lbl_8053A59C@sda21(r0)
    opword  0x908D89D8  // stw r4, lbl_8053A598@sda21(r0)
    lhz r4, 0x0(r24)
    lhz r5, 0x0(r16)
    opword  0x4182000C  // beq .L_8004CC34
    slwi r0, r5, 1
    opword  0x48000008  // b .L_8004CC38
L_8004CC34:
    mr r0, r5
L_8004CC38:
    clrlwi r8, r0, 16
    cmplw r8, r4
    opword  0x40800050  // bge .L_8004CC90
    slwi r6, r8, 8
    subi r0, r6, 0x1
    add r0, r4, r0
    divwu r0, r0, r4
    ori r0, r0, 0x1000
    sth r0, 0x4a(r29)
    lis r0, 0x400
    opword  0x80CD89D8  // lwz r6, lbl_8053A598@sda21(r0)
    opword  0x80ED89DC  // lwz r7, lbl_8053A59C@sda21(r0)
    or r0, r7, r0
    opword  0x900D89DC  // stw r0, lbl_8053A59C@sda21(r0)
    opword  0x90CD89D8  // stw r6, lbl_8053A598@sda21(r0)
    sth r8, 0x70(r29)
    opword  0x80CD89D8  // lwz r6, lbl_8053A598@sda21(r0)
    opword  0x800D89DC  // lwz r0, lbl_8053A59C@sda21(r0)
    ori r0, r0, 0x80
    opword  0x900D89DC  // stw r0, lbl_8053A59C@sda21(r0)
    opword  0x90CD89D8  // stw r6, lbl_8053A598@sda21(r0)
    opword  0x48000024  // b .L_8004CCB0
L_8004CC90:
    li r0, 0x100
    sth r0, 0x4a(r29)
    lis r0, 0x400
    opword  0x80CD89D8  // lwz r6, lbl_8053A598@sda21(r0)
    opword  0x80ED89DC  // lwz r7, lbl_8053A59C@sda21(r0)
    or r0, r7, r0
    opword  0x900D89DC  // stw r0, lbl_8053A59C@sda21(r0)
    opword  0x90CD89D8  // stw r6, lbl_8053A598@sda21(r0)
L_8004CCB0:
    lhz r0, 0x0(r3)
    subfic r12, r4, 0x2d0
    lhz r6, 0x1a(r30)
    lis r3, 0x1000
    lis r8, 0x2000
    sth r6, 0x6(r29)
    lis r9, 0x400
    lis r7, 0x800
    opword  0x814D89D8  // lwz r10, lbl_8053A598@sda21(r0)
    lis r6, 0x10
    lis r4, 0x20
    opword  0x816D89DC  // lwz r11, lbl_8053A59C@sda21(r0)
    or r10, r10, r3
    lis r3, 0x4
    opword  0x916D89DC  // stw r11, lbl_8053A59C@sda21(r0)
    opword  0x914D89D8  // stw r10, lbl_8053A598@sda21(r0)
    lbz r10, 0x1d(r30)
    lbz r11, 0x1e(r30)
    rlwimi r11, r10, 8, 16, 23
    sth r11, 0x4(r29)
    opword  0x814D89D8  // lwz r10, lbl_8053A598@sda21(r0)
    opword  0x816D89DC  // lwz r11, lbl_8053A59C@sda21(r0)
    or r8, r10, r8
    opword  0x916D89DC  // stw r11, lbl_8053A59C@sda21(r0)
    opword  0x910D89D8  // stw r8, lbl_8053A598@sda21(r0)
    lbz r8, 0x1f(r30)
    lbz r10, 0x1c(r30)
    add r16, r8, r0
    lhz r11, 0x20(r30)
    subi r16, r16, 0x28
    clrlslwi r8, r16, 23, 7
    or r8, r10, r8
    sth r8, 0xa(r29)
    add r8, r11, r0
    addi r0, r8, 0x28
    opword  0x814D89D8  // lwz r10, lbl_8053A598@sda21(r0)
    subf r0, r12, r0
    srwi r8, r16, 9
    opword  0x816D89DC  // lwz r11, lbl_8053A59C@sda21(r0)
    slwi r0, r0, 1
    or r9, r10, r9
    opword  0x916D89DC  // stw r11, lbl_8053A59C@sda21(r0)
    or r0, r8, r0
    opword  0x912D89D8  // stw r9, lbl_8053A598@sda21(r0)
    sth r0, 0x8(r29)
    opword  0x800D89D8  // lwz r0, lbl_8053A598@sda21(r0)
    opword  0x810D89DC  // lwz r8, lbl_8053A59C@sda21(r0)
    or r0, r0, r7
    opword  0x910D89DC  // stw r8, lbl_8053A59C@sda21(r0)
    opword  0x900D89D8  // stw r0, lbl_8053A598@sda21(r0)
    lhz r0, 0x10(r30)
    lbz r7, 0xc(r30)
    slwi r0, r0, 5
    or r0, r7, r0
    sth r0, 0x16(r29)
    opword  0x800D89D8  // lwz r0, lbl_8053A598@sda21(r0)
    opword  0x80ED89DC  // lwz r7, lbl_8053A59C@sda21(r0)
    or r0, r0, r6
    opword  0x90ED89DC  // stw r7, lbl_8053A59C@sda21(r0)
    opword  0x900D89D8  // stw r0, lbl_8053A598@sda21(r0)
    lhz r0, 0x14(r30)
    lbz r6, 0xe(r30)
    slwi r0, r0, 5
    or r0, r6, r0
    sth r0, 0x14(r29)
    opword  0x800D89D8  // lwz r0, lbl_8053A598@sda21(r0)
    opword  0x80CD89DC  // lwz r6, lbl_8053A59C@sda21(r0)
    or r0, r0, r4
    opword  0x90CD89DC  // stw r6, lbl_8053A59C@sda21(r0)
    opword  0x900D89D8  // stw r0, lbl_8053A598@sda21(r0)
    lhz r0, 0x12(r30)
    lbz r4, 0xd(r30)
    slwi r0, r0, 5
    or r0, r4, r0
    sth r0, 0x1a(r29)
    opword  0x800D89D8  // lwz r0, lbl_8053A598@sda21(r0)
    opword  0x808D89DC  // lwz r4, lbl_8053A59C@sda21(r0)
    or r0, r0, r3
    opword  0x908D89DC  // stw r4, lbl_8053A59C@sda21(r0)
    opword  0x900D89D8  // stw r0, lbl_8053A598@sda21(r0)
    lhz r0, 0x16(r30)
    lbz r3, 0xf(r30)
    slwi r0, r0, 5
    or r0, r3, r0
    sth r0, 0x18(r29)
    opword  0x806D89D8  // lwz r3, lbl_8053A598@sda21(r0)
    lis r0, 0x8
    addi r6, r29, 0x11c
    opword  0x808D89DC  // lwz r4, lbl_8053A59C@sda21(r0)
    or r0, r3, r0
    opword  0x908D89DC  // stw r4, lbl_8053A59C@sda21(r0)
    opword  0x900D89D8  // stw r0, lbl_8053A598@sda21(r0)
    lhz r3, 0x0(r27)
    lwz r4, 0x0(r25)
    addi r0, r3, 0xf
    lhz r3, 0x0(r15)
    srawi r0, r0, 4
    addze r0, r0
    cmpwi r4, 0x0
    stb r0, 0x11c(r29)
    opword  0x4082000C  // bne .L_8004CE4C
    lbz r4, 0x0(r6)
    opword  0x4800000C  // b .L_8004CE54
L_8004CE4C:
    lbz r0, 0x0(r6)
    clrlslwi r4, r0, 25, 1
L_8004CE54:
    srawi r0, r3, 4
    stb r4, 0x11d(r29)
    addze r0, r0
    slwi r0, r0, 4
    subfc r0, r0, r3
    stb r0, 0x12c(r29)
    addi r0, r5, 0xf
    lis r3, 0x800
    lbz r4, 0x12c(r29)
    add r0, r4, r0
    srawi r0, r0, 4
    addze r0, r0
    stb r0, 0x11e(r29)
    lbz r0, 0x11e(r29)
    lbz r4, 0x11d(r29)
    rlwimi r4, r0, 8, 16, 23
    sth r4, 0x48(r29)
    opword  0x808D89D8  // lwz r4, lbl_8053A598@sda21(r0)
    opword  0x800D8A00  // lwz r0, lbl_8053A5C0@sda21(r0)
    opword  0x80AD89DC  // lwz r5, lbl_8053A59C@sda21(r0)
    cmplwi r0, 0x0
    or r0, r5, r3
    opword  0x900D89DC  // stw r0, lbl_8053A59C@sda21(r0)
    opword  0x908D89D8  // stw r4, lbl_8053A598@sda21(r0)
    opword  0x4182001C  // beq .L_8004CED0
    addi r3, r29, 0xf0
    addi r4, r29, 0x124
    addi r5, r29, 0x128
    addi r6, r29, 0x13c
    addi r7, r29, 0x140
    bl fn_8004C27C
L_8004CED0:
    lwz r0, 0x130(r29)
    stw r0, 0x8(r1)
    lhz r3, 0x0(r19)
    lhz r4, 0x0(r20)
    lbz r5, 0x0(r30)
    lhz r6, 0x2(r30)
    lhz r7, 0x4(r30)
    lhz r8, 0x6(r30)
    lhz r9, 0x8(r30)
    lhz r10, 0xa(r30)
    bl fn_8004C550
    mr r3, r14
    bl OSRestoreInterrupts
    lmw r14, 0x30(r1)
    lwz r0, 0x7c(r1)
    addi r1, r1, 0x78
    mtlr r0
    blr
}

ASM void fn_8004CF18(void)
{
    nofralloc
    mflr r0
    lis r3, lbl_804B5A08@ha
    stw r0, 0x4(r1)
    stwu r1, -0x20(r1)
    stw r31, 0x1c(r1)
    addi r31, r3, lbl_804B5A08@l
    stw r30, 0x18(r1)
    stw r29, 0x14(r1)
    stw r28, 0x10(r1)
    bl OSDisableInterrupts
    opword  0x80AD89E0  // lwz r5, lbl_8053A5A0@sda21(r0)
    addi r30, r3, 0x0
    li r0, 0x0
    opword  0x808D89D0  // lwz r4, lbl_8053A590@sda21(r0)
    or r3, r5, r4
    opword  0x906D89E0  // stw r3, lbl_8053A5A0@sda21(r0)
    opword  0x900D89D0  // stw r0, lbl_8053A590@sda21(r0)
    opword  0x808D89E8  // lwz r4, lbl_8053A5A8@sda21(r0)
    opword  0x80AD89EC  // lwz r5, lbl_8053A5AC@sda21(r0)
    opword  0x800D89D8  // lwz r0, lbl_8053A598@sda21(r0)
    opword  0x806D89DC  // lwz r3, lbl_8053A59C@sda21(r0)
    or r0, r4, r0
    or r3, r5, r3
    opword  0x906D89EC  // stw r3, lbl_8053A5AC@sda21(r0)
    opword  0x900D89E8  // stw r0, lbl_8053A5A8@sda21(r0)
    opword  0x48000078  // b .L_8004CFF4
L_8004CF80:
    opword  0x806D89D8  // lwz r3, lbl_8053A598@sda21(r0)
    li r5, 0x20
    opword  0x838D89DC  // lwz r28, lbl_8053A59C@sda21(r0)
    addi r4, r28, 0x0
    bl __shr2u
    cntlzw r4, r4
    cmpwi r4, 0x20
    li r0, -0x1
    and r0, r28, r0
    opword  0x40800008  // bge .L_8004CFAC
    opword  0x4800000C  // b .L_8004CFB4
L_8004CFAC:
    cntlzw r3, r0
    addi r4, r3, 0x20
L_8004CFB4:
    slwi r3, r4, 1
    lhzx r0, r31, r3
    add r3, r31, r3
    subfic r5, r4, 0x3f
    sth r0, 0x78(r3)
    li r3, 0x0
    li r4, 0x1
    bl __shl2i
    opword  0x800D89D8  // lwz r0, lbl_8053A598@sda21(r0)
    nor r5, r3, r3
    nor r4, r4, r4
    opword  0x806D89DC  // lwz r3, lbl_8053A59C@sda21(r0)
    and r0, r0, r5
    and r3, r3, r4
    opword  0x906D89DC  // stw r3, lbl_8053A59C@sda21(r0)
    opword  0x900D89D8  // stw r0, lbl_8053A598@sda21(r0)
L_8004CFF4:
    opword  0x800D89D8  // lwz r0, lbl_8053A598@sda21(r0)
    li r3, 0x0
    opword  0x808D89DC  // lwz r4, lbl_8053A59C@sda21(r0)
    xor r0, r0, r3
    xor r3, r4, r3
    or. r0, r3, r0
    opword  0x4082FF74  // bne .L_8004CF80
    li r0, 0x1
    opword  0x900D89B0  // stw r0, lbl_8053A570@sda21(r0)
    mr r3, r30
    lwz r0, 0x120(r31)
    opword  0x900D89F8  // stw r0, lbl_8053A5B8@sda21(r0)
    bl OSRestoreInterrupts
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    lwz r28, 0x10(r1)
    addi r1, r1, 0x20
    mtlr r0
    blr
}

ASM void fn_8004D048(void)
{
    nofralloc
    mflr r0
    lis r4, lbl_804B5A08@ha
    stw r0, 0x4(r1)
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    addi r31, r4, lbl_804B5A08@l
    stw r30, 0x10(r1)
    addi r30, r3, 0x0
    bl OSDisableInterrupts
    stw r30, 0x120(r31)
    li r0, 0x1
    addi r30, r3, 0x0
    opword  0x900D8A00  // stw r0, lbl_8053A5C0@sda21(r0)
    addi r3, r31, 0xf0
    addi r4, r31, 0x124
    addi r5, r31, 0x128
    addi r6, r31, 0x13c
    addi r7, r31, 0x140
    bl fn_8004C27C
    mr r3, r30
    bl OSRestoreInterrupts
    lwz r0, 0x1c(r1)
    lwz r31, 0x14(r1)
    lwz r30, 0x10(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

ASM void fn_8004D0B4(void)
{
    nofralloc
    opword  0x806D89F8  // lwz r3, lbl_8053A5B8@sda21(r0)
    blr
}

ASM void fn_8004D0BC(void)
{
    nofralloc
    opword  0x806D89FC  // lwz r3, lbl_8053A5BC@sda21(r0)
    blr
}

ASM void fn_8004D0C4(void)
{
    nofralloc
    mflr r0
    lis r4, lbl_804B5A08@ha
    stw r0, 0x4(r1)
    stwu r1, -0x20(r1)
    stw r31, 0x1c(r1)
    addi r31, r4, lbl_804B5A08@l
    stw r30, 0x18(r1)
    addi r30, r3, 0x0
    bl OSDisableInterrupts
    stw r30, 0x130(r31)
    mr r30, r3
    lwz r10, 0x144(r31)
    lwz r0, 0x130(r31)
    stw r0, 0x8(r1)
    lhz r3, 0xfa(r31)
    lhz r4, 0xf6(r31)
    lbz r5, 0x0(r10)
    lhz r6, 0x2(r10)
    lhz r7, 0x4(r10)
    lhz r8, 0x6(r10)
    lhz r9, 0x8(r10)
    lhz r10, 0xa(r10)
    bl fn_8004C550
    mr r3, r30
    bl OSRestoreInterrupts
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    addi r1, r1, 0x20
    mtlr r0
    blr
}

ASM void fn_8004D140(void)
{
    nofralloc
    opword  0x806D89AC  // lwz r3, lbl_8053A56C@sda21(r0)
    blr
}

ASM void fn_8004D148(void)
{
    nofralloc
    lis r5, 0xcc00
    addi r7, r5, 0x2000
    lhzu r0, 0x2c(r7)
    addi r6, r5, 0x2000
    clrlwi r9, r0, 21
L_8004D15C:
    lhz r0, 0x0(r7)
    mr r8, r9
    lhz r5, 0x2e(r6)
    clrlwi r9, r0, 21
    cmplw r8, r9
    clrlwi r0, r5, 21
    opword  0x4082FFE8  // bne .L_8004D15C
    stw r0, 0x0(r3)
    stw r9, 0x0(r4)
    blr
}

ASM void fn_8004D184(void)
{
    nofralloc
    lis r3, 0xcc00
    addi r7, r3, 0x2000
    lhzu r0, 0x2c(r7)
    addi r4, r3, 0x2000
    clrlwi r5, r0, 21
L_8004D198:
    lhz r0, 0x0(r7)
    mr r6, r5
    lhz r3, 0x2e(r4)
    clrlwi r5, r0, 21
    cmplw r6, r5
    clrlwi r3, r3, 21
    opword  0x4082FFE8  // bne .L_8004D198
    opword  0x80CD89F0  // lwz r6, lbl_8053A5B0@sda21(r0)
    subi r0, r5, 0x1
    subi r4, r3, 0x1
    lhz r3, 0x1a(r6)
    slwi r5, r0, 1
    lhz r0, 0x18(r6)
    divwu r3, r4, r3
    add r3, r5, r3
    cmplw r3, r0
    opword  0x4080000C  // bge .L_8004D1E4
    li r3, 0x1
    blr
L_8004D1E4:
    li r3, 0x0
    blr
}

ASM void fn_8004D1EC(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x28(r1)
    stw r31, 0x24(r1)
    stw r30, 0x20(r1)
    bl OSDisableInterrupts
    addi r30, r3, 0x0
    addi r3, r1, 0x10
    addi r4, r1, 0x14
    bl fn_8004D148
    opword  0x80AD89F0  // lwz r5, lbl_8053A5B0@sda21(r0)
    lwz r3, 0x10(r1)
    lhz r0, 0x1a(r5)
    subi r3, r3, 0x1
    lwz r4, 0x14(r1)
    divwu r3, r3, r0
    lhz r0, 0x18(r5)
    subi r4, r4, 0x1
    slwi r4, r4, 1
    add r3, r4, r3
    cmplw r3, r0
    opword  0x4080000C  // bge .L_8004D24C
    li r31, 0x1
    opword  0x48000008  // b .L_8004D250
L_8004D24C:
    li r31, 0x0
L_8004D250:
    mr r3, r30
    bl OSRestoreInterrupts
    lis r3, lbl_804B5AF8@ha
    addi r3, r3, lbl_804B5AF8@l
    lhz r0, 0xa(r3)
    xori r3, r31, 0x1
    clrlwi r0, r0, 31
    xor r3, r3, r0
    lwz r0, 0x2c(r1)
    lwz r31, 0x24(r1)
    lwz r30, 0x20(r1)
    addi r1, r1, 0x28
    mtlr r0
    blr
}

ASM void fn_8004D288(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x20(r1)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    opword  0x83ED89F0  // lwz r31, lbl_8053A5B0@sda21(r0)
    bl OSDisableInterrupts
    lis r4, 0xcc00
    addi r8, r4, 0x2000
    lhzu r0, 0x2c(r8)
    addi r5, r4, 0x2000
    clrlwi r6, r0, 21
L_8004D2B8:
    lhz r0, 0x0(r8)
    mr r7, r6
    lhz r4, 0x2e(r5)
    clrlwi r6, r0, 21
    cmplw r7, r6
    clrlwi r7, r4, 21
    opword  0x4082FFE8  // bne .L_8004D2B8
    opword  0x808D89F0  // lwz r4, lbl_8053A5B0@sda21(r0)
    subi r5, r7, 0x1
    subi r6, r6, 0x1
    lhz r0, 0x1a(r4)
    slwi r4, r6, 1
    divwu r0, r5, r0
    add r30, r4, r0
    bl OSRestoreInterrupts
    lhz r0, 0x18(r31)
    cmplw r30, r0
    opword  0x41800008  // blt .L_8004D304
    subf r30, r0, r30
L_8004D304:
    srwi r3, r30, 1
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    addi r1, r1, 0x20
    mtlr r0
    blr
}

ASM void VIGetTvFormat(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x10(r1)
    stw r31, 0xc(r1)
    bl OSDisableInterrupts
    opword  0x80AD89F4  // lwz r5, CurrTvMode_8053A5B4@sda21(r0)
    cmplwi r5, 0x6
    opword  0x41810030  // bgt .L_8004D36C
    opword  0x3C808049  // lis r4, "@724_8049679C"@ha
    opword  0x3884679C  // addi r4, r4, "@724_8049679C"@l
    slwi r0, r5, 2
    lwzx r0, r4, r0
    mtctr r0
    bctr
    li r31, 0x0
    opword  0x48000010  // b .L_8004D36C
    li r31, 0x1
    opword  0x48000008  // b .L_8004D36C
    mr r31, r5
L_8004D36C:
    bl OSRestoreInterrupts
    mr r3, r31
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    addi r1, r1, 0x10
    mtlr r0
    blr
}

ASM void fn_8004D388(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x10(r1)
    stw r31, 0xc(r1)
    bl OSDisableInterrupts
    lis r4, 0xcc00
    lhz r0, 0x206e(r4)
    clrlwi r31, r0, 30
    bl OSRestoreInterrupts
    clrlwi r3, r31, 31
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    addi r1, r1, 0x10
    mtlr r0
    blr
}

ASM void fn_8004D3C4(void)
{
    nofralloc
    opword  0x812D89F0  // lwz r9, lbl_8053A5B0@sda21(r0)
    lis r7, lbl_804B5AF8@ha
    addi r7, r7, lbl_804B5AF8@l
    lhz r0, 0x1a(r9)
    subi r8, r3, 0x1
    lwz r7, 0x24(r7)
    subi r4, r4, 0x1
    divwu r0, r8, r0
    slwi r4, r4, 1
    cmplwi r7, 0x0
    add r0, r4, r0
    opword  0x408200C0  // bne .L_8004D4B0
    lhz r10, 0x18(r9)
    cmplw r0, r10
    opword  0x40800058  // bge .L_8004D454
    lbz r4, 0x0(r9)
    lhz r8, 0x4(r9)
    mulli r7, r4, 0x3
    add r4, r8, r7
    cmplw r0, r4
    opword  0x40800010  // bge .L_8004D424
    li r0, -0x1
    sth r0, 0x0(r6)
    opword  0x480001B4  // b .L_8004D5D4
L_8004D424:
    lhz r4, 0x8(r9)
    subf r4, r4, r10
    cmplw r0, r4
    opword  0x41800010  // blt .L_8004D440
    li r0, -0x1
    sth r0, 0x0(r6)
    opword  0x48000198  // b .L_8004D5D4
L_8004D440:
    subf r0, r7, r0
    subf r0, r8, r0
    clrrwi r0, r0, 1
    sth r0, 0x0(r6)
    opword  0x48000184  // b .L_8004D5D4
L_8004D454:
    lbz r4, 0x0(r9)
    subf r0, r10, r0
    lhz r8, 0x6(r9)
    mulli r7, r4, 0x3
    add r4, r8, r7
    cmplw r0, r4
    opword  0x40800010  // bge .L_8004D47C
    li r0, -0x1
    sth r0, 0x0(r6)
    opword  0x4800015C  // b .L_8004D5D4
L_8004D47C:
    lhz r4, 0xa(r9)
    subf r4, r4, r10
    cmplw r0, r4
    opword  0x41800010  // blt .L_8004D498
    li r0, -0x1
    sth r0, 0x0(r6)
    opword  0x48000140  // b .L_8004D5D4
L_8004D498:
    subf r0, r7, r0
    subf r0, r8, r0
    clrrwi r4, r0, 1
    addi r0, r4, 0x1
    sth r0, 0x0(r6)
    opword  0x48000128  // b .L_8004D5D4
L_8004D4B0:
    cmplwi r7, 0x1
    opword  0x40820068  // bne .L_8004D51C
    lhz r7, 0x18(r9)
    cmplw r0, r7
    opword  0x41800008  // blt .L_8004D4C8
    subf r0, r7, r0
L_8004D4C8:
    lbz r4, 0x0(r9)
    lhz r10, 0x4(r9)
    mulli r8, r4, 0x3
    add r4, r10, r8
    cmplw r0, r4
    opword  0x40800010  // bge .L_8004D4EC
    li r0, -0x1
    sth r0, 0x0(r6)
    opword  0x480000EC  // b .L_8004D5D4
L_8004D4EC:
    lhz r4, 0x8(r9)
    subf r4, r4, r7
    cmplw r0, r4
    opword  0x41800010  // blt .L_8004D508
    li r0, -0x1
    sth r0, 0x0(r6)
    opword  0x480000D0  // b .L_8004D5D4
L_8004D508:
    subf r0, r8, r0
    subf r0, r10, r0
    clrrwi r0, r0, 1
    sth r0, 0x0(r6)
    opword  0x480000BC  // b .L_8004D5D4
L_8004D51C:
    cmplwi r7, 0x2
    opword  0x408200B4  // bne .L_8004D5D4
    lhz r10, 0x18(r9)
    cmplw r0, r10
    opword  0x40800054  // bge .L_8004D580
    lbz r4, 0x0(r9)
    lhz r8, 0x4(r9)
    mulli r7, r4, 0x3
    add r4, r8, r7
    cmplw r0, r4
    opword  0x40800010  // bge .L_8004D554
    li r0, -0x1
    sth r0, 0x0(r6)
    opword  0x48000084  // b .L_8004D5D4
L_8004D554:
    lhz r4, 0x8(r9)
    subf r4, r4, r10
    cmplw r0, r4
    opword  0x41800010  // blt .L_8004D570
    li r0, -0x1
    sth r0, 0x0(r6)
    opword  0x48000068  // b .L_8004D5D4
L_8004D570:
    subf r0, r7, r0
    subf r0, r8, r0
    sth r0, 0x0(r6)
    opword  0x48000058  // b .L_8004D5D4
L_8004D580:
    lbz r4, 0x0(r9)
    subf r0, r10, r0
    lhz r8, 0x6(r9)
    mulli r7, r4, 0x3
    add r4, r8, r7
    cmplw r0, r4
    opword  0x40800010  // bge .L_8004D5A8
    li r0, -0x1
    sth r0, 0x0(r6)
    opword  0x48000030  // b .L_8004D5D4
L_8004D5A8:
    lhz r4, 0xa(r9)
    subf r4, r4, r10
    cmplw r0, r4
    opword  0x41800010  // blt .L_8004D5C4
    li r0, -0x1
    sth r0, 0x0(r6)
    opword  0x48000014  // b .L_8004D5D4
L_8004D5C4:
    subf r0, r7, r0
    subf r0, r8, r0
    clrrwi r0, r0, 1
    sth r0, 0x0(r6)
L_8004D5D4:
    subi r0, r3, 0x1
    sth r0, 0x0(r5)
    blr
}

ASM void fn_8004D5E0(void)
{
    nofralloc
    mflr r0
    lis r7, 0xcc00
    stw r0, 0x4(r1)
    addi r6, r4, 0x0
    addi r9, r7, 0x2000
    stwu r1, -0x8(r1)
    addi r5, r3, 0x0
    addi r4, r7, 0x2000
    lhzu r0, 0x2c(r9)
    clrlwi r8, r0, 21
L_8004D608:
    lhz r0, 0x0(r9)
    mr r7, r8
    lhz r3, 0x2e(r4)
    clrlwi r8, r0, 21
    cmplw r7, r8
    clrlwi r0, r3, 21
    opword  0x4082FFE8  // bne .L_8004D608
    mr r3, r0
    addi r4, r8, 0x0
    bl fn_8004D3C4
    lwz r0, 0xc(r1)
    addi r1, r1, 0x8
    mtlr r0
    blr
}

ASM void fn_8004D640(void)
{
    nofralloc
    lbz r0, 0x0(r3)
    lbz r12, 0x0(r4)
    extsb. r0, r0
    extsb r12, r12
    mr r11, r0
    opword  0x4180000C  // blt .L_8004D660
    li r0, 0x1
    opword  0x4800000C  // b .L_8004D668
L_8004D660:
    li r0, -0x1
    neg r11, r11
L_8004D668:
    cmpwi r12, 0x0
    opword  0x4180000C  // blt .L_8004D678
    li r8, 0x1
    opword  0x4800000C  // b .L_8004D680
L_8004D678:
    li r8, -0x1
    neg r12, r12
L_8004D680:
    extsb r7, r7
    cmpw r11, r7
    opword  0x4181000C  // bgt .L_8004D694
    li r11, 0x0
    opword  0x48000008  // b .L_8004D698
L_8004D694:
    subf r11, r7, r11
L_8004D698:
    cmpw r12, r7
    opword  0x4181000C  // bgt .L_8004D6A8
    li r12, 0x0
    opword  0x48000008  // b .L_8004D6AC
L_8004D6A8:
    subf r12, r7, r12
L_8004D6AC:
    cmpwi r11, 0x0
    opword  0x4082001C  // bne .L_8004D6CC
    cmpwi r12, 0x0
    opword  0x40820014  // bne .L_8004D6CC
    li r0, 0x0
    stb r0, 0x0(r4)
    stb r0, 0x0(r3)
    blr
L_8004D6CC:
    extsb r6, r6
    mullw r9, r6, r12
    mullw r7, r6, r11
    cmpw r9, r7
    opword  0x41810044  // bgt .L_8004D720
    extsb r9, r5
    subf r5, r6, r9
    mullw r5, r12, r5
    mullw r9, r6, r9
    add r7, r7, r5
    cmpw r9, r7
    opword  0x40800064  // bge .L_8004D75C
    mullw r6, r11, r9
    mullw r5, r12, r9
    divw r6, r6, r7
    divw r5, r5, r7
    extsb r6, r6
    extsb r5, r5
    addi r11, r6, 0x0
    addi r12, r5, 0x0
    opword  0x48000040  // b .L_8004D75C
L_8004D720:
    extsb r7, r5
    subf r5, r6, r7
    mullw r5, r11, r5
    mullw r10, r6, r7
    add r7, r9, r5
    cmpw r10, r7
    opword  0x40800024  // bge .L_8004D75C
    mullw r6, r11, r10
    mullw r5, r12, r10
    divw r6, r6, r7
    divw r5, r5, r7
    extsb r6, r6
    extsb r5, r5
    addi r11, r6, 0x0
    addi r12, r5, 0x0
L_8004D75C:
    mullw r5, r0, r11
    mullw r0, r8, r12
    stb r5, 0x0(r3)
    stb r0, 0x0(r4)
    blr
}

ASM void fn_8004D770(void)
{
    nofralloc
    stwu r1, -0x40(r1)
    extsb r6, r6
    neg r7, r6
    lbz r0, 0x0(r3)
    lbz r9, 0x0(r4)
    extsb r0, r0
    cmpw r7, r0
    extsb r9, r9
    opword  0x40800014  // bge .L_8004D7A4
    cmpw r0, r6
    opword  0x4080000C  // bge .L_8004D7A4
    li r8, 0x0
    opword  0x48000018  // b .L_8004D7B8
L_8004D7A4:
    cmpwi r0, 0x0
    opword  0x4081000C  // ble .L_8004D7B4
    subf r8, r6, r0
    opword  0x48000008  // b .L_8004D7B8
L_8004D7B4:
    add r8, r0, r6
L_8004D7B8:
    cmpw r7, r9
    opword  0x40800014  // bge .L_8004D7D0
    cmpw r9, r6
    opword  0x4080000C  // bge .L_8004D7D0
    li r9, 0x0
    opword  0x48000018  // b .L_8004D7E4
L_8004D7D0:
    cmpwi r9, 0x0
    opword  0x4081000C  // ble .L_8004D7E0
    subf r9, r6, r9
    opword  0x48000008  // b .L_8004D7E4
L_8004D7E0:
    add r9, r9, r6
L_8004D7E4:
    extsb r7, r5
    mullw r6, r8, r8
    mullw r5, r9, r9
    mullw r0, r7, r7
    add r5, r6, r5
    cmpw r0, r5
    opword  0x40800104  // bge .L_8004D900
    xoris r5, r5, 0x8000
    opword  0xC8E283A0  // lfd f7, lbl_8053B340@sda21(r0)
    stw r5, 0x3c(r1)
    lis r0, 0x4330
    opword  0xC0028388  // lfs f0, lbl_8053B328@sda21(r0)
    stw r0, 0x38(r1)
    lfd fp1, 0x38(r1)
    fsubs fp1, fp1, fp7
    fcmpo cr0, fp1, fp0
    opword  0x408100B0  // ble .L_8004D8D4
    stw r5, 0x3c(r1)
    opword  0xC8C28390  // lfd f6, lbl_8053B330@sda21(r0)
    stw r0, 0x38(r1)
    opword  0xC8A28398  // lfd f5, lbl_8053B338@sda21(r0)
    lfd fp0, 0x38(r1)
    stw r5, 0x34(r1)
    fsubs fp0, fp0, fp7
    stw r0, 0x30(r1)
    frsqrte fp3, fp0
    lfd fp0, 0x30(r1)
    stw r5, 0x2c(r1)
    fsubs fp2, fp0, fp7
    fmul fp1, fp3, fp3
    stw r0, 0x28(r1)
    fmul fp4, fp6, fp3
    lfd fp0, 0x28(r1)
    fmul fp1, fp2, fp1
    stw r5, 0x24(r1)
    fsubs fp3, fp0, fp7
    stw r0, 0x20(r1)
    fsub fp1, fp5, fp1
    lfd fp0, 0x20(r1)
    stw r5, 0x1c(r1)
    fmul fp4, fp4, fp1
    stw r0, 0x18(r1)
    fsubs fp2, fp0, fp7
    lfd fp0, 0x18(r1)
    fmul fp1, fp4, fp4
    fmul fp4, fp6, fp4
    fmul fp1, fp3, fp1
    fsubs fp0, fp0, fp7
    fsub fp1, fp5, fp1
    fmul fp3, fp4, fp1
    fmul fp1, fp3, fp3
    fmul fp3, fp6, fp3
    fmul fp1, fp2, fp1
    fsub fp1, fp5, fp1
    fmul fp1, fp3, fp1
    fmul fp0, fp0, fp1
    frsp fp0, fp0
    stfs fp0, 0x14(r1)
    lfs fp0, 0x14(r1)
    opword  0x48000014  // b .L_8004D8E4
L_8004D8D4:
    stw r5, 0x1c(r1)
    stw r0, 0x18(r1)
    lfd fp0, 0x18(r1)
    fsubs fp0, fp0, fp7
L_8004D8E4:
    fctiwz fp0, fp0
    mullw r5, r8, r7
    stfd fp0, 0x18(r1)
    lwz r6, 0x1c(r1)
    mullw r0, r9, r7
    divw r8, r5, r6
    divw r9, r0, r6
L_8004D900:
    extsb r0, r8
    stb r0, 0x0(r3)
    extsb r0, r9
    stb r0, 0x0(r4)
    addi r1, r1, 0x40
    blr
}

ASM void fn_8004D918(void)
{
    nofralloc
    mflr r0
    lis r4, lbl_8045D440@ha
    stw r0, 0x4(r1)
    stwu r1, -0x20(r1)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    li r30, 0x0
    stw r29, 0x14(r1)
    addi r29, r3, 0x0
    stw r28, 0x10(r1)
    addi r28, r4, lbl_8045D440@l
    addi r31, r28, 0x1
L_8004D948:
    lbz r0, 0xa(r29)
    extsb. r0, r0
    opword  0x408200AC  // bne .L_8004D9FC
    lbz r5, 0x3(r28)
    addi r3, r29, 0x2
    lbz r6, 0x4(r28)
    addi r4, r29, 0x3
    lbz r7, 0x2(r28)
    bl fn_8004D640
    lbz r5, 0x6(r28)
    addi r3, r29, 0x4
    lbz r6, 0x7(r28)
    addi r4, r29, 0x5
    lbz r7, 0x5(r28)
    bl fn_8004D640
    lbz r4, 0x6(r29)
    lbz r0, 0x0(r28)
    lbz r3, 0x0(r31)
    cmplw r4, r0
    opword  0x41810010  // bgt .L_8004D9A4
    li r0, 0x0
    stb r0, 0x6(r29)
    opword  0x48000020  // b .L_8004D9C0
L_8004D9A4:
    cmplw r3, r4
    opword  0x40800008  // bge .L_8004D9B0
    stb r3, 0x6(r29)
L_8004D9B0:
    lbz r3, 0x0(r28)
    lbz r0, 0x6(r29)
    subf r0, r3, r0
    stb r0, 0x6(r29)
L_8004D9C0:
    lbz r4, 0x7(r29)
    lbz r0, 0x0(r28)
    lbz r3, 0x0(r31)
    cmplw r4, r0
    opword  0x41810010  // bgt .L_8004D9E0
    li r0, 0x0
    stb r0, 0x7(r29)
    opword  0x48000020  // b .L_8004D9FC
L_8004D9E0:
    cmplw r3, r4
    opword  0x40800008  // bge .L_8004D9EC
    stb r3, 0x7(r29)
L_8004D9EC:
    lbz r3, 0x0(r28)
    lbz r0, 0x7(r29)
    subf r0, r3, r0
    stb r0, 0x7(r29)
L_8004D9FC:
    addi r30, r30, 0x1
    cmpwi r30, 0x4
    addi r29, r29, 0xc
    opword  0x4180FF40  // blt .L_8004D948
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    lwz r28, 0x10(r1)
    addi r1, r1, 0x20
    mtlr r0
    blr
}

ASM void fn_8004DA2C(void)
{
    nofralloc
    mflr r0
    lis r4, lbl_8045D440@ha
    stw r0, 0x4(r1)
    stwu r1, -0x20(r1)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    li r30, 0x0
    stw r29, 0x14(r1)
    addi r29, r3, 0x0
    stw r28, 0x10(r1)
    addi r28, r4, lbl_8045D440@l
    addi r31, r28, 0x1
L_8004DA5C:
    lbz r0, 0xa(r29)
    extsb. r0, r0
    opword  0x408200A4  // bne .L_8004DB08
    lbz r5, 0x8(r28)
    addi r3, r29, 0x2
    lbz r6, 0x2(r28)
    addi r4, r29, 0x3
    bl fn_8004D770
    lbz r5, 0x9(r28)
    addi r3, r29, 0x4
    lbz r6, 0x5(r28)
    addi r4, r29, 0x5
    bl fn_8004D770
    lbz r4, 0x6(r29)
    lbz r0, 0x0(r28)
    lbz r3, 0x0(r31)
    cmplw r4, r0
    opword  0x41810010  // bgt .L_8004DAB0
    li r0, 0x0
    stb r0, 0x6(r29)
    opword  0x48000020  // b .L_8004DACC
L_8004DAB0:
    cmplw r3, r4
    opword  0x40800008  // bge .L_8004DABC
    stb r3, 0x6(r29)
L_8004DABC:
    lbz r3, 0x0(r28)
    lbz r0, 0x6(r29)
    subf r0, r3, r0
    stb r0, 0x6(r29)
L_8004DACC:
    lbz r4, 0x7(r29)
    lbz r0, 0x0(r28)
    lbz r3, 0x0(r31)
    cmplw r4, r0
    opword  0x41810010  // bgt .L_8004DAEC
    li r0, 0x0
    stb r0, 0x7(r29)
    opword  0x48000020  // b .L_8004DB08
L_8004DAEC:
    cmplw r3, r4
    opword  0x40800008  // bge .L_8004DAF8
    stb r3, 0x7(r29)
L_8004DAF8:
    lbz r3, 0x0(r28)
    lbz r0, 0x7(r29)
    subf r0, r3, r0
    stb r0, 0x7(r29)
L_8004DB08:
    addi r30, r30, 0x1
    cmpwi r30, 0x4
    addi r29, r29, 0xc
    opword  0x4180FF48  // blt .L_8004DA5C
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    lwz r28, 0x10(r1)
    addi r1, r1, 0x20
    mtlr r0
    blr
}

ASM void fn_8004DB38(void)
{
    nofralloc
    mflr r0
    lis r5, lbl_804B5B60@ha
    stw r0, 0x4(r1)
    mulli r6, r3, 0xc
    stwu r1, -0x18(r1)
    addi r5, r5, lbl_804B5B60@l
    stw r31, 0x14(r1)
    add r31, r5, r6
    opword  0x800D80C4  // lwz r0, lbl_80539C84@sda21(r0)
    rlwinm r4, r0, 0, 21, 23
    cmpwi r4, 0x400
    lis r0, 0x8000
    srw r0, r0, r3
    opword  0x418200F4  // beq .L_8004DC60
    opword  0x40800034  // bge .L_8004DBA4
    cmpwi r4, 0x200
    opword  0x418200B8  // beq .L_8004DC30
    opword  0x4080001C  // bge .L_8004DB98
    cmpwi r4, 0x100
    opword  0x41820078  // beq .L_8004DBFC
    opword  0x408000D8  // bge .L_8004DC60
    cmpwi r4, 0x0
    opword  0x41820038  // beq .L_8004DBC8
    opword  0x480000CC  // b .L_8004DC60
L_8004DB98:
    cmpwi r4, 0x300
    opword  0x418200C4  // beq .L_8004DC60
    opword  0x480000C0  // b .L_8004DC60
L_8004DBA4:
    cmpwi r4, 0x600
    opword  0x41820020  // beq .L_8004DBC8
    opword  0x40800010  // bge .L_8004DBBC
    cmpwi r4, 0x500
    opword  0x41820014  // beq .L_8004DBC8
    opword  0x480000A8  // b .L_8004DC60
L_8004DBBC:
    cmpwi r4, 0x700
    opword  0x41820008  // beq .L_8004DBC8
    opword  0x4800009C  // b .L_8004DC60
L_8004DBC8:
    lbz r4, 0x6(r31)
    clrrwi r4, r4, 4
    stb r4, 0x6(r31)
    lbz r4, 0x7(r31)
    clrrwi r4, r4, 4
    stb r4, 0x7(r31)
    lbz r4, 0x8(r31)
    clrrwi r4, r4, 4
    stb r4, 0x8(r31)
    lbz r4, 0x9(r31)
    clrrwi r4, r4, 4
    stb r4, 0x9(r31)
    opword  0x48000068  // b .L_8004DC60
L_8004DBFC:
    lbz r4, 0x4(r31)
    clrrwi r4, r4, 4
    stb r4, 0x4(r31)
    lbz r4, 0x5(r31)
    clrrwi r4, r4, 4
    stb r4, 0x5(r31)
    lbz r4, 0x8(r31)
    clrrwi r4, r4, 4
    stb r4, 0x8(r31)
    lbz r4, 0x9(r31)
    clrrwi r4, r4, 4
    stb r4, 0x9(r31)
    opword  0x48000034  // b .L_8004DC60
L_8004DC30:
    lbz r4, 0x4(r31)
    clrrwi r4, r4, 4
    stb r4, 0x4(r31)
    lbz r4, 0x5(r31)
    clrrwi r4, r4, 4
    stb r4, 0x5(r31)
    lbz r4, 0x6(r31)
    clrrwi r4, r4, 4
    stb r4, 0x6(r31)
    lbz r4, 0x7(r31)
    clrrwi r4, r4, 4
    stb r4, 0x7(r31)
L_8004DC60:
    lbz r4, 0x2(r31)
    subi r4, r4, 0x80
    stb r4, 0x2(r31)
    lbz r4, 0x3(r31)
    subi r4, r4, 0x80
    stb r4, 0x3(r31)
    lbz r4, 0x4(r31)
    subi r4, r4, 0x80
    stb r4, 0x4(r31)
    lbz r4, 0x5(r31)
    subi r4, r4, 0x80
    stb r4, 0x5(r31)
    opword  0x808D80C0  // lwz r4, lbl_80539C80@sda21(r0)
    and. r0, r4, r0
    opword  0x41820030  // beq .L_8004DCC8
    lbz r0, 0x2(r31)
    extsb r0, r0
    cmpwi r0, 0x40
    opword  0x40810020  // ble .L_8004DCC8
    bl SIGetType
    clrrwi r3, r3, 16
    subis r0, r3, 0x900
    cmplwi r0, 0x0
    opword  0x4082000C  // bne .L_8004DCC8
    li r0, 0x0
    stb r0, 0x2(r31)
L_8004DCC8:
    lwz r0, 0x1c(r1)
    lwz r31, 0x14(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

ASM void fn_8004DCDC(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    clrlwi. r0, r4, 28
    stwu r1, -0x30(r1)
    stw r31, 0x2c(r1)
    opword  0x40820048  // bne .L_8004DD38
    opword  0x806D80BC  // lwz r3, lbl_80539C7C@sda21(r0)
    bl fn_8004DB38
    opword  0x83ED80BC  // lwz r31, lbl_80539C7C@sda21(r0)
    lis r0, 0x8000
    opword  0x806D8A0C  // lwz r3, lbl_8053A5CC@sda21(r0)
    addi r4, r1, 0x1c
    srw r0, r0, r31
    or r0, r3, r0
    opword  0x900D8A0C  // stw r0, lbl_8053A5CC@sda21(r0)
    mr r3, r31
    bl fn_80074A60
    opword  0x800D80C4  // lwz r0, lbl_80539C84@sda21(r0)
    addi r3, r31, 0x0
    oris r4, r0, 0x40
    bl fn_800747F4
    opword  0x806D8A0C  // lwz r3, lbl_8053A5CC@sda21(r0)
    bl fn_80074884
L_8004DD38:
    opword  0x80AD8A10  // lwz r5, lbl_8053A5D0@sda21(r0)
    cntlzw r0, r5
    opword  0x900D80BC  // stw r0, lbl_80539C7C@sda21(r0)
    opword  0x808D80BC  // lwz r4, lbl_80539C7C@sda21(r0)
    cmpwi r4, 0x20
    opword  0x41820040  // beq .L_8004DD8C
    lis r0, 0x8000
    srw r0, r0, r4
    andc r0, r5, r0
    mulli r4, r4, 0xc
    opword  0x900D8A10  // stw r0, lbl_8053A5D0@sda21(r0)
    lis r3, lbl_804B5B60@ha
    addi r0, r3, lbl_804B5B60@l
    add r3, r0, r4
    li r4, 0x0
    li r5, 0xc
    bl memset
    lis r4, fn_8004DF44@ha
    opword  0x806D80BC  // lwz r3, lbl_80539C7C@sda21(r0)
    addi r4, r4, fn_8004DF44@l
    bl fn_80075178
L_8004DD8C:
    lwz r0, 0x34(r1)
    lwz r31, 0x2c(r1)
    addi r1, r1, 0x30
    mtlr r0
    blr
}

ASM void fn_8004DDA0(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    lis r0, 0x8000
    stwu r1, -0x28(r1)
    stw r31, 0x24(r1)
    addi r31, r4, 0x0
    stw r30, 0x20(r1)
    stw r29, 0x1c(r1)
    mr r29, r3
    srw r30, r0, r29
    opword  0x806D8A0C  // lwz r3, lbl_8053A5CC@sda21(r0)
    and. r0, r3, r30
    opword  0x41820080  // beq .L_8004DE50
    clrlwi. r0, r31, 28
    opword  0x4082000C  // bne .L_8004DDE4
    mr r3, r29
    bl fn_8004DB38
L_8004DDE4:
    rlwinm. r0, r31, 0, 28, 28
    opword  0x41820068  // beq .L_8004DE50
    bl OSDisableInterrupts
    addi r31, r3, 0x0
    addi r3, r30, 0x0
    bl fn_80074920
    opword  0x800D8A0C  // lwz r0, lbl_8053A5CC@sda21(r0)
    nor r9, r30, r30
    opword  0x80CD8A18  // lwz r6, lbl_8053A5D8@sda21(r0)
    mr r3, r29
    opword  0x80AD8A1C  // lwz r5, lbl_8053A5DC@sda21(r0)
    opword  0x808D8A20  // lwz r4, lbl_8053A5E0@sda21(r0)
    and r8, r0, r9
    opword  0x800D8A24  // lwz r0, lbl_8053A5E4@sda21(r0)
    and r7, r6, r9
    and r6, r5, r9
    and r5, r4, r9
    opword  0x910D8A0C  // stw r8, lbl_8053A5CC@sda21(r0)
    and r0, r0, r9
    opword  0x90ED8A18  // stw r7, lbl_8053A5D8@sda21(r0)
    li r4, 0x0
    opword  0x90CD8A1C  // stw r6, lbl_8053A5DC@sda21(r0)
    opword  0x90AD8A20  // stw r5, lbl_8053A5E0@sda21(r0)
    opword  0x900D8A24  // stw r0, lbl_8053A5E4@sda21(r0)
    bl OSSetWirelessID
    mr r3, r31
    bl OSRestoreInterrupts
L_8004DE50:
    lwz r0, 0x2c(r1)
    lwz r31, 0x24(r1)
    lwz r30, 0x20(r1)
    lwz r29, 0x1c(r1)
    addi r1, r1, 0x28
    mtlr r0
    blr
}

ASM void fn_8004DE6C(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    clrlwi. r0, r4, 28
    stwu r1, -0x30(r1)
    stw r31, 0x2c(r1)
    stw r30, 0x28(r1)
    opword  0x40820054  // bne .L_8004DED8
    opword  0x83CD80BC  // lwz r30, lbl_80539C7C@sda21(r0)
    lis r31, 0x8000
    opword  0x806D8A0C  // lwz r3, lbl_8053A5CC@sda21(r0)
    addi r4, r1, 0x1c
    srw r0, r31, r30
    or r0, r3, r0
    opword  0x900D8A0C  // stw r0, lbl_8053A5CC@sda21(r0)
    mr r3, r30
    bl fn_80074A60
    opword  0x800D80C4  // lwz r0, lbl_80539C84@sda21(r0)
    addi r3, r30, 0x0
    oris r4, r0, 0x40
    bl fn_800747F4
    opword  0x806D8A0C  // lwz r3, lbl_8053A5CC@sda21(r0)
    bl fn_80074884
    opword  0x800D80BC  // lwz r0, lbl_80539C7C@sda21(r0)
    opword  0x806D8A18  // lwz r3, lbl_8053A5D8@sda21(r0)
    srw r0, r31, r0
    or r0, r3, r0
    opword  0x900D8A18  // stw r0, lbl_8053A5D8@sda21(r0)
L_8004DED8:
    opword  0x80AD8A10  // lwz r5, lbl_8053A5D0@sda21(r0)
    cntlzw r0, r5
    opword  0x900D80BC  // stw r0, lbl_80539C7C@sda21(r0)
    opword  0x808D80BC  // lwz r4, lbl_80539C7C@sda21(r0)
    cmpwi r4, 0x20
    opword  0x41820040  // beq .L_8004DF2C
    lis r0, 0x8000
    srw r0, r0, r4
    andc r0, r5, r0
    mulli r4, r4, 0xc
    opword  0x900D8A10  // stw r0, lbl_8053A5D0@sda21(r0)
    lis r3, lbl_804B5B60@ha
    addi r0, r3, lbl_804B5B60@l
    add r3, r0, r4
    li r4, 0x0
    li r5, 0xc
    bl memset
    lis r4, fn_8004DF44@ha
    opword  0x806D80BC  // lwz r3, lbl_80539C7C@sda21(r0)
    addi r4, r4, fn_8004DF44@l
    bl fn_80075178
L_8004DF2C:
    lwz r0, 0x34(r1)
    lwz r31, 0x2c(r1)
    lwz r30, 0x28(r1)
    addi r1, r1, 0x30
    mtlr r0
    blr
}

ASM void fn_8004DF44(void)
{
    nofralloc
    mflr r0
    lis r6, lbl_804B5B50@ha
    stw r0, 0x4(r1)
    clrlwi. r0, r4, 28
    stwu r1, -0x40(r1)
    stw r31, 0x3c(r1)
    lis r31, 0x8000
    stw r30, 0x38(r1)
    addi r30, r6, lbl_804B5B50@l
    stw r29, 0x34(r1)
    stw r28, 0x30(r1)
    opword  0x83AD80BC  // lwz r29, lbl_80539C7C@sda21(r0)
    opword  0x80AD8A14  // lwz r5, lbl_8053A5D4@sda21(r0)
    srw r28, r31, r29
    andc r3, r5, r28
    opword  0x906D8A14  // stw r3, lbl_8053A5D4@sda21(r0)
    and r5, r5, r28
    li r3, 0x1
    opword  0x41820054  // beq .L_8004DFE0
    opword  0x808D8A10  // lwz r4, lbl_8053A5D0@sda21(r0)
    cntlzw r0, r4
    opword  0x900D80BC  // stw r0, lbl_80539C7C@sda21(r0)
    opword  0x806D80BC  // lwz r3, lbl_80539C7C@sda21(r0)
    cmpwi r3, 0x20
    opword  0x418202AC  // beq .L_8004E250
    mulli r0, r3, 0xc
    srw r3, r31, r3
    andc r4, r4, r3
    add r3, r30, r0
    opword  0x908D8A10  // stw r4, lbl_8053A5D0@sda21(r0)
    li r4, 0x0
    li r5, 0xc
    addi r3, r3, 0x10
    bl memset
    lis r4, fn_8004DF44@ha
    opword  0x806D80BC  // lwz r3, lbl_80539C7C@sda21(r0)
    addi r4, r4, fn_8004DF44@l
    bl fn_80075178
    opword  0x48000274  // b .L_8004E250
L_8004DFE0:
    clrrwi r6, r4, 8
    rlwinm r4, r4, 0, 3, 4
    subis r0, r4, 0x800
    slwi r4, r29, 2
    cmplwi r0, 0x0
    stwx r6, r30, r4
    opword  0x4082000C  // bne .L_8004E004
    rlwinm. r0, r6, 0, 7, 7
    opword  0x40820058  // bne .L_8004E058
L_8004E004:
    opword  0x80AD8A10  // lwz r5, lbl_8053A5D0@sda21(r0)
    cntlzw r0, r5
    opword  0x900D80BC  // stw r0, lbl_80539C7C@sda21(r0)
    opword  0x808D80BC  // lwz r4, lbl_80539C7C@sda21(r0)
    cmpwi r4, 0x20
    opword  0x41820238  // beq .L_8004E250
    lis r3, 0x8000
    mulli r0, r4, 0xc
    srw r3, r3, r4
    andc r4, r5, r3
    add r3, r30, r0
    opword  0x908D8A10  // stw r4, lbl_8053A5D0@sda21(r0)
    li r4, 0x0
    li r5, 0xc
    addi r3, r3, 0x10
    bl memset
    lis r4, fn_8004DF44@ha
    opword  0x806D80BC  // lwz r3, lbl_80539C7C@sda21(r0)
    addi r4, r4, fn_8004DF44@l
    bl fn_80075178
    opword  0x480001FC  // b .L_8004E250
L_8004E058:
    opword  0x800D80C8  // lwz r0, lbl_80539C88@sda21(r0)
    cmplwi r0, 0x2
    opword  0x40800084  // bge .L_8004E0E4
    opword  0x800D8A0C  // lwz r0, lbl_8053A5CC@sda21(r0)
    addi r3, r29, 0x0
    addi r4, r1, 0x1c
    or r0, r0, r28
    opword  0x900D8A0C  // stw r0, lbl_8053A5CC@sda21(r0)
    bl fn_80074A60
    opword  0x800D80C4  // lwz r0, lbl_80539C84@sda21(r0)
    addi r3, r29, 0x0
    oris r4, r0, 0x40
    bl fn_800747F4
    opword  0x806D8A0C  // lwz r3, lbl_8053A5CC@sda21(r0)
    bl fn_80074884
    opword  0x808D8A10  // lwz r4, lbl_8053A5D0@sda21(r0)
    cntlzw r0, r4
    opword  0x900D80BC  // stw r0, lbl_80539C7C@sda21(r0)
    opword  0x806D80BC  // lwz r3, lbl_80539C7C@sda21(r0)
    cmpwi r3, 0x20
    opword  0x418201A8  // beq .L_8004E250
    mulli r0, r3, 0xc
    srw r3, r31, r3
    andc r4, r4, r3
    add r3, r30, r0
    opword  0x908D8A10  // stw r4, lbl_8053A5D0@sda21(r0)
    li r4, 0x0
    li r5, 0xc
    addi r3, r3, 0x10
    bl memset
    lis r4, fn_8004DF44@ha
    opword  0x806D80BC  // lwz r3, lbl_80539C7C@sda21(r0)
    addi r4, r4, fn_8004DF44@l
    bl fn_80075178
    opword  0x48000170  // b .L_8004E250
L_8004E0E4:
    clrrwi. r0, r6, 31
    opword  0x4182000C  // beq .L_8004E0F4
    rlwinm. r0, r6, 0, 5, 5
    opword  0x41820074  // beq .L_8004E164
L_8004E0F4:
    cmplwi r5, 0x0
    opword  0x41820038  // beq .L_8004E130
    mulli r0, r29, 0xc
    lis r3, fn_8004DCDC@ha
    add r6, r30, r0
    addi r8, r3, fn_8004DCDC@l
    addi r3, r29, 0x0
    opword  0x388D80D4  // li r4, lbl_80539C94@sda21
    li r5, 0x3
    li r7, 0xa
    li r10, 0x0
    li r9, 0x0
    addi r6, r6, 0x10
    bl SITransfer
    opword  0x480000C0  // b .L_8004E1EC
L_8004E130:
    mulli r0, r29, 0xc
    lis r3, fn_8004DCDC@ha
    add r6, r30, r0
    addi r8, r3, fn_8004DCDC@l
    addi r3, r29, 0x0
    opword  0x388D80D0  // li r4, lbl_80539C90@sda21
    li r5, 0x1
    li r7, 0xa
    li r10, 0x0
    li r9, 0x0
    addi r6, r6, 0x10
    bl SITransfer
    opword  0x4800008C  // b .L_8004E1EC
L_8004E164:
    rlwinm. r0, r6, 0, 11, 11
    opword  0x41820084  // beq .L_8004E1EC
    rlwinm. r0, r6, 0, 12, 12
    opword  0x4082007C  // bne .L_8004E1EC
    rlwinm. r0, r6, 0, 13, 13
    opword  0x40820074  // bne .L_8004E1EC
    rlwinm. r0, r6, 0, 1, 1
    opword  0x41820038  // beq .L_8004E1B8
    mulli r0, r29, 0xc
    lis r3, fn_8004DCDC@ha
    add r6, r30, r0
    addi r8, r3, fn_8004DCDC@l
    addi r3, r29, 0x0
    opword  0x388D80D0  // li r4, lbl_80539C90@sda21
    li r5, 0x1
    li r7, 0xa
    li r10, 0x0
    li r9, 0x0
    addi r6, r6, 0x10
    bl SITransfer
    opword  0x48000038  // b .L_8004E1EC
L_8004E1B8:
    mulli r0, r29, 0xc
    lis r3, fn_8004DE6C@ha
    add r4, r30, r4
    add r6, r30, r0
    addi r8, r3, fn_8004DE6C@l
    addi r3, r29, 0x0
    li r5, 0x3
    li r7, 0x8
    li r10, 0x0
    li r9, 0x0
    addi r4, r4, 0x40
    addi r6, r6, 0x10
    bl SITransfer
L_8004E1EC:
    cmpwi r3, 0x0
    opword  0x40820060  // bne .L_8004E250
    opword  0x80AD8A10  // lwz r5, lbl_8053A5D0@sda21(r0)
    opword  0x806D8A20  // lwz r3, lbl_8053A5E0@sda21(r0)
    cntlzw r0, r5
    opword  0x900D80BC  // stw r0, lbl_80539C7C@sda21(r0)
    or r0, r3, r28
    opword  0x808D80BC  // lwz r4, lbl_80539C7C@sda21(r0)
    opword  0x900D8A20  // stw r0, lbl_8053A5E0@sda21(r0)
    cmpwi r4, 0x20
    opword  0x4182003C  // beq .L_8004E250
    lis r3, 0x8000
    mulli r0, r4, 0xc
    srw r3, r3, r4
    andc r4, r5, r3
    add r3, r30, r0
    opword  0x908D8A10  // stw r4, lbl_8053A5D0@sda21(r0)
    li r4, 0x0
    li r5, 0xc
    addi r3, r3, 0x10
    bl memset
    lis r4, fn_8004DF44@ha
    opword  0x806D80BC  // lwz r3, lbl_80539C7C@sda21(r0)
    addi r4, r4, fn_8004DF44@l
    bl fn_80075178
L_8004E250:
    lwz r0, 0x44(r1)
    lwz r31, 0x3c(r1)
    lwz r30, 0x38(r1)
    lwz r29, 0x34(r1)
    lwz r28, 0x30(r1)
    addi r1, r1, 0x40
    mtlr r0
    blr
}

ASM void fn_8004E270(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x20(r1)
    stw r31, 0x1c(r1)
    mr r31, r3
    lis r3, 0x8000
    stw r30, 0x18(r1)
    stw r29, 0x14(r1)
    srw r29, r3, r31
    opword  0x800D8A0C  // lwz r0, lbl_8053A5CC@sda21(r0)
    and. r0, r0, r29
    opword  0x418200F8  // beq .L_8004E394
    opword  0x80AD8A18  // lwz r5, lbl_8053A5D8@sda21(r0)
    nor r6, r29, r29
    opword  0x806D8A1C  // lwz r3, lbl_8053A5DC@sda21(r0)
    clrlwi. r0, r4, 28
    and r5, r5, r6
    and r3, r3, r6
    opword  0x90AD8A18  // stw r5, lbl_8053A5D8@sda21(r0)
    opword  0x906D8A1C  // stw r3, lbl_8053A5DC@sda21(r0)
    clrrwi r3, r4, 8
    opword  0x4082006C  // bne .L_8004E330
    clrrwi. r0, r3, 31
    opword  0x41820064  // beq .L_8004E330
    rlwinm. r0, r3, 0, 11, 11
    opword  0x4182005C  // beq .L_8004E330
    rlwinm. r0, r3, 0, 1, 1
    opword  0x41820054  // beq .L_8004E330
    rlwinm. r0, r3, 0, 5, 5
    opword  0x4082004C  // bne .L_8004E330
    rlwinm. r0, r3, 0, 12, 12
    opword  0x40820044  // bne .L_8004E330
    rlwinm. r0, r3, 0, 13, 13
    opword  0x4082003C  // bne .L_8004E330
    mulli r4, r31, 0xc
    lis r3, lbl_804B5B60@ha
    addi r0, r3, lbl_804B5B60@l
    lis r3, fn_8004DDA0@ha
    add r6, r0, r4
    addi r8, r3, fn_8004DDA0@l
    addi r3, r31, 0x0
    opword  0x388D80D0  // li r4, lbl_80539C90@sda21
    li r5, 0x1
    li r7, 0xa
    li r10, 0x0
    li r9, 0x0
    bl SITransfer
    opword  0x48000068  // b .L_8004E394
L_8004E330:
    bl OSDisableInterrupts
    addi r30, r3, 0x0
    addi r3, r29, 0x0
    bl fn_80074920
    opword  0x800D8A0C  // lwz r0, lbl_8053A5CC@sda21(r0)
    nor r9, r29, r29
    opword  0x80CD8A18  // lwz r6, lbl_8053A5D8@sda21(r0)
    mr r3, r31
    opword  0x80AD8A1C  // lwz r5, lbl_8053A5DC@sda21(r0)
    opword  0x808D8A20  // lwz r4, lbl_8053A5E0@sda21(r0)
    and r8, r0, r9
    opword  0x800D8A24  // lwz r0, lbl_8053A5E4@sda21(r0)
    and r7, r6, r9
    and r6, r5, r9
    and r5, r4, r9
    opword  0x910D8A0C  // stw r8, lbl_8053A5CC@sda21(r0)
    and r0, r0, r9
    opword  0x90ED8A18  // stw r7, lbl_8053A5D8@sda21(r0)
    li r4, 0x0
    opword  0x90CD8A1C  // stw r6, lbl_8053A5DC@sda21(r0)
    opword  0x90AD8A20  // stw r5, lbl_8053A5E0@sda21(r0)
    opword  0x900D8A24  // stw r0, lbl_8053A5E4@sda21(r0)
    bl OSSetWirelessID
    mr r3, r30
    bl OSRestoreInterrupts
L_8004E394:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    addi r1, r1, 0x20
    mtlr r0
    blr
}

ASM void fn_8004E3B0(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    stw r30, 0x10(r1)
    mr r30, r3
    bl OSDisableInterrupts
    opword  0x808D8A20  // lwz r4, lbl_8053A5E0@sda21(r0)
    li r8, 0x0
    opword  0x80AD8A18  // lwz r5, lbl_8053A5D8@sda21(r0)
    mr r31, r3
    opword  0x800D8A1C  // lwz r0, lbl_8053A5DC@sda21(r0)
    or r30, r30, r4
    opword  0x808D8A10  // lwz r4, lbl_8053A5D0@sda21(r0)
    or r5, r5, r0
    opword  0x800D80C8  // lwz r0, lbl_80539C88@sda21(r0)
    andc r30, r30, r5
    opword  0x80CD8A0C  // lwz r6, lbl_8053A5CC@sda21(r0)
    or r5, r4, r30
    opword  0x808D8A24  // lwz r4, lbl_8053A5E4@sda21(r0)
    nor r7, r30, r30
    opword  0x90AD8A10  // stw r5, lbl_8053A5D0@sda21(r0)
    and r5, r6, r7
    and r4, r4, r7
    opword  0x80ED8A10  // lwz r7, lbl_8053A5D0@sda21(r0)
    cmplwi r0, 0x4
    opword  0x910D8A20  // stw r8, lbl_8053A5E0@sda21(r0)
    and r3, r7, r6
    opword  0x90AD8A0C  // stw r5, lbl_8053A5CC@sda21(r0)
    opword  0x908D8A24  // stw r4, lbl_8053A5E4@sda21(r0)
    opword  0x40820010  // bne .L_8004E438
    opword  0x800D8A14  // lwz r0, lbl_8053A5D4@sda21(r0)
    or r0, r0, r30
    opword  0x900D8A14  // stw r0, lbl_8053A5D4@sda21(r0)
L_8004E438:
    bl fn_80074920
    opword  0x800D80BC  // lwz r0, lbl_80539C7C@sda21(r0)
    cmpwi r0, 0x20
    opword  0x40820058  // bne .L_8004E49C
    opword  0x80AD8A10  // lwz r5, lbl_8053A5D0@sda21(r0)
    cntlzw r0, r5
    opword  0x900D80BC  // stw r0, lbl_80539C7C@sda21(r0)
    opword  0x808D80BC  // lwz r4, lbl_80539C7C@sda21(r0)
    cmpwi r4, 0x20
    opword  0x41820040  // beq .L_8004E49C
    lis r0, 0x8000
    srw r0, r0, r4
    andc r0, r5, r0
    mulli r4, r4, 0xc
    opword  0x900D8A10  // stw r0, lbl_8053A5D0@sda21(r0)
    lis r3, lbl_804B5B60@ha
    addi r0, r3, lbl_804B5B60@l
    add r3, r0, r4
    li r4, 0x0
    li r5, 0xc
    bl memset
    lis r4, fn_8004DF44@ha
    opword  0x806D80BC  // lwz r3, lbl_80539C7C@sda21(r0)
    addi r4, r4, fn_8004DF44@l
    bl fn_80075178
L_8004E49C:
    mr r3, r31
    bl OSRestoreInterrupts
    lwz r0, 0x1c(r1)
    li r3, 0x1
    lwz r31, 0x14(r1)
    lwz r30, 0x10(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

ASM void fn_8004E4C0(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    stw r30, 0x10(r1)
    mr r30, r3
    bl OSDisableInterrupts
    opword  0x80AD8A20  // lwz r5, lbl_8053A5E0@sda21(r0)
    li r8, 0x0
    opword  0x80CD8A18  // lwz r6, lbl_8053A5D8@sda21(r0)
    lis r4, 0x8000
    opword  0x800D8A1C  // lwz r0, lbl_8053A5DC@sda21(r0)
    or r30, r30, r5
    opword  0x80AD8A10  // lwz r5, lbl_8053A5D0@sda21(r0)
    or r6, r6, r0
    lbz r0, 0x30e3(r4)
    andc r30, r30, r6
    opword  0x80CD8A0C  // lwz r6, lbl_8053A5CC@sda21(r0)
    or r5, r5, r30
    opword  0x808D8A24  // lwz r4, lbl_8053A5E4@sda21(r0)
    opword  0x90AD8A10  // stw r5, lbl_8053A5D0@sda21(r0)
    nor r9, r30, r30
    and r5, r6, r9
    and r4, r4, r9
    opword  0x80ED8A10  // lwz r7, lbl_8053A5D0@sda21(r0)
    mr r31, r3
    opword  0x910D8A20  // stw r8, lbl_8053A5E0@sda21(r0)
    rlwinm. r0, r0, 0, 25, 25
    opword  0x90AD8A0C  // stw r5, lbl_8053A5CC@sda21(r0)
    and r3, r7, r6
    opword  0x908D8A24  // stw r4, lbl_8053A5E4@sda21(r0)
    opword  0x40820010  // bne .L_8004E54C
    opword  0x800D8A14  // lwz r0, lbl_8053A5D4@sda21(r0)
    or r0, r0, r30
    opword  0x900D8A14  // stw r0, lbl_8053A5D4@sda21(r0)
L_8004E54C:
    bl fn_80074920
    opword  0x800D80BC  // lwz r0, lbl_80539C7C@sda21(r0)
    cmpwi r0, 0x20
    opword  0x40820058  // bne .L_8004E5B0
    opword  0x80AD8A10  // lwz r5, lbl_8053A5D0@sda21(r0)
    cntlzw r0, r5
    opword  0x900D80BC  // stw r0, lbl_80539C7C@sda21(r0)
    opword  0x808D80BC  // lwz r4, lbl_80539C7C@sda21(r0)
    cmpwi r4, 0x20
    opword  0x41820040  // beq .L_8004E5B0
    lis r0, 0x8000
    srw r0, r0, r4
    andc r0, r5, r0
    mulli r4, r4, 0xc
    opword  0x900D8A10  // stw r0, lbl_8053A5D0@sda21(r0)
    lis r3, lbl_804B5B60@ha
    addi r0, r3, lbl_804B5B60@l
    add r3, r0, r4
    li r4, 0x0
    li r5, 0xc
    bl memset
    lis r4, fn_8004DF44@ha
    opword  0x806D80BC  // lwz r3, lbl_80539C7C@sda21(r0)
    addi r4, r4, fn_8004DF44@l
    bl fn_80075178
L_8004E5B0:
    mr r3, r31
    bl OSRestoreInterrupts
    lwz r0, 0x1c(r1)
    li r3, 0x1
    lwz r31, 0x14(r1)
    lwz r30, 0x10(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

ASM void fn_8004E5D4(void)
{
    nofralloc
    mflr r0
    lis r3, lbl_804B5B50@ha
    stw r0, 0x4(r1)
    stwu r1, -0x38(r1)
    stmw r25, 0x1c(r1)
    addi r31, r3, lbl_804B5B50@l
    opword  0x800D8A08  // lwz r0, lbl_8053A5C8@sda21(r0)
    cmpwi r0, 0x0
    opword  0x4182000C  // beq .L_8004E600
    li r3, 0x1
    opword  0x48000114  // b .L_8004E710
L_8004E600:
    opword  0x806D80B8  // lwz r3, lbl_80539C78@sda21(r0)
    bl OSRegisterVersion
    opword  0x806D8A30  // lwz r3, __PADSpec@sda21(r0)
    cmplwi r3, 0x0
    opword  0x41820008  // beq .L_8004E618
    bl fn_8004EADC
L_8004E618:
    opword  0x800D8BC8  // lwz r0, lbl_8053A788@sda21(r0)
    li r3, 0x1
    opword  0x906D8A08  // stw r3, lbl_8053A5C8@sda21(r0)
    cmplwi r0, 0x0
    opword  0x4182008C  // beq .L_8004E6B4
    bl OSGetTime
    addi r25, r4, 0x0
    addi r26, r3, 0x0
    li r5, 0x10
    bl __shr2i
    lis r5, 0x1
    subi r27, r5, 0x1
    li r28, 0x0
    and r6, r4, r27
    and r4, r25, r27
    and r5, r3, r28
    and r0, r26, r28
    addc r29, r4, r6
    addi r3, r26, 0x0
    addi r4, r25, 0x0
    adde r30, r0, r5
    li r5, 0x20
    bl __shr2i
    and r4, r4, r27
    and r0, r3, r28
    addc r29, r4, r29
    addi r3, r26, 0x0
    addi r4, r25, 0x0
    adde r30, r0, r30
    li r5, 0x30
    bl __shr2i
    and r0, r4, r27
    addc r5, r0, r29
    lis r0, 0xf000
    li r4, 0x3fff
    opword  0x900D8A14  // stw r0, lbl_8053A5D4@sda21(r0)
    and r0, r5, r4
    lis r3, 0x8000
    sth r0, 0x30e0(r3)
L_8004E6B4:
    lis r3, 0x8000
    lhz r0, 0x30e0(r3)
    clrlslwi r0, r0, 18, 8
    oris r0, r0, 0x4d00
    stw r0, 0x40(r31)
    lhz r0, 0x30e0(r3)
    clrlslwi r0, r0, 18, 8
    oris r0, r0, 0x4d40
    stw r0, 0x44(r31)
    lhz r0, 0x30e0(r3)
    clrlslwi r0, r0, 18, 8
    oris r0, r0, 0x4d80
    stw r0, 0x48(r31)
    lhz r0, 0x30e0(r3)
    clrlslwi r0, r0, 18, 8
    oris r0, r0, 0x4dc0
    stw r0, 0x4c(r31)
    bl fn_80075508
    lis r3, lbl_80496800@ha
    addi r3, r3, lbl_80496800@l
    bl OSRegisterResetFunction
    lis r3, 0xf000
    bl fn_8004E3B0
L_8004E710:
    lmw r25, 0x1c(r1)
    lwz r0, 0x3c(r1)
    addi r1, r1, 0x38
    mtlr r0
    blr
}

ASM void fn_8004E724(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x40(r1)
    stmw r22, 0x18(r1)
    mr r23, r3
    bl OSDisableInterrupts
    li r25, 0x0
    mulli r5, r25, 0xc
    lis r4, lbl_804B5B60@ha
    addi r0, r4, lbl_804B5B60@l
    add r28, r0, r5
    lis r4, fn_8004DDA0@ha
    lis r5, fn_8004E270@ha
    addi r26, r3, 0x0
    addi r22, r4, fn_8004DDA0@l
    addi r31, r5, fn_8004E270@l
    li r24, 0x0
    lis r30, 0x8000
L_8004E76C:
    opword  0x800D8A20  // lwz r0, lbl_8053A5E0@sda21(r0)
    srw r27, r30, r25
    and. r0, r0, r27
    opword  0x41820028  // beq .L_8004E7A0
    li r3, 0x0
    bl fn_8004E3B0
    li r0, -0x2
    stb r0, 0xa(r23)
    addi r3, r23, 0x0
    li r4, 0x0
    li r5, 0xa
    bl memset
    opword  0x48000254  // b .L_8004E9F0
L_8004E7A0:
    opword  0x800D8A10  // lwz r0, lbl_8053A5D0@sda21(r0)
    and. r0, r0, r27
    opword  0x40820010  // bne .L_8004E7B8
    opword  0x800D80BC  // lwz r0, lbl_80539C7C@sda21(r0)
    cmpw r0, r25
    opword  0x40820020  // bne .L_8004E7D4
L_8004E7B8:
    li r0, -0x2
    stb r0, 0xa(r23)
    addi r3, r23, 0x0
    li r4, 0x0
    li r5, 0xa
    bl memset
    opword  0x48000220  // b .L_8004E9F0
L_8004E7D4:
    opword  0x800D8A0C  // lwz r0, lbl_8053A5CC@sda21(r0)
    and. r0, r0, r27
    opword  0x40820020  // bne .L_8004E7FC
    li r0, -0x1
    stb r0, 0xa(r23)
    addi r3, r23, 0x0
    li r4, 0x0
    li r5, 0xa
    bl memset
    opword  0x480001F8  // b .L_8004E9F0
L_8004E7FC:
    mr r3, r25
    bl fn_80073BE4
    cmpwi r3, 0x0
    opword  0x41820020  // beq .L_8004E828
    li r0, -0x3
    stb r0, 0xa(r23)
    addi r3, r23, 0x0
    li r4, 0x0
    li r5, 0xa
    bl memset
    opword  0x480001CC  // b .L_8004E9F0
L_8004E828:
    mr r3, r25
    bl fn_80074778
    rlwinm. r0, r3, 0, 28, 28
    opword  0x418200D8  // beq .L_8004E90C
    addi r3, r25, 0x0
    addi r4, r1, 0x10
    bl fn_80074A60
    opword  0x800D8A18  // lwz r0, lbl_8053A5D8@sda21(r0)
    and. r0, r0, r27
    opword  0x41820040  // beq .L_8004E88C
    li r0, 0x0
    stb r0, 0xa(r23)
    addi r3, r23, 0x0
    li r4, 0x0
    li r5, 0xa
    bl memset
    opword  0x806D8A1C  // lwz r3, lbl_8053A5DC@sda21(r0)
    and. r0, r3, r27
    opword  0x40820180  // bne .L_8004E9F0
    or r0, r3, r27
    opword  0x900D8A1C  // stw r0, lbl_8053A5DC@sda21(r0)
    addi r3, r25, 0x0
    addi r4, r31, 0x0
    bl fn_80075178
    opword  0x48000168  // b .L_8004E9F0
L_8004E88C:
    bl OSDisableInterrupts
    addi r29, r3, 0x0
    addi r3, r27, 0x0
    bl fn_80074920
    opword  0x800D8A0C  // lwz r0, lbl_8053A5CC@sda21(r0)
    nor r9, r27, r27
    opword  0x80CD8A18  // lwz r6, lbl_8053A5D8@sda21(r0)
    mr r3, r25
    opword  0x80AD8A1C  // lwz r5, lbl_8053A5DC@sda21(r0)
    opword  0x808D8A20  // lwz r4, lbl_8053A5E0@sda21(r0)
    and r8, r0, r9
    opword  0x800D8A24  // lwz r0, lbl_8053A5E4@sda21(r0)
    and r7, r6, r9
    and r6, r5, r9
    and r5, r4, r9
    opword  0x910D8A0C  // stw r8, lbl_8053A5CC@sda21(r0)
    and r0, r0, r9
    opword  0x90ED8A18  // stw r7, lbl_8053A5D8@sda21(r0)
    li r4, 0x0
    opword  0x90CD8A1C  // stw r6, lbl_8053A5DC@sda21(r0)
    opword  0x90AD8A20  // stw r5, lbl_8053A5E0@sda21(r0)
    opword  0x900D8A24  // stw r0, lbl_8053A5E4@sda21(r0)
    bl OSSetWirelessID
    mr r3, r29
    bl OSRestoreInterrupts
    li r0, -0x1
    stb r0, 0xa(r23)
    addi r3, r23, 0x0
    li r4, 0x0
    li r5, 0xa
    bl memset
    opword  0x480000E8  // b .L_8004E9F0
L_8004E90C:
    mr r3, r25
    bl SIGetType
    rlwinm. r0, r3, 0, 2, 2
    opword  0x40820008  // bne .L_8004E920
    or r24, r24, r27
L_8004E920:
    addi r3, r25, 0x0
    addi r4, r1, 0x10
    bl fn_80074A60
    cmpwi r3, 0x0
    opword  0x40820020  // bne .L_8004E950
    li r0, -0x3
    stb r0, 0xa(r23)
    addi r3, r23, 0x0
    li r4, 0x0
    li r5, 0xa
    bl memset
    opword  0x480000A4  // b .L_8004E9F0
L_8004E950:
    lwz r0, 0x10(r1)
    clrrwi. r0, r0, 31
    opword  0x41820020  // beq .L_8004E978
    li r0, -0x3
    stb r0, 0xa(r23)
    addi r3, r23, 0x0
    li r4, 0x0
    li r5, 0xa
    bl memset
    opword  0x4800007C  // b .L_8004E9F0
L_8004E978:
    opword  0x818D80CC  // lwz r12, lbl_80539C8C@sda21(r0)
    addi r3, r25, 0x0
    addi r4, r23, 0x0
    mtlr r12
    addi r5, r1, 0x10
    blrl
    lhz r0, 0x0(r23)
    rlwinm. r0, r0, 0, 18, 18
    opword  0x41820044  // beq .L_8004E9DC
    li r0, -0x3
    stb r0, 0xa(r23)
    addi r3, r23, 0x0
    li r4, 0x0
    li r5, 0xa
    bl memset
    addi r3, r25, 0x0
    addi r6, r28, 0x0
    addi r8, r22, 0x0
    opword  0x388D80D0  // li r4, lbl_80539C90@sda21
    li r5, 0x1
    li r7, 0xa
    li r10, 0x0
    li r9, 0x0
    bl SITransfer
    opword  0x48000018  // b .L_8004E9F0
L_8004E9DC:
    li r0, 0x0
    stb r0, 0xa(r23)
    lhz r0, 0x0(r23)
    rlwinm r0, r0, 0, 25, 23
    sth r0, 0x0(r23)
L_8004E9F0:
    addi r25, r25, 0x1
    cmpwi r25, 0x4
    addi r28, r28, 0xc
    addi r23, r23, 0xc
    opword  0x4180FD6C  // blt .L_8004E76C
    mr r3, r26
    bl OSRestoreInterrupts
    mr r3, r24
    lmw r22, 0x18(r1)
    lwz r0, 0x44(r1)
    addi r1, r1, 0x40
    mtlr r0
    blr
}

ASM void fn_8004EA24(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x28(r1)
    stw r31, 0x24(r1)
    stw r30, 0x20(r1)
    addi r30, r4, 0x0
    stw r29, 0x1c(r1)
    addi r29, r3, 0x0
    bl OSDisableInterrupts
    lis r0, 0x8000
    opword  0x808D8A0C  // lwz r4, lbl_8053A5CC@sda21(r0)
    srw r0, r0, r29
    and. r0, r4, r0
    addi r31, r3, 0x0
    opword  0x4182005C  // beq .L_8004EAB8
    mr r3, r29
    bl SIGetType
    rlwinm. r0, r3, 0, 2, 2
    opword  0x4082004C  // bne .L_8004EAB8
    opword  0x800D80C8  // lwz r0, lbl_80539C88@sda21(r0)
    cmplwi r0, 0x2
    opword  0x40800010  // bge .L_8004EA88
    cmplwi r30, 0x2
    opword  0x40820008  // bne .L_8004EA88
    li r30, 0x0
L_8004EA88:
    lis r3, 0x8000
    lbz r0, 0x30e3(r3)
    rlwinm. r0, r0, 0, 26, 26
    opword  0x41820008  // beq .L_8004EA9C
    li r30, 0x0
L_8004EA9C:
    opword  0x808D80C4  // lwz r4, lbl_80539C84@sda21(r0)
    clrlwi r0, r30, 30
    addi r3, r29, 0x0
    oris r4, r4, 0x40
    or r4, r4, r0
    bl fn_800747F4
    bl fn_80074808
L_8004EAB8:
    mr r3, r31
    bl OSRestoreInterrupts
    lwz r0, 0x2c(r1)
    lwz r31, 0x24(r1)
    lwz r30, 0x20(r1)
    lwz r29, 0x1c(r1)
    addi r1, r1, 0x28
    mtlr r0
    blr
}

ASM void fn_8004EADC(void)
{
    nofralloc
    li r0, 0x0
    cmpwi r3, 0x1
    opword  0x900D8A30  // stw r0, __PADSpec@sda21(r0)
    opword  0x41820030  // beq .L_8004EB18
    opword  0x40800010  // bge .L_8004EAFC
    cmpwi r3, 0x0
    opword  0x40800014  // bge .L_8004EB08
    opword  0x4800003C  // b .L_8004EB34
L_8004EAFC:
    cmpwi r3, 0x6
    opword  0x40800034  // bge .L_8004EB34
    opword  0x48000024  // b .L_8004EB28
L_8004EB08:
    lis r4, fn_8004EB3C@ha
    addi r0, r4, fn_8004EB3C@l
    opword  0x900D80CC  // stw r0, lbl_80539C8C@sda21(r0)
    opword  0x48000020  // b .L_8004EB34
L_8004EB18:
    lis r4, fn_8004ECB0@ha
    addi r0, r4, fn_8004ECB0@l
    opword  0x900D80CC  // stw r0, lbl_80539C8C@sda21(r0)
    opword  0x48000010  // b .L_8004EB34
L_8004EB28:
    lis r4, fn_8004EE24@ha
    addi r0, r4, fn_8004EE24@l
    opword  0x900D80CC  // stw r0, lbl_80539C8C@sda21(r0)
L_8004EB34:
    opword  0x906D80C8  // stw r3, lbl_80539C88@sda21(r0)
    blr
}

ASM void fn_8004EB3C(void)
{
    nofralloc
    li r3, 0x0
    sth r3, 0x0(r4)
    lwz r0, 0x0(r5)
    rlwinm. r0, r0, 16, 28, 28
    opword  0x41820008  // beq .L_8004EB54
    li r3, 0x100
L_8004EB54:
    lhz r0, 0x0(r4)
    or r0, r0, r3
    sth r0, 0x0(r4)
    lwz r0, 0x0(r5)
    rlwinm. r0, r0, 16, 26, 26
    opword  0x4182000C  // beq .L_8004EB74
    li r3, 0x200
    opword  0x48000008  // b .L_8004EB78
L_8004EB74:
    li r3, 0x0
L_8004EB78:
    lhz r0, 0x0(r4)
    or r0, r0, r3
    sth r0, 0x0(r4)
    lwz r0, 0x0(r5)
    rlwinm. r0, r0, 16, 23, 23
    opword  0x4182000C  // beq .L_8004EB98
    li r3, 0x400
    opword  0x48000008  // b .L_8004EB9C
L_8004EB98:
    li r3, 0x0
L_8004EB9C:
    lhz r0, 0x0(r4)
    or r0, r0, r3
    sth r0, 0x0(r4)
    lwz r0, 0x0(r5)
    extrwi. r0, r0, 1, 15
    opword  0x4182000C  // beq .L_8004EBBC
    li r3, 0x800
    opword  0x48000008  // b .L_8004EBC0
L_8004EBBC:
    li r3, 0x0
L_8004EBC0:
    lhz r0, 0x0(r4)
    or r0, r0, r3
    sth r0, 0x0(r4)
    lwz r0, 0x0(r5)
    rlwinm. r0, r0, 16, 27, 27
    opword  0x4182000C  // beq .L_8004EBE0
    li r6, 0x1000
    opword  0x48000008  // b .L_8004EBE4
L_8004EBE0:
    li r6, 0x0
L_8004EBE4:
    lhz r3, 0x0(r4)
    li r0, 0x0
    or r3, r3, r6
    sth r3, 0x0(r4)
    lwz r3, 0x4(r5)
    srwi r3, r3, 16
    extsb r3, r3
    stb r3, 0x2(r4)
    lwz r3, 0x4(r5)
    srwi r3, r3, 24
    extsb r3, r3
    stb r3, 0x3(r4)
    lwz r3, 0x4(r5)
    extsb r3, r3
    stb r3, 0x4(r4)
    lwz r3, 0x4(r5)
    srwi r3, r3, 8
    extsb r3, r3
    stb r3, 0x5(r4)
    lwz r3, 0x0(r5)
    extrwi r3, r3, 8, 16
    stb r3, 0x6(r4)
    lwz r3, 0x0(r5)
    stb r3, 0x7(r4)
    stb r0, 0x8(r4)
    stb r0, 0x9(r4)
    lbz r0, 0x6(r4)
    cmplwi r0, 0xaa
    opword  0x41800010  // blt .L_8004EC64
    lhz r0, 0x0(r4)
    ori r0, r0, 0x40
    sth r0, 0x0(r4)
L_8004EC64:
    lbz r0, 0x7(r4)
    cmplwi r0, 0xaa
    opword  0x41800010  // blt .L_8004EC7C
    lhz r0, 0x0(r4)
    ori r0, r0, 0x20
    sth r0, 0x0(r4)
L_8004EC7C:
    lbz r3, 0x2(r4)
    subi r0, r3, 0x80
    stb r0, 0x2(r4)
    lbz r3, 0x3(r4)
    subi r0, r3, 0x80
    stb r0, 0x3(r4)
    lbz r3, 0x4(r4)
    subi r0, r3, 0x80
    stb r0, 0x4(r4)
    lbz r3, 0x5(r4)
    subi r0, r3, 0x80
    stb r0, 0x5(r4)
    blr
}

ASM void fn_8004ECB0(void)
{
    nofralloc
    li r3, 0x0
    sth r3, 0x0(r4)
    lwz r0, 0x0(r5)
    rlwinm. r0, r0, 16, 24, 24
    opword  0x41820008  // beq .L_8004ECC8
    li r3, 0x100
L_8004ECC8:
    lhz r0, 0x0(r4)
    or r0, r0, r3
    sth r0, 0x0(r4)
    lwz r0, 0x0(r5)
    rlwinm. r0, r0, 16, 23, 23
    opword  0x4182000C  // beq .L_8004ECE8
    li r3, 0x200
    opword  0x48000008  // b .L_8004ECEC
L_8004ECE8:
    li r3, 0x0
L_8004ECEC:
    lhz r0, 0x0(r4)
    or r0, r0, r3
    sth r0, 0x0(r4)
    lwz r0, 0x0(r5)
    rlwinm. r0, r0, 16, 26, 26
    opword  0x4182000C  // beq .L_8004ED0C
    li r3, 0x400
    opword  0x48000008  // b .L_8004ED10
L_8004ED0C:
    li r3, 0x0
L_8004ED10:
    lhz r0, 0x0(r4)
    or r0, r0, r3
    sth r0, 0x0(r4)
    lwz r0, 0x0(r5)
    rlwinm. r0, r0, 16, 27, 27
    opword  0x4182000C  // beq .L_8004ED30
    li r3, 0x800
    opword  0x48000008  // b .L_8004ED34
L_8004ED30:
    li r3, 0x0
L_8004ED34:
    lhz r0, 0x0(r4)
    or r0, r0, r3
    sth r0, 0x0(r4)
    lwz r0, 0x0(r5)
    rlwinm. r0, r0, 16, 22, 22
    opword  0x4182000C  // beq .L_8004ED54
    li r6, 0x1000
    opword  0x48000008  // b .L_8004ED58
L_8004ED54:
    li r6, 0x0
L_8004ED58:
    lhz r3, 0x0(r4)
    li r0, 0x0
    or r3, r3, r6
    sth r3, 0x0(r4)
    lwz r3, 0x4(r5)
    srwi r3, r3, 16
    extsb r3, r3
    stb r3, 0x2(r4)
    lwz r3, 0x4(r5)
    srwi r3, r3, 24
    extsb r3, r3
    stb r3, 0x3(r4)
    lwz r3, 0x4(r5)
    extsb r3, r3
    stb r3, 0x4(r4)
    lwz r3, 0x4(r5)
    srwi r3, r3, 8
    extsb r3, r3
    stb r3, 0x5(r4)
    lwz r3, 0x0(r5)
    extrwi r3, r3, 8, 16
    stb r3, 0x6(r4)
    lwz r3, 0x0(r5)
    stb r3, 0x7(r4)
    stb r0, 0x8(r4)
    stb r0, 0x9(r4)
    lbz r0, 0x6(r4)
    cmplwi r0, 0xaa
    opword  0x41800010  // blt .L_8004EDD8
    lhz r0, 0x0(r4)
    ori r0, r0, 0x40
    sth r0, 0x0(r4)
L_8004EDD8:
    lbz r0, 0x7(r4)
    cmplwi r0, 0xaa
    opword  0x41800010  // blt .L_8004EDF0
    lhz r0, 0x0(r4)
    ori r0, r0, 0x20
    sth r0, 0x0(r4)
L_8004EDF0:
    lbz r3, 0x2(r4)
    subi r0, r3, 0x80
    stb r0, 0x2(r4)
    lbz r3, 0x3(r4)
    subi r0, r3, 0x80
    stb r0, 0x3(r4)
    lbz r3, 0x4(r4)
    subi r0, r3, 0x80
    stb r0, 0x4(r4)
    lbz r3, 0x5(r4)
    subi r0, r3, 0x80
    stb r0, 0x5(r4)
    blr
}

ASM void fn_8004EE24(void)
{
    nofralloc
    lwz r0, 0x0(r5)
    extrwi r0, r0, 14, 2
    sth r0, 0x0(r4)
    lwz r0, 0x0(r5)
    srwi r0, r0, 8
    extsb r0, r0
    stb r0, 0x2(r4)
    lwz r0, 0x0(r5)
    extsb r0, r0
    stb r0, 0x3(r4)
    opword  0x800D80C4  // lwz r0, lbl_80539C84@sda21(r0)
    rlwinm r0, r0, 0, 21, 23
    cmpwi r0, 0x400
    opword  0x41820198  // beq .L_8004EFF0
    opword  0x40800034  // bge .L_8004EE90
    cmpwi r0, 0x200
    opword  0x418200F8  // beq .L_8004EF5C
    opword  0x4080001C  // bge .L_8004EE84
    cmpwi r0, 0x100
    opword  0x41820098  // beq .L_8004EF08
    opword  0x408001BC  // bge .L_8004F030
    cmpwi r0, 0x0
    opword  0x41820038  // beq .L_8004EEB4
    opword  0x480001B0  // b .L_8004F030
L_8004EE84:
    cmpwi r0, 0x300
    opword  0x41820124  // beq .L_8004EFAC
    opword  0x480001A4  // b .L_8004F030
L_8004EE90:
    cmpwi r0, 0x600
    opword  0x41820020  // beq .L_8004EEB4
    opword  0x40800010  // bge .L_8004EEA8
    cmpwi r0, 0x500
    opword  0x41820014  // beq .L_8004EEB4
    opword  0x4800018C  // b .L_8004F030
L_8004EEA8:
    cmpwi r0, 0x700
    opword  0x41820008  // beq .L_8004EEB4
    opword  0x48000180  // b .L_8004F030
L_8004EEB4:
    lwz r0, 0x4(r5)
    srwi r0, r0, 24
    extsb r0, r0
    stb r0, 0x4(r4)
    lwz r0, 0x4(r5)
    srwi r0, r0, 16
    extsb r0, r0
    stb r0, 0x5(r4)
    lwz r0, 0x4(r5)
    rlwinm r0, r0, 24, 24, 27
    stb r0, 0x6(r4)
    lwz r0, 0x4(r5)
    rlwinm r0, r0, 28, 24, 27
    stb r0, 0x7(r4)
    lwz r0, 0x4(r5)
    rlwinm r0, r0, 0, 24, 27
    stb r0, 0x8(r4)
    lwz r0, 0x4(r5)
    clrlslwi r0, r0, 28, 4
    stb r0, 0x9(r4)
    opword  0x4800012C  // b .L_8004F030
L_8004EF08:
    lwz r0, 0x4(r5)
    rlwinm r0, r0, 8, 24, 27
    extsb r0, r0
    stb r0, 0x4(r4)
    lwz r0, 0x4(r5)
    rlwinm r0, r0, 12, 24, 27
    extsb r0, r0
    stb r0, 0x5(r4)
    lwz r0, 0x4(r5)
    extrwi r0, r0, 8, 8
    stb r0, 0x6(r4)
    lwz r0, 0x4(r5)
    extrwi r0, r0, 8, 16
    stb r0, 0x7(r4)
    lwz r0, 0x4(r5)
    rlwinm r0, r0, 0, 24, 27
    stb r0, 0x8(r4)
    lwz r0, 0x4(r5)
    clrlslwi r0, r0, 28, 4
    stb r0, 0x9(r4)
    opword  0x480000D8  // b .L_8004F030
L_8004EF5C:
    lwz r0, 0x4(r5)
    rlwinm r0, r0, 8, 24, 27
    extsb r0, r0
    stb r0, 0x4(r4)
    lwz r0, 0x4(r5)
    rlwinm r0, r0, 12, 24, 27
    extsb r0, r0
    stb r0, 0x5(r4)
    lwz r0, 0x4(r5)
    rlwinm r0, r0, 16, 24, 27
    stb r0, 0x6(r4)
    lwz r0, 0x4(r5)
    rlwinm r0, r0, 20, 24, 27
    stb r0, 0x7(r4)
    lwz r0, 0x4(r5)
    extrwi r0, r0, 8, 16
    stb r0, 0x8(r4)
    lwz r0, 0x4(r5)
    stb r0, 0x9(r4)
    opword  0x48000088  // b .L_8004F030
L_8004EFAC:
    lwz r6, 0x4(r5)
    li r0, 0x0
    srwi r6, r6, 24
    extsb r6, r6
    stb r6, 0x4(r4)
    lwz r6, 0x4(r5)
    srwi r6, r6, 16
    extsb r6, r6
    stb r6, 0x5(r4)
    lwz r6, 0x4(r5)
    extrwi r6, r6, 8, 16
    stb r6, 0x6(r4)
    lwz r5, 0x4(r5)
    stb r5, 0x7(r4)
    stb r0, 0x8(r4)
    stb r0, 0x9(r4)
    opword  0x48000044  // b .L_8004F030
L_8004EFF0:
    lwz r6, 0x4(r5)
    li r0, 0x0
    srwi r6, r6, 24
    extsb r6, r6
    stb r6, 0x4(r4)
    lwz r6, 0x4(r5)
    srwi r6, r6, 16
    extsb r6, r6
    stb r6, 0x5(r4)
    stb r0, 0x6(r4)
    stb r0, 0x7(r4)
    lwz r0, 0x4(r5)
    extrwi r0, r0, 8, 16
    stb r0, 0x8(r4)
    lwz r0, 0x4(r5)
    stb r0, 0x9(r4)
L_8004F030:
    lbz r7, 0x2(r4)
    lis r5, lbl_804B5B50@ha
    slwi r6, r3, 2
    subi r0, r7, 0x80
    stb r0, 0x2(r4)
    addi r0, r5, lbl_804B5B50@l
    add r5, r0, r6
    lbz r6, 0x3(r4)
    subi r0, r6, 0x80
    stb r0, 0x3(r4)
    lbz r6, 0x4(r4)
    subi r0, r6, 0x80
    stb r0, 0x4(r4)
    lbz r6, 0x5(r4)
    subi r0, r6, 0x80
    stb r0, 0x5(r4)
    lwz r0, 0x0(r5)
    clrrwi r5, r0, 16
    subis r0, r5, 0x900
    cmplwi r0, 0x0
    opword  0x40820044  // bne .L_8004F0C4
    lhz r0, 0x0(r4)
    rlwinm r0, r0, 0, 24, 24
    xori r0, r0, 0x80
    cmpwi r0, 0x0
    opword  0x41820030  // beq .L_8004F0C4
    lis r0, 0x8000
    opword  0x80AD8A24  // lwz r5, lbl_8053A5E4@sda21(r0)
    srw r0, r0, r3
    or r0, r5, r0
    opword  0x900D8A24  // stw r0, lbl_8053A5E4@sda21(r0)
    li r0, 0x0
    stb r0, 0x2(r4)
    stb r0, 0x3(r4)
    stb r0, 0x4(r4)
    stb r0, 0x5(r4)
    blr
L_8004F0C4:
    lis r0, 0x8000
    opword  0x80AD8A24  // lwz r5, lbl_8053A5E4@sda21(r0)
    srw r0, r0, r3
    andc r0, r5, r0
    opword  0x900D8A24  // stw r0, lbl_8053A5E4@sda21(r0)
    lis r5, lbl_804B5B60@ha
    mulli r3, r3, 0xc
    lbz r6, 0x2(r4)
    addi r0, r5, lbl_804B5B60@l
    add r3, r0, r3
    lbz r7, 0x2(r3)
    extsb. r0, r7
    opword  0x40810024  // ble .L_8004F118
    extsb r5, r7
    subi r0, r5, 0x80
    extsb r5, r0
    extsb r0, r6
    cmpw r0, r5
    opword  0x40800030  // bge .L_8004F13C
    mr r6, r5
    opword  0x48000028  // b .L_8004F13C
L_8004F118:
    extsb. r0, r7
    opword  0x40800020  // bge .L_8004F13C
    extsb r5, r7
    addi r0, r5, 0x7f
    extsb r5, r0
    extsb r0, r6
    cmpw r5, r0
    opword  0x40800008  // bge .L_8004F13C
    mr r6, r5
L_8004F13C:
    subf r6, r7, r6
    stb r6, 0x2(r4)
    lbz r7, 0x3(r3)
    lbz r6, 0x3(r4)
    extsb. r0, r7
    opword  0x40810024  // ble .L_8004F174
    extsb r5, r7
    subi r0, r5, 0x80
    extsb r5, r0
    extsb r0, r6
    cmpw r0, r5
    opword  0x40800030  // bge .L_8004F198
    mr r6, r5
    opword  0x48000028  // b .L_8004F198
L_8004F174:
    extsb. r0, r7
    opword  0x40800020  // bge .L_8004F198
    extsb r5, r7
    addi r0, r5, 0x7f
    extsb r5, r0
    extsb r0, r6
    cmpw r5, r0
    opword  0x40800008  // bge .L_8004F198
    mr r6, r5
L_8004F198:
    subf r6, r7, r6
    stb r6, 0x3(r4)
    lbz r7, 0x4(r3)
    lbz r6, 0x4(r4)
    extsb. r0, r7
    opword  0x40810024  // ble .L_8004F1D0
    extsb r5, r7
    subi r0, r5, 0x80
    extsb r5, r0
    extsb r0, r6
    cmpw r0, r5
    opword  0x40800030  // bge .L_8004F1F4
    mr r6, r5
    opword  0x48000028  // b .L_8004F1F4
L_8004F1D0:
    extsb. r0, r7
    opword  0x40800020  // bge .L_8004F1F4
    extsb r5, r7
    addi r0, r5, 0x7f
    extsb r5, r0
    extsb r0, r6
    cmpw r5, r0
    opword  0x40800008  // bge .L_8004F1F4
    mr r6, r5
L_8004F1F4:
    subf r6, r7, r6
    stb r6, 0x4(r4)
    lbz r7, 0x5(r3)
    lbz r6, 0x5(r4)
    extsb. r0, r7
    opword  0x40810024  // ble .L_8004F22C
    extsb r5, r7
    subi r0, r5, 0x80
    extsb r5, r0
    extsb r0, r6
    cmpw r0, r5
    opword  0x40800030  // bge .L_8004F250
    mr r6, r5
    opword  0x48000028  // b .L_8004F250
L_8004F22C:
    extsb. r0, r7
    opword  0x40800020  // bge .L_8004F250
    extsb r5, r7
    addi r0, r5, 0x7f
    extsb r5, r0
    extsb r0, r6
    cmpw r5, r0
    opword  0x40800008  // bge .L_8004F250
    mr r6, r5
L_8004F250:
    subf r6, r7, r6
    stb r6, 0x5(r4)
    lbz r0, 0x6(r3)
    lbz r5, 0x6(r4)
    cmplw r5, r0
    opword  0x40800008  // bge .L_8004F26C
    mr r5, r0
L_8004F26C:
    subf r5, r0, r5
    stb r5, 0x6(r4)
    lbz r0, 0x7(r3)
    lbz r3, 0x7(r4)
    cmplw r3, r0
    opword  0x40800008  // bge .L_8004F288
    mr r3, r0
L_8004F288:
    subf r3, r0, r3
    stb r3, 0x7(r4)
    blr
}

ASM void fn_8004F294(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    mr r31, r3
    bl OSDisableInterrupts
    opword  0x80AD8A0C  // lwz r5, lbl_8053A5CC@sda21(r0)
    slwi r6, r31, 8
    opword  0x808D8A18  // lwz r4, lbl_8053A5D8@sda21(r0)
    mr r31, r3
    addi r8, r5, 0x0
    nor r7, r8, r8
    opword  0x800D8A1C  // lwz r0, lbl_8053A5DC@sda21(r0)
    andc r5, r5, r5
    opword  0x90CD80C4  // stw r6, lbl_80539C84@sda21(r0)
    and r4, r4, r7
    and r0, r0, r7
    opword  0x90AD8A0C  // stw r5, lbl_8053A5CC@sda21(r0)
    mr r3, r8
    opword  0x908D8A18  // stw r4, lbl_8053A5D8@sda21(r0)
    opword  0x900D8A1C  // stw r0, lbl_8053A5DC@sda21(r0)
    bl fn_80074920
    mr r3, r31
    bl OSRestoreInterrupts
    lwz r0, 0x1c(r1)
    lwz r31, 0x14(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

ASM void fn_8004F308(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x20(r1)
    stw r31, 0x1c(r1)
    addi r31, r3, 0x0
    opword  0x800D8A28  // lwz r0, lbl_8053A5E8@sda21(r0)
    cmplwi r0, 0x0
    opword  0x4182000C  // beq .L_8004F330
    li r3, 0x0
    bl fn_8004F424
L_8004F330:
    cmpwi r31, 0x0
    opword  0x40820070  // bne .L_8004F3A4
    opword  0x800D8A10  // lwz r0, lbl_8053A5D0@sda21(r0)
    li r31, 0x0
    addi r3, r31, 0x0
    cmplwi r0, 0x0
    opword  0x40820014  // bne .L_8004F35C
    opword  0x800D80BC  // lwz r0, lbl_80539C7C@sda21(r0)
    cmpwi r0, 0x20
    opword  0x40820008  // bne .L_8004F35C
    li r3, 0x1
L_8004F35C:
    cmpwi r3, 0x0
    opword  0x41820014  // beq .L_8004F374
    bl fn_80073BC4
    cmpwi r3, 0x0
    opword  0x40820008  // bne .L_8004F374
    li r31, 0x1
L_8004F374:
    opword  0x800D8A2C  // lwz r0, lbl_8053A5EC@sda21(r0)
    cmpwi r0, 0x0
    opword  0x40820020  // bne .L_8004F39C
    cmpwi r31, 0x0
    opword  0x41820018  // beq .L_8004F39C
    lis r3, 0xf000
    bl fn_8004E4C0
    opword  0x906D8A2C  // stw r3, lbl_8053A5EC@sda21(r0)
    li r3, 0x0
    opword  0x48000018  // b .L_8004F3B0
L_8004F39C:
    mr r3, r31
    opword  0x48000010  // b .L_8004F3B0
L_8004F3A4:
    li r0, 0x0
    opword  0x900D8A2C  // stw r0, lbl_8053A5EC@sda21(r0)
    li r3, 0x1
L_8004F3B0:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    addi r1, r1, 0x20
    mtlr r0
    blr
}

ASM void fn_8004F3C4(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x2e0(r1)
    stw r31, 0x2dc(r1)
    addi r31, r4, 0x0
    opword  0x800D8A28  // lwz r0, lbl_8053A5E8@sda21(r0)
    cmplwi r0, 0x0
    opword  0x41820030  // beq .L_8004F410
    addi r3, r1, 0x10
    bl OSClearContext
    addi r3, r1, 0x10
    bl OSSetCurrentContext
    opword  0x818D8A28  // lwz r12, lbl_8053A5E8@sda21(r0)
    mtlr r12
    blrl
    addi r3, r1, 0x10
    bl OSClearContext
    mr r3, r31
    bl OSSetCurrentContext
L_8004F410:
    lwz r0, 0x2e4(r1)
    lwz r31, 0x2dc(r1)
    addi r1, r1, 0x2e0
    mtlr r0
    blr
}

ASM void fn_8004F424(void)
{
    nofralloc
    mflr r0
    cmplwi r3, 0x0
    stw r0, 0x4(r1)
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    opword  0x83ED8A28  // lwz r31, lbl_8053A5E8@sda21(r0)
    opword  0x906D8A28  // stw r3, lbl_8053A5E8@sda21(r0)
    opword  0x41820014  // beq .L_8004F454
    lis r3, fn_8004F3C4@ha
    addi r3, r3, fn_8004F3C4@l
    bl fn_800742F8
    opword  0x48000010  // b .L_8004F460
L_8004F454:
    lis r3, fn_8004F3C4@ha
    addi r3, r3, fn_8004F3C4@l
    bl fn_800743C4
L_8004F460:
    mr r3, r31
    lwz r0, 0x1c(r1)
    lwz r31, 0x14(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

ASM void __PADDisableRecalibration(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    stw r30, 0x10(r1)
    mr r30, r3
    bl OSDisableInterrupts
    lis r4, 0x8000
    lbz r0, 0x30e3(r4)
    rlwinm. r0, r0, 0, 25, 25
    opword  0x4182000C  // beq .L_8004F4AC
    li r31, 0x1
    opword  0x48000008  // b .L_8004F4B0
L_8004F4AC:
    li r31, 0x0
L_8004F4B0:
    lis r4, 0x8000
    lbz r0, 0x30e3(r4)
    cmpwi r30, 0x0
    rlwinm r0, r0, 0, 26, 24
    stb r0, 0x30e3(r4)
    opword  0x41820010  // beq .L_8004F4D4
    lbz r0, 0x30e3(r4)
    ori r0, r0, 0x40
    stb r0, 0x30e3(r4)
L_8004F4D4:
    bl OSRestoreInterrupts
    mr r3, r31
    lwz r0, 0x1c(r1)
    lwz r31, 0x14(r1)
    lwz r30, 0x10(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

ASM void fn_8004F4F4(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    stw r30, 0x10(r1)
    mr r30, r3
    opword  0x83ED8A3C  // lwz r31, lbl_8053A5FC@sda21(r0)
    bl OSDisableInterrupts
    opword  0x93CD8A3C  // stw r30, lbl_8053A5FC@sda21(r0)
    bl OSRestoreInterrupts
    mr r3, r31
    lwz r0, 0x1c(r1)
    lwz r31, 0x14(r1)
    lwz r30, 0x10(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

ASM void fn_8004F538(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    addi r31, r4, 0x0
    stw r30, 0x10(r1)
    addi r30, r3, 0x0
    bl OSDisableInterrupts
    lis r4, 0xcc00
    lhz r0, 0x5030(r4)
    addi r5, r4, 0x5000
    addi r6, r4, 0x5000
    addi r7, r4, 0x5000
    clrrwi r4, r0, 10
    srwi r0, r30, 16
    or r0, r4, r0
    sth r0, 0x30(r5)
    clrlwi r0, r30, 16
    lhz r4, 0x32(r6)
    rlwinm r4, r4, 0, 27, 15
    or r0, r4, r0
    sth r0, 0x32(r6)
    extrwi r0, r31, 16, 11
    lhz r4, 0x36(r7)
    clrrwi r4, r4, 15
    or r0, r4, r0
    sth r0, 0x36(r7)
    bl OSRestoreInterrupts
    lwz r0, 0x1c(r1)
    lwz r31, 0x14(r1)
    lwz r30, 0x10(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

ASM void fn_8004F5C0(void)
{
    nofralloc
    lis r3, 0xcc00
    addi r3, r3, 0x5000
    lhz r0, 0x36(r3)
    ori r0, r0, 0x8000
    sth r0, 0x36(r3)
    blr
}

ASM void fn_8004F5D8(void)
{
    nofralloc
    lis r3, 0xcc00
    addi r3, r3, 0x5000
    lhz r0, 0x36(r3)
    rlwinm r0, r0, 0, 17, 15
    sth r0, 0x36(r3)
    blr
}

ASM void AISetStreamPlayState(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x20(r1)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    stw r29, 0x14(r1)
    mr r29, r3
    bl fn_8004F6C8
    cmplw r29, r3
    opword  0x41820098  // beq .L_8004F6AC
    bl fn_8004F8A0
    cmplwi r3, 0x0
    opword  0x40820078  // bne .L_8004F698
    cmplwi r29, 0x1
    opword  0x40820070  // bne .L_8004F698
    bl fn_8004F8F8
    mr r30, r3
    bl fn_8004F8CC
    addi r29, r3, 0x0
    li r3, 0x0
    bl AISetStreamVolRight
    li r3, 0x0
    bl AISetStreamVolLeft
    bl OSDisableInterrupts
    mr r31, r3
    bl fn_8004FBF4
    lis r4, 0xcc00
    lwz r0, 0x6c00(r4)
    addi r3, r31, 0x0
    rlwinm r0, r0, 0, 27, 25
    ori r0, r0, 0x20
    stw r0, 0x6c00(r4)
    lwz r0, 0x6c00(r4)
    clrrwi r0, r0, 1
    ori r0, r0, 0x1
    stw r0, 0x6c00(r4)
    bl OSRestoreInterrupts
    mr r3, r30
    bl AISetStreamVolLeft
    mr r3, r29
    bl AISetStreamVolRight
    opword  0x48000018  // b .L_8004F6AC
L_8004F698:
    lis r3, 0xcc00
    lwz r0, 0x6c00(r3)
    clrrwi r0, r0, 1
    or r0, r0, r29
    stw r0, 0x6c00(r3)
L_8004F6AC:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    addi r1, r1, 0x20
    mtlr r0
    blr
}

ASM void fn_8004F6C8(void)
{
    nofralloc
    lis r3, 0xcc00
    lwz r0, 0x6c00(r3)
    clrlwi r3, r0, 31
    blr
}

ASM void fn_8004F6D8(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x28(r1)
    stmw r26, 0x10(r1)
    mr r26, r3
    bl fn_8004F7B8
    cmplw r26, r3
    opword  0x418200B0  // beq .L_8004F7A4
    lis r31, 0xcc00
    lwz r0, 0x6c00(r31)
    cmplwi r26, 0x0
    rlwinm r0, r0, 0, 26, 24
    stw r0, 0x6c00(r31)
    opword  0x40820098  // bne .L_8004F7A4
    bl fn_8004F8CC
    mr r30, r3
    bl fn_8004F8F8
    lwz r0, 0x6c00(r31)
    addi r29, r3, 0x0
    clrlwi r27, r0, 31
    bl fn_8004F8A0
    addi r28, r3, 0x0
    li r3, 0x0
    bl AISetStreamVolLeft
    li r3, 0x0
    bl AISetStreamVolRight
    bl OSDisableInterrupts
    mr r26, r3
    bl fn_8004FBF4
    lwz r4, 0x6c00(r31)
    slwi r0, r28, 1
    addi r3, r26, 0x0
    rlwinm r4, r4, 0, 27, 25
    ori r4, r4, 0x20
    stw r4, 0x6c00(r31)
    lwz r4, 0x6c00(r31)
    rlwinm r4, r4, 0, 31, 29
    or r0, r4, r0
    stw r0, 0x6c00(r31)
    lwz r0, 0x6c00(r31)
    clrrwi r0, r0, 1
    or r0, r0, r27
    stw r0, 0x6c00(r31)
    lwz r0, 0x6c00(r31)
    ori r0, r0, 0x40
    stw r0, 0x6c00(r31)
    bl OSRestoreInterrupts
    mr r3, r30
    bl AISetStreamVolLeft
    mr r3, r29
    bl AISetStreamVolRight
L_8004F7A4:
    lmw r26, 0x10(r1)
    lwz r0, 0x2c(r1)
    addi r1, r1, 0x28
    mtlr r0
    blr
}

ASM void fn_8004F7B8(void)
{
    nofralloc
    lis r3, 0xcc00
    lwz r0, 0x6c00(r3)
    extrwi r0, r0, 1, 25
    xori r3, r0, 0x1
    blr
}

ASM void fn_8004F7CC(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x30(r1)
    stmw r25, 0x14(r1)
    mr r25, r3
    bl fn_8004F8A0
    cmplw r25, r3
    opword  0x418200A4  // beq .L_8004F88C
    lis r31, 0xcc00
    lwz r0, 0x6c00(r31)
    clrlwi r0, r0, 31
    mr r29, r0
    bl fn_8004F8CC
    mr r28, r3
    bl fn_8004F8F8
    addi r27, r3, 0x0
    li r3, 0x0
    bl AISetStreamVolRight
    li r3, 0x0
    bl AISetStreamVolLeft
    lwz r3, 0x6c00(r31)
    lwz r0, 0x6c00(r31)
    rlwinm r26, r3, 0, 25, 25
    rlwinm r0, r0, 0, 26, 24
    stw r0, 0x6c00(r31)
    bl OSDisableInterrupts
    mr r30, r3
    bl fn_8004FBF4
    lwz r4, 0x6c00(r31)
    slwi r0, r25, 1
    addi r3, r30, 0x0
    or r4, r4, r26
    stw r4, 0x6c00(r31)
    lwz r4, 0x6c00(r31)
    rlwinm r4, r4, 0, 27, 25
    ori r4, r4, 0x20
    stw r4, 0x6c00(r31)
    lwz r4, 0x6c00(r31)
    rlwinm r4, r4, 0, 31, 29
    or r0, r4, r0
    stw r0, 0x6c00(r31)
    bl OSRestoreInterrupts
    mr r3, r29
    bl AISetStreamPlayState
    mr r3, r28
    bl AISetStreamVolLeft
    mr r3, r27
    bl AISetStreamVolRight
L_8004F88C:
    lmw r25, 0x14(r1)
    lwz r0, 0x34(r1)
    addi r1, r1, 0x30
    mtlr r0
    blr
}

ASM void fn_8004F8A0(void)
{
    nofralloc
    lis r3, 0xcc00
    lwz r0, 0x6c00(r3)
    extrwi r3, r0, 1, 30
    blr
}

ASM void AISetStreamVolLeft(void)
{
    nofralloc
    lis r4, 0xcc00
    addi r4, r4, 0x6c00
    lwz r0, 0x4(r4)
    clrrwi r0, r0, 8
    rlwimi r0, r3, 0, 24, 31
    stw r0, 0x4(r4)
    blr
}

ASM void fn_8004F8CC(void)
{
    nofralloc
    lis r3, 0xcc00
    lwz r0, 0x6c04(r3)
    clrlwi r3, r0, 24
    blr
}

ASM void AISetStreamVolRight(void)
{
    nofralloc
    lis r4, 0xcc00
    addi r4, r4, 0x6c00
    lwz r0, 0x4(r4)
    rlwinm r0, r0, 0, 24, 15
    rlwimi r0, r3, 8, 16, 23
    stw r0, 0x4(r4)
    blr
}

ASM void fn_8004F8F8(void)
{
    nofralloc
    lis r3, 0xcc00
    lwz r0, 0x6c04(r3)
    extrwi r3, r0, 8, 16
    blr
}

ASM void fn_8004F908(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    stw r30, 0x10(r1)
    addi r30, r3, 0x0
    opword  0x800D8A48  // lwz r0, lbl_8053A608@sda21(r0)
    cmpwi r0, 0x1
    opword  0x41820134  // beq .L_8004FA5C
    opword  0x806D80D8  // lwz r3, lbl_80539C98@sda21(r0)
    bl OSRegisterVersion
    lis r3, 0x8000
    lwz r0, 0xf8(r3)
    lis r3, 0x431c
    lis r4, 0x1
    srwi r0, r0, 2
    subi r3, r3, 0x217d
    mulhwu r0, r3, r0
    srwi r9, r0, 15
    subi r5, r4, 0x5bd8
    subi r3, r4, 0x5bf0
    subi r0, r4, 0x9e8
    lis r4, 0x1062
    mullw r7, r9, r5
    addi r10, r4, 0x4dd3
    mullw r5, r9, r3
    mullw r4, r9, r0
    mulli r8, r9, 0x7b24
    mulli r3, r9, 0xbb8
    mulhwu r8, r10, r8
    mulhwu r7, r10, r7
    mulhwu r5, r10, r5
    mulhwu r4, r10, r4
    mulhwu r3, r10, r3
    srwi r8, r8, 9
    srwi r7, r7, 9
    opword  0x910D8A54  // stw r8, lbl_8053A614@sda21(r0)
    srwi r5, r5, 9
    srwi r4, r4, 9
    opword  0x90ED8A5C  // stw r7, lbl_8053A61C@sda21(r0)
    li r31, 0x0
    srwi r3, r3, 9
    opword  0x90AD8A64  // stw r5, lbl_8053A624@sda21(r0)
    lis r6, 0xcc00
    opword  0x906D8A74  // stw r3, lbl_8053A634@sda21(r0)
    li r3, 0x1
    lwz r0, 0x6c00(r6)
    opword  0x908D8A6C  // stw r4, lbl_8053A62C@sda21(r0)
    rlwinm r0, r0, 0, 27, 25
    ori r0, r0, 0x20
    opword  0x93ED8A50  // stw r31, lbl_8053A610@sda21(r0)
    opword  0x93ED8A58  // stw r31, lbl_8053A618@sda21(r0)
    opword  0x93ED8A60  // stw r31, lbl_8053A620@sda21(r0)
    opword  0x93ED8A68  // stw r31, lbl_8053A628@sda21(r0)
    opword  0x93ED8A70  // stw r31, lbl_8053A630@sda21(r0)
    lwz r5, 0x6c04(r6)
    stw r0, 0x6c00(r6)
    rlwinm r0, r5, 0, 24, 15
    nop
    stw r0, 0x6c04(r6)
    lwz r0, 0x6c04(r6)
    clrrwi r0, r0, 8
    nop
    stw r0, 0x6c04(r6)
    stw r31, 0x6c0c(r6)
    bl fn_8004F7CC
    li r3, 0x0
    bl fn_8004F6D8
    lis r3, fn_8004FAF0@ha
    opword  0x93ED8A38  // stw r31, lbl_8053A5F8@sda21(r0)
    addi r4, r3, fn_8004FAF0@l
    opword  0x93ED8A3C  // stw r31, lbl_8053A5FC@sda21(r0)
    li r3, 0x5
    opword  0x93CD8A40  // stw r30, lbl_8053A600@sda21(r0)
    bl __OSSetInterruptHandler
    lis r3, 0x400
    bl __OSUnmaskInterrupts
    lis r3, fn_8004FA74@ha
    addi r4, r3, fn_8004FA74@l
    li r3, 0x8
    bl __OSSetInterruptHandler
    lis r3, 0x80
    bl __OSUnmaskInterrupts
    li r0, 0x1
    opword  0x900D8A48  // stw r0, lbl_8053A608@sda21(r0)
L_8004FA5C:
    lwz r0, 0x1c(r1)
    lwz r31, 0x14(r1)
    lwz r30, 0x10(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

ASM void fn_8004FA74(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x2e0(r1)
    stw r31, 0x2dc(r1)
    lis r31, 0xcc00
    lwz r0, 0x6c00(r31)
    addi r3, r1, 0x10
    stw r30, 0x2d8(r1)
    ori r0, r0, 0x8
    stw r0, 0x6c00(r31)
    addi r30, r4, 0x0
    bl OSClearContext
    addi r3, r1, 0x10
    bl OSSetCurrentContext
    opword  0x818D8A38  // lwz r12, lbl_8053A5F8@sda21(r0)
    cmplwi r12, 0x0
    opword  0x41820014  // beq .L_8004FAC8
    addi r3, r31, 0x6c00
    mtlr r12
    lwz r3, 0x8(r3)
    blrl
L_8004FAC8:
    addi r3, r1, 0x10
    bl OSClearContext
    mr r3, r30
    bl OSSetCurrentContext
    lwz r0, 0x2e4(r1)
    lwz r31, 0x2dc(r1)
    lwz r30, 0x2d8(r1)
    addi r1, r1, 0x2e0
    mtlr r0
    blr
}

ASM void fn_8004FAF0(void)
{
    nofralloc
    mflr r0
    lis r3, 0xcc00
    stw r0, 0x4(r1)
    addi r3, r3, 0x5000
    li r0, -0xa1
    stwu r1, -0x2e0(r1)
    stw r31, 0x2dc(r1)
    addi r31, r4, 0x0
    lhz r5, 0xa(r3)
    and r0, r5, r0
    ori r0, r0, 0x8
    sth r0, 0xa(r3)
    addi r3, r1, 0x10
    bl OSClearContext
    addi r3, r1, 0x10
    bl OSSetCurrentContext
    opword  0x806D8A3C  // lwz r3, lbl_8053A5FC@sda21(r0)
    cmplwi r3, 0x0
    opword  0x41820040  // beq .L_8004FB78
    opword  0x800D8A4C  // lwz r0, lbl_8053A60C@sda21(r0)
    cmpwi r0, 0x0
    opword  0x40820034  // bne .L_8004FB78
    opword  0x800D8A40  // lwz r0, lbl_8053A600@sda21(r0)
    li r4, 0x1
    opword  0x908D8A4C  // stw r4, lbl_8053A60C@sda21(r0)
    cmplwi r0, 0x0
    opword  0x4182000C  // beq .L_8004FB64
    bl fn_8004FB9C
    opword  0x48000010  // b .L_8004FB70
L_8004FB64:
    addi r12, r3, 0x0
    mtlr r12
    blrl
L_8004FB70:
    li r0, 0x0
    opword  0x900D8A4C  // stw r0, lbl_8053A60C@sda21(r0)
L_8004FB78:
    addi r3, r1, 0x10
    bl OSClearContext
    mr r3, r31
    bl OSSetCurrentContext
    lwz r0, 0x2e4(r1)
    lwz r31, 0x2dc(r1)
    addi r1, r1, 0x2e0
    mtlr r0
    blr
}

ASM void fn_8004FB9C(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    mr r31, r3
    lis r5, lbl_8053A604@ha
    addi r5, r5, lbl_8053A604@l
    stw r1, 0x0(r5)
    lis r5, lbl_8053A600@ha
    addi r5, r5, lbl_8053A600@l
    lwz r1, 0x0(r5)
    subi r1, r1, 0x8
    mtlr r31
    blrl
    lis r5, lbl_8053A604@ha
    addi r5, r5, lbl_8053A604@l
    lwz r1, 0x0(r5)
    lwz r0, 0x1c(r1)
    lwz r31, 0x14(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

ASM void fn_8004FBF4(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x30(r1)
    stmw r26, 0x18(r1)
    li r4, 0x0
    li r3, 0x0
    li r0, 0x0
    li r28, 0x0
    li r29, 0x0
    opword  0x48000004  // b .L_8004FC1C
L_8004FC1C:
    lis r31, 0xcc00
    opword  0x48000004  // b .L_8004FC24
L_8004FC24:
    opword  0x48000164  // b .L_8004FD88
L_8004FC28:
    lwz r0, 0x6c00(r31)
    addi r30, r31, 0x6c00
    addi r30, r30, 0x8
    rlwinm r0, r0, 0, 27, 25
    ori r0, r0, 0x20
    stw r0, 0x6c00(r31)
    lwz r0, 0x6c00(r31)
    rlwinm r0, r0, 0, 31, 29
    stw r0, 0x6c00(r31)
    lwz r0, 0x6c00(r31)
    clrrwi r0, r0, 1
    ori r0, r0, 0x1
    stw r0, 0x6c00(r31)
    lwz r3, 0x0(r30)
    opword  0x48000004  // b .L_8004FC64
L_8004FC64:
    opword  0x48000004  // b .L_8004FC68
L_8004FC68:
    lwz r0, 0x0(r30)
    cmplw r3, r0
    opword  0x4182FFF8  // beq .L_8004FC68
    bl OSGetTime
    lwz r0, 0x6c00(r31)
    mr r26, r4
    mr r27, r3
    rlwinm r0, r0, 0, 31, 29
    ori r0, r0, 0x2
    stw r0, 0x6c00(r31)
    lwz r0, 0x6c00(r31)
    clrrwi r0, r0, 1
    ori r0, r0, 0x1
    stw r0, 0x6c00(r31)
    lwz r3, 0x0(r30)
    opword  0x48000004  // b .L_8004FCA8
L_8004FCA8:
    opword  0x48000004  // b .L_8004FCAC
L_8004FCAC:
    lwz r0, 0x0(r30)
    cmplw r3, r0
    opword  0x4182FFF8  // beq .L_8004FCAC
    bl OSGetTime
    subfc r8, r26, r4
    opword  0x818D8A54  // lwz r12, lbl_8053A614@sda21(r0)
    lwz r5, 0x6c00(r31)
    subfe r7, r27, r3
    opword  0x814D8A74  // lwz r10, lbl_8053A634@sda21(r0)
    xoris r7, r7, 0x8000
    rlwinm r5, r5, 0, 31, 29
    opword  0x816D8A50  // lwz r11, lbl_8053A610@sda21(r0)
    subfc r6, r10, r12
    opword  0x812D8A70  // lwz r9, lbl_8053A630@sda21(r0)
    stw r5, 0x6c00(r31)
    subfe r0, r9, r11
    xoris r5, r0, 0x8000
    subfc r0, r6, r8
    lwz r0, 0x6c00(r31)
    subfe r5, r5, r7
    subfe r5, r7, r7
    neg r5, r5
    clrrwi r0, r0, 1
    cmpwi r5, 0x0
    stw r0, 0x6c00(r31)
    opword  0x41820014  // beq .L_8004FD24
    opword  0x83AD8A60  // lwz r29, lbl_8053A620@sda21(r0)
    li r0, 0x1
    opword  0x838D8A64  // lwz r28, lbl_8053A624@sda21(r0)
    opword  0x48000068  // b .L_8004FD88
L_8004FD24:
    addc r6, r12, r10
    adde r0, r11, r9
    xoris r5, r0, 0x8000
    subfc r0, r6, r8
    subfe r5, r5, r7
    subfe r5, r7, r7
    neg r5, r5
    cmpwi r5, 0x0
    opword  0x40820040  // bne .L_8004FD84
    opword  0x80AD8A5C  // lwz r5, lbl_8053A61C@sda21(r0)
    opword  0x800D8A58  // lwz r0, lbl_8053A618@sda21(r0)
    subfc r6, r10, r5
    subfe r0, r9, r0
    xoris r5, r0, 0x8000
    subfc r0, r6, r8
    subfe r5, r5, r7
    subfe r5, r7, r7
    neg r5, r5
    cmpwi r5, 0x0
    opword  0x41820014  // beq .L_8004FD84
    opword  0x83AD8A68  // lwz r29, lbl_8053A628@sda21(r0)
    li r0, 0x1
    opword  0x838D8A6C  // lwz r28, lbl_8053A62C@sda21(r0)
    opword  0x48000008  // b .L_8004FD88
L_8004FD84:
    li r0, 0x0
L_8004FD88:
    cmplwi r0, 0x0
    opword  0x4182FE9C  // beq .L_8004FC28
    addc r27, r4, r28
    adde r26, r3, r29
    opword  0x48000004  // b .L_8004FD9C
L_8004FD9C:
    opword  0x48000004  // b .L_8004FDA0
L_8004FDA0:
    bl OSGetTime
    xoris r5, r3, 0x8000
    xoris r3, r26, 0x8000
    subfc r0, r27, r4
    subfe r3, r3, r5
    subfe r3, r5, r5
    neg r3, r3
    cmpwi r3, 0x0
    opword  0x4082FFE0  // bne .L_8004FDA0
    lmw r26, 0x18(r1)
    lwz r0, 0x34(r1)
    addi r1, r1, 0x30
    mtlr r0
    blr
}

ASM void fn_8004FDD8(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    stw r30, 0x10(r1)
    mr r30, r3
    opword  0x83ED8A78  // lwz r31, lbl_8053A638@sda21(r0)
    bl OSDisableInterrupts
    opword  0x93CD8A78  // stw r30, lbl_8053A638@sda21(r0)
    bl OSRestoreInterrupts
    mr r3, r31
    lwz r0, 0x1c(r1)
    lwz r31, 0x14(r1)
    lwz r30, 0x10(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

ASM void fn_8004FE1C(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x10(r1)
    stw r31, 0xc(r1)
    bl OSDisableInterrupts
    lis r4, 0xcc00
    lhz r0, 0x500a(r4)
    rlwinm r31, r0, 0, 22, 22
    bl OSRestoreInterrupts
    mr r3, r31
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    addi r1, r1, 0x10
    mtlr r0
    blr
}

ASM void fn_8004FE58(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x28(r1)
    stw r31, 0x24(r1)
    addi r31, r6, 0x0
    stw r30, 0x20(r1)
    addi r30, r5, 0x0
    stw r29, 0x1c(r1)
    addi r29, r3, 0x0
    stw r28, 0x18(r1)
    addi r28, r4, 0x0
    bl OSDisableInterrupts
    lis r6, 0xcc00
    lhz r0, 0x5020(r6)
    addi r8, r6, 0x5000
    addi r9, r6, 0x5000
    clrrwi r4, r0, 10
    srwi r0, r28, 16
    or r0, r4, r0
    sth r0, 0x5020(r6)
    clrlwi r0, r28, 16
    addi r4, r6, 0x5000
    lhz r5, 0x5022(r6)
    rlwinm r5, r5, 0, 27, 15
    or r0, r5, r0
    sth r0, 0x5022(r6)
    addi r5, r6, 0x5000
    srwi r0, r30, 16
    lhz r6, 0x5024(r6)
    clrrwi r6, r6, 10
    or r0, r6, r0
    sth r0, 0x24(r8)
    clrlwi r0, r30, 16
    lhz r6, 0x26(r9)
    rlwinm r6, r6, 0, 27, 15
    or r0, r6, r0
    sth r0, 0x26(r9)
    srwi r6, r31, 16
    clrlwi r0, r31, 16
    lhz r7, 0x28(r4)
    rlwinm r7, r7, 0, 17, 15
    rlwimi r7, r29, 15, 0, 16
    sth r7, 0x28(r4)
    lhz r7, 0x28(r4)
    clrrwi r7, r7, 10
    or r6, r7, r6
    sth r6, 0x28(r4)
    lhz r4, 0x2a(r5)
    rlwinm r4, r4, 0, 27, 15
    or r0, r4, r0
    sth r0, 0x2a(r5)
    bl OSRestoreInterrupts
    lwz r0, 0x2c(r1)
    lwz r31, 0x24(r1)
    lwz r30, 0x20(r1)
    lwz r29, 0x1c(r1)
    lwz r28, 0x18(r1)
    addi r1, r1, 0x28
    mtlr r0
    blr
}

ASM void fn_8004FF48(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    stw r30, 0x10(r1)
    mr r30, r3
    bl OSDisableInterrupts
    opword  0x83ED8A88  // lwz r31, lbl_8053A648@sda21(r0)
    opword  0x808D8A90  // lwz r4, lbl_8053A650@sda21(r0)
    add r0, r31, r30
    opword  0x900D8A88  // stw r0, lbl_8053A648@sda21(r0)
    stw r30, 0x0(r4)
    opword  0x80AD8A90  // lwz r5, lbl_8053A650@sda21(r0)
    opword  0x808D8A8C  // lwz r4, lbl_8053A64C@sda21(r0)
    addi r5, r5, 0x4
    subi r0, r4, 0x1
    opword  0x90AD8A90  // stw r5, lbl_8053A650@sda21(r0)
    opword  0x900D8A8C  // stw r0, lbl_8053A64C@sda21(r0)
    bl OSRestoreInterrupts
    mr r3, r31
    lwz r0, 0x1c(r1)
    lwz r31, 0x14(r1)
    lwz r30, 0x10(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

ASM void fn_8004FFB0(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x20(r1)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    addi r30, r4, 0x0
    stw r29, 0x14(r1)
    addi r29, r3, 0x0
    opword  0x800D8A94  // lwz r0, lbl_8053A654@sda21(r0)
    cmpwi r0, 0x1
    opword  0x4082000C  // bne .L_8004FFE4
    li r3, 0x4000
    opword  0x48000078  // b .L_80050058
L_8004FFE4:
    opword  0x806D80E0  // lwz r3, lbl_80539CA0@sda21(r0)
    bl OSRegisterVersion
    bl OSDisableInterrupts
    li r0, 0x0
    lis r4, fn_8005007C@ha
    opword  0x900D8A78  // stw r0, lbl_8053A638@sda21(r0)
    addi r31, r3, 0x0
    addi r4, r4, fn_8005007C@l
    li r3, 0x6
    bl __OSSetInterruptHandler
    lis r3, 0x200
    bl __OSUnmaskInterrupts
    li r0, 0x4000
    opword  0x93CD8A8C  // stw r30, lbl_8053A64C@sda21(r0)
    lis r3, 0xcc00
    opword  0x900D8A88  // stw r0, lbl_8053A648@sda21(r0)
    addi r4, r3, 0x5000
    opword  0x93AD8A90  // stw r29, lbl_8053A650@sda21(r0)
    lhz r0, 0x1a(r4)
    lhz r3, 0x501a(r3)
    clrrwi r0, r0, 8
    rlwimi r0, r3, 0, 24, 31
    sth r0, 0x1a(r4)
    bl fn_80050124
    li r0, 0x1
    opword  0x900D8A94  // stw r0, lbl_8053A654@sda21(r0)
    mr r3, r31
    bl OSRestoreInterrupts
    opword  0x806D8A88  // lwz r3, lbl_8053A648@sda21(r0)
L_80050058:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    addi r1, r1, 0x20
    mtlr r0
    blr
}

ASM void fn_80050074(void)
{
    nofralloc
    opword  0x806D8A7C  // lwz r3, lbl_8053A63C@sda21(r0)
    blr
}

ASM void fn_8005007C(void)
{
    nofralloc
    mflr r0
    lis r3, 0xcc00
    stw r0, 0x4(r1)
    addi r3, r3, 0x5000
    li r0, -0x89
    stwu r1, -0x2e0(r1)
    stw r31, 0x2dc(r1)
    addi r31, r4, 0x0
    lhz r5, 0xa(r3)
    and r0, r5, r0
    ori r0, r0, 0x20
    sth r0, 0xa(r3)
    addi r3, r1, 0x10
    bl OSClearContext
    addi r3, r1, 0x10
    bl OSSetCurrentContext
    opword  0x818D8A78  // lwz r12, lbl_8053A638@sda21(r0)
    cmplwi r12, 0x0
    opword  0x4182000C  // beq .L_800500D0
    mtlr r12
    blrl
L_800500D0:
    addi r3, r1, 0x10
    bl OSClearContext
    mr r3, r31
    bl OSSetCurrentContext
    lwz r0, 0x2e4(r1)
    lwz r31, 0x2dc(r1)
    addi r1, r1, 0x2e0
    mtlr r0
    blr
}

ASM void fn_800500F4(void)
{
    nofralloc
    lis r3, 0xcc00
    addi r3, r3, 0x5000
    lhz r4, 0xa(r3)
    li r0, -0x89
    and r0, r4, r0
    ori r0, r0, 0x20
    sth r0, 0xa(r3)
    blr
}

ASM void fn_80050114(void)
{
    nofralloc
    lis r3, 0xcc00
    lhz r0, 0x500a(r3)
    rlwinm r3, r0, 0, 26, 26
    blr
}

ASM void fn_80050124(void)
{
    nofralloc
    mflr r0
    lis r3, 0xcc00
    stw r0, 0x4(r1)
    addi r3, r3, 0x5000
    stwu r1, -0x2c0(r1)
    stmw r14, 0x278(r1)
L_8005013C:
    lhz r0, 0x16(r3)
    clrlwi. r0, r0, 31
    opword  0x4182FFF8  // beq .L_8005013C
    lis r23, 0xcc00
    addi r0, r23, 0x5000
    stw r0, 0x248(r1)
    lis r3, 0x100
    addi r0, r1, 0x1f3
    opword  0x906D8A80  // stw r3, lbl_8053A640@sda21(r0)
    lis r5, 0xdeae
    lwz r4, 0x248(r1)
    clrrwi r22, r0, 5
    addi r0, r1, 0x1b3
    lhz r4, 0x12(r4)
    addi r7, r1, 0xb3
    clrrwi r7, r7, 5
    clrrwi r4, r4, 6
    stw r7, 0x21c(r1)
    ori r6, r4, 0x23
    lwz r4, 0x248(r1)
    addi r10, r1, 0x173
    sth r6, 0x12(r4)
    subi r5, r5, 0x4111
    lis r4, 0xbad1
    clrrwi r21, r0, 5
    stw r5, 0x0(r22)
    subi r0, r4, 0x4530
    stw r0, 0x0(r21)
    addi r4, r1, 0x33
    addi r6, r1, 0x73
    stw r5, 0x4(r22)
    clrrwi r4, r4, 5
    clrrwi r6, r6, 5
    stw r0, 0x4(r21)
    addi r9, r1, 0x133
    addi r8, r1, 0xf3
    stw r5, 0x8(r22)
    addi r19, r3, 0x0
    addi r3, r22, 0x0
    stw r0, 0x8(r21)
    clrrwi r24, r10, 5
    clrrwi r28, r9, 5
    stw r5, 0xc(r22)
    clrrwi r20, r8, 5
    stw r0, 0xc(r21)
    stw r5, 0x10(r22)
    stw r0, 0x10(r21)
    stw r5, 0x14(r22)
    stw r0, 0x14(r21)
    stw r5, 0x18(r22)
    stw r0, 0x18(r21)
    stw r5, 0x1c(r22)
    lwz r5, 0x248(r1)
    stw r4, 0x214(r1)
    li r4, 0x3
    addi r5, r5, 0x12
    sth r4, 0x270(r1)
    li r4, 0x20
    stw r6, 0x218(r1)
    stw r0, 0x1c(r21)
    stw r5, 0x248(r1)
    bl DCFlushRange
    addi r3, r21, 0x0
    li r4, 0x20
    bl DCFlushRange
    li r0, 0x0
    opword  0x900D8A84  // stw r0, lbl_8053A644@sda21(r0)
    addi r3, r28, 0x0
    li r4, 0x20
    bl DCInvalidateRange
    srwi r3, r28, 16
    lhz r0, 0x5020(r23)
    stw r3, 0x23c(r1)
    addi r25, r23, 0x5000
    clrrwi r3, r0, 10
    lwz r0, 0x23c(r1)
    addi r26, r23, 0x5000
    srwi r17, r19, 16
    or r0, r3, r0
    sthu r0, 0x20(r25)
    clrlwi r3, r28, 16
    addi r27, r23, 0x5000
    lhz r0, 0x5022(r23)
    clrlwi r18, r19, 16
    stw r3, 0x24c(r1)
    addi r28, r23, 0x5000
    rlwinm r3, r0, 0, 27, 15
    lwz r0, 0x24c(r1)
    addi r30, r23, 0x5000
    addi r29, r23, 0x5000
    or r0, r3, r0
    sthu r0, 0x22(r26)
    lhz r0, 0x5024(r23)
    clrrwi r0, r0, 10
    or r0, r0, r17
    sthu r0, 0x24(r27)
    lhz r0, 0x5026(r23)
    rlwinm r0, r0, 0, 27, 15
    or r0, r0, r18
    sthu r0, 0x26(r28)
    lhz r0, 0x5028(r23)
    ori r0, r0, 0x8000
    sth r0, 0x5028(r23)
    lhz r0, 0x5028(r23)
    clrrwi r0, r0, 10
    nop
    sthu r0, 0x28(r30)
    lhz r0, 0x502a(r23)
    rlwinm r0, r0, 0, 27, 15
    ori r0, r0, 0x20
    sthu r0, 0x2a(r29)
L_800502F8:
    addi r31, r23, 0x5000
    lhzu r0, 0xa(r31)
    rlwinm. r0, r0, 0, 22, 22
    opword  0x4082FFF4  // bne .L_800502F8
    lhz r3, 0x0(r31)
    li r0, -0x89
    and r0, r3, r0
    ori r0, r0, 0x20
    sth r0, 0x0(r31)
    bl PPCSync
    srwi r0, r22, 16
    lhz r3, 0x0(r25)
    stw r0, 0x244(r1)
    clrrwi r3, r3, 10
    lwz r0, 0x244(r1)
    or r0, r3, r0
    sth r0, 0x0(r25)
    clrlwi r0, r22, 16
    stw r0, 0x250(r1)
    lhz r0, 0x0(r26)
    rlwinm r3, r0, 0, 27, 15
    lwz r0, 0x250(r1)
    or r0, r3, r0
    sth r0, 0x0(r26)
    lhz r0, 0x0(r27)
    clrrwi r0, r0, 10
    or r0, r0, r17
    sth r0, 0x0(r27)
    lhz r0, 0x0(r28)
    rlwinm r0, r0, 0, 27, 15
    or r0, r0, r18
    sth r0, 0x0(r28)
    lhz r0, 0x0(r30)
    rlwinm r0, r0, 0, 17, 15
    sth r0, 0x0(r30)
    lhz r0, 0x0(r30)
    clrrwi r0, r0, 10
    nop
    sth r0, 0x0(r30)
    lhz r0, 0x0(r29)
    rlwinm r0, r0, 0, 27, 15
    ori r0, r0, 0x20
    sth r0, 0x0(r29)
L_800503A4:
    lhz r0, 0x0(r31)
    rlwinm. r0, r0, 0, 22, 22
    opword  0x4082FFF8  // bne .L_800503A4
    lhz r0, 0x0(r31)
    li r4, -0x89
    addi r3, r24, 0x0
    and r0, r0, r4
    ori r0, r0, 0x20
    sth r0, 0x0(r31)
    li r4, 0x0
    li r5, 0x20
    bl memset
    addi r3, r24, 0x0
    li r4, 0x20
    bl DCFlushRange
    srwi r0, r24, 16
    lhz r3, 0x0(r25)
    stw r0, 0x240(r1)
    clrrwi r3, r3, 10
    lwz r0, 0x240(r1)
    or r0, r3, r0
    sth r0, 0x0(r25)
    clrlwi r0, r24, 16
    stw r0, 0x254(r1)
    lhz r0, 0x0(r26)
    rlwinm r3, r0, 0, 27, 15
    lwz r0, 0x254(r1)
    or r0, r3, r0
    sth r0, 0x0(r26)
    lhz r0, 0x0(r27)
    clrrwi r0, r0, 10
    or r0, r0, r17
    sth r0, 0x0(r27)
    lhz r0, 0x0(r28)
    rlwinm r0, r0, 0, 27, 15
    or r0, r0, r18
    sth r0, 0x0(r28)
    lhz r0, 0x0(r30)
    ori r0, r0, 0x8000
    sth r0, 0x0(r30)
    lhz r0, 0x0(r30)
    clrrwi r0, r0, 10
    nop
    sth r0, 0x0(r30)
    lhz r0, 0x0(r29)
    rlwinm r0, r0, 0, 27, 15
    ori r0, r0, 0x20
    sth r0, 0x0(r29)
L_80050464:
    lhz r0, 0x0(r31)
    rlwinm. r0, r0, 0, 22, 22
    opword  0x4082FFF8  // bne .L_80050464
    lhz r3, 0x0(r31)
    li r0, -0x89
    and r0, r3, r0
    ori r0, r0, 0x20
    sth r0, 0x0(r31)
    bl PPCSync
    lwz r3, 0x0(r24)
    lwz r0, 0x0(r22)
    cmplw r3, r0
    opword  0x40821464  // bne .L_800518F8
    addi r3, r20, 0x0
    li r4, 0x20
    bl DCInvalidateRange
    srwi r0, r20, 16
    lhz r4, 0x0(r25)
    stw r0, 0x234(r1)
    addis r3, r19, 0x20
    clrrwi r4, r4, 10
    lwz r0, 0x234(r1)
    srwi r16, r3, 16
    clrlwi r23, r3, 16
    or r0, r4, r0
    sth r0, 0x0(r25)
    clrlwi r0, r20, 16
    stw r0, 0x258(r1)
    lhz r0, 0x0(r26)
    rlwinm r3, r0, 0, 27, 15
    lwz r0, 0x258(r1)
    or r0, r3, r0
    sth r0, 0x0(r26)
    lhz r0, 0x0(r27)
    clrrwi r0, r0, 10
    or r0, r0, r16
    sth r0, 0x0(r27)
    lhz r0, 0x0(r28)
    rlwinm r0, r0, 0, 27, 15
    or r0, r0, r23
    sth r0, 0x0(r28)
    lhz r0, 0x0(r30)
    ori r0, r0, 0x8000
    sth r0, 0x0(r30)
    lhz r0, 0x0(r30)
    clrrwi r0, r0, 10
    nop
    sth r0, 0x0(r30)
    lhz r0, 0x0(r29)
    rlwinm r0, r0, 0, 27, 15
    ori r0, r0, 0x20
    sth r0, 0x0(r29)
L_80050534:
    lhz r0, 0x0(r31)
    rlwinm. r0, r0, 0, 22, 22
    opword  0x4082FFF8  // bne .L_80050534
    lhz r3, 0x0(r31)
    li r0, -0x89
    and r0, r3, r0
    ori r0, r0, 0x20
    sth r0, 0x0(r31)
    bl PPCSync
    lwz r3, 0x21c(r1)
    li r4, 0x20
    bl DCInvalidateRange
    lwz r0, 0x21c(r1)
    addis r3, r19, 0x100
    lhz r4, 0x0(r25)
    srwi r14, r3, 16
    srwi r0, r0, 16
    stw r0, 0x22c(r1)
    clrrwi r4, r4, 10
    clrlwi r15, r3, 16
    lwz r0, 0x22c(r1)
    or r0, r4, r0
    sth r0, 0x0(r25)
    lwz r0, 0x21c(r1)
    clrlwi r0, r0, 16
    stw r0, 0x25c(r1)
    lhz r0, 0x0(r26)
    rlwinm r3, r0, 0, 27, 15
    lwz r0, 0x25c(r1)
    or r0, r3, r0
    sth r0, 0x0(r26)
    lhz r0, 0x0(r27)
    clrrwi r0, r0, 10
    or r0, r0, r14
    sth r0, 0x0(r27)
    lhz r0, 0x0(r28)
    rlwinm r0, r0, 0, 27, 15
    or r0, r0, r15
    sth r0, 0x0(r28)
    lhz r0, 0x0(r30)
    ori r0, r0, 0x8000
    sth r0, 0x0(r30)
    lhz r0, 0x0(r30)
    clrrwi r0, r0, 10
    nop
    sth r0, 0x0(r30)
    lhz r0, 0x0(r29)
    rlwinm r0, r0, 0, 27, 15
    ori r0, r0, 0x20
    sth r0, 0x0(r29)
L_800505FC:
    lhz r0, 0x0(r31)
    rlwinm. r0, r0, 0, 22, 22
    opword  0x4082FFF8  // bne .L_800505FC
    lhz r3, 0x0(r31)
    li r0, -0x89
    and r0, r3, r0
    ori r0, r0, 0x20
    sth r0, 0x0(r31)
    bl PPCSync
    lwz r3, 0x218(r1)
    li r4, 0x20
    bl DCInvalidateRange
    lwz r0, 0x218(r1)
    addi r3, r19, 0x200
    lhz r4, 0x0(r25)
    srwi r0, r0, 16
    stw r0, 0x224(r1)
    clrrwi r4, r4, 10
    lwz r0, 0x224(r1)
    or r0, r4, r0
    sth r0, 0x0(r25)
    srwi r0, r3, 16
    clrlwi r3, r3, 16
    stw r0, 0x230(r1)
    lwz r0, 0x218(r1)
    stw r3, 0x264(r1)
    clrlwi r0, r0, 16
    stw r0, 0x260(r1)
    lhz r0, 0x0(r26)
    rlwinm r3, r0, 0, 27, 15
    lwz r0, 0x260(r1)
    or r0, r3, r0
    sth r0, 0x0(r26)
    lhz r0, 0x0(r27)
    clrrwi r3, r0, 10
    lwz r0, 0x230(r1)
    or r0, r3, r0
    sth r0, 0x0(r27)
    lhz r0, 0x0(r28)
    rlwinm r3, r0, 0, 27, 15
    lwz r0, 0x264(r1)
    or r0, r3, r0
    sth r0, 0x0(r28)
    lhz r0, 0x0(r30)
    ori r0, r0, 0x8000
    sth r0, 0x0(r30)
    lhz r0, 0x0(r30)
    clrrwi r0, r0, 10
    nop
    sth r0, 0x0(r30)
    lhz r0, 0x0(r29)
    rlwinm r0, r0, 0, 27, 15
    ori r0, r0, 0x20
    sth r0, 0x0(r29)
L_800506D4:
    lhz r0, 0x0(r31)
    rlwinm. r0, r0, 0, 22, 22
    opword  0x4082FFF8  // bne .L_800506D4
    lhz r3, 0x0(r31)
    li r0, -0x89
    and r0, r3, r0
    ori r0, r0, 0x20
    sth r0, 0x0(r31)
    bl PPCSync
    lwz r3, 0x214(r1)
    li r4, 0x20
    bl DCInvalidateRange
    lwz r0, 0x214(r1)
    addis r3, r19, 0x40
    lhz r4, 0x0(r25)
    srwi r0, r0, 16
    stw r0, 0x220(r1)
    clrrwi r4, r4, 10
    lwz r0, 0x220(r1)
    or r0, r4, r0
    sth r0, 0x0(r25)
    srwi r0, r3, 16
    clrlwi r3, r3, 16
    stw r0, 0x228(r1)
    lwz r0, 0x214(r1)
    stw r3, 0x26c(r1)
    clrlwi r0, r0, 16
    stw r0, 0x268(r1)
    lhz r0, 0x0(r26)
    rlwinm r3, r0, 0, 27, 15
    lwz r0, 0x268(r1)
    or r0, r3, r0
    sth r0, 0x0(r26)
    lhz r0, 0x0(r27)
    clrrwi r3, r0, 10
    lwz r0, 0x228(r1)
    or r0, r3, r0
    sth r0, 0x0(r27)
    lhz r0, 0x0(r28)
    rlwinm r3, r0, 0, 27, 15
    lwz r0, 0x26c(r1)
    or r0, r3, r0
    sth r0, 0x0(r28)
    lhz r0, 0x0(r30)
    ori r0, r0, 0x8000
    sth r0, 0x0(r30)
    lhz r0, 0x0(r30)
    clrrwi r0, r0, 10
    nop
    sth r0, 0x0(r30)
    lhz r0, 0x0(r29)
    rlwinm r0, r0, 0, 27, 15
    ori r0, r0, 0x20
    sth r0, 0x0(r29)
L_800507AC:
    lhz r0, 0x0(r31)
    rlwinm. r0, r0, 0, 22, 22
    opword  0x4082FFF8  // bne .L_800507AC
    lhz r3, 0x0(r31)
    li r0, -0x89
    and r0, r3, r0
    ori r0, r0, 0x20
    sth r0, 0x0(r31)
    bl PPCSync
    srwi r0, r21, 16
    lhz r3, 0x0(r25)
    stw r0, 0x238(r1)
    clrlwi r20, r21, 16
    clrrwi r3, r3, 10
    lwz r0, 0x238(r1)
    or r0, r3, r0
    sth r0, 0x0(r25)
    lhz r0, 0x0(r26)
    rlwinm r0, r0, 0, 27, 15
    or r0, r0, r20
    sth r0, 0x0(r26)
    lhz r0, 0x0(r27)
    clrrwi r0, r0, 10
    or r0, r0, r16
    sth r0, 0x0(r27)
    lhz r0, 0x0(r28)
    rlwinm r0, r0, 0, 27, 15
    or r0, r0, r23
    sth r0, 0x0(r28)
    lhz r0, 0x0(r30)
    rlwinm r0, r0, 0, 17, 15
    sth r0, 0x0(r30)
    lhz r0, 0x0(r30)
    clrrwi r0, r0, 10
    nop
    sth r0, 0x0(r30)
    lhz r0, 0x0(r29)
    rlwinm r0, r0, 0, 27, 15
    ori r0, r0, 0x20
    sth r0, 0x0(r29)
L_8005084C:
    lhz r0, 0x0(r31)
    rlwinm. r0, r0, 0, 22, 22
    opword  0x4082FFF8  // bne .L_8005084C
    lhz r3, 0x0(r31)
    li r0, -0x89
    and r0, r3, r0
    ori r0, r0, 0x20
    sth r0, 0x0(r31)
    lhz r0, 0x0(r25)
    clrrwi r3, r0, 10
    lwz r0, 0x244(r1)
    or r0, r3, r0
    sth r0, 0x0(r25)
    lhz r0, 0x0(r26)
    rlwinm r3, r0, 0, 27, 15
    lwz r0, 0x250(r1)
    or r0, r3, r0
    sth r0, 0x0(r26)
    lhz r0, 0x0(r27)
    clrrwi r0, r0, 10
    or r0, r0, r17
    sth r0, 0x0(r27)
    lhz r0, 0x0(r28)
    rlwinm r0, r0, 0, 27, 15
    or r0, r0, r18
    sth r0, 0x0(r28)
    lhz r0, 0x0(r30)
    rlwinm r0, r0, 0, 17, 15
    sth r0, 0x0(r30)
    lhz r0, 0x0(r30)
    clrrwi r0, r0, 10
    nop
    sth r0, 0x0(r30)
    lhz r0, 0x0(r29)
    rlwinm r0, r0, 0, 27, 15
    ori r0, r0, 0x20
    sth r0, 0x0(r29)
L_800508E0:
    lhz r0, 0x0(r31)
    rlwinm. r0, r0, 0, 22, 22
    opword  0x4082FFF8  // bne .L_800508E0
    lhz r0, 0x0(r31)
    li r4, -0x89
    addi r3, r24, 0x0
    and r0, r0, r4
    ori r0, r0, 0x20
    sth r0, 0x0(r31)
    li r4, 0x0
    li r5, 0x20
    bl memset
    addi r3, r24, 0x0
    li r4, 0x20
    bl DCFlushRange
    lhz r0, 0x0(r25)
    clrrwi r3, r0, 10
    lwz r0, 0x240(r1)
    or r0, r3, r0
    sth r0, 0x0(r25)
    lhz r0, 0x0(r26)
    rlwinm r3, r0, 0, 27, 15
    lwz r0, 0x254(r1)
    or r0, r3, r0
    sth r0, 0x0(r26)
    lhz r0, 0x0(r27)
    clrrwi r0, r0, 10
    or r0, r0, r16
    sth r0, 0x0(r27)
    lhz r0, 0x0(r28)
    rlwinm r0, r0, 0, 27, 15
    or r0, r0, r23
    sth r0, 0x0(r28)
    lhz r0, 0x0(r30)
    ori r0, r0, 0x8000
    sth r0, 0x0(r30)
    lhz r0, 0x0(r30)
    clrrwi r0, r0, 10
    nop
    sth r0, 0x0(r30)
    lhz r0, 0x0(r29)
    rlwinm r0, r0, 0, 27, 15
    ori r0, r0, 0x20
    sth r0, 0x0(r29)
L_80050990:
    lhz r0, 0x0(r31)
    rlwinm. r0, r0, 0, 22, 22
    opword  0x4082FFF8  // bne .L_80050990
    lhz r3, 0x0(r31)
    li r0, -0x89
    and r0, r3, r0
    ori r0, r0, 0x20
    sth r0, 0x0(r31)
    bl PPCSync
    lwz r3, 0x0(r24)
    lwz r0, 0x0(r22)
    cmplw r3, r0
    opword  0x408200A8  // bne .L_80050A68
    lhz r0, 0x0(r25)
    clrrwi r3, r0, 10
    lwz r0, 0x23c(r1)
    or r0, r3, r0
    sth r0, 0x0(r25)
    lhz r0, 0x0(r26)
    rlwinm r3, r0, 0, 27, 15
    lwz r0, 0x24c(r1)
    or r0, r3, r0
    sth r0, 0x0(r26)
    lhz r0, 0x0(r27)
    clrrwi r0, r0, 10
    or r0, r0, r17
    sth r0, 0x0(r27)
    lhz r0, 0x0(r28)
    rlwinm r0, r0, 0, 27, 15
    or r0, r0, r18
    sth r0, 0x0(r28)
    lhz r0, 0x0(r30)
    rlwinm r0, r0, 0, 17, 15
    sth r0, 0x0(r30)
    lhz r0, 0x0(r30)
    clrrwi r0, r0, 10
    nop
    sth r0, 0x0(r30)
    lhz r0, 0x0(r29)
    rlwinm r0, r0, 0, 27, 15
    ori r0, r0, 0x20
    sth r0, 0x0(r29)
L_80050A38:
    lhz r0, 0x0(r31)
    rlwinm. r0, r0, 0, 22, 22
    opword  0x4082FFF8  // bne .L_80050A38
    lhz r4, 0x0(r31)
    li r3, -0x89
    lis r0, 0x20
    and r3, r4, r3
    ori r3, r3, 0x20
    sth r3, 0x0(r31)
    addis r19, r19, 0x20
    opword  0x900D8A84  // stw r0, lbl_8053A644@sda21(r0)
    opword  0x48000E78  // b .L_800518DC
L_80050A68:
    lhz r0, 0x0(r25)
    clrrwi r3, r0, 10
    lwz r0, 0x238(r1)
    or r0, r3, r0
    sth r0, 0x0(r25)
    lhz r0, 0x0(r26)
    rlwinm r0, r0, 0, 27, 15
    or r0, r0, r20
    sth r0, 0x0(r26)
    lhz r0, 0x0(r27)
    clrrwi r0, r0, 10
    or r0, r0, r14
    sth r0, 0x0(r27)
    lhz r0, 0x0(r28)
    rlwinm r0, r0, 0, 27, 15
    or r0, r0, r15
    sth r0, 0x0(r28)
    lhz r0, 0x0(r30)
    rlwinm r0, r0, 0, 17, 15
    sth r0, 0x0(r30)
    lhz r0, 0x0(r30)
    clrrwi r0, r0, 10
    nop
    sth r0, 0x0(r30)
    lhz r0, 0x0(r29)
    rlwinm r0, r0, 0, 27, 15
    ori r0, r0, 0x20
    sth r0, 0x0(r29)
L_80050AD8:
    lhz r0, 0x0(r31)
    rlwinm. r0, r0, 0, 22, 22
    opword  0x4082FFF8  // bne .L_80050AD8
    lhz r3, 0x0(r31)
    li r0, -0x89
    and r0, r3, r0
    ori r0, r0, 0x20
    sth r0, 0x0(r31)
    lhz r0, 0x0(r25)
    clrrwi r3, r0, 10
    lwz r0, 0x244(r1)
    or r0, r3, r0
    sth r0, 0x0(r25)
    lhz r0, 0x0(r26)
    rlwinm r3, r0, 0, 27, 15
    lwz r0, 0x250(r1)
    or r0, r3, r0
    sth r0, 0x0(r26)
    lhz r0, 0x0(r27)
    clrrwi r0, r0, 10
    or r0, r0, r17
    sth r0, 0x0(r27)
    lhz r0, 0x0(r28)
    rlwinm r0, r0, 0, 27, 15
    or r0, r0, r18
    sth r0, 0x0(r28)
    lhz r0, 0x0(r30)
    rlwinm r0, r0, 0, 17, 15
    sth r0, 0x0(r30)
    lhz r0, 0x0(r30)
    clrrwi r0, r0, 10
    nop
    sth r0, 0x0(r30)
    lhz r0, 0x0(r29)
    rlwinm r0, r0, 0, 27, 15
    ori r0, r0, 0x20
    sth r0, 0x0(r29)
L_80050B6C:
    lhz r0, 0x0(r31)
    rlwinm. r0, r0, 0, 22, 22
    opword  0x4082FFF8  // bne .L_80050B6C
    lhz r0, 0x0(r31)
    li r4, -0x89
    addi r3, r24, 0x0
    and r0, r0, r4
    ori r0, r0, 0x20
    sth r0, 0x0(r31)
    li r4, 0x0
    li r5, 0x20
    bl memset
    addi r3, r24, 0x0
    li r4, 0x20
    bl DCFlushRange
    lhz r0, 0x0(r25)
    clrrwi r3, r0, 10
    lwz r0, 0x240(r1)
    or r0, r3, r0
    sth r0, 0x0(r25)
    lhz r0, 0x0(r26)
    rlwinm r3, r0, 0, 27, 15
    lwz r0, 0x254(r1)
    or r0, r3, r0
    sth r0, 0x0(r26)
    lhz r0, 0x0(r27)
    clrrwi r0, r0, 10
    or r0, r0, r14
    sth r0, 0x0(r27)
    lhz r0, 0x0(r28)
    rlwinm r0, r0, 0, 27, 15
    or r0, r0, r15
    sth r0, 0x0(r28)
    lhz r0, 0x0(r30)
    ori r0, r0, 0x8000
    sth r0, 0x0(r30)
    lhz r0, 0x0(r30)
    clrrwi r0, r0, 10
    nop
    sth r0, 0x0(r30)
    lhz r0, 0x0(r29)
    rlwinm r0, r0, 0, 27, 15
    ori r0, r0, 0x20
    sth r0, 0x0(r29)
L_80050C1C:
    lhz r0, 0x0(r31)
    rlwinm. r0, r0, 0, 22, 22
    opword  0x4082FFF8  // bne .L_80050C1C
    lhz r3, 0x0(r31)
    li r0, -0x89
    and r0, r3, r0
    ori r0, r0, 0x20
    sth r0, 0x0(r31)
    bl PPCSync
    lwz r3, 0x0(r24)
    lwz r0, 0x0(r22)
    cmplw r3, r0
    opword  0x40820148  // bne .L_80050D94
    lhz r0, 0x0(r25)
    clrrwi r3, r0, 10
    lwz r0, 0x23c(r1)
    or r0, r3, r0
    sth r0, 0x0(r25)
    lhz r0, 0x0(r26)
    rlwinm r3, r0, 0, 27, 15
    lwz r0, 0x24c(r1)
    or r0, r3, r0
    sth r0, 0x0(r26)
    lhz r0, 0x0(r27)
    clrrwi r0, r0, 10
    or r0, r0, r17
    sth r0, 0x0(r27)
    lhz r0, 0x0(r28)
    rlwinm r0, r0, 0, 27, 15
    or r0, r0, r18
    sth r0, 0x0(r28)
    lhz r0, 0x0(r30)
    rlwinm r0, r0, 0, 17, 15
    sth r0, 0x0(r30)
    lhz r0, 0x0(r30)
    clrrwi r0, r0, 10
    nop
    sth r0, 0x0(r30)
    lhz r0, 0x0(r29)
    rlwinm r0, r0, 0, 27, 15
    ori r0, r0, 0x20
    sth r0, 0x0(r29)
L_80050CC4:
    lhz r0, 0x0(r31)
    rlwinm. r0, r0, 0, 22, 22
    opword  0x4082FFF8  // bne .L_80050CC4
    lhz r3, 0x0(r31)
    li r0, -0x89
    and r0, r3, r0
    ori r0, r0, 0x20
    sth r0, 0x0(r31)
    lhz r0, 0x0(r25)
    clrrwi r3, r0, 10
    lwz r0, 0x234(r1)
    or r0, r3, r0
    sth r0, 0x0(r25)
    lhz r0, 0x0(r26)
    rlwinm r3, r0, 0, 27, 15
    lwz r0, 0x258(r1)
    or r0, r3, r0
    sth r0, 0x0(r26)
    lhz r0, 0x0(r27)
    clrrwi r0, r0, 10
    or r0, r0, r16
    sth r0, 0x0(r27)
    lhz r0, 0x0(r28)
    rlwinm r0, r0, 0, 27, 15
    or r0, r0, r23
    sth r0, 0x0(r28)
    lhz r0, 0x0(r30)
    rlwinm r0, r0, 0, 17, 15
    sth r0, 0x0(r30)
    lhz r0, 0x0(r30)
    clrrwi r0, r0, 10
    nop
    sth r0, 0x0(r30)
    lhz r0, 0x0(r29)
    rlwinm r0, r0, 0, 27, 15
    ori r0, r0, 0x20
    sth r0, 0x0(r29)
L_80050D58:
    lhz r0, 0x0(r31)
    rlwinm. r0, r0, 0, 22, 22
    opword  0x4082FFF8  // bne .L_80050D58
    lhz r4, 0x0(r31)
    li r0, -0x89
    lis r3, 0x40
    and r0, r4, r0
    ori r0, r0, 0x20
    sth r0, 0x0(r31)
    addis r19, r19, 0x40
    lhz r0, 0x270(r1)
    opword  0x906D8A84  // stw r3, lbl_8053A644@sda21(r0)
    ori r0, r0, 0x8
    sth r0, 0x270(r1)
    opword  0x48000B4C  // b .L_800518DC
L_80050D94:
    lhz r0, 0x0(r25)
    clrrwi r3, r0, 10
    lwz r0, 0x238(r1)
    or r0, r3, r0
    sth r0, 0x0(r25)
    lhz r0, 0x0(r26)
    rlwinm r0, r0, 0, 27, 15
    or r0, r0, r20
    sth r0, 0x0(r26)
    lhz r0, 0x0(r27)
    clrrwi r3, r0, 10
    lwz r0, 0x230(r1)
    or r0, r3, r0
    sth r0, 0x0(r27)
    lhz r0, 0x0(r28)
    rlwinm r3, r0, 0, 27, 15
    lwz r0, 0x264(r1)
    or r0, r3, r0
    sth r0, 0x0(r28)
    lhz r0, 0x0(r30)
    rlwinm r0, r0, 0, 17, 15
    sth r0, 0x0(r30)
    lhz r0, 0x0(r30)
    clrrwi r0, r0, 10
    nop
    sth r0, 0x0(r30)
    lhz r0, 0x0(r29)
    rlwinm r0, r0, 0, 27, 15
    ori r0, r0, 0x20
    sth r0, 0x0(r29)
L_80050E0C:
    lhz r0, 0x0(r31)
    rlwinm. r0, r0, 0, 22, 22
    opword  0x4082FFF8  // bne .L_80050E0C
    lhz r3, 0x0(r31)
    li r0, -0x89
    and r0, r3, r0
    ori r0, r0, 0x20
    sth r0, 0x0(r31)
    lhz r0, 0x0(r25)
    clrrwi r3, r0, 10
    lwz r0, 0x244(r1)
    or r0, r3, r0
    sth r0, 0x0(r25)
    lhz r0, 0x0(r26)
    rlwinm r3, r0, 0, 27, 15
    lwz r0, 0x250(r1)
    or r0, r3, r0
    sth r0, 0x0(r26)
    lhz r0, 0x0(r27)
    clrrwi r0, r0, 10
    or r0, r0, r17
    sth r0, 0x0(r27)
    lhz r0, 0x0(r28)
    rlwinm r0, r0, 0, 27, 15
    or r0, r0, r18
    sth r0, 0x0(r28)
    lhz r0, 0x0(r30)
    rlwinm r0, r0, 0, 17, 15
    sth r0, 0x0(r30)
    lhz r0, 0x0(r30)
    clrrwi r0, r0, 10
    nop
    sth r0, 0x0(r30)
    lhz r0, 0x0(r29)
    rlwinm r0, r0, 0, 27, 15
    ori r0, r0, 0x20
    sth r0, 0x0(r29)
L_80050EA0:
    lhz r0, 0x0(r31)
    rlwinm. r0, r0, 0, 22, 22
    opword  0x4082FFF8  // bne .L_80050EA0
    lhz r0, 0x0(r31)
    li r4, -0x89
    addi r3, r24, 0x0
    and r0, r0, r4
    ori r0, r0, 0x20
    sth r0, 0x0(r31)
    li r4, 0x0
    li r5, 0x20
    bl memset
    addi r3, r24, 0x0
    li r4, 0x20
    bl DCFlushRange
    lhz r0, 0x0(r25)
    clrrwi r3, r0, 10
    lwz r0, 0x240(r1)
    or r0, r3, r0
    sth r0, 0x0(r25)
    lhz r0, 0x0(r26)
    rlwinm r3, r0, 0, 27, 15
    lwz r0, 0x254(r1)
    or r0, r3, r0
    sth r0, 0x0(r26)
    lhz r0, 0x0(r27)
    clrrwi r3, r0, 10
    lwz r0, 0x230(r1)
    or r0, r3, r0
    sth r0, 0x0(r27)
    lhz r0, 0x0(r28)
    rlwinm r3, r0, 0, 27, 15
    lwz r0, 0x264(r1)
    or r0, r3, r0
    sth r0, 0x0(r28)
    lhz r0, 0x0(r30)
    ori r0, r0, 0x8000
    sth r0, 0x0(r30)
    lhz r0, 0x0(r30)
    clrrwi r0, r0, 10
    nop
    sth r0, 0x0(r30)
    lhz r0, 0x0(r29)
    rlwinm r0, r0, 0, 27, 15
    ori r0, r0, 0x20
    sth r0, 0x0(r29)
L_80050F58:
    lhz r0, 0x0(r31)
    rlwinm. r0, r0, 0, 22, 22
    opword  0x4082FFF8  // bne .L_80050F58
    lhz r3, 0x0(r31)
    li r0, -0x89
    and r0, r3, r0
    ori r0, r0, 0x20
    sth r0, 0x0(r31)
    bl PPCSync
    lwz r3, 0x0(r24)
    lwz r0, 0x0(r22)
    cmplw r3, r0
    opword  0x408201DC  // bne .L_80051164
    lhz r0, 0x0(r25)
    clrrwi r3, r0, 10
    lwz r0, 0x23c(r1)
    or r0, r3, r0
    sth r0, 0x0(r25)
    lhz r0, 0x0(r26)
    rlwinm r3, r0, 0, 27, 15
    lwz r0, 0x24c(r1)
    or r0, r3, r0
    sth r0, 0x0(r26)
    lhz r0, 0x0(r27)
    clrrwi r0, r0, 10
    or r0, r0, r17
    sth r0, 0x0(r27)
    lhz r0, 0x0(r28)
    rlwinm r0, r0, 0, 27, 15
    or r0, r0, r18
    sth r0, 0x0(r28)
    lhz r0, 0x0(r30)
    rlwinm r0, r0, 0, 17, 15
    sth r0, 0x0(r30)
    lhz r0, 0x0(r30)
    clrrwi r0, r0, 10
    nop
    sth r0, 0x0(r30)
    lhz r0, 0x0(r29)
    rlwinm r0, r0, 0, 27, 15
    ori r0, r0, 0x20
    sth r0, 0x0(r29)
L_80051000:
    lhz r0, 0x0(r31)
    rlwinm. r0, r0, 0, 22, 22
    opword  0x4082FFF8  // bne .L_80051000
    lhz r3, 0x0(r31)
    li r0, -0x89
    and r0, r3, r0
    ori r0, r0, 0x20
    sth r0, 0x0(r31)
    lhz r0, 0x0(r25)
    clrrwi r3, r0, 10
    lwz r0, 0x234(r1)
    or r0, r3, r0
    sth r0, 0x0(r25)
    lhz r0, 0x0(r26)
    rlwinm r3, r0, 0, 27, 15
    lwz r0, 0x258(r1)
    or r0, r3, r0
    sth r0, 0x0(r26)
    lhz r0, 0x0(r27)
    clrrwi r0, r0, 10
    or r0, r0, r16
    sth r0, 0x0(r27)
    lhz r0, 0x0(r28)
    rlwinm r0, r0, 0, 27, 15
    or r0, r0, r23
    sth r0, 0x0(r28)
    lhz r0, 0x0(r30)
    rlwinm r0, r0, 0, 17, 15
    sth r0, 0x0(r30)
    lhz r0, 0x0(r30)
    clrrwi r0, r0, 10
    nop
    sth r0, 0x0(r30)
    lhz r0, 0x0(r29)
    rlwinm r0, r0, 0, 27, 15
    ori r0, r0, 0x20
    sth r0, 0x0(r29)
L_80051094:
    lhz r0, 0x0(r31)
    rlwinm. r0, r0, 0, 22, 22
    opword  0x4082FFF8  // bne .L_80051094
    lhz r3, 0x0(r31)
    li r0, -0x89
    and r0, r3, r0
    ori r0, r0, 0x20
    sth r0, 0x0(r31)
    lhz r0, 0x0(r25)
    clrrwi r3, r0, 10
    lwz r0, 0x22c(r1)
    or r0, r3, r0
    sth r0, 0x0(r25)
    lhz r0, 0x0(r26)
    rlwinm r3, r0, 0, 27, 15
    lwz r0, 0x25c(r1)
    or r0, r3, r0
    sth r0, 0x0(r26)
    lhz r0, 0x0(r27)
    clrrwi r0, r0, 10
    or r0, r0, r14
    sth r0, 0x0(r27)
    lhz r0, 0x0(r28)
    rlwinm r0, r0, 0, 27, 15
    or r0, r0, r15
    sth r0, 0x0(r28)
    lhz r0, 0x0(r30)
    rlwinm r0, r0, 0, 17, 15
    sth r0, 0x0(r30)
    lhz r0, 0x0(r30)
    clrrwi r0, r0, 10
    nop
    sth r0, 0x0(r30)
    lhz r0, 0x0(r29)
    rlwinm r0, r0, 0, 27, 15
    ori r0, r0, 0x20
    sth r0, 0x0(r29)
L_80051128:
    lhz r0, 0x0(r31)
    rlwinm. r0, r0, 0, 22, 22
    opword  0x4082FFF8  // bne .L_80051128
    lhz r4, 0x0(r31)
    li r0, -0x89
    lis r3, 0x80
    and r0, r4, r0
    ori r0, r0, 0x20
    sth r0, 0x0(r31)
    addis r19, r19, 0x80
    lhz r0, 0x270(r1)
    opword  0x906D8A84  // stw r3, lbl_8053A644@sda21(r0)
    ori r0, r0, 0x10
    sth r0, 0x270(r1)
    opword  0x4800077C  // b .L_800518DC
L_80051164:
    lhz r0, 0x0(r25)
    clrrwi r3, r0, 10
    lwz r0, 0x238(r1)
    or r0, r3, r0
    sth r0, 0x0(r25)
    lhz r0, 0x0(r26)
    rlwinm r0, r0, 0, 27, 15
    or r0, r0, r20
    sth r0, 0x0(r26)
    lhz r0, 0x0(r27)
    clrrwi r3, r0, 10
    lwz r0, 0x228(r1)
    or r0, r3, r0
    sth r0, 0x0(r27)
    lhz r0, 0x0(r28)
    rlwinm r3, r0, 0, 27, 15
    lwz r0, 0x26c(r1)
    or r0, r3, r0
    sth r0, 0x0(r28)
    lhz r0, 0x0(r30)
    rlwinm r0, r0, 0, 17, 15
    sth r0, 0x0(r30)
    lhz r0, 0x0(r30)
    clrrwi r0, r0, 10
    nop
    sth r0, 0x0(r30)
    lhz r0, 0x0(r29)
    rlwinm r0, r0, 0, 27, 15
    ori r0, r0, 0x20
    sth r0, 0x0(r29)
L_800511DC:
    lhz r0, 0x0(r31)
    rlwinm. r0, r0, 0, 22, 22
    opword  0x4082FFF8  // bne .L_800511DC
    lhz r3, 0x0(r31)
    li r0, -0x89
    and r0, r3, r0
    ori r0, r0, 0x20
    sth r0, 0x0(r31)
    lhz r0, 0x0(r25)
    clrrwi r3, r0, 10
    lwz r0, 0x244(r1)
    or r0, r3, r0
    sth r0, 0x0(r25)
    lhz r0, 0x0(r26)
    rlwinm r3, r0, 0, 27, 15
    lwz r0, 0x250(r1)
    or r0, r3, r0
    sth r0, 0x0(r26)
    lhz r0, 0x0(r27)
    clrrwi r0, r0, 10
    or r0, r0, r17
    sth r0, 0x0(r27)
    lhz r0, 0x0(r28)
    rlwinm r0, r0, 0, 27, 15
    or r0, r0, r18
    sth r0, 0x0(r28)
    lhz r0, 0x0(r30)
    rlwinm r0, r0, 0, 17, 15
    sth r0, 0x0(r30)
    lhz r0, 0x0(r30)
    clrrwi r0, r0, 10
    nop
    sth r0, 0x0(r30)
    lhz r0, 0x0(r29)
    rlwinm r0, r0, 0, 27, 15
    ori r0, r0, 0x20
    sth r0, 0x0(r29)
L_80051270:
    lhz r0, 0x0(r31)
    rlwinm. r0, r0, 0, 22, 22
    opword  0x4082FFF8  // bne .L_80051270
    lhz r0, 0x0(r31)
    li r4, -0x89
    addi r3, r24, 0x0
    and r0, r0, r4
    ori r0, r0, 0x20
    sth r0, 0x0(r31)
    li r4, 0x0
    li r5, 0x20
    bl memset
    addi r3, r24, 0x0
    li r4, 0x20
    bl DCFlushRange
    lhz r0, 0x0(r25)
    clrrwi r3, r0, 10
    lwz r0, 0x240(r1)
    or r0, r3, r0
    sth r0, 0x0(r25)
    lhz r0, 0x0(r26)
    rlwinm r3, r0, 0, 27, 15
    lwz r0, 0x254(r1)
    or r0, r3, r0
    sth r0, 0x0(r26)
    lhz r0, 0x0(r27)
    clrrwi r3, r0, 10
    lwz r0, 0x228(r1)
    or r0, r3, r0
    sth r0, 0x0(r27)
    lhz r0, 0x0(r28)
    rlwinm r3, r0, 0, 27, 15
    lwz r0, 0x26c(r1)
    or r0, r3, r0
    sth r0, 0x0(r28)
    lhz r0, 0x0(r30)
    ori r0, r0, 0x8000
    sth r0, 0x0(r30)
    lhz r0, 0x0(r30)
    clrrwi r0, r0, 10
    nop
    sth r0, 0x0(r30)
    lhz r0, 0x0(r29)
    rlwinm r0, r0, 0, 27, 15
    ori r0, r0, 0x20
    sth r0, 0x0(r29)
L_80051328:
    lhz r0, 0x0(r31)
    rlwinm. r0, r0, 0, 22, 22
    opword  0x4082FFF8  // bne .L_80051328
    lhz r3, 0x0(r31)
    li r0, -0x89
    and r0, r3, r0
    ori r0, r0, 0x20
    sth r0, 0x0(r31)
    bl PPCSync
    lwz r0, 0x0(r24)
    lwz r3, 0x0(r22)
    cmplw r0, r3
    opword  0x40820278  // bne .L_800515D0
    lhz r0, 0x0(r25)
    clrrwi r3, r0, 10
    lwz r0, 0x23c(r1)
    or r0, r3, r0
    sth r0, 0x0(r25)
    lhz r0, 0x0(r26)
    rlwinm r3, r0, 0, 27, 15
    lwz r0, 0x24c(r1)
    or r0, r3, r0
    sth r0, 0x0(r26)
    lhz r0, 0x0(r27)
    clrrwi r0, r0, 10
    or r0, r0, r17
    sth r0, 0x0(r27)
    lhz r0, 0x0(r28)
    rlwinm r0, r0, 0, 27, 15
    or r0, r0, r18
    sth r0, 0x0(r28)
    lhz r0, 0x0(r30)
    rlwinm r0, r0, 0, 17, 15
    sth r0, 0x0(r30)
    lhz r0, 0x0(r30)
    clrrwi r0, r0, 10
    nop
    sth r0, 0x0(r30)
    lhz r0, 0x0(r29)
    rlwinm r0, r0, 0, 27, 15
    ori r0, r0, 0x20
    sth r0, 0x0(r29)
L_800513D0:
    lhz r0, 0x0(r31)
    rlwinm. r0, r0, 0, 22, 22
    opword  0x4082FFF8  // bne .L_800513D0
    lhz r3, 0x0(r31)
    li r0, -0x89
    and r0, r3, r0
    ori r0, r0, 0x20
    sth r0, 0x0(r31)
    lhz r0, 0x0(r25)
    clrrwi r3, r0, 10
    lwz r0, 0x234(r1)
    or r0, r3, r0
    sth r0, 0x0(r25)
    lhz r0, 0x0(r26)
    rlwinm r3, r0, 0, 27, 15
    lwz r0, 0x258(r1)
    or r0, r3, r0
    sth r0, 0x0(r26)
    lhz r0, 0x0(r27)
    clrrwi r0, r0, 10
    or r0, r0, r16
    sth r0, 0x0(r27)
    lhz r0, 0x0(r28)
    rlwinm r0, r0, 0, 27, 15
    or r0, r0, r23
    sth r0, 0x0(r28)
    lhz r0, 0x0(r30)
    rlwinm r0, r0, 0, 17, 15
    sth r0, 0x0(r30)
    lhz r0, 0x0(r30)
    clrrwi r0, r0, 10
    nop
    sth r0, 0x0(r30)
    lhz r0, 0x0(r29)
    rlwinm r0, r0, 0, 27, 15
    ori r0, r0, 0x20
    sth r0, 0x0(r29)
L_80051464:
    lhz r0, 0x0(r31)
    rlwinm. r0, r0, 0, 22, 22
    opword  0x4082FFF8  // bne .L_80051464
    lhz r3, 0x0(r31)
    li r0, -0x89
    and r0, r3, r0
    ori r0, r0, 0x20
    sth r0, 0x0(r31)
    lhz r0, 0x0(r25)
    clrrwi r3, r0, 10
    lwz r0, 0x22c(r1)
    or r0, r3, r0
    sth r0, 0x0(r25)
    lhz r0, 0x0(r26)
    rlwinm r3, r0, 0, 27, 15
    lwz r0, 0x25c(r1)
    or r0, r3, r0
    sth r0, 0x0(r26)
    lhz r0, 0x0(r27)
    clrrwi r0, r0, 10
    or r0, r0, r14
    sth r0, 0x0(r27)
    lhz r0, 0x0(r28)
    rlwinm r0, r0, 0, 27, 15
    or r0, r0, r15
    sth r0, 0x0(r28)
    lhz r0, 0x0(r30)
    rlwinm r0, r0, 0, 17, 15
    sth r0, 0x0(r30)
    lhz r0, 0x0(r30)
    clrrwi r0, r0, 10
    nop
    sth r0, 0x0(r30)
    lhz r0, 0x0(r29)
    rlwinm r0, r0, 0, 27, 15
    ori r0, r0, 0x20
    sth r0, 0x0(r29)
L_800514F8:
    lhz r0, 0x0(r31)
    rlwinm. r0, r0, 0, 22, 22
    opword  0x4082FFF8  // bne .L_800514F8
    lhz r3, 0x0(r31)
    li r0, -0x89
    and r0, r3, r0
    ori r0, r0, 0x20
    sth r0, 0x0(r31)
    lhz r0, 0x0(r25)
    clrrwi r3, r0, 10
    lwz r0, 0x224(r1)
    or r0, r3, r0
    sth r0, 0x0(r25)
    lhz r0, 0x0(r26)
    rlwinm r3, r0, 0, 27, 15
    lwz r0, 0x260(r1)
    or r0, r3, r0
    sth r0, 0x0(r26)
    lhz r0, 0x0(r27)
    clrrwi r3, r0, 10
    lwz r0, 0x230(r1)
    or r0, r3, r0
    sth r0, 0x0(r27)
    lhz r0, 0x0(r28)
    rlwinm r3, r0, 0, 27, 15
    lwz r0, 0x264(r1)
    or r0, r3, r0
    sth r0, 0x0(r28)
    lhz r0, 0x0(r30)
    rlwinm r0, r0, 0, 17, 15
    sth r0, 0x0(r30)
    lhz r0, 0x0(r30)
    clrrwi r0, r0, 10
    nop
    sth r0, 0x0(r30)
    lhz r0, 0x0(r29)
    rlwinm r0, r0, 0, 27, 15
    ori r0, r0, 0x20
    sth r0, 0x0(r29)
L_80051594:
    lhz r0, 0x0(r31)
    rlwinm. r0, r0, 0, 22, 22
    opword  0x4082FFF8  // bne .L_80051594
    lhz r4, 0x0(r31)
    li r0, -0x89
    lis r3, 0x100
    and r0, r4, r0
    ori r0, r0, 0x20
    sth r0, 0x0(r31)
    addis r19, r19, 0x100
    lhz r0, 0x270(r1)
    opword  0x906D8A84  // stw r3, lbl_8053A644@sda21(r0)
    ori r0, r0, 0x18
    sth r0, 0x270(r1)
    opword  0x48000310  // b .L_800518DC
L_800515D0:
    lhz r0, 0x0(r25)
    clrrwi r3, r0, 10
    lwz r0, 0x23c(r1)
    or r0, r3, r0
    sth r0, 0x0(r25)
    lhz r0, 0x0(r26)
    rlwinm r3, r0, 0, 27, 15
    lwz r0, 0x24c(r1)
    or r0, r3, r0
    sth r0, 0x0(r26)
    lhz r0, 0x0(r27)
    clrrwi r0, r0, 10
    or r0, r0, r17
    sth r0, 0x0(r27)
    lhz r0, 0x0(r28)
    rlwinm r0, r0, 0, 27, 15
    or r0, r0, r18
    sth r0, 0x0(r28)
    lhz r0, 0x0(r30)
    rlwinm r0, r0, 0, 17, 15
    sth r0, 0x0(r30)
    lhz r0, 0x0(r30)
    clrrwi r0, r0, 10
    nop
    sth r0, 0x0(r30)
    lhz r0, 0x0(r29)
    rlwinm r0, r0, 0, 27, 15
    ori r0, r0, 0x20
    sth r0, 0x0(r29)
L_80051644:
    lhz r0, 0x0(r31)
    rlwinm. r0, r0, 0, 22, 22
    opword  0x4082FFF8  // bne .L_80051644
    lhz r3, 0x0(r31)
    li r0, -0x89
    and r0, r3, r0
    ori r0, r0, 0x20
    sth r0, 0x0(r31)
    lhz r0, 0x0(r25)
    clrrwi r3, r0, 10
    lwz r0, 0x234(r1)
    or r0, r3, r0
    sth r0, 0x0(r25)
    lhz r0, 0x0(r26)
    rlwinm r3, r0, 0, 27, 15
    lwz r0, 0x258(r1)
    or r0, r3, r0
    sth r0, 0x0(r26)
    lhz r0, 0x0(r27)
    clrrwi r0, r0, 10
    or r0, r0, r16
    sth r0, 0x0(r27)
    lhz r0, 0x0(r28)
    rlwinm r0, r0, 0, 27, 15
    or r0, r0, r23
    sth r0, 0x0(r28)
    lhz r0, 0x0(r30)
    rlwinm r0, r0, 0, 17, 15
    sth r0, 0x0(r30)
    lhz r0, 0x0(r30)
    clrrwi r0, r0, 10
    nop
    sth r0, 0x0(r30)
    lhz r0, 0x0(r29)
    rlwinm r0, r0, 0, 27, 15
    ori r0, r0, 0x20
    sth r0, 0x0(r29)
L_800516D8:
    lhz r0, 0x0(r31)
    rlwinm. r0, r0, 0, 22, 22
    opword  0x4082FFF8  // bne .L_800516D8
    lhz r3, 0x0(r31)
    li r0, -0x89
    and r0, r3, r0
    ori r0, r0, 0x20
    sth r0, 0x0(r31)
    lhz r0, 0x0(r25)
    clrrwi r3, r0, 10
    lwz r0, 0x22c(r1)
    or r0, r3, r0
    sth r0, 0x0(r25)
    lhz r0, 0x0(r26)
    rlwinm r3, r0, 0, 27, 15
    lwz r0, 0x25c(r1)
    or r0, r3, r0
    sth r0, 0x0(r26)
    lhz r0, 0x0(r27)
    clrrwi r0, r0, 10
    or r0, r0, r14
    sth r0, 0x0(r27)
    lhz r0, 0x0(r28)
    rlwinm r0, r0, 0, 27, 15
    or r0, r0, r15
    sth r0, 0x0(r28)
    lhz r0, 0x0(r30)
    rlwinm r0, r0, 0, 17, 15
    sth r0, 0x0(r30)
    lhz r0, 0x0(r30)
    clrrwi r0, r0, 10
    nop
    sth r0, 0x0(r30)
    lhz r0, 0x0(r29)
    rlwinm r0, r0, 0, 27, 15
    ori r0, r0, 0x20
    sth r0, 0x0(r29)
L_8005176C:
    lhz r0, 0x0(r31)
    rlwinm. r0, r0, 0, 22, 22
    opword  0x4082FFF8  // bne .L_8005176C
    lhz r3, 0x0(r31)
    li r0, -0x89
    and r0, r3, r0
    ori r0, r0, 0x20
    sth r0, 0x0(r31)
    lhz r0, 0x0(r25)
    clrrwi r3, r0, 10
    lwz r0, 0x224(r1)
    or r0, r3, r0
    sth r0, 0x0(r25)
    lhz r0, 0x0(r26)
    rlwinm r3, r0, 0, 27, 15
    lwz r0, 0x260(r1)
    or r0, r3, r0
    sth r0, 0x0(r26)
    lhz r0, 0x0(r27)
    clrrwi r3, r0, 10
    lwz r0, 0x230(r1)
    or r0, r3, r0
    sth r0, 0x0(r27)
    lhz r0, 0x0(r28)
    rlwinm r3, r0, 0, 27, 15
    lwz r0, 0x264(r1)
    or r0, r3, r0
    sth r0, 0x0(r28)
    lhz r0, 0x0(r30)
    rlwinm r0, r0, 0, 17, 15
    sth r0, 0x0(r30)
    lhz r0, 0x0(r30)
    clrrwi r0, r0, 10
    nop
    sth r0, 0x0(r30)
    lhz r0, 0x0(r29)
    rlwinm r0, r0, 0, 27, 15
    ori r0, r0, 0x20
    sth r0, 0x0(r29)
L_80051808:
    lhz r0, 0x0(r31)
    rlwinm. r0, r0, 0, 22, 22
    opword  0x4082FFF8  // bne .L_80051808
    lhz r3, 0x0(r31)
    li r0, -0x89
    and r0, r3, r0
    ori r0, r0, 0x20
    sth r0, 0x0(r31)
    lhz r0, 0x0(r25)
    clrrwi r3, r0, 10
    lwz r0, 0x220(r1)
    or r0, r3, r0
    sth r0, 0x0(r25)
    lhz r0, 0x0(r26)
    rlwinm r3, r0, 0, 27, 15
    lwz r0, 0x268(r1)
    or r0, r3, r0
    sth r0, 0x0(r26)
    lhz r0, 0x0(r27)
    clrrwi r3, r0, 10
    lwz r0, 0x228(r1)
    or r0, r3, r0
    sth r0, 0x0(r27)
    lhz r0, 0x0(r28)
    rlwinm r3, r0, 0, 27, 15
    lwz r0, 0x26c(r1)
    or r0, r3, r0
    sth r0, 0x0(r28)
    lhz r0, 0x0(r30)
    rlwinm r0, r0, 0, 17, 15
    sth r0, 0x0(r30)
    lhz r0, 0x0(r30)
    clrrwi r0, r0, 10
    nop
    sth r0, 0x0(r30)
    lhz r0, 0x0(r29)
    rlwinm r0, r0, 0, 27, 15
    ori r0, r0, 0x20
    sth r0, 0x0(r29)
L_800518A4:
    lhz r0, 0x0(r31)
    rlwinm. r0, r0, 0, 22, 22
    opword  0x4082FFF8  // bne .L_800518A4
    lhz r4, 0x0(r31)
    li r0, -0x89
    lis r3, 0x200
    and r0, r4, r0
    ori r0, r0, 0x20
    sth r0, 0x0(r31)
    addis r19, r19, 0x200
    lhz r0, 0x270(r1)
    opword  0x906D8A84  // stw r3, lbl_8053A644@sda21(r0)
    ori r0, r0, 0x20
    sth r0, 0x270(r1)
L_800518DC:
    lwz r3, 0x248(r1)
    lhz r0, 0x0(r3)
    clrrwi r3, r0, 6
    lhz r0, 0x270(r1)
    or r0, r3, r0
    lwz r3, 0x248(r1)
    sth r0, 0x0(r3)
L_800518F8:
    lis r3, 0xc000
    stw r19, 0xd0(r3)
    opword  0x926D8A7C  // stw r19, lbl_8053A63C@sda21(r0)
    lwz r0, 0x2c4(r1)
    lmw r14, 0x278(r1)
    addi r1, r1, 0x2c0
    mtlr r0
    blr
}

ASM void fn_80051918(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x8(r1)
    opword  0x800D8AAC  // lwz r0, lbl_8053A66C@sda21(r0)
    cmplwi r0, 0x0
    opword  0x4082001C  // bne .L_80051948
    opword  0x806D8AA0  // lwz r3, lbl_8053A660@sda21(r0)
    cmplwi r3, 0x0
    opword  0x41820010  // beq .L_80051948
    opword  0x906D8AAC  // stw r3, lbl_8053A66C@sda21(r0)
    lwz r0, 0x0(r3)
    opword  0x900D8AA0  // stw r0, lbl_8053A660@sda21(r0)
L_80051948:
    opword  0x80AD8AAC  // lwz r5, lbl_8053A66C@sda21(r0)
    cmplwi r5, 0x0
    opword  0x418200B8  // beq .L_80051A08
    lwz r6, 0x18(r5)
    opword  0x800D8AB8  // lwz r0, lbl_8053A678@sda21(r0)
    cmplw r6, r0
    opword  0x4181003C  // bgt .L_8005199C
    lwz r3, 0x8(r5)
    cmplwi r3, 0x0
    opword  0x40820014  // bne .L_80051980
    lwz r4, 0x10(r5)
    lwz r5, 0x14(r5)
    bl fn_8004FE58
    opword  0x48000010  // b .L_8005198C
L_80051980:
    lwz r4, 0x14(r5)
    lwz r5, 0x10(r5)
    bl fn_8004FE58
L_8005198C:
    opword  0x806D8AAC  // lwz r3, lbl_8053A66C@sda21(r0)
    lwz r0, 0x1c(r3)
    opword  0x900D8AB4  // stw r0, lbl_8053A674@sda21(r0)
    opword  0x48000034  // b .L_800519CC
L_8005199C:
    lwz r3, 0x8(r5)
    cmplwi r3, 0x0
    opword  0x40820018  // bne .L_800519BC
    lwz r4, 0x10(r5)
    mr r6, r0
    lwz r5, 0x14(r5)
    bl fn_8004FE58
    opword  0x48000014  // b .L_800519CC
L_800519BC:
    lwz r4, 0x14(r5)
    mr r6, r0
    lwz r5, 0x10(r5)
    bl fn_8004FE58
L_800519CC:
    opword  0x806D8AAC  // lwz r3, lbl_8053A66C@sda21(r0)
    opword  0x808D8AB8  // lwz r4, lbl_8053A678@sda21(r0)
    lwz r0, 0x18(r3)
    subf r0, r4, r0
    stw r0, 0x18(r3)
    opword  0x808D8AAC  // lwz r4, lbl_8053A66C@sda21(r0)
    opword  0x800D8AB8  // lwz r0, lbl_8053A678@sda21(r0)
    lwz r3, 0x10(r4)
    add r0, r3, r0
    stw r0, 0x10(r4)
    opword  0x808D8AAC  // lwz r4, lbl_8053A66C@sda21(r0)
    opword  0x800D8AB8  // lwz r0, lbl_8053A678@sda21(r0)
    lwz r3, 0x14(r4)
    add r0, r3, r0
    stw r0, 0x14(r4)
L_80051A08:
    lwz r0, 0xc(r1)
    addi r1, r1, 0x8
    mtlr r0
    blr
}

ASM void fn_80051A18(void)
{
    nofralloc
    blr
}

ASM void fn_80051A1C(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x8(r1)
    opword  0x818D8AB0  // lwz r12, lbl_8053A670@sda21(r0)
    cmplwi r12, 0x0
    opword  0x41820020  // beq .L_80051A50
    opword  0x806D8AA8  // lwz r3, lbl_8053A668@sda21(r0)
    mtlr r12
    blrl
    li r0, 0x0
    opword  0x900D8AA8  // stw r0, lbl_8053A668@sda21(r0)
    opword  0x900D8AB0  // stw r0, lbl_8053A670@sda21(r0)
    opword  0x48000028  // b .L_80051A74
L_80051A50:
    opword  0x818D8AB4  // lwz r12, lbl_8053A674@sda21(r0)
    cmplwi r12, 0x0
    opword  0x4182001C  // beq .L_80051A74
    opword  0x806D8AAC  // lwz r3, lbl_8053A66C@sda21(r0)
    mtlr r12
    blrl
    li r0, 0x0
    opword  0x900D8AAC  // stw r0, lbl_8053A66C@sda21(r0)
    opword  0x900D8AB4  // stw r0, lbl_8053A674@sda21(r0)
L_80051A74:
    opword  0x80CD8A98  // lwz r6, lbl_8053A658@sda21(r0)
    cmplwi r6, 0x0
    opword  0x4182004C  // beq .L_80051AC8
    lwz r3, 0x8(r6)
    cmplwi r3, 0x0
    opword  0x40820018  // bne .L_80051AA0
    lwz r4, 0x10(r6)
    lwz r5, 0x14(r6)
    lwz r6, 0x18(r6)
    bl fn_8004FE58
    opword  0x48000014  // b .L_80051AB0
L_80051AA0:
    lwz r4, 0x14(r6)
    lwz r5, 0x10(r6)
    lwz r6, 0x18(r6)
    bl fn_8004FE58
L_80051AB0:
    opword  0x806D8A98  // lwz r3, lbl_8053A658@sda21(r0)
    lwz r0, 0x1c(r3)
    opword  0x900D8AB0  // stw r0, lbl_8053A670@sda21(r0)
    opword  0x906D8AA8  // stw r3, lbl_8053A668@sda21(r0)
    lwz r0, 0x0(r3)
    opword  0x900D8A98  // stw r0, lbl_8053A658@sda21(r0)
L_80051AC8:
    opword  0x800D8AA8  // lwz r0, lbl_8053A668@sda21(r0)
    cmplwi r0, 0x0
    opword  0x40820008  // bne .L_80051AD8
    bl fn_80051918
L_80051AD8:
    lwz r0, 0xc(r1)
    addi r1, r1, 0x8
    mtlr r0
    blr
}

ASM void fn_80051AE8(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x10(r1)
    stw r31, 0xc(r1)
    opword  0x800D8ABC  // lwz r0, lbl_8053A67C@sda21(r0)
    cmpwi r0, 0x1
    opword  0x41820044  // beq .L_80051B44
    opword  0x806D80E8  // lwz r3, lbl_80539CA8@sda21(r0)
    bl OSRegisterVersion
    li r31, 0x0
    li r0, 0x1000
    opword  0x93ED8AA0  // stw r31, lbl_8053A660@sda21(r0)
    lis r3, fn_80051A1C@ha
    opword  0x93ED8A98  // stw r31, lbl_8053A658@sda21(r0)
    addi r3, r3, fn_80051A1C@l
    opword  0x900D8AB8  // stw r0, lbl_8053A678@sda21(r0)
    bl fn_8004FDD8
    li r0, 0x1
    opword  0x93ED8AA8  // stw r31, lbl_8053A668@sda21(r0)
    opword  0x93ED8AAC  // stw r31, lbl_8053A66C@sda21(r0)
    opword  0x93ED8AB0  // stw r31, lbl_8053A670@sda21(r0)
    opword  0x93ED8AB4  // stw r31, lbl_8053A674@sda21(r0)
    opword  0x900D8ABC  // stw r0, lbl_8053A67C@sda21(r0)
L_80051B44:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    addi r1, r1, 0x10
    mtlr r0
    blr
}

ASM void fn_80051B58(void)
{
    nofralloc
    mflr r0
    cmplwi r10, 0x0
    stw r0, 0x4(r1)
    li r0, 0x0
    stwu r1, -0x38(r1)
    stw r31, 0x34(r1)
    stw r30, 0x30(r1)
    addi r30, r6, 0x0
    stw r29, 0x2c(r1)
    addi r29, r3, 0x0
    stw r0, 0x0(r3)
    stw r4, 0x4(r3)
    stw r5, 0x8(r3)
    stw r7, 0x10(r3)
    stw r8, 0x14(r3)
    stw r9, 0x18(r3)
    opword  0x4182000C  // beq .L_80051BA4
    stw r10, 0x1c(r29)
    opword  0x48000010  // b .L_80051BB0
L_80051BA4:
    lis r3, fn_80051A18@ha
    addi r0, r3, fn_80051A18@l
    stw r0, 0x1c(r29)
L_80051BB0:
    bl OSDisableInterrupts
    cmpwi r30, 0x1
    addi r31, r3, 0x0
    opword  0x41820038  // beq .L_80051BF4
    opword  0x40800054  // bge .L_80051C14
    cmpwi r30, 0x0
    opword  0x40800008  // bge .L_80051BD0
    opword  0x48000048  // b .L_80051C14
L_80051BD0:
    opword  0x800D8AA0  // lwz r0, lbl_8053A660@sda21(r0)
    cmplwi r0, 0x0
    opword  0x41820010  // beq .L_80051BE8
    opword  0x806D8AA4  // lwz r3, lbl_8053A664@sda21(r0)
    stw r29, 0x0(r3)
    opword  0x48000008  // b .L_80051BEC
L_80051BE8:
    opword  0x93AD8AA0  // stw r29, lbl_8053A660@sda21(r0)
L_80051BEC:
    opword  0x93AD8AA4  // stw r29, lbl_8053A664@sda21(r0)
    opword  0x48000024  // b .L_80051C14
L_80051BF4:
    opword  0x800D8A98  // lwz r0, lbl_8053A658@sda21(r0)
    cmplwi r0, 0x0
    opword  0x41820010  // beq .L_80051C0C
    opword  0x806D8A9C  // lwz r3, lbl_8053A65C@sda21(r0)
    stw r29, 0x0(r3)
    opword  0x48000008  // b .L_80051C10
L_80051C0C:
    opword  0x93AD8A98  // stw r29, lbl_8053A658@sda21(r0)
L_80051C10:
    opword  0x93AD8A9C  // stw r29, lbl_8053A65C@sda21(r0)
L_80051C14:
    opword  0x800D8AA8  // lwz r0, lbl_8053A668@sda21(r0)
    cmplwi r0, 0x0
    opword  0x40820074  // bne .L_80051C90
    opword  0x800D8AAC  // lwz r0, lbl_8053A66C@sda21(r0)
    cmplwi r0, 0x0
    opword  0x40820068  // bne .L_80051C90
    opword  0x80CD8A98  // lwz r6, lbl_8053A658@sda21(r0)
    cmplwi r6, 0x0
    opword  0x4182004C  // beq .L_80051C80
    lwz r3, 0x8(r6)
    cmplwi r3, 0x0
    opword  0x40820018  // bne .L_80051C58
    lwz r4, 0x10(r6)
    lwz r5, 0x14(r6)
    lwz r6, 0x18(r6)
    bl fn_8004FE58
    opword  0x48000014  // b .L_80051C68
L_80051C58:
    lwz r4, 0x14(r6)
    lwz r5, 0x10(r6)
    lwz r6, 0x18(r6)
    bl fn_8004FE58
L_80051C68:
    opword  0x806D8A98  // lwz r3, lbl_8053A658@sda21(r0)
    lwz r0, 0x1c(r3)
    opword  0x900D8AB0  // stw r0, lbl_8053A670@sda21(r0)
    opword  0x906D8AA8  // stw r3, lbl_8053A668@sda21(r0)
    lwz r0, 0x0(r3)
    opword  0x900D8A98  // stw r0, lbl_8053A658@sda21(r0)
L_80051C80:
    opword  0x800D8AA8  // lwz r0, lbl_8053A668@sda21(r0)
    cmplwi r0, 0x0
    opword  0x40820008  // bne .L_80051C90
    bl fn_80051918
L_80051C90:
    mr r3, r31
    bl OSRestoreInterrupts
    lwz r0, 0x3c(r1)
    lwz r31, 0x34(r1)
    lwz r30, 0x30(r1)
    lwz r29, 0x2c(r1)
    addi r1, r1, 0x38
    mtlr r0
    blr
}

ASM void fn_80051CB4(void)
{
    nofralloc
    lis r3, 0xcc00
    lhz r0, 0x5000(r3)
    extrwi r3, r0, 1, 16
    blr
}

ASM void fn_80051CC4(void)
{
    nofralloc
    lis r3, 0xcc00
    lhz r0, 0x5004(r3)
    extrwi r3, r0, 1, 16
    blr
}

ASM void fn_80051CD4(void)
{
    nofralloc
    lis r3, 0xcc00
    addi r3, r3, 0x5000
    lhz r0, 0x4(r3)
    lhz r3, 0x6(r3)
    rlwimi r3, r0, 16, 0, 15
    blr
}

ASM void fn_80051CEC(void)
{
    nofralloc
    lis r4, 0xcc00
    srwi r0, r3, 16
    sth r0, 0x5000(r4)
    sth r3, 0x5002(r4)
    blr
}

ASM void fn_80051D00(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x8(r1)
    bl OSDisableInterrupts
    lis r4, 0xcc00
    addi r4, r4, 0x5000
    lhz r5, 0xa(r4)
    li r0, -0xa9
    and r0, r5, r0
    ori r0, r0, 0x2
    sth r0, 0xa(r4)
    bl OSRestoreInterrupts
    lwz r0, 0xc(r1)
    addi r1, r1, 0x8
    mtlr r0
    blr
}

ASM void fn_80051D40(void)
{
    nofralloc
    mflr r0
    lis r3, lbl_804968E8@ha
    stw r0, 0x4(r1)
    addi r5, r3, lbl_804968E8@l
    crclr 6
    addi r3, r5, 0x48
    stwu r1, -0x10(r1)
    addi r4, r5, 0x68
    stw r31, 0xc(r1)
    addi r5, r5, 0x74
    bl fn_80051E04
    opword  0x800D8AC0  // lwz r0, lbl_8053A680@sda21(r0)
    cmpwi r0, 0x1
    opword  0x4182007C  // beq .L_80051DF0
    opword  0x806D80F0  // lwz r3, lbl_80539CB0@sda21(r0)
    bl OSRegisterVersion
    bl OSDisableInterrupts
    lis r4, fn_8003A120@ha
    addi r31, r3, 0x0
    addi r4, r4, fn_8003A120@l
    li r3, 0x7
    bl __OSSetInterruptHandler
    lis r3, 0x100
    bl __OSUnmaskInterrupts
    lis r3, 0xcc00
    addi r6, r3, 0x5000
    lhz r3, 0x500a(r3)
    li r0, -0xa9
    and r0, r3, r0
    ori r0, r0, 0x800
    sth r0, 0xa(r6)
    li r5, -0xad
    li r4, 0x0
    lhz r7, 0xa(r6)
    li r0, 0x1
    addi r3, r31, 0x0
    and r5, r7, r5
    sth r5, 0xa(r6)
    opword  0x908D8AC8  // stw r4, lbl_8053A688@sda21(r0)
    opword  0x908D8AD4  // stw r4, lbl_8053A694@sda21(r0)
    opword  0x908D8ACC  // stw r4, lbl_8053A68C@sda21(r0)
    opword  0x908D8AD0  // stw r4, lbl_8053A690@sda21(r0)
    opword  0x900D8AC0  // stw r0, lbl_8053A680@sda21(r0)
    bl OSRestoreInterrupts
L_80051DF0:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    addi r1, r1, 0x10
    mtlr r0
    blr
}

ASM void fn_80051E04(void)
{
    nofralloc
    stwu r1, -0x70(r1)
    opword  0x40860024  // bne cr1, .L_80051E2C
    stfd fp1, 0x28(r1)
    stfd fp2, 0x30(r1)
    stfd fp3, 0x38(r1)
    stfd fp4, 0x40(r1)
    stfd fp5, 0x48(r1)
    stfd fp6, 0x50(r1)
    stfd fp7, 0x58(r1)
    stfd fp8, 0x60(r1)
L_80051E2C:
    stw r3, 0x8(r1)
    stw r4, 0xc(r1)
    stw r5, 0x10(r1)
    stw r6, 0x14(r1)
    stw r7, 0x18(r1)
    stw r8, 0x1c(r1)
    stw r9, 0x20(r1)
    stw r10, 0x24(r1)
    addi r1, r1, 0x70
    blr
}

ASM void fn_80051E54(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    addi r31, r4, 0x0
    stw r30, 0x10(r1)
    mr. r30, r3
    opword  0x41820044  // beq .L_80051EB4
    lwz r3, 0x18(r30)
    bl fn_80051CEC
L_80051E7C:
    bl fn_80051CB4
    cmplwi r3, 0x0
    opword  0x4082FFF8  // bne .L_80051E7C
    lwz r3, 0x1c(r30)
    bl fn_80051CEC
L_80051E90:
    bl fn_80051CB4
    cmplwi r3, 0x0
    opword  0x4082FFF8  // bne .L_80051E90
    lwz r3, 0x20(r30)
    bl fn_80051CEC
L_80051EA4:
    bl fn_80051CB4
    cmplwi r3, 0x0
    opword  0x4082FFF8  // bne .L_80051EA4
    opword  0x48000040  // b .L_80051EF0
L_80051EB4:
    li r3, 0x0
    bl fn_80051CEC
L_80051EBC:
    bl fn_80051CB4
    cmplwi r3, 0x0
    opword  0x4082FFF8  // bne .L_80051EBC
    li r3, 0x0
    bl fn_80051CEC
L_80051ED0:
    bl fn_80051CB4
    cmplwi r3, 0x0
    opword  0x4082FFF8  // bne .L_80051ED0
    li r3, 0x0
    bl fn_80051CEC
L_80051EE4:
    bl fn_80051CB4
    cmplwi r3, 0x0
    opword  0x4082FFF8  // bne .L_80051EE4
L_80051EF0:
    lwz r3, 0xc(r31)
    bl fn_80051CEC
L_80051EF8:
    bl fn_80051CB4
    cmplwi r3, 0x0
    opword  0x4082FFF8  // bne .L_80051EF8
    lwz r3, 0x10(r31)
    bl fn_80051CEC
L_80051F0C:
    bl fn_80051CB4
    cmplwi r3, 0x0
    opword  0x4082FFF8  // bne .L_80051F0C
    lwz r3, 0x14(r31)
    bl fn_80051CEC
L_80051F20:
    bl fn_80051CB4
    cmplwi r3, 0x0
    opword  0x4082FFF8  // bne .L_80051F20
    lwz r0, 0x0(r31)
    cmplwi r0, 0x0
    opword  0x40820058  // bne .L_80051F8C
    lhz r3, 0x24(r31)
    bl fn_80051CEC
L_80051F40:
    bl fn_80051CB4
    cmplwi r3, 0x0
    opword  0x4082FFF8  // bne .L_80051F40
    li r3, 0x0
    bl fn_80051CEC
L_80051F54:
    bl fn_80051CB4
    cmplwi r3, 0x0
    opword  0x4082FFF8  // bne .L_80051F54
    li r3, 0x0
    bl fn_80051CEC
L_80051F68:
    bl fn_80051CB4
    cmplwi r3, 0x0
    opword  0x4082FFF8  // bne .L_80051F68
    li r3, 0x0
    bl fn_80051CEC
L_80051F7C:
    bl fn_80051CB4
    cmplwi r3, 0x0
    opword  0x4082FFF8  // bne .L_80051F7C
    opword  0x48000054  // b .L_80051FDC
L_80051F8C:
    lhz r3, 0x26(r31)
    bl fn_80051CEC
L_80051F94:
    bl fn_80051CB4
    cmplwi r3, 0x0
    opword  0x4082FFF8  // bne .L_80051F94
    lwz r3, 0x18(r31)
    bl fn_80051CEC
L_80051FA8:
    bl fn_80051CB4
    cmplwi r3, 0x0
    opword  0x4082FFF8  // bne .L_80051FA8
    lwz r3, 0x1c(r31)
    bl fn_80051CEC
L_80051FBC:
    bl fn_80051CB4
    cmplwi r3, 0x0
    opword  0x4082FFF8  // bne .L_80051FBC
    lwz r3, 0x20(r31)
    bl fn_80051CEC
L_80051FD0:
    bl fn_80051CB4
    cmplwi r3, 0x0
    opword  0x4082FFF8  // bne .L_80051FD0
L_80051FDC:
    lwz r0, 0x1c(r1)
    lwz r31, 0x14(r1)
    lwz r30, 0x10(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

ASM void fn_80051FF4(void)
{
    nofralloc
    mflr r0
    lis r4, lbl_80496968@ha
    stw r0, 0x4(r1)
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    addi r31, r4, lbl_80496968@l
    stw r30, 0x10(r1)
    addi r30, r3, 0x0
L_80052014:
    bl fn_80051CC4
    cmplwi r3, 0x0
    opword  0x4182FFF8  // beq .L_80052014
    bl fn_80051CD4
    stw r3, 0xc(r1)
    lis r3, 0x80f4
    subi r3, r3, 0x5fff
    bl fn_80051CEC
L_80052034:
    bl fn_80051CB4
    cmplwi r3, 0x0
    opword  0x4082FFF8  // bne .L_80052034
    lwz r3, 0xc(r30)
    bl fn_80051CEC
L_80052048:
    bl fn_80051CB4
    cmplwi r3, 0x0
    opword  0x4082FFF8  // bne .L_80052048
    lis r3, 0x80f4
    subi r3, r3, 0x3ffe
    bl fn_80051CEC
L_80052060:
    bl fn_80051CB4
    cmplwi r3, 0x0
    opword  0x4082FFF8  // bne .L_80052060
    lwz r0, 0x14(r30)
    clrlwi r3, r0, 16
    bl fn_80051CEC
L_80052078:
    bl fn_80051CB4
    cmplwi r3, 0x0
    opword  0x4082FFF8  // bne .L_80052078
    lis r3, 0x80f4
    subi r3, r3, 0x5ffe
    bl fn_80051CEC
L_80052090:
    bl fn_80051CB4
    cmplwi r3, 0x0
    opword  0x4082FFF8  // bne .L_80052090
    lwz r3, 0x10(r30)
    bl fn_80051CEC
L_800520A4:
    bl fn_80051CB4
    cmplwi r3, 0x0
    opword  0x4082FFF8  // bne .L_800520A4
    lis r3, 0x80f4
    subi r3, r3, 0x4ffe
    bl fn_80051CEC
L_800520BC:
    bl fn_80051CB4
    cmplwi r3, 0x0
    opword  0x4082FFF8  // bne .L_800520BC
    li r3, 0x0
    bl fn_80051CEC
L_800520D0:
    bl fn_80051CB4
    cmplwi r3, 0x0
    opword  0x4082FFF8  // bne .L_800520D0
    lis r3, 0x80f4
    subi r3, r3, 0x2fff
    bl fn_80051CEC
L_800520E8:
    bl fn_80051CB4
    cmplwi r3, 0x0
    opword  0x4082FFF8  // bne .L_800520E8
    lhz r3, 0x24(r30)
    bl fn_80051CEC
L_800520FC:
    bl fn_80051CB4
    cmplwi r3, 0x0
    opword  0x4082FFF8  // bne .L_800520FC
    addi r3, r31, 0x0
    crclr 6
    addi r4, r30, 0x0
    bl fn_80051E04
    lwz r4, 0xc(r30)
    addi r3, r31, 0x20
    crclr 6
    bl fn_80051E04
    lwz r4, 0x14(r30)
    addi r3, r31, 0x50
    crclr 6
    bl fn_80051E04
    lwz r4, 0x10(r30)
    addi r3, r31, 0x80
    crclr 6
    bl fn_80051E04
    lwz r4, 0x1c(r30)
    addi r3, r31, 0xb0
    crclr 6
    bl fn_80051E04
    lhz r4, 0x24(r30)
    addi r3, r31, 0xe0
    crclr 6
    bl fn_80051E04
    lwz r0, 0x1c(r1)
    lwz r31, 0x14(r1)
    lwz r30, 0x10(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

ASM void fn_80052180(void)
{
    nofralloc
    opword  0x800D8AD0  // lwz r0, lbl_8053A690@sda21(r0)
    cmplwi r0, 0x0
    opword  0x40820020  // bne .L_800521A8
    opword  0x906D8AD4  // stw r3, lbl_8053A694@sda21(r0)
    li r0, 0x0
    opword  0x906D8ACC  // stw r3, lbl_8053A68C@sda21(r0)
    opword  0x906D8AD0  // stw r3, lbl_8053A690@sda21(r0)
    stw r0, 0x3c(r3)
    stw r0, 0x38(r3)
    blr
L_800521A8:
    mr r5, r0
    opword  0x48000044  // b .L_800521F0
L_800521B0:
    lwz r4, 0x4(r3)
    lwz r0, 0x4(r5)
    cmplw r4, r0
    opword  0x40800030  // bge .L_800521EC
    lwz r0, 0x3c(r5)
    stw r0, 0x3c(r3)
    stw r3, 0x3c(r5)
    stw r5, 0x38(r3)
    lwz r4, 0x3c(r3)
    cmplwi r4, 0x0
    opword  0x4082000C  // bne .L_800521E4
    opword  0x906D8AD0  // stw r3, lbl_8053A690@sda21(r0)
    opword  0x48000018  // b .L_800521F8
L_800521E4:
    stw r3, 0x38(r4)
    opword  0x48000010  // b .L_800521F8
L_800521EC:
    lwz r5, 0x38(r5)
L_800521F0:
    cmplwi r5, 0x0
    opword  0x4082FFBC  // bne .L_800521B0
L_800521F8:
    cmplwi r5, 0x0
    bnelr
    opword  0x808D8ACC  // lwz r4, lbl_8053A68C@sda21(r0)
    li r0, 0x0
    stw r3, 0x38(r4)
    stw r0, 0x38(r3)
    opword  0x800D8ACC  // lwz r0, lbl_8053A68C@sda21(r0)
    stw r0, 0x3c(r3)
    opword  0x906D8ACC  // stw r3, lbl_8053A68C@sda21(r0)
    blr
}

ASM void fn_80052220(void)
{
    nofralloc
    li r4, 0x0
    stw r4, 0x8(r3)
    li r0, 0x3
    stw r0, 0x0(r3)
    opword  0x800D8AD0  // lwz r0, lbl_8053A690@sda21(r0)
    cmplw r0, r3
    opword  0x40820030  // bne .L_80052268
    lwz r0, 0x38(r3)
    cmplwi r0, 0x0
    opword  0x41820014  // beq .L_80052258
    opword  0x900D8AD0  // stw r0, lbl_8053A690@sda21(r0)
    lwz r3, 0x38(r3)
    stw r4, 0x3c(r3)
    blr
L_80052258:
    opword  0x908D8AD4  // stw r4, lbl_8053A694@sda21(r0)
    opword  0x908D8ACC  // stw r4, lbl_8053A68C@sda21(r0)
    opword  0x908D8AD0  // stw r4, lbl_8053A690@sda21(r0)
    blr
L_80052268:
    opword  0x800D8ACC  // lwz r0, lbl_8053A68C@sda21(r0)
    cmplw r0, r3
    opword  0x40820020  // bne .L_80052290
    lwz r0, 0x3c(r3)
    opword  0x900D8ACC  // stw r0, lbl_8053A68C@sda21(r0)
    lwz r3, 0x3c(r3)
    stw r4, 0x38(r3)
    opword  0x800D8AD0  // lwz r0, lbl_8053A690@sda21(r0)
    opword  0x900D8AD4  // stw r0, lbl_8053A694@sda21(r0)
    blr
L_80052290:
    lwz r0, 0x38(r3)
    opword  0x900D8AD4  // stw r0, lbl_8053A694@sda21(r0)
    lwz r0, 0x38(r3)
    lwz r4, 0x3c(r3)
    stw r0, 0x38(r4)
    lwz r0, 0x3c(r3)
    lwz r3, 0x38(r3)
    stw r0, 0x3c(r3)
    blr
}

ASM void fn_800522B4(void)
{
    nofralloc
    blr
}

ASM void fn_800522B8(void)
{
    nofralloc
    mflr r0
    mulli r4, r3, 0x110
    stw r0, 0x4(r1)
    lis r3, lbl_804B5BA0@ha
    stwu r1, -0x8(r1)
    addi r0, r3, lbl_804B5BA0@l
    add r3, r0, r4
    addi r3, r3, 0x8c
    bl OSWakeupThread
    lwz r0, 0xc(r1)
    addi r1, r1, 0x8
    mtlr r0
    blr
}

ASM void fn_800522EC(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x20(r1)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    stw r29, 0x14(r1)
    addi r29, r3, 0x0
    mulli r4, r29, 0x110
    lis r3, lbl_804B5BA0@ha
    addi r0, r3, lbl_804B5BA0@l
    add r30, r0, r4
    lwz r0, 0x0(r30)
    cmpwi r0, 0x0
    opword  0x41820088  // beq .L_800523A8
    li r31, 0x0
    stw r31, 0x0(r30)
    addi r3, r29, 0x0
    li r4, 0x0
    bl EXISetExiCallback
    addi r3, r30, 0xe0
    bl fn_8004061C
    lwz r0, 0xcc(r30)
    cmplwi r0, 0x0
    mr r12, r0
    opword  0x41820018  // beq .L_80052364
    stw r31, 0xcc(r30)
    mtlr r12
    addi r3, r29, 0x0
    li r4, -0x3
    blrl
L_80052364:
    lwz r0, 0x4(r30)
    cmpwi r0, -0x1
    opword  0x4182000C  // beq .L_80052378
    li r0, -0x3
    stw r0, 0x4(r30)
L_80052378:
    lwz r12, 0xc4(r30)
    cmplwi r12, 0x0
    opword  0x41820028  // beq .L_800523A8
    lwz r0, 0x24(r30)
    cmpwi r0, 0x7
    opword  0x4180001C  // blt .L_800523A8
    li r0, 0x0
    mtlr r12
    stw r0, 0xc4(r30)
    addi r3, r29, 0x0
    li r4, -0x3
    blrl
L_800523A8:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    addi r1, r1, 0x20
    mtlr r0
    blr
}

ASM void fn_800523C4(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x28(r1)
    stw r31, 0x24(r1)
    addi r31, r3, 0x0
    mulli r4, r31, 0x110
    stw r30, 0x20(r1)
    lis r3, lbl_804B5BA0@ha
    stw r29, 0x1c(r1)
    addi r0, r3, lbl_804B5BA0@l
    add r30, r0, r4
    addi r3, r30, 0xe0
    bl fn_8004061C
    lwz r0, 0x0(r30)
    cmpwi r0, 0x0
    opword  0x418200C0  // beq .L_800524C0
    addi r3, r31, 0x0
    li r4, 0x0
    li r5, 0x0
    bl EXILock
    cmpwi r3, 0x0
    opword  0x4082000C  // bne .L_80052424
    li r29, -0x80
    opword  0x48000078  // b .L_80052498
L_80052424:
    addi r3, r31, 0x0
    addi r4, r1, 0x10
    bl fn_800526C8
    mr. r29, r3
    opword  0x4180005C  // blt .L_80052490
    mr r3, r31
    bl fn_800527B8
    mr. r29, r3
    opword  0x4180004C  // blt .L_80052490
    lbz r0, 0x10(r1)
    rlwinm. r0, r0, 0, 27, 28
    opword  0x4182000C  // beq .L_8005245C
    li r0, -0x5
    opword  0x48000008  // b .L_80052460
L_8005245C:
    li r0, 0x0
L_80052460:
    mr r29, r0
    cmpwi r29, -0x5
    opword  0x40820028  // bne .L_80052490
    lwz r3, 0xa8(r30)
    subic. r0, r3, 0x1
    stw r0, 0xa8(r30)
    opword  0x40810018  // ble .L_80052490
    mr r3, r31
    bl fn_80052908
    mr. r29, r3
    opword  0x41800010  // blt .L_80052498
    opword  0x48000034  // b .L_800524C0
L_80052490:
    mr r3, r31
    bl EXIUnlock
L_80052498:
    lwz r0, 0xcc(r30)
    cmplwi r0, 0x0
    mr r12, r0
    opword  0x4182001C  // beq .L_800524C0
    li r0, 0x0
    mtlr r12
    stw r0, 0xcc(r30)
    addi r3, r31, 0x0
    addi r4, r29, 0x0
    blrl
L_800524C0:
    lwz r0, 0x2c(r1)
    lwz r31, 0x24(r1)
    lwz r30, 0x20(r1)
    lwz r29, 0x1c(r1)
    addi r1, r1, 0x28
    mtlr r0
    blr
}

ASM void fn_800524DC(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x28(r1)
    stmw r27, 0x14(r1)
    addi r27, r3, 0x0
    lis r3, lbl_804B5BA0@ha
    addi r0, r3, lbl_804B5BA0@l
    mulli r4, r27, 0x110
    addi r3, r27, 0x0
    add r29, r0, r4
    bl EXIDeselect
    cntlzw r0, r3
    addi r3, r27, 0x0
    srwi r31, r0, 5
    bl EXIUnlock
    lwz r0, 0xc8(r29)
    cmplwi r0, 0x0
    mr r28, r0
    opword  0x4182004C  // beq .L_80052570
    li r30, 0x0
    cmpwi r31, 0x0
    stw r30, 0xc8(r29)
    opword  0x40820018  // bne .L_8005254C
    mr r3, r27
    bl EXIProbe
    cmpwi r3, 0x0
    opword  0x41820008  // beq .L_8005254C
    li r30, 0x1
L_8005254C:
    cmpwi r30, 0x0
    opword  0x4182000C  // beq .L_8005255C
    li r4, 0x0
    opword  0x48000008  // b .L_80052560
L_8005255C:
    li r4, -0x3
L_80052560:
    addi r12, r28, 0x0
    mtlr r12
    addi r3, r27, 0x0
    blrl
L_80052570:
    lmw r27, 0x14(r1)
    lwz r0, 0x2c(r1)
    addi r1, r1, 0x28
    mtlr r0
    blr
}

ASM void fn_80052584(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    stw r30, 0x10(r1)
    addi r30, r3, 0x0
    mulli r4, r30, 0x110
    lis r3, lbl_804B5BA0@ha
    addi r0, r3, lbl_804B5BA0@l
    add r3, r0, r4
    lwz r0, 0xdc(r3)
    cmplwi r0, 0x0
    mr r31, r0
    opword  0x41820038  // beq .L_800525F0
    li r0, 0x0
    stw r0, 0xdc(r3)
    mr r3, r30
    bl EXIProbe
    cmpwi r3, 0x0
    opword  0x4182000C  // beq .L_800525DC
    li r4, 0x1
    opword  0x48000008  // b .L_800525E0
L_800525DC:
    li r4, -0x3
L_800525E0:
    addi r12, r31, 0x0
    mtlr r12
    addi r3, r30, 0x0
    blrl
L_800525F0:
    lwz r0, 0x1c(r1)
    lwz r31, 0x14(r1)
    lwz r30, 0x10(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

ASM void fn_80052608(void)
{
    nofralloc
    mflr r0
    li r5, 0x4
    stw r0, 0x4(r1)
    stwu r1, -0x20(r1)
    stw r31, 0x1c(r1)
    addi r31, r4, 0x0
    li r4, 0x0
    stw r30, 0x18(r1)
    addi r30, r3, 0x0
    bl EXISelect
    cmpwi r3, 0x0
    opword  0x4082000C  // bne .L_80052640
    li r3, -0x3
    opword  0x48000074  // b .L_800526B0
L_80052640:
    cmpwi r31, 0x0
    opword  0x4182000C  // beq .L_80052650
    lis r0, 0x8101
    opword  0x48000008  // b .L_80052654
L_80052650:
    lis r0, 0x8100
L_80052654:
    stw r0, 0x10(r1)
    addi r3, r30, 0x0
    addi r4, r1, 0x10
    li r5, 0x2
    li r6, 0x1
    li r7, 0x0
    bl EXIImm
    cntlzw r0, r3
    addi r3, r30, 0x0
    srwi r31, r0, 5
    bl EXISync
    cntlzw r0, r3
    srwi r0, r0, 5
    addi r3, r30, 0x0
    or r31, r31, r0
    bl EXIDeselect
    cntlzw r0, r3
    srwi r0, r0, 5
    or. r31, r31, r0
    opword  0x4182000C  // beq .L_800526AC
    li r3, -0x3
    opword  0x48000008  // b .L_800526B0
L_800526AC:
    li r3, 0x0
L_800526B0:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    addi r1, r1, 0x20
    mtlr r0
    blr
}

ASM void fn_800526C8(void)
{
    nofralloc
    mflr r0
    li r5, 0x4
    stw r0, 0x4(r1)
    stwu r1, -0x28(r1)
    stw r31, 0x24(r1)
    stw r30, 0x20(r1)
    addi r30, r4, 0x0
    li r4, 0x0
    stw r29, 0x1c(r1)
    addi r29, r3, 0x0
    bl EXISelect
    cmpwi r3, 0x0
    opword  0x4082000C  // bne .L_80052704
    li r3, -0x3
    opword  0x4800009C  // b .L_8005279C
L_80052704:
    lis r0, 0x8300
    stw r0, 0x10(r1)
    addi r3, r29, 0x0
    addi r4, r1, 0x10
    li r5, 0x2
    li r6, 0x1
    li r7, 0x0
    bl EXIImm
    cntlzw r0, r3
    addi r3, r29, 0x0
    srwi r31, r0, 5
    bl EXISync
    cntlzw r0, r3
    srwi r0, r0, 5
    addi r3, r29, 0x0
    addi r4, r30, 0x0
    or r31, r31, r0
    li r5, 0x1
    li r6, 0x0
    li r7, 0x0
    bl EXIImm
    cntlzw r0, r3
    srwi r0, r0, 5
    addi r3, r29, 0x0
    or r31, r31, r0
    bl EXISync
    cntlzw r0, r3
    srwi r0, r0, 5
    addi r3, r29, 0x0
    or r31, r31, r0
    bl EXIDeselect
    cntlzw r0, r3
    srwi r0, r0, 5
    or. r31, r31, r0
    opword  0x4182000C  // beq .L_80052798
    li r3, -0x3
    opword  0x48000008  // b .L_8005279C
L_80052798:
    li r3, 0x0
L_8005279C:
    lwz r0, 0x2c(r1)
    lwz r31, 0x24(r1)
    lwz r30, 0x20(r1)
    lwz r29, 0x1c(r1)
    addi r1, r1, 0x28
    mtlr r0
    blr
}

ASM void fn_800527B8(void)
{
    nofralloc
    mflr r0
    li r4, 0x0
    stw r0, 0x4(r1)
    li r5, 0x4
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    stw r30, 0x10(r1)
    addi r30, r3, 0x0
    bl EXISelect
    cmpwi r3, 0x0
    opword  0x4082000C  // bne .L_800527EC
    li r3, -0x3
    opword  0x48000064  // b .L_8005284C
L_800527EC:
    lis r0, 0x8900
    stw r0, 0xc(r1)
    addi r3, r30, 0x0
    addi r4, r1, 0xc
    li r5, 0x1
    li r6, 0x1
    li r7, 0x0
    bl EXIImm
    cntlzw r0, r3
    addi r3, r30, 0x0
    srwi r31, r0, 5
    bl EXISync
    cntlzw r0, r3
    srwi r0, r0, 5
    addi r3, r30, 0x0
    or r31, r31, r0
    bl EXIDeselect
    cntlzw r0, r3
    srwi r0, r0, 5
    or. r31, r31, r0
    opword  0x4182000C  // beq .L_80052848
    li r3, -0x3
    opword  0x48000008  // b .L_8005284C
L_80052848:
    li r3, 0x0
L_8005284C:
    lwz r0, 0x1c(r1)
    lwz r31, 0x14(r1)
    lwz r30, 0x10(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

ASM void fn_80052864(void)
{
    nofralloc
    mflr r0
    lis r4, lbl_804B5BA0@ha
    stw r0, 0x4(r1)
    addi r4, r4, lbl_804B5BA0@l
    addi r0, r4, 0xe0
    stwu r1, -0x18(r1)
    cmplw r3, r0
    stw r31, 0x14(r1)
    li r31, 0x0
    stw r30, 0x10(r1)
    addi r30, r4, 0x0
    opword  0x41820020  // beq .L_800528B0
    addi r0, r4, 0x1f0
    cmplw r3, r0
    addi r4, r4, 0x110
    addi r30, r4, 0x0
    li r31, 0x1
    opword  0x41820008  // beq .L_800528B0
    li r31, 0x2
L_800528B0:
    lwz r0, 0x0(r30)
    cmpwi r0, 0x0
    opword  0x41820038  // beq .L_800528F0
    addi r3, r31, 0x0
    li r4, 0x0
    bl EXISetExiCallback
    lwz r0, 0xcc(r30)
    cmplwi r0, 0x0
    mr r12, r0
    opword  0x4182001C  // beq .L_800528F0
    li r0, 0x0
    mtlr r12
    stw r0, 0xcc(r30)
    addi r3, r31, 0x0
    li r4, -0x5
    blrl
L_800528F0:
    lwz r0, 0x1c(r1)
    lwz r31, 0x14(r1)
    lwz r30, 0x10(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

ASM void fn_80052908(void)
{
    nofralloc
    mflr r0
    li r5, 0x4
    stw r0, 0x4(r1)
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    stw r30, 0x10(r1)
    addi r30, r3, 0x0
    mulli r4, r30, 0x110
    lis r3, lbl_804B5BA0@ha
    addi r0, r3, lbl_804B5BA0@l
    add r31, r0, r4
    addi r3, r30, 0x0
    li r4, 0x0
    bl EXISelect
    cmpwi r3, 0x0
    opword  0x40820014  // bne .L_80052958
    mr r3, r30
    bl EXIUnlock
    li r3, -0x3
    opword  0x480001C8  // b .L_80052B1C
L_80052958:
    addi r3, r31, 0xe0
    bl fn_8004061C
    lbz r0, 0x94(r31)
    cmpwi r0, 0xf3
    opword  0x418200C0  // beq .L_80052A28
    opword  0x40800014  // bge .L_80052980
    cmpwi r0, 0xf1
    opword  0x41820050  // beq .L_800529C4
    opword  0x40800014  // bge .L_8005298C
    opword  0x480000AC  // b .L_80052A28
L_80052980:
    cmpwi r0, 0xf5
    opword  0x408000A4  // bge .L_80052A28
    opword  0x4800003C  // b .L_800529C4
L_8005298C:
    lis r3, 0x8000
    lwz r0, 0xf8(r3)
    lis r4, 0x1062
    lis r3, fn_80052864@ha
    srwi r0, r0, 2
    addi r4, r4, 0x4dd3
    mulhwu r0, r4, r0
    srwi r0, r0, 6
    mulli r6, r0, 0x64
    addi r7, r3, fn_80052864@l
    addi r3, r31, 0xe0
    li r5, 0x0
    bl OSSetAlarm
    opword  0x48000068  // b .L_80052A28
L_800529C4:
    lis r3, 0x8000
    lwz r4, 0xc(r31)
    lwz r0, 0xf8(r3)
    lis r3, fn_80052864@ha
    srawi r9, r4, 13
    srwi r7, r0, 2
    li r0, 0x2
    li r4, 0x0
    mullw r8, r4, r0
    mulhwu r6, r7, r0
    add r8, r8, r6
    mullw r5, r7, r0
    addze r9, r9
    mullw r6, r7, r4
    srawi r0, r9, 31
    mullw r4, r0, r5
    mulhwu r0, r9, r5
    addi r7, r3, fn_80052864@l
    add r3, r8, r6
    add r4, r4, r0
    mullw r0, r9, r3
    mullw r6, r9, r5
    addi r3, r31, 0xe0
    add r5, r4, r0
    bl OSSetAlarm
L_80052A28:
    lwz r5, 0xa0(r31)
    addi r3, r30, 0x0
    addi r4, r31, 0x94
    li r6, 0x1
    bl EXIImmEx
    cmpwi r3, 0x0
    opword  0x4082001C  // bne .L_80052A5C
    mr r3, r30
    bl EXIDeselect
    mr r3, r30
    bl EXIUnlock
    li r3, -0x3
    opword  0x480000C4  // b .L_80052B1C
L_80052A5C:
    lbz r0, 0x94(r31)
    cmplwi r0, 0x52
    opword  0x4082003C  // bne .L_80052AA0
    lwz r4, 0x80(r31)
    mr r3, r30
    lwz r5, 0x14(r31)
    li r6, 0x1
    addi r4, r4, 0x200
    bl EXIImmEx
    cmpwi r3, 0x0
    opword  0x4082001C  // bne .L_80052AA0
    mr r3, r30
    bl EXIDeselect
    mr r3, r30
    bl EXIUnlock
    li r3, -0x3
    opword  0x48000080  // b .L_80052B1C
L_80052AA0:
    lwz r3, 0xa4(r31)
    addis r0, r3, 0x1
    cmplwi r0, 0xffff
    opword  0x4082001C  // bne .L_80052AC8
    mr r3, r30
    bl EXIDeselect
    mr r3, r30
    bl EXIUnlock
    li r3, 0x0
    opword  0x48000058  // b .L_80052B1C
L_80052AC8:
    lbz r0, 0x94(r31)
    cmplwi r0, 0x52
    opword  0x4082000C  // bne .L_80052ADC
    li r5, 0x200
    opword  0x48000008  // b .L_80052AE0
L_80052ADC:
    li r5, 0x80
L_80052AE0:
    lis r3, fn_800524DC@ha
    lwz r4, 0xb4(r31)
    addi r7, r3, fn_800524DC@l
    lwz r6, 0xa4(r31)
    mr r3, r30
    bl EXIDma
    cmpwi r3, 0x0
    opword  0x4082001C  // bne .L_80052B18
    mr r3, r30
    bl EXIDeselect
    mr r3, r30
    bl EXIUnlock
    li r3, -0x3
    opword  0x48000008  // b .L_80052B1C
L_80052B18:
    li r3, 0x0
L_80052B1C:
    lwz r0, 0x1c(r1)
    lwz r31, 0x14(r1)
    lwz r30, 0x10(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

ASM void fn_80052B34(void)
{
    nofralloc
    mflr r0
    cmpwi r4, 0x0
    stw r0, 0x4(r1)
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    addi r31, r3, 0x0
    mulli r5, r31, 0x110
    stw r30, 0x10(r1)
    lis r3, lbl_804B5BA0@ha
    addi r0, r3, lbl_804B5BA0@l
    add r30, r0, r5
    opword  0x41800048  // blt .L_80052BA8
    lis r3, fn_80052B34@ha
    addi r0, r3, fn_80052B34@l
    lis r3, fn_80052584@ha
    stw r0, 0xdc(r30)
    addi r5, r3, fn_80052584@l
    addi r3, r31, 0x0
    li r4, 0x0
    bl EXILock
    cmpwi r3, 0x0
    opword  0x4082000C  // bne .L_80052B94
    li r4, 0x0
    opword  0x48000018  // b .L_80052BA8
L_80052B94:
    li r0, 0x0
    stw r0, 0xdc(r30)
    mr r3, r31
    bl fn_80052908
    mr r4, r3
L_80052BA8:
    cmpwi r4, 0x0
    opword  0x40800080  // bge .L_80052C2C
    lbz r0, 0x94(r30)
    cmpwi r0, 0xf3
    opword  0x41820074  // beq .L_80052C2C
    opword  0x4080001C  // bge .L_80052BD8
    cmpwi r0, 0x52
    opword  0x41820020  // beq .L_80052BE4
    opword  0x41800064  // blt .L_80052C2C
    cmpwi r0, 0xf1
    opword  0x4080003C  // bge .L_80052C0C
    opword  0x48000058  // b .L_80052C2C
L_80052BD8:
    cmpwi r0, 0xf5
    opword  0x40800050  // bge .L_80052C2C
    opword  0x4800002C  // b .L_80052C0C
L_80052BE4:
    lwz r0, 0xc8(r30)
    cmplwi r0, 0x0
    mr r12, r0
    opword  0x4182003C  // beq .L_80052C2C
    li r0, 0x0
    mtlr r12
    stw r0, 0xc8(r30)
    mr r3, r31
    blrl
    opword  0x48000024  // b .L_80052C2C
L_80052C0C:
    lwz r12, 0xcc(r30)
    cmplwi r12, 0x0
    opword  0x41820018  // beq .L_80052C2C
    li r0, 0x0
    mtlr r12
    stw r0, 0xcc(r30)
    mr r3, r31
    blrl
L_80052C2C:
    lwz r0, 0x1c(r1)
    lwz r31, 0x14(r1)
    lwz r30, 0x10(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

ASM void fn_80052C44(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x30(r1)
    stmw r27, 0x1c(r1)
    addi r27, r3, 0x0
    addi r28, r4, 0x0
    addi r29, r5, 0x0
    bl OSDisableInterrupts
    mulli r5, r27, 0x110
    lis r4, lbl_804B5BA0@ha
    addi r0, r4, lbl_804B5BA0@l
    add r31, r0, r5
    lwz r0, 0x0(r31)
    addi r30, r3, 0x0
    cmpwi r0, 0x0
    opword  0x4082000C  // bne .L_80052C8C
    li r31, -0x3
    opword  0x48000150  // b .L_80052DD8
L_80052C8C:
    cmplwi r28, 0x0
    opword  0x41820008  // beq .L_80052C98
    stw r28, 0xc8(r31)
L_80052C98:
    cmplwi r29, 0x0
    opword  0x41820008  // beq .L_80052CA4
    stw r29, 0xcc(r31)
L_80052CA4:
    lis r3, fn_80052B34@ha
    addi r0, r3, fn_80052B34@l
    lis r3, fn_80052584@ha
    stw r0, 0xdc(r31)
    addi r5, r3, fn_80052584@l
    addi r3, r27, 0x0
    li r4, 0x0
    bl EXILock
    cmpwi r3, 0x0
    opword  0x4082000C  // bne .L_80052CD4
    li r31, -0x1
    opword  0x48000108  // b .L_80052DD8
L_80052CD4:
    li r0, 0x0
    stw r0, 0xdc(r31)
    addi r3, r27, 0x0
    li r4, 0x0
    li r5, 0x4
    bl EXISelect
    cmpwi r3, 0x0
    opword  0x40820014  // bne .L_80052D04
    mr r3, r27
    bl EXIUnlock
    li r31, -0x3
    opword  0x480000D8  // b .L_80052DD8
L_80052D04:
    addi r3, r31, 0xe0
    bl fn_8004061C
    lbz r0, 0x94(r31)
    cmpwi r0, 0xf3
    opword  0x418200C0  // beq .L_80052DD4
    opword  0x40800014  // bge .L_80052D2C
    cmpwi r0, 0xf1
    opword  0x41820050  // beq .L_80052D70
    opword  0x40800014  // bge .L_80052D38
    opword  0x480000AC  // b .L_80052DD4
L_80052D2C:
    cmpwi r0, 0xf5
    opword  0x408000A4  // bge .L_80052DD4
    opword  0x4800003C  // b .L_80052D70
L_80052D38:
    lis r3, 0x8000
    lwz r0, 0xf8(r3)
    lis r4, 0x1062
    lis r3, fn_80052864@ha
    srwi r0, r0, 2
    addi r4, r4, 0x4dd3
    mulhwu r0, r4, r0
    srwi r0, r0, 6
    mulli r6, r0, 0x64
    addi r7, r3, fn_80052864@l
    addi r3, r31, 0xe0
    li r5, 0x0
    bl OSSetAlarm
    opword  0x48000068  // b .L_80052DD4
L_80052D70:
    lis r3, 0x8000
    lwz r4, 0xc(r31)
    lwz r0, 0xf8(r3)
    lis r3, fn_80052864@ha
    srawi r9, r4, 13
    srwi r7, r0, 2
    li r0, 0x2
    li r4, 0x0
    mullw r8, r4, r0
    mulhwu r6, r7, r0
    add r8, r8, r6
    mullw r5, r7, r0
    addze r9, r9
    mullw r6, r7, r4
    srawi r0, r9, 31
    mullw r4, r0, r5
    mulhwu r0, r9, r5
    addi r7, r3, fn_80052864@l
    add r3, r8, r6
    add r4, r4, r0
    mullw r0, r9, r3
    mullw r6, r9, r5
    addi r3, r31, 0xe0
    add r5, r4, r0
    bl OSSetAlarm
L_80052DD4:
    li r31, 0x0
L_80052DD8:
    mr r3, r30
    bl OSRestoreInterrupts
    mr r3, r31
    lmw r27, 0x1c(r1)
    lwz r0, 0x34(r1)
    addi r1, r1, 0x30
    mtlr r0
    blr
}

ASM void fn_80052DF8(void)
{
    nofralloc
    mflr r0
    li r6, 0x5
    stw r0, 0x4(r1)
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    stw r30, 0x10(r1)
    addi r30, r3, 0x0
    mulli r5, r30, 0x110
    lis r3, lbl_804B5BA0@ha
    addi r0, r3, lbl_804B5BA0@l
    add r31, r0, r5
    li r0, 0x52
    stb r0, 0x94(r31)
    li r0, 0x0
    addi r3, r30, 0x0
    lwz r5, 0xb0(r31)
    extrwi r5, r5, 7, 8
    stb r5, 0x95(r31)
    li r5, 0x0
    lwz r7, 0xb0(r31)
    extrwi r7, r7, 8, 15
    stb r7, 0x96(r31)
    lwz r7, 0xb0(r31)
    extrwi r7, r7, 2, 23
    stb r7, 0x97(r31)
    lwz r7, 0xb0(r31)
    clrlwi r7, r7, 25
    stb r7, 0x98(r31)
    stw r6, 0xa0(r31)
    stw r0, 0xa4(r31)
    stw r0, 0xa8(r31)
    bl fn_80052C44
    cmpwi r3, -0x1
    opword  0x4082000C  // bne .L_80052E88
    li r3, 0x0
    opword  0x48000090  // b .L_80052F14
L_80052E88:
    cmpwi r3, 0x0
    opword  0x41800088  // blt .L_80052F14
    lwz r5, 0xa0(r31)
    addi r3, r30, 0x0
    addi r4, r31, 0x94
    li r6, 0x1
    bl EXIImmEx
    cmpwi r3, 0x0
    opword  0x41820048  // beq .L_80052EF0
    lwz r4, 0x80(r31)
    mr r3, r30
    lwz r5, 0x14(r31)
    li r6, 0x1
    addi r4, r4, 0x200
    bl EXIImmEx
    cmpwi r3, 0x0
    opword  0x41820028  // beq .L_80052EF0
    lis r3, fn_800524DC@ha
    lwz r4, 0xb4(r31)
    addi r7, r3, fn_800524DC@l
    lwz r6, 0xa4(r31)
    addi r3, r30, 0x0
    li r5, 0x200
    bl EXIDma
    cmpwi r3, 0x0
    opword  0x40820024  // bne .L_80052F10
L_80052EF0:
    li r0, 0x0
    stw r0, 0xc8(r31)
    mr r3, r30
    bl EXIDeselect
    mr r3, r30
    bl EXIUnlock
    li r3, -0x3
    opword  0x48000008  // b .L_80052F14
L_80052F10:
    li r3, 0x0
L_80052F14:
    lwz r0, 0x1c(r1)
    lwz r31, 0x14(r1)
    lwz r30, 0x10(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

ASM void fn_80052F2C(void)
{
    nofralloc
    mflr r0
    li r7, 0x5
    stw r0, 0x4(r1)
    li r6, 0x1
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    stw r30, 0x10(r1)
    addi r30, r3, 0x0
    mulli r5, r30, 0x110
    lis r3, lbl_804B5BA0@ha
    addi r0, r3, lbl_804B5BA0@l
    add r31, r0, r5
    li r0, 0xf2
    stb r0, 0x94(r31)
    addi r5, r4, 0x0
    li r0, 0x3
    lwz r3, 0xb0(r31)
    li r4, 0x0
    extrwi r3, r3, 7, 8
    stb r3, 0x95(r31)
    addi r3, r30, 0x0
    lwz r8, 0xb0(r31)
    extrwi r8, r8, 8, 15
    stb r8, 0x96(r31)
    lwz r8, 0xb0(r31)
    extrwi r8, r8, 2, 23
    stb r8, 0x97(r31)
    lwz r8, 0xb0(r31)
    clrlwi r8, r8, 25
    stb r8, 0x98(r31)
    stw r7, 0xa0(r31)
    stw r6, 0xa4(r31)
    stw r0, 0xa8(r31)
    bl fn_80052C44
    cmpwi r3, -0x1
    opword  0x4082000C  // bne .L_80052FC4
    li r3, 0x0
    opword  0x48000070  // b .L_80053030
L_80052FC4:
    cmpwi r3, 0x0
    opword  0x41800068  // blt .L_80053030
    lwz r5, 0xa0(r31)
    addi r3, r30, 0x0
    addi r4, r31, 0x94
    li r6, 0x1
    bl EXIImmEx
    cmpwi r3, 0x0
    opword  0x41820028  // beq .L_8005300C
    lis r3, fn_800524DC@ha
    lwz r4, 0xb4(r31)
    addi r7, r3, fn_800524DC@l
    lwz r6, 0xa4(r31)
    addi r3, r30, 0x0
    li r5, 0x80
    bl EXIDma
    cmpwi r3, 0x0
    opword  0x40820024  // bne .L_8005302C
L_8005300C:
    li r0, 0x0
    stw r0, 0xcc(r31)
    mr r3, r30
    bl EXIDeselect
    mr r3, r30
    bl EXIUnlock
    li r3, -0x3
    opword  0x48000008  // b .L_80053030
L_8005302C:
    li r3, 0x0
L_80053030:
    lwz r0, 0x1c(r1)
    lwz r31, 0x14(r1)
    lwz r30, 0x10(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

ASM void fn_80053048(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x28(r1)
    stw r31, 0x24(r1)
    stw r30, 0x20(r1)
    stw r29, 0x1c(r1)
    addi r29, r3, 0x0
    mulli r6, r29, 0x110
    lis r3, lbl_804B5BA0@ha
    addi r0, r3, lbl_804B5BA0@l
    add r31, r0, r6
    li r0, 0xf1
    stb r0, 0x94(r31)
    extrwi r3, r4, 7, 8
    extrwi r0, r4, 8, 15
    stb r3, 0x95(r31)
    li r6, 0x3
    addi r3, r29, 0x0
    stb r0, 0x96(r31)
    li r0, -0x1
    li r4, 0x0
    stw r6, 0xa0(r31)
    stw r0, 0xa4(r31)
    stw r6, 0xa8(r31)
    bl fn_80052C44
    addi r30, r3, 0x0
    cmpwi r30, -0x1
    opword  0x4082000C  // bne .L_800530C0
    li r30, 0x0
    opword  0x4800004C  // b .L_80053108
L_800530C0:
    cmpwi r30, 0x0
    opword  0x41800044  // blt .L_80053108
    lwz r5, 0xa0(r31)
    addi r3, r29, 0x0
    addi r4, r31, 0x94
    li r6, 0x1
    bl EXIImmEx
    cmpwi r3, 0x0
    opword  0x40820014  // bne .L_800530F4
    li r0, 0x0
    stw r0, 0xcc(r31)
    li r30, -0x3
    opword  0x48000008  // b .L_800530F8
L_800530F4:
    li r30, 0x0
L_800530F8:
    mr r3, r29
    bl EXIDeselect
    mr r3, r29
    bl EXIUnlock
L_80053108:
    mr r3, r30
    lwz r0, 0x2c(r1)
    lwz r31, 0x24(r1)
    lwz r30, 0x20(r1)
    lwz r29, 0x1c(r1)
    addi r1, r1, 0x28
    mtlr r0
    blr
}

ASM void fn_80053128(void)
{
    nofralloc
    mflr r0
    lis r3, lbl_804B5BA0@ha
    stw r0, 0x4(r1)
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    stw r30, 0x10(r1)
    addi r30, r3, lbl_804B5BA0@l
    stw r29, 0xc(r1)
    lwz r0, 0x10c(r30)
    cmplwi r0, 0x0
    opword  0x41820010  // beq .L_80053160
    lwz r0, 0x21c(r30)
    cmplwi r0, 0x0
    opword  0x4082005C  // bne .L_800531B8
L_80053160:
    bl fn_800425E0
    opword  0xB06D8AD8  // sth r3, lbl_8053A698@sda21(r0)
    opword  0x806D80F8  // lwz r3, lbl_80539CB8@sda21(r0)
    bl OSRegisterVersion
    bl fn_80051D40
    bl OSInitAlarm
    li r29, 0x0
    li r31, -0x3
L_80053180:
    stw r31, 0x4(r30)
    addi r3, r30, 0x8c
    bl OSInitThreadQueue
    addi r3, r30, 0xe0
    bl OSCreateAlarm
    addi r29, r29, 0x1
    cmpwi r29, 0x2
    addi r30, r30, 0x110
    opword  0x4180FFE0  // blt .L_80053180
    lis r3, 0x8000
    bl fn_800531DC
    lis r3, lbl_80496AF0@ha
    addi r3, r3, lbl_80496AF0@l
    bl OSRegisterResetFunction
L_800531B8:
    lwz r0, 0x1c(r1)
    lwz r31, 0x14(r1)
    lwz r30, 0x10(r1)
    lwz r29, 0xc(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

ASM void fn_800531D4(void)
{
    nofralloc
    opword  0xA06D8AD8  // lhz r3, lbl_8053A698@sda21(r0)
    blr
}

ASM void fn_800531DC(void)
{
    nofralloc
    cmplwi r3, 0x0
    lis r4, lbl_804B5BA0@ha
    addi r4, r4, lbl_804B5BA0@l
    opword  0x4182000C  // beq .L_800531F4
    mr r0, r3
    opword  0x48000008  // b .L_800531F8
L_800531F4:
    addi r0, r4, 0x220
L_800531F8:
    cmplwi r3, 0x0
    stw r0, 0x10c(r4)
    opword  0x41820008  // beq .L_80053208
    opword  0x48000008  // b .L_8005320C
L_80053208:
    addi r3, r4, 0x220
L_8005320C:
    stw r3, 0x21c(r4)
    blr
}

ASM void fn_80053214(void)
{
    nofralloc
    mflr r0
    mulli r6, r3, 0x110
    stw r0, 0x4(r1)
    stwu r1, -0x20(r1)
    lis r5, lbl_804B5BA0@ha
    cmpwi r3, 0x0
    stw r31, 0x1c(r1)
    addi r0, r5, lbl_804B5BA0@l
    stw r30, 0x18(r1)
    add r30, r0, r6
    stw r29, 0x14(r1)
    addi r29, r4, 0x0
    opword  0x41800018  // blt .L_8005325C
    cmpwi r3, 0x2
    opword  0x40800010  // bge .L_8005325C
    lwz r0, 0x10c(r30)
    cmplwi r0, 0x0
    opword  0x4082000C  // bne .L_80053264
L_8005325C:
    li r3, -0x80
    opword  0x48000050  // b .L_800532B0
L_80053264:
    bl OSDisableInterrupts
    lwz r0, 0x0(r30)
    cmpwi r0, 0x0
    opword  0x4082000C  // bne .L_8005327C
    li r31, -0x3
    opword  0x48000030  // b .L_800532A8
L_8005327C:
    lwz r0, 0x4(r30)
    cmpwi r0, -0x1
    opword  0x4082000C  // bne .L_80053290
    li r31, -0x1
    opword  0x4800001C  // b .L_800532A8
L_80053290:
    li r0, -0x1
    stw r0, 0x4(r30)
    li r0, 0x0
    li r31, 0x0
    stw r0, 0xd0(r30)
    stw r30, 0x0(r29)
L_800532A8:
    bl OSRestoreInterrupts
    mr r3, r31
L_800532B0:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    addi r1, r1, 0x20
    mtlr r0
    blr
}

ASM void fn_800532CC(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    addi r31, r4, 0x0
    stw r30, 0x10(r1)
    addi r30, r3, 0x0
    bl OSDisableInterrupts
    lwz r0, 0x0(r30)
    cmpwi r0, 0x0
    opword  0x4182000C  // beq .L_80053300
    stw r31, 0x4(r30)
    opword  0x48000014  // b .L_80053310
L_80053300:
    lwz r0, 0x4(r30)
    cmpwi r0, -0x1
    opword  0x40820008  // bne .L_80053310
    stw r31, 0x4(r30)
L_80053310:
    bl OSRestoreInterrupts
    mr r3, r31
    lwz r0, 0x1c(r1)
    lwz r31, 0x14(r1)
    lwz r30, 0x10(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

ASM void fn_80053330(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x30(r1)
    stw r31, 0x2c(r1)
    addi r31, r5, 0x0
    stw r30, 0x28(r1)
    stw r29, 0x24(r1)
    addi r29, r4, 0x0
    addi r4, r1, 0x18
    bl fn_80053214
    cmpwi r3, 0x0
    opword  0x40800008  // bge .L_80053364
    opword  0x48000104  // b .L_80053464
L_80053364:
    lwz r3, 0x18(r1)
    bl fn_80054A48
    mr r30, r3
    lwz r3, 0x18(r1)
    bl fn_80054DB0
    cmplwi r30, 0x0
    opword  0x4182000C  // beq .L_80053388
    cmplwi r3, 0x0
    opword  0x40820044  // bne .L_800533C8
L_80053388:
    lwz r30, 0x18(r1)
    bl OSDisableInterrupts
    lwz r0, 0x0(r30)
    cmpwi r0, 0x0
    opword  0x41820010  // beq .L_800533A8
    li r0, -0x6
    stw r0, 0x4(r30)
    opword  0x48000018  // b .L_800533BC
L_800533A8:
    lwz r0, 0x4(r30)
    cmpwi r0, -0x1
    opword  0x4082000C  // bne .L_800533BC
    li r0, -0x6
    stw r0, 0x4(r30)
L_800533BC:
    bl OSRestoreInterrupts
    li r3, -0x6
    opword  0x480000A0  // b .L_80053464
L_800533C8:
    cmplwi r29, 0x0
    opword  0x41820018  // beq .L_800533E4
    lwz r4, 0x18(r1)
    lhz r0, 0x6(r30)
    lwz r4, 0xc(r4)
    mullw r0, r4, r0
    stw r0, 0x0(r29)
L_800533E4:
    cmplwi r31, 0x0
    opword  0x41820040  // beq .L_80053428
    li r0, 0x0
    stw r0, 0x0(r31)
    li r5, 0x0
    opword  0x48000024  // b .L_8005341C
L_800533FC:
    lbz r0, 0x8(r3)
    cmplwi r0, 0xff
    opword  0x40820010  // bne .L_80053414
    lwz r4, 0x0(r31)
    addi r0, r4, 0x1
    stw r0, 0x0(r31)
L_80053414:
    addi r3, r3, 0x40
    addi r5, r5, 0x1
L_8005341C:
    clrlwi r0, r5, 16
    cmplwi r0, 0x7f
    opword  0x4180FFD8  // blt .L_800533FC
L_80053428:
    lwz r30, 0x18(r1)
    bl OSDisableInterrupts
    lwz r0, 0x0(r30)
    cmpwi r0, 0x0
    opword  0x41820010  // beq .L_80053448
    li r0, 0x0
    stw r0, 0x4(r30)
    opword  0x48000018  // b .L_8005345C
L_80053448:
    lwz r0, 0x4(r30)
    cmpwi r0, -0x1
    opword  0x4082000C  // bne .L_8005345C
    li r0, 0x0
    stw r0, 0x4(r30)
L_8005345C:
    bl OSRestoreInterrupts
    li r3, 0x0
L_80053464:
    lwz r0, 0x34(r1)
    lwz r31, 0x2c(r1)
    lwz r30, 0x28(r1)
    lwz r29, 0x24(r1)
    addi r1, r1, 0x30
    mtlr r0
    blr
}

ASM void fn_80053480(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x20(r1)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    stw r29, 0x14(r1)
    stw r28, 0x10(r1)
    addi r28, r3, 0x0
    mulli r4, r28, 0x110
    lis r3, lbl_804B5BA0@ha
    addi r0, r3, lbl_804B5BA0@l
    add r31, r0, r4
    bl OSDisableInterrupts
    mr r29, r3
    opword  0x4800000C  // b .L_800534C4
L_800534BC:
    addi r3, r31, 0x8c
    bl OSSleepThread
L_800534C4:
    cmpwi r28, 0x0
    opword  0x4180000C  // blt .L_800534D4
    cmpwi r28, 0x2
    opword  0x4180000C  // blt .L_800534DC
L_800534D4:
    li r0, -0x80
    opword  0x48000008  // b .L_800534E0
L_800534DC:
    lwz r0, 0x4(r31)
L_800534E0:
    mr r30, r0
    cmpwi r30, -0x1
    opword  0x4182FFD4  // beq .L_800534BC
    mr r3, r29
    bl OSRestoreInterrupts
    mr r3, r30
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    lwz r28, 0x10(r1)
    addi r1, r1, 0x20
    mtlr r0
    blr
}

ASM void fn_80053518(void)
{
    nofralloc
    mflr r0
    cmpwi r3, 0x0
    stw r0, 0x4(r1)
    stwu r1, -0x8(r1)
    opword  0x4082002C  // bne .L_80053554
    li r3, 0x0
    bl fn_800569C8
    cmpwi r3, -0x1
    opword  0x41820014  // beq .L_8005354C
    li r3, 0x1
    bl fn_800569C8
    cmpwi r3, -0x1
    opword  0x4082000C  // bne .L_80053554
L_8005354C:
    li r3, 0x0
    opword  0x48000008  // b .L_80053558
L_80053554:
    li r3, 0x1
L_80053558:
    lwz r0, 0xc(r1)
    addi r1, r1, 0x8
    mtlr r0
    blr
}

ASM void fn_80053568(void)
{
    nofralloc
    li r0, 0x8
    mtctr r0
    srwi r6, r3, 31
    li r9, 0x0
    li r10, 0x1
    li r7, 0x0
    li r8, 0x0
    li r5, 0x1
L_80053588:
    cmplwi r8, 0xf
    opword  0x4081002C  // ble .L_800535B8
    cmplwi r8, 0x1f
    opword  0x4082000C  // bne .L_800535A0
    or r7, r7, r6
    opword  0x48000038  // b .L_800535D4
L_800535A0:
    slw r0, r5, r8
    and r0, r3, r0
    srw r0, r0, r10
    or r7, r7, r0
    addi r10, r10, 0x2
    opword  0x48000020  // b .L_800535D4
L_800535B8:
    slw r4, r5, r8
    subfic r0, r8, 0x1f
    subf r0, r9, r0
    and r4, r3, r4
    slw r0, r4, r0
    or r7, r7, r0
    addi r9, r9, 0x1
L_800535D4:
    addi r8, r8, 0x1
    cmplwi r8, 0xf
    opword  0x4081002C  // ble .L_80053608
    cmplwi r8, 0x1f
    opword  0x4082000C  // bne .L_800535F0
    or r7, r7, r6
    opword  0x48000038  // b .L_80053624
L_800535F0:
    slw r0, r5, r8
    and r0, r3, r0
    srw r0, r0, r10
    or r7, r7, r0
    addi r10, r10, 0x2
    opword  0x48000020  // b .L_80053624
L_80053608:
    slw r4, r5, r8
    subfic r0, r8, 0x1f
    subf r0, r9, r0
    and r4, r3, r4
    slw r0, r4, r0
    or r7, r7, r0
    addi r9, r9, 0x1
L_80053624:
    addi r8, r8, 0x1
    cmplwi r8, 0xf
    opword  0x4081002C  // ble .L_80053658
    cmplwi r8, 0x1f
    opword  0x4082000C  // bne .L_80053640
    or r7, r7, r6
    opword  0x48000038  // b .L_80053674
L_80053640:
    slw r0, r5, r8
    and r0, r3, r0
    srw r0, r0, r10
    or r7, r7, r0
    addi r10, r10, 0x2
    opword  0x48000020  // b .L_80053674
L_80053658:
    slw r4, r5, r8
    subfic r0, r8, 0x1f
    subf r0, r9, r0
    and r4, r3, r4
    slw r0, r4, r0
    or r7, r7, r0
    addi r9, r9, 0x1
L_80053674:
    addi r8, r8, 0x1
    cmplwi r8, 0xf
    opword  0x4081002C  // ble .L_800536A8
    cmplwi r8, 0x1f
    opword  0x4082000C  // bne .L_80053690
    or r7, r7, r6
    opword  0x48000038  // b .L_800536C4
L_80053690:
    slw r0, r5, r8
    and r0, r3, r0
    srw r0, r0, r10
    or r7, r7, r0
    addi r10, r10, 0x2
    opword  0x48000020  // b .L_800536C4
L_800536A8:
    slw r4, r5, r8
    subfic r0, r8, 0x1f
    subf r0, r9, r0
    and r4, r3, r4
    slw r0, r4, r0
    or r7, r7, r0
    addi r9, r9, 0x1
L_800536C4:
    addi r8, r8, 0x1
    opword  0x4200FEC0  // bdnz .L_80053588
    mr r3, r7
    blr
}

ASM void fn_800536D4(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x40(r1)
    stmw r26, 0x28(r1)
    addi r29, r3, 0x0
    lis r3, lbl_804B5BA0@ha
    addi r0, r3, lbl_804B5BA0@l
    mulli r8, r29, 0x110
    addi r26, r4, 0x0
    addi r30, r5, 0x0
    addi r31, r6, 0x0
    addi r27, r7, 0x0
    addi r3, r29, 0x0
    add r28, r0, r8
    li r4, 0x0
    li r5, 0x4
    bl EXISelect
    cmpwi r3, 0x0
    opword  0x4082000C  // bne .L_80053728
    li r3, -0x3
    opword  0x480000E0  // b .L_80053804
L_80053728:
    clrrwi r26, r26, 12
    addi r3, r1, 0x1c
    li r4, 0x0
    li r5, 0x5
    bl memset
    li r0, 0x52
    cmpwi r27, 0x0
    stb r0, 0x1c(r1)
    opword  0x40820028  // bne .L_80053770
    extrwi r0, r26, 2, 1
    stb r0, 0x1d(r1)
    extrwi r0, r26, 8, 3
    extrwi r3, r26, 2, 11
    stb r0, 0x1e(r1)
    extrwi r0, r26, 7, 13
    stb r3, 0x1f(r1)
    stb r0, 0x20(r1)
    opword  0x48000014  // b .L_80053780
L_80053770:
    srwi r0, r26, 24
    stb r0, 0x1d(r1)
    extrwi r0, r26, 8, 8
    stb r0, 0x1e(r1)
L_80053780:
    addi r3, r29, 0x0
    addi r4, r1, 0x1c
    li r5, 0x5
    li r6, 0x1
    bl EXIImmEx
    lwz r4, 0x80(r28)
    cntlzw r0, r3
    lwz r5, 0x14(r28)
    addi r3, r29, 0x0
    srwi r28, r0, 5
    addi r4, r4, 0x200
    li r6, 0x1
    bl EXIImmEx
    cntlzw r0, r3
    srwi r0, r0, 5
    addi r3, r29, 0x0
    addi r4, r30, 0x0
    addi r5, r31, 0x0
    or r28, r28, r0
    li r6, 0x0
    bl EXIImmEx
    cntlzw r0, r3
    srwi r0, r0, 5
    addi r3, r29, 0x0
    or r28, r28, r0
    bl EXIDeselect
    cntlzw r0, r3
    srwi r0, r0, 5
    or. r28, r28, r0
    opword  0x4182000C  // beq .L_80053800
    li r3, -0x3
    opword  0x48000008  // b .L_80053804
L_80053800:
    li r3, 0x0
L_80053804:
    lmw r26, 0x28(r1)
    lwz r0, 0x44(r1)
    addi r1, r1, 0x40
    mtlr r0
    blr
}

ASM void fn_80053818(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x28(r1)
    stw r31, 0x24(r1)
    stw r30, 0x20(r1)
    li r30, 0x1
    stw r29, 0x1c(r1)
    li r29, 0x0
    bl OSGetTick
    opword  0x906D8100  // stw r3, lbl_80539CC0@sda21(r0)
    lis r3, 0x41c6
    addi r31, r3, 0x4e6d
    opword  0x800D8100  // lwz r0, lbl_80539CC0@sda21(r0)
    mullw r3, r0, r31
    addi r0, r3, 0x3039
    opword  0x900D8100  // stw r0, lbl_80539CC0@sda21(r0)
    opword  0x800D8100  // lwz r0, lbl_80539CC0@sda21(r0)
    extrwi r3, r0, 5, 11
    addi r3, r3, 0x1
    opword  0x48000040  // b .L_800538A4
L_80053868:
    bl OSGetTick
    slw r0, r3, r30
    addi r30, r30, 0x1
    cmplwi r30, 0x10
    opword  0x40810008  // ble .L_80053880
    li r30, 0x1
L_80053880:
    opword  0x900D8100  // stw r0, lbl_80539CC0@sda21(r0)
    addi r29, r29, 0x1
    opword  0x800D8100  // lwz r0, lbl_80539CC0@sda21(r0)
    mullw r3, r0, r31
    addi r0, r3, 0x3039
    opword  0x900D8100  // stw r0, lbl_80539CC0@sda21(r0)
    opword  0x800D8100  // lwz r0, lbl_80539CC0@sda21(r0)
    extrwi r3, r0, 5, 11
    addi r3, r3, 0x1
L_800538A4:
    cmpwi r3, 0x4
    opword  0x4080000C  // bge .L_800538B4
    cmplwi r29, 0xa
    opword  0x4180FFB8  // blt .L_80053868
L_800538B4:
    cmpwi r3, 0x4
    opword  0x40800008  // bge .L_800538C0
    li r3, 0x4
L_800538C0:
    lwz r0, 0x2c(r1)
    lwz r31, 0x24(r1)
    lwz r30, 0x20(r1)
    lwz r29, 0x1c(r1)
    addi r1, r1, 0x28
    mtlr r0
    blr
}

ASM void fn_800538DC(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x120(r1)
    stmw r22, 0xf8(r1)
    addi r24, r3, 0x0
    lis r3, lbl_804B5BA0@ha
    mulli r5, r24, 0x110
    addi r0, r3, lbl_804B5BA0@l
    add r31, r0, r5
    addi r23, r4, 0x0
    addi r30, r31, 0x30
    lwz r3, 0x80(r31)
    addi r0, r3, 0x2f
    clrrwi r28, r0, 5
    addi r29, r3, 0x0
    addi r22, r28, 0x20
    bl OSGetTick
    opword  0x906D8100  // stw r3, lbl_80539CC0@sda21(r0)
    lis r3, 0x41c6
    lis r5, 0x7fed
    opword  0x808D8100  // lwz r4, lbl_80539CC0@sda21(r0)
    addi r0, r3, 0x4e6d
    addi r25, r5, -0x8000
    mullw r3, r4, r0
    addi r0, r3, 0x3039
    opword  0x900D8100  // stw r0, lbl_80539CC0@sda21(r0)
    opword  0x800D8100  // lwz r0, lbl_80539CC0@sda21(r0)
    extrwi r0, r0, 15, 1
    or r25, r25, r0
    clrrwi r25, r25, 12
    bl fn_80053818
    addi r26, r3, 0x0
    addi r6, r26, 0x0
    addi r3, r24, 0x0
    addi r4, r25, 0x0
    addi r5, r1, 0xa4
    li r7, 0x0
    bl fn_800536D4
    cmpwi r3, 0x0
    opword  0x4080000C  // bge .L_80053984
    li r3, -0x3
    opword  0x48000AA0  // b .L_80054420
L_80053984:
    slwi r3, r26, 3
    addi r4, r3, 0x1
    cmplwi r4, 0x0
    li r3, 0x0
    opword  0x40810168  // ble .L_80053AFC
    cmplwi r4, 0x8
    subi r5, r4, 0x8
    opword  0x40810124  // ble .L_80053AC4
    addi r0, r5, 0x7
    srwi r0, r0, 3
    cmplwi r5, 0x0
    mtctr r0
    opword  0x40810110  // ble .L_80053AC4
L_800539B8:
    srwi r0, r25, 7
    srwi r5, r25, 15
    xor r0, r25, r0
    xor r0, r5, r0
    srwi r6, r25, 23
    eqv r0, r6, r0
    srwi r5, r25, 1
    clrlslwi r0, r0, 31, 30
    or r7, r5, r0
    srwi r0, r7, 7
    srwi r5, r7, 15
    xor r0, r7, r0
    srwi r6, r7, 23
    xor r0, r5, r0
    eqv r0, r6, r0
    clrlslwi r8, r0, 31, 30
    rlwimi r8, r7, 31, 2, 31
    srwi r0, r8, 7
    srwi r5, r8, 15
    xor r0, r8, r0
    srwi r6, r8, 23
    xor r0, r5, r0
    eqv r0, r6, r0
    clrlslwi r7, r0, 31, 30
    rlwimi r7, r8, 31, 2, 31
    srwi r0, r7, 7
    srwi r5, r7, 15
    xor r0, r7, r0
    srwi r6, r7, 23
    xor r0, r5, r0
    eqv r0, r6, r0
    clrlslwi r8, r0, 31, 30
    rlwimi r8, r7, 31, 2, 31
    srwi r0, r8, 7
    srwi r5, r8, 15
    xor r0, r8, r0
    srwi r6, r8, 23
    xor r0, r5, r0
    eqv r0, r6, r0
    clrlslwi r7, r0, 31, 30
    rlwimi r7, r8, 31, 2, 31
    srwi r0, r7, 7
    srwi r5, r7, 15
    xor r0, r7, r0
    srwi r6, r7, 23
    xor r0, r5, r0
    eqv r0, r6, r0
    clrlslwi r8, r0, 31, 30
    rlwimi r8, r7, 31, 2, 31
    srwi r0, r8, 7
    srwi r5, r8, 15
    xor r0, r8, r0
    srwi r6, r8, 23
    xor r0, r5, r0
    eqv r0, r6, r0
    clrlslwi r7, r0, 31, 30
    rlwimi r7, r8, 31, 2, 31
    srwi r0, r7, 7
    srwi r5, r7, 15
    xor r0, r7, r0
    srwi r6, r7, 23
    xor r0, r5, r0
    eqv r0, r6, r0
    clrlslwi r25, r0, 31, 30
    rlwimi r25, r7, 31, 2, 31
    addi r3, r3, 0x8
    opword  0x4200FEF8  // bdnz .L_800539B8
L_80053AC4:
    subf r0, r3, r4
    cmplw r3, r4
    mtctr r0
    opword  0x4080002C  // bge .L_80053AFC
L_80053AD4:
    srwi r0, r25, 7
    srwi r3, r25, 15
    xor r0, r25, r0
    srwi r4, r25, 23
    xor r0, r3, r0
    eqv r0, r4, r0
    srwi r3, r25, 1
    clrlslwi r0, r0, 31, 30
    or r25, r3, r0
    opword  0x4200FFDC  // bdnz .L_80053AD4
L_80053AFC:
    srwi r0, r25, 7
    srwi r3, r25, 15
    xor r0, r25, r0
    srwi r4, r25, 23
    xor r0, r3, r0
    eqv r0, r4, r0
    slwi r0, r0, 31
    or r0, r25, r0
    stw r0, 0x2c(r31)
    lwz r3, 0x2c(r31)
    bl fn_80053568
    stw r3, 0x2c(r31)
    bl fn_80053818
    addi r27, r3, 0x0
    addi r6, r27, 0x14
    addi r3, r24, 0x0
    addi r5, r1, 0xa4
    li r4, 0x0
    li r7, 0x1
    bl fn_800536D4
    cmpwi r3, 0x0
    opword  0x4080000C  // bge .L_80053B5C
    li r3, -0x3
    opword  0x480008C8  // b .L_80054420
L_80053B5C:
    li r3, 0x4
    lwz r7, 0x2c(r31)
    lwz r25, 0xa4(r1)
    mtctr r3
    lwz r26, 0xa8(r1)
    lwz r24, 0xac(r1)
    xor r25, r25, r7
    lwz r0, 0xb0(r1)
    lwz r5, 0xb4(r1)
L_80053B80:
    slwi r3, r7, 7
    slwi r4, r7, 15
    xor r3, r7, r3
    xor r3, r4, r3
    slwi r6, r7, 23
    eqv r3, r6, r3
    slwi r4, r7, 1
    rlwinm r3, r3, 2, 30, 30
    or r7, r4, r3
    slwi r3, r7, 7
    slwi r4, r7, 15
    xor r3, r7, r3
    slwi r6, r7, 23
    xor r3, r4, r3
    eqv r3, r6, r3
    rlwinm r9, r3, 2, 30, 30
    rlwimi r9, r7, 1, 0, 29
    slwi r3, r9, 7
    slwi r4, r9, 15
    xor r3, r9, r3
    slwi r6, r9, 23
    xor r3, r4, r3
    eqv r3, r6, r3
    rlwinm r8, r3, 2, 30, 30
    rlwimi r8, r9, 1, 0, 29
    slwi r3, r8, 7
    slwi r4, r8, 15
    xor r3, r8, r3
    slwi r6, r8, 23
    xor r3, r4, r3
    eqv r3, r6, r3
    rlwinm r7, r3, 2, 30, 30
    rlwimi r7, r8, 1, 0, 29
    slwi r3, r7, 7
    slwi r4, r7, 15
    xor r3, r7, r3
    slwi r6, r7, 23
    xor r3, r4, r3
    eqv r3, r6, r3
    rlwinm r8, r3, 2, 30, 30
    rlwimi r8, r7, 1, 0, 29
    slwi r3, r8, 7
    slwi r4, r8, 15
    xor r3, r8, r3
    slwi r6, r8, 23
    xor r3, r4, r3
    eqv r3, r6, r3
    rlwinm r7, r3, 2, 30, 30
    rlwimi r7, r8, 1, 0, 29
    slwi r3, r7, 7
    slwi r4, r7, 15
    xor r3, r7, r3
    slwi r6, r7, 23
    xor r3, r4, r3
    eqv r3, r6, r3
    rlwinm r8, r3, 2, 30, 30
    rlwimi r8, r7, 1, 0, 29
    slwi r3, r8, 7
    slwi r4, r8, 15
    xor r3, r8, r3
    slwi r6, r8, 23
    xor r3, r4, r3
    eqv r3, r6, r3
    rlwinm r7, r3, 2, 30, 30
    rlwimi r7, r8, 1, 0, 29
    opword  0x4200FEFC  // bdnz .L_80053B80
    slwi r3, r7, 7
    slwi r4, r7, 15
    xor r3, r7, r3
    slwi r6, r7, 23
    xor r3, r4, r3
    eqv r3, r6, r3
    srwi r3, r3, 31
    or r3, r7, r3
    stw r3, 0x2c(r31)
    li r3, 0x4
    mtctr r3
    lwz r7, 0x2c(r31)
    xor r26, r26, r7
L_80053CBC:
    slwi r3, r7, 7
    slwi r4, r7, 15
    xor r3, r7, r3
    xor r3, r4, r3
    slwi r6, r7, 23
    eqv r3, r6, r3
    slwi r4, r7, 1
    rlwinm r3, r3, 2, 30, 30
    or r7, r4, r3
    slwi r3, r7, 7
    slwi r4, r7, 15
    xor r3, r7, r3
    slwi r6, r7, 23
    xor r3, r4, r3
    eqv r3, r6, r3
    rlwinm r9, r3, 2, 30, 30
    rlwimi r9, r7, 1, 0, 29
    slwi r3, r9, 7
    slwi r4, r9, 15
    xor r3, r9, r3
    slwi r6, r9, 23
    xor r3, r4, r3
    eqv r3, r6, r3
    rlwinm r8, r3, 2, 30, 30
    rlwimi r8, r9, 1, 0, 29
    slwi r3, r8, 7
    slwi r4, r8, 15
    xor r3, r8, r3
    slwi r6, r8, 23
    xor r3, r4, r3
    eqv r3, r6, r3
    rlwinm r7, r3, 2, 30, 30
    rlwimi r7, r8, 1, 0, 29
    slwi r3, r7, 7
    slwi r4, r7, 15
    xor r3, r7, r3
    slwi r6, r7, 23
    xor r3, r4, r3
    eqv r3, r6, r3
    rlwinm r8, r3, 2, 30, 30
    rlwimi r8, r7, 1, 0, 29
    slwi r3, r8, 7
    slwi r4, r8, 15
    xor r3, r8, r3
    slwi r6, r8, 23
    xor r3, r4, r3
    eqv r3, r6, r3
    rlwinm r7, r3, 2, 30, 30
    rlwimi r7, r8, 1, 0, 29
    slwi r3, r7, 7
    slwi r4, r7, 15
    xor r3, r7, r3
    slwi r6, r7, 23
    xor r3, r4, r3
    eqv r3, r6, r3
    rlwinm r8, r3, 2, 30, 30
    rlwimi r8, r7, 1, 0, 29
    slwi r3, r8, 7
    slwi r4, r8, 15
    xor r3, r8, r3
    slwi r6, r8, 23
    xor r3, r4, r3
    eqv r3, r6, r3
    rlwinm r7, r3, 2, 30, 30
    rlwimi r7, r8, 1, 0, 29
    opword  0x4200FEFC  // bdnz .L_80053CBC
    slwi r3, r7, 7
    slwi r4, r7, 15
    xor r3, r7, r3
    slwi r6, r7, 23
    xor r3, r4, r3
    eqv r3, r6, r3
    srwi r3, r3, 31
    or r3, r7, r3
    stw r3, 0x2c(r31)
    li r3, 0x4
    mtctr r3
    lwz r7, 0x2c(r31)
    xor r24, r24, r7
L_80053DF8:
    slwi r3, r7, 7
    slwi r4, r7, 15
    xor r3, r7, r3
    xor r3, r4, r3
    slwi r6, r7, 23
    eqv r3, r6, r3
    slwi r4, r7, 1
    rlwinm r3, r3, 2, 30, 30
    or r7, r4, r3
    slwi r3, r7, 7
    slwi r4, r7, 15
    xor r3, r7, r3
    slwi r6, r7, 23
    xor r3, r4, r3
    eqv r3, r6, r3
    rlwinm r9, r3, 2, 30, 30
    rlwimi r9, r7, 1, 0, 29
    slwi r3, r9, 7
    slwi r4, r9, 15
    xor r3, r9, r3
    slwi r6, r9, 23
    xor r3, r4, r3
    eqv r3, r6, r3
    rlwinm r8, r3, 2, 30, 30
    rlwimi r8, r9, 1, 0, 29
    slwi r3, r8, 7
    slwi r4, r8, 15
    xor r3, r8, r3
    slwi r6, r8, 23
    xor r3, r4, r3
    eqv r3, r6, r3
    rlwinm r7, r3, 2, 30, 30
    rlwimi r7, r8, 1, 0, 29
    slwi r3, r7, 7
    slwi r4, r7, 15
    xor r3, r7, r3
    slwi r6, r7, 23
    xor r3, r4, r3
    eqv r3, r6, r3
    rlwinm r8, r3, 2, 30, 30
    rlwimi r8, r7, 1, 0, 29
    slwi r3, r8, 7
    slwi r4, r8, 15
    xor r3, r8, r3
    slwi r6, r8, 23
    xor r3, r4, r3
    eqv r3, r6, r3
    rlwinm r7, r3, 2, 30, 30
    rlwimi r7, r8, 1, 0, 29
    slwi r3, r7, 7
    slwi r4, r7, 15
    xor r3, r7, r3
    slwi r6, r7, 23
    xor r3, r4, r3
    eqv r3, r6, r3
    rlwinm r8, r3, 2, 30, 30
    rlwimi r8, r7, 1, 0, 29
    slwi r3, r8, 7
    slwi r4, r8, 15
    xor r3, r8, r3
    slwi r6, r8, 23
    xor r3, r4, r3
    eqv r3, r6, r3
    rlwinm r7, r3, 2, 30, 30
    rlwimi r7, r8, 1, 0, 29
    opword  0x4200FEFC  // bdnz .L_80053DF8
    slwi r3, r7, 7
    slwi r4, r7, 15
    xor r3, r7, r3
    slwi r6, r7, 23
    xor r3, r4, r3
    eqv r3, r6, r3
    srwi r3, r3, 31
    or r3, r7, r3
    stw r3, 0x2c(r31)
    li r3, 0x4
    mtctr r3
    lwz r7, 0x2c(r31)
    xor r0, r0, r7
L_80053F34:
    slwi r3, r7, 7
    slwi r4, r7, 15
    xor r3, r7, r3
    xor r3, r4, r3
    slwi r6, r7, 23
    eqv r3, r6, r3
    slwi r4, r7, 1
    rlwinm r3, r3, 2, 30, 30
    or r7, r4, r3
    slwi r3, r7, 7
    slwi r4, r7, 15
    xor r3, r7, r3
    slwi r6, r7, 23
    xor r3, r4, r3
    eqv r3, r6, r3
    rlwinm r9, r3, 2, 30, 30
    rlwimi r9, r7, 1, 0, 29
    slwi r3, r9, 7
    slwi r4, r9, 15
    xor r3, r9, r3
    slwi r6, r9, 23
    xor r3, r4, r3
    eqv r3, r6, r3
    rlwinm r8, r3, 2, 30, 30
    rlwimi r8, r9, 1, 0, 29
    slwi r3, r8, 7
    slwi r4, r8, 15
    xor r3, r8, r3
    slwi r6, r8, 23
    xor r3, r4, r3
    eqv r3, r6, r3
    rlwinm r7, r3, 2, 30, 30
    rlwimi r7, r8, 1, 0, 29
    slwi r3, r7, 7
    slwi r4, r7, 15
    xor r3, r7, r3
    slwi r6, r7, 23
    xor r3, r4, r3
    eqv r3, r6, r3
    rlwinm r8, r3, 2, 30, 30
    rlwimi r8, r7, 1, 0, 29
    slwi r3, r8, 7
    slwi r4, r8, 15
    xor r3, r8, r3
    slwi r6, r8, 23
    xor r3, r4, r3
    eqv r3, r6, r3
    rlwinm r7, r3, 2, 30, 30
    rlwimi r7, r8, 1, 0, 29
    slwi r3, r7, 7
    slwi r4, r7, 15
    xor r3, r7, r3
    slwi r6, r7, 23
    xor r3, r4, r3
    eqv r3, r6, r3
    rlwinm r8, r3, 2, 30, 30
    rlwimi r8, r7, 1, 0, 29
    slwi r3, r8, 7
    slwi r4, r8, 15
    xor r3, r8, r3
    slwi r6, r8, 23
    xor r3, r4, r3
    eqv r3, r6, r3
    rlwinm r7, r3, 2, 30, 30
    rlwimi r7, r8, 1, 0, 29
    opword  0x4200FEFC  // bdnz .L_80053F34
    slwi r3, r7, 7
    slwi r4, r7, 15
    xor r3, r7, r3
    xor r3, r4, r3
    slwi r6, r7, 23
    eqv r3, r6, r3
    srwi r3, r3, 31
    or r3, r7, r3
    stw r3, 0x2c(r31)
    slwi r4, r27, 3
    cmplwi r4, 0x0
    lwz r6, 0x2c(r31)
    li r3, 0x0
    xor r5, r5, r6
    opword  0x40810168  // ble .L_800541DC
    cmplwi r4, 0x8
    subi r8, r4, 0x8
    opword  0x40810124  // ble .L_800541A4
    addi r7, r8, 0x7
    srwi r7, r7, 3
    cmplwi r8, 0x0
    mtctr r7
    opword  0x40810110  // ble .L_800541A4
L_80054098:
    slwi r7, r6, 7
    slwi r8, r6, 15
    xor r7, r6, r7
    xor r7, r8, r7
    slwi r9, r6, 23
    eqv r7, r9, r7
    slwi r8, r6, 1
    rlwinm r6, r7, 2, 30, 30
    or r9, r8, r6
    slwi r6, r9, 7
    slwi r7, r9, 15
    xor r6, r9, r6
    slwi r8, r9, 23
    xor r6, r7, r6
    eqv r6, r8, r6
    rlwinm r10, r6, 2, 30, 30
    rlwimi r10, r9, 1, 0, 29
    slwi r6, r10, 7
    slwi r7, r10, 15
    xor r6, r10, r6
    slwi r8, r10, 23
    xor r6, r7, r6
    eqv r6, r8, r6
    rlwinm r9, r6, 2, 30, 30
    rlwimi r9, r10, 1, 0, 29
    slwi r6, r9, 7
    slwi r7, r9, 15
    xor r6, r9, r6
    slwi r8, r9, 23
    xor r6, r7, r6
    eqv r6, r8, r6
    rlwinm r10, r6, 2, 30, 30
    rlwimi r10, r9, 1, 0, 29
    slwi r6, r10, 7
    slwi r7, r10, 15
    xor r6, r10, r6
    slwi r8, r10, 23
    xor r6, r7, r6
    eqv r6, r8, r6
    rlwinm r9, r6, 2, 30, 30
    rlwimi r9, r10, 1, 0, 29
    slwi r6, r9, 7
    slwi r7, r9, 15
    xor r6, r9, r6
    slwi r8, r9, 23
    xor r6, r7, r6
    eqv r6, r8, r6
    rlwinm r10, r6, 2, 30, 30
    rlwimi r10, r9, 1, 0, 29
    slwi r6, r10, 7
    slwi r7, r10, 15
    xor r6, r10, r6
    slwi r8, r10, 23
    xor r6, r7, r6
    eqv r6, r8, r6
    rlwinm r9, r6, 2, 30, 30
    rlwimi r9, r10, 1, 0, 29
    slwi r6, r9, 7
    slwi r7, r9, 15
    xor r6, r9, r6
    slwi r8, r9, 23
    xor r6, r7, r6
    eqv r6, r8, r6
    rlwinm r6, r6, 2, 30, 30
    rlwimi r6, r9, 1, 0, 29
    addi r3, r3, 0x8
    opword  0x4200FEF8  // bdnz .L_80054098
L_800541A4:
    subf r7, r3, r4
    cmplw r3, r4
    mtctr r7
    opword  0x4080002C  // bge .L_800541DC
L_800541B4:
    slwi r3, r6, 7
    slwi r4, r6, 15
    xor r3, r6, r3
    slwi r7, r6, 23
    xor r3, r4, r3
    eqv r3, r7, r3
    slwi r4, r6, 1
    rlwinm r3, r3, 2, 30, 30
    or r6, r4, r3
    opword  0x4200FFDC  // bdnz .L_800541B4
L_800541DC:
    slwi r3, r6, 7
    slwi r4, r6, 15
    xor r3, r6, r3
    slwi r7, r6, 23
    xor r3, r4, r3
    eqv r3, r7, r3
    srwi r3, r3, 31
    or r3, r6, r3
    stw r3, 0x2c(r31)
    li r3, 0x4
    mtctr r3
    li r3, 0x0
    lwz r4, 0x2c(r31)
L_80054210:
    slwi r6, r4, 7
    slwi r7, r4, 15
    xor r6, r4, r6
    xor r6, r7, r6
    slwi r8, r4, 23
    eqv r6, r8, r6
    slwi r7, r4, 1
    rlwinm r4, r6, 2, 30, 30
    or r8, r7, r4
    slwi r4, r8, 7
    slwi r6, r8, 15
    xor r4, r8, r4
    slwi r7, r8, 23
    xor r4, r6, r4
    eqv r4, r7, r4
    rlwinm r9, r4, 2, 30, 30
    rlwimi r9, r8, 1, 0, 29
    slwi r4, r9, 7
    slwi r6, r9, 15
    xor r4, r9, r4
    slwi r7, r9, 23
    xor r4, r6, r4
    eqv r4, r7, r4
    rlwinm r8, r4, 2, 30, 30
    rlwimi r8, r9, 1, 0, 29
    slwi r4, r8, 7
    slwi r6, r8, 15
    xor r4, r8, r4
    slwi r7, r8, 23
    xor r4, r6, r4
    eqv r4, r7, r4
    rlwinm r9, r4, 2, 30, 30
    rlwimi r9, r8, 1, 0, 29
    slwi r4, r9, 7
    slwi r6, r9, 15
    xor r4, r9, r4
    slwi r7, r9, 23
    xor r4, r6, r4
    eqv r4, r7, r4
    rlwinm r8, r4, 2, 30, 30
    rlwimi r8, r9, 1, 0, 29
    slwi r4, r8, 7
    slwi r6, r8, 15
    xor r4, r8, r4
    slwi r7, r8, 23
    xor r4, r6, r4
    eqv r4, r7, r4
    rlwinm r9, r4, 2, 30, 30
    rlwimi r9, r8, 1, 0, 29
    slwi r4, r9, 7
    slwi r6, r9, 15
    xor r4, r9, r4
    slwi r7, r9, 23
    xor r4, r6, r4
    eqv r4, r7, r4
    rlwinm r8, r4, 2, 30, 30
    rlwimi r8, r9, 1, 0, 29
    slwi r4, r8, 7
    slwi r6, r8, 15
    xor r4, r8, r4
    slwi r7, r8, 23
    xor r4, r6, r4
    eqv r4, r7, r4
    rlwinm r4, r4, 2, 30, 30
    rlwimi r4, r8, 1, 0, 29
    addi r3, r3, 0x8
    opword  0x4200FEF8  // bdnz .L_80054210
    subfic r6, r3, 0x21
    cmplwi r3, 0x21
    mtctr r6
    opword  0x4080002C  // bge .L_80054354
L_8005432C:
    slwi r3, r4, 7
    slwi r6, r4, 15
    xor r3, r4, r3
    slwi r7, r4, 23
    xor r3, r6, r3
    eqv r3, r7, r3
    slwi r4, r4, 1
    rlwinm r3, r3, 2, 30, 30
    or r4, r4, r3
    opword  0x4200FFDC  // bdnz .L_8005432C
L_80054354:
    slwi r3, r4, 7
    slwi r6, r4, 15
    xor r3, r4, r3
    slwi r7, r4, 23
    xor r3, r6, r3
    eqv r3, r7, r3
    srwi r3, r3, 31
    or r3, r4, r3
    stw r3, 0x2c(r31)
    li r6, 0x8
    li r27, 0x0
    stw r0, 0x0(r28)
    addi r3, r28, 0x0
    li r4, 0x8
    stw r5, 0x4(r28)
    stw r28, 0x0(r29)
    stw r6, 0x4(r29)
    stw r22, 0xc(r29)
    stw r27, 0x8(r29)
    bl DCFlushRange
    addi r3, r22, 0x0
    li r4, 0x4
    bl DCInvalidateRange
    addi r3, r29, 0x0
    li r4, 0x10
    bl DCFlushRange
    li r0, 0xff
    lis r3, lbl_80496B00@ha
    stw r0, 0x4(r30)
    addi r3, r3, lbl_80496B00@l
    addis r0, r3, 0x8000
    stw r0, 0xc(r30)
    li r0, 0x160
    lis r4, fn_80054434@ha
    stw r0, 0x10(r30)
    lis r3, fn_800544A4@ha
    li r5, 0x10
    stw r27, 0x14(r30)
    addi r4, r4, fn_80054434@l
    addi r0, r3, fn_800544A4@l
    sth r5, 0x24(r30)
    mr r3, r30
    stw r4, 0x28(r30)
    stw r27, 0x2c(r30)
    stw r0, 0x30(r30)
    stw r27, 0x34(r30)
    bl fn_8003A040
    stw r25, 0x0(r23)
    li r3, 0x0
    stw r26, 0x4(r23)
    stw r24, 0x8(r23)
L_80054420:
    lmw r22, 0xf8(r1)
    lwz r0, 0x124(r1)
    addi r1, r1, 0x120
    mtlr r0
    blr
}

ASM void fn_80054434(void)
{
    nofralloc
    mflr r0
    lis r4, lbl_804B5BA0@ha
    stw r0, 0x4(r1)
    addi r4, r4, lbl_804B5BA0@l
    addi r0, r4, 0x30
    stwu r1, -0x18(r1)
    cmplw r0, r3
    stw r31, 0x14(r1)
    opword  0x41820010  // beq .L_80054464
    addi r0, r4, 0x140
    cmplw r0, r3
    addi r4, r4, 0x110
L_80054464:
    lwz r31, 0x80(r4)
    lis r3, 0xff00
    bl fn_80051CEC
L_80054470:
    bl fn_80051CB4
    cmplwi r3, 0x0
    opword  0x4082FFF8  // bne .L_80054470
    mr r3, r31
    bl fn_80051CEC
L_80054484:
    bl fn_80051CB4
    cmplwi r3, 0x0
    opword  0x4082FFF8  // bne .L_80054484
    lwz r0, 0x1c(r1)
    lwz r31, 0x14(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

ASM void fn_800544A4(void)
{
    nofralloc
    mflr r0
    lis r4, lbl_804B5BA0@ha
    stw r0, 0x4(r1)
    addi r4, r4, lbl_804B5BA0@l
    addi r0, r4, 0x30
    stwu r1, -0x88(r1)
    cmplw r0, r3
    stw r31, 0x84(r1)
    li r31, 0x0
    stw r30, 0x80(r1)
    stw r29, 0x7c(r1)
    addi r29, r4, 0x0
    stw r28, 0x78(r1)
    opword  0x41820020  // beq .L_800544F8
    addi r0, r4, 0x140
    cmplw r0, r3
    addi r4, r4, 0x110
    addi r29, r4, 0x0
    li r31, 0x1
    opword  0x41820008  // beq .L_800544F8
    li r31, 0x2
L_800544F8:
    lwz r3, 0x80(r29)
    addi r0, r3, 0x2f
    clrrwi r3, r0, 5
    lwz r30, 0x20(r3)
    bl fn_80053818
    lwz r0, 0x2c(r29)
    addi r28, r3, 0x0
    addi r6, r28, 0x0
    xor r0, r30, r0
    clrrwi r4, r0, 16
    addi r3, r31, 0x0
    addi r5, r1, 0x34
    li r7, 0x1
    bl fn_800536D4
    cmpwi r3, 0x0
    opword  0x4080001C  // bge .L_80054550
    mr r3, r31
    bl EXIUnlock
    addi r3, r31, 0x0
    li r4, -0x3
    bl fn_8005660C
    opword  0x4800025C  // b .L_800547A8
L_80054550:
    lwz r4, 0x14(r29)
    li r3, 0x0
    lwz r0, 0x2c(r29)
    add r4, r28, r4
    addi r4, r4, 0x4
    slwi r4, r4, 3
    addi r4, r4, 0x1
    cmplwi r4, 0x0
    opword  0x40810168  // ble .L_800546D8
    cmplwi r4, 0x8
    subi r6, r4, 0x8
    opword  0x40810124  // ble .L_800546A0
    addi r5, r6, 0x7
    srwi r5, r5, 3
    cmplwi r6, 0x0
    mtctr r5
    opword  0x40810110  // ble .L_800546A0
L_80054594:
    slwi r5, r0, 7
    slwi r6, r0, 15
    xor r5, r0, r5
    xor r5, r6, r5
    slwi r7, r0, 23
    eqv r5, r7, r5
    slwi r6, r0, 1
    rlwinm r0, r5, 2, 30, 30
    or r7, r6, r0
    slwi r0, r7, 7
    slwi r5, r7, 15
    xor r0, r7, r0
    slwi r6, r7, 23
    xor r0, r5, r0
    eqv r0, r6, r0
    rlwinm r8, r0, 2, 30, 30
    rlwimi r8, r7, 1, 0, 29
    slwi r0, r8, 7
    slwi r5, r8, 15
    xor r0, r8, r0
    slwi r6, r8, 23
    xor r0, r5, r0
    eqv r0, r6, r0
    rlwinm r7, r0, 2, 30, 30
    rlwimi r7, r8, 1, 0, 29
    slwi r0, r7, 7
    slwi r5, r7, 15
    xor r0, r7, r0
    slwi r6, r7, 23
    xor r0, r5, r0
    eqv r0, r6, r0
    rlwinm r8, r0, 2, 30, 30
    rlwimi r8, r7, 1, 0, 29
    slwi r0, r8, 7
    slwi r5, r8, 15
    xor r0, r8, r0
    slwi r6, r8, 23
    xor r0, r5, r0
    eqv r0, r6, r0
    rlwinm r7, r0, 2, 30, 30
    rlwimi r7, r8, 1, 0, 29
    slwi r0, r7, 7
    slwi r5, r7, 15
    xor r0, r7, r0
    slwi r6, r7, 23
    xor r0, r5, r0
    eqv r0, r6, r0
    rlwinm r8, r0, 2, 30, 30
    rlwimi r8, r7, 1, 0, 29
    slwi r0, r8, 7
    slwi r5, r8, 15
    xor r0, r8, r0
    slwi r6, r8, 23
    xor r0, r5, r0
    eqv r0, r6, r0
    rlwinm r7, r0, 2, 30, 30
    rlwimi r7, r8, 1, 0, 29
    slwi r0, r7, 7
    slwi r5, r7, 15
    xor r0, r7, r0
    slwi r6, r7, 23
    xor r0, r5, r0
    eqv r0, r6, r0
    rlwinm r0, r0, 2, 30, 30
    rlwimi r0, r7, 1, 0, 29
    addi r3, r3, 0x8
    opword  0x4200FEF8  // bdnz .L_80054594
L_800546A0:
    subf r5, r3, r4
    cmplw r3, r4
    mtctr r5
    opword  0x4080002C  // bge .L_800546D8
L_800546B0:
    slwi r3, r0, 7
    slwi r4, r0, 15
    xor r3, r0, r3
    slwi r5, r0, 23
    xor r3, r4, r3
    eqv r3, r5, r3
    slwi r4, r0, 1
    rlwinm r0, r3, 2, 30, 30
    or r0, r4, r0
    opword  0x4200FFDC  // bdnz .L_800546B0
L_800546D8:
    slwi r3, r0, 7
    slwi r4, r0, 15
    xor r3, r0, r3
    slwi r5, r0, 23
    xor r3, r4, r3
    eqv r3, r5, r3
    srwi r3, r3, 31
    or r0, r0, r3
    stw r0, 0x2c(r29)
    bl fn_80053818
    lwz r0, 0x2c(r29)
    slwi r4, r30, 16
    addi r6, r3, 0x0
    xor r0, r4, r0
    clrrwi r4, r0, 16
    addi r3, r31, 0x0
    addi r5, r1, 0x34
    li r7, 0x1
    bl fn_800536D4
    cmpwi r3, 0x0
    opword  0x4080001C  // bge .L_80054744
    mr r3, r31
    bl EXIUnlock
    addi r3, r31, 0x0
    li r4, -0x3
    bl fn_8005660C
    opword  0x48000068  // b .L_800547A8
L_80054744:
    addi r3, r31, 0x0
    addi r4, r1, 0x30
    bl fn_800526C8
    addi r28, r3, 0x0
    addi r3, r31, 0x0
    bl EXIProbe
    cmpwi r3, 0x0
    opword  0x4082001C  // bne .L_8005477C
    mr r3, r31
    bl EXIUnlock
    addi r3, r31, 0x0
    li r4, -0x3
    bl fn_8005660C
    opword  0x48000030  // b .L_800547A8
L_8005477C:
    cmpwi r28, 0x0
    opword  0x4082001C  // bne .L_8005479C
    lbz r0, 0x30(r1)
    rlwinm. r0, r0, 0, 25, 25
    opword  0x40820010  // bne .L_8005479C
    mr r3, r31
    bl EXIUnlock
    li r28, -0x5
L_8005479C:
    addi r3, r31, 0x0
    addi r4, r28, 0x0
    bl fn_8005660C
L_800547A8:
    lwz r0, 0x8c(r1)
    lwz r31, 0x84(r1)
    lwz r30, 0x80(r1)
    lwz r29, 0x7c(r1)
    lwz r28, 0x78(r1)
    addi r1, r1, 0x88
    mtlr r0
    blr
}

ASM void fn_800547C8(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x20(r1)
    stw r31, 0x1c(r1)
    addi r31, r3, 0x0
    lis r3, lbl_804B5BA0@ha
    stw r30, 0x18(r1)
    mulli r5, r31, 0x110
    stw r29, 0x14(r1)
    addi r0, r3, lbl_804B5BA0@l
    mr. r29, r4
    add r30, r0, r5
    opword  0x41800050  // blt .L_80054848
    lwz r3, 0xb8(r30)
    addi r0, r3, 0x200
    stw r0, 0xb8(r30)
    lwz r3, 0xb0(r30)
    addi r0, r3, 0x200
    stw r0, 0xb0(r30)
    lwz r3, 0xb4(r30)
    addi r0, r3, 0x200
    stw r0, 0xb4(r30)
    lwz r3, 0xac(r30)
    subic. r0, r3, 0x1
    stw r0, 0xac(r30)
    opword  0x4081001C  // ble .L_80054848
    lis r3, fn_800547C8@ha
    addi r4, r3, fn_800547C8@l
    addi r3, r31, 0x0
    bl fn_80052DF8
    mr. r29, r3
    opword  0x40800044  // bge .L_80054888
L_80054848:
    lwz r0, 0xd0(r30)
    cmplwi r0, 0x0
    opword  0x40820010  // bne .L_80054860
    addi r3, r30, 0x0
    addi r4, r29, 0x0
    bl fn_800532CC
L_80054860:
    lwz r0, 0xd4(r30)
    cmplwi r0, 0x0
    mr r12, r0
    opword  0x4182001C  // beq .L_80054888
    li r0, 0x0
    mtlr r12
    stw r0, 0xd4(r30)
    addi r3, r31, 0x0
    addi r4, r29, 0x0
    blrl
L_80054888:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    addi r1, r1, 0x20
    mtlr r0
    blr
}

ASM void fn_800548A4(void)
{
    nofralloc
    mflr r0
    mulli r9, r3, 0x110
    stw r0, 0x4(r1)
    lis r8, lbl_804B5BA0@ha
    stwu r1, -0x8(r1)
    addi r0, r8, lbl_804B5BA0@l
    add r8, r0, r9
    lwz r0, 0x0(r8)
    cmpwi r0, 0x0
    opword  0x4082000C  // bne .L_800548D4
    li r3, -0x3
    opword  0x48000028  // b .L_800548F8
L_800548D4:
    stw r7, 0xd4(r8)
    srwi r0, r5, 9
    lis r5, fn_800547C8@ha
    stw r0, 0xac(r8)
    addi r0, r5, fn_800547C8@l
    stw r4, 0xb0(r8)
    mr r4, r0
    stw r6, 0xb4(r8)
    bl fn_80052DF8
L_800548F8:
    lwz r0, 0xc(r1)
    addi r1, r1, 0x8
    mtlr r0
    blr
}

ASM void fn_80054908(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x20(r1)
    stw r31, 0x1c(r1)
    addi r31, r3, 0x0
    lis r3, lbl_804B5BA0@ha
    stw r30, 0x18(r1)
    mulli r5, r31, 0x110
    stw r29, 0x14(r1)
    addi r0, r3, lbl_804B5BA0@l
    mr. r29, r4
    add r30, r0, r5
    opword  0x41800050  // blt .L_80054988
    lwz r3, 0xb8(r30)
    addi r0, r3, 0x80
    stw r0, 0xb8(r30)
    lwz r3, 0xb0(r30)
    addi r0, r3, 0x80
    stw r0, 0xb0(r30)
    lwz r3, 0xb4(r30)
    addi r0, r3, 0x80
    stw r0, 0xb4(r30)
    lwz r3, 0xac(r30)
    subic. r0, r3, 0x1
    stw r0, 0xac(r30)
    opword  0x4081001C  // ble .L_80054988
    lis r3, fn_80054908@ha
    addi r4, r3, fn_80054908@l
    addi r3, r31, 0x0
    bl fn_80052F2C
    mr. r29, r3
    opword  0x40800044  // bge .L_800549C8
L_80054988:
    lwz r0, 0xd0(r30)
    cmplwi r0, 0x0
    opword  0x40820010  // bne .L_800549A0
    addi r3, r30, 0x0
    addi r4, r29, 0x0
    bl fn_800532CC
L_800549A0:
    lwz r0, 0xd4(r30)
    cmplwi r0, 0x0
    mr r12, r0
    opword  0x4182001C  // beq .L_800549C8
    li r0, 0x0
    mtlr r12
    stw r0, 0xd4(r30)
    addi r3, r31, 0x0
    addi r4, r29, 0x0
    blrl
L_800549C8:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    addi r1, r1, 0x20
    mtlr r0
    blr
}

ASM void fn_800549E4(void)
{
    nofralloc
    mflr r0
    mulli r9, r3, 0x110
    stw r0, 0x4(r1)
    lis r8, lbl_804B5BA0@ha
    stwu r1, -0x8(r1)
    addi r0, r8, lbl_804B5BA0@l
    add r8, r0, r9
    lwz r0, 0x0(r8)
    cmpwi r0, 0x0
    opword  0x4082000C  // bne .L_80054A14
    li r3, -0x3
    opword  0x48000028  // b .L_80054A38
L_80054A14:
    stw r7, 0xd4(r8)
    srwi r0, r5, 7
    lis r5, fn_80054908@ha
    stw r0, 0xac(r8)
    addi r0, r5, fn_80054908@l
    stw r4, 0xb0(r8)
    mr r4, r0
    stw r6, 0xb4(r8)
    bl fn_80052F2C
L_80054A38:
    lwz r0, 0xc(r1)
    addi r1, r1, 0x8
    mtlr r0
    blr
}

ASM void fn_80054A48(void)
{
    nofralloc
    lwz r3, 0x88(r3)
    blr
}

ASM void fn_80054A50(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x20(r1)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    mr. r30, r4
    stw r29, 0x14(r1)
    addi r29, r3, 0x0
    mulli r5, r29, 0x110
    lis r3, lbl_804B5BA0@ha
    addi r0, r3, lbl_804B5BA0@l
    add r31, r0, r5
    opword  0x41800048  // blt .L_80054AC8
    lwz r3, 0x80(r31)
    lwz r0, 0x88(r31)
    addi r4, r3, 0x6000
    cmplw r0, r4
    addis r5, r3, 0x1
    addi r5, r5, -0x8000
    opword  0x40820018  // bne .L_80054AB4
    stw r5, 0x88(r31)
    addi r3, r5, 0x0
    li r5, 0x2000
    bl memcpy
    opword  0x48000018  // b .L_80054AC8
L_80054AB4:
    stw r4, 0x88(r31)
    addi r3, r4, 0x0
    addi r4, r5, 0x0
    li r5, 0x2000
    bl memcpy
L_80054AC8:
    lwz r0, 0xd0(r31)
    cmplwi r0, 0x0
    opword  0x40820010  // bne .L_80054AE0
    addi r3, r31, 0x0
    addi r4, r30, 0x0
    bl fn_800532CC
L_80054AE0:
    lwz r0, 0xd8(r31)
    cmplwi r0, 0x0
    mr r12, r0
    opword  0x4182001C  // beq .L_80054B08
    li r0, 0x0
    mtlr r12
    stw r0, 0xd8(r31)
    addi r3, r29, 0x0
    addi r4, r30, 0x0
    blrl
L_80054B08:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    addi r1, r1, 0x20
    mtlr r0
    blr
}

ASM void fn_80054B24(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x28(r1)
    stw r31, 0x24(r1)
    addi r31, r3, 0x0
    lis r3, lbl_804B5BA0@ha
    stw r30, 0x20(r1)
    mulli r5, r31, 0x110
    stw r29, 0x1c(r1)
    addi r0, r3, lbl_804B5BA0@l
    mr. r29, r4
    add r30, r0, r5
    opword  0x4180003C  // blt .L_80054B90
    lwz r5, 0x88(r30)
    lis r3, fn_80054A50@ha
    lwz r0, 0x80(r30)
    addi r7, r3, fn_80054A50@l
    lwz r3, 0xc(r30)
    subf r0, r0, r5
    srwi r0, r0, 13
    mullw r4, r3, r0
    addi r6, r5, 0x0
    addi r3, r31, 0x0
    li r5, 0x2000
    bl fn_800549E4
    mr. r29, r3
    opword  0x40800044  // bge .L_80054BD0
L_80054B90:
    lwz r0, 0xd0(r30)
    cmplwi r0, 0x0
    opword  0x40820010  // bne .L_80054BA8
    addi r3, r30, 0x0
    addi r4, r29, 0x0
    bl fn_800532CC
L_80054BA8:
    lwz r0, 0xd8(r30)
    cmplwi r0, 0x0
    mr r12, r0
    opword  0x4182001C  // beq .L_80054BD0
    li r0, 0x0
    mtlr r12
    stw r0, 0xd8(r30)
    addi r3, r31, 0x0
    addi r4, r29, 0x0
    blrl
L_80054BD0:
    lwz r0, 0x2c(r1)
    lwz r31, 0x24(r1)
    lwz r30, 0x20(r1)
    lwz r29, 0x1c(r1)
    addi r1, r1, 0x28
    mtlr r0
    blr
}

ASM void fn_80054BEC(void)
{
    nofralloc
    mflr r0
    mulli r7, r3, 0x110
    stw r0, 0x4(r1)
    stwu r1, -0x20(r1)
    lis r6, lbl_804B5BA0@ha
    addi r0, r6, lbl_804B5BA0@l
    stw r31, 0x1c(r1)
    add r9, r0, r7
    stw r30, 0x18(r1)
    lwz r0, 0x0(r9)
    cmpwi r0, 0x0
    opword  0x4082000C  // bne .L_80054C24
    li r3, -0x3
    opword  0x480000CC  // b .L_80054CEC
L_80054C24:
    lwz r8, 0x88(r9)
    lhz r0, 0x6(r8)
    cmplw r0, r4
    opword  0x4080000C  // bge .L_80054C3C
    li r3, -0x9
    opword  0x480000B4  // b .L_80054CEC
L_80054C3C:
    subf r0, r4, r0
    sth r0, 0x6(r8)
    lis r6, 0x1
    subi r12, r6, 0x1
    lhz r11, 0x8(r8)
    addi r0, r12, 0x0
    li r30, 0x0
    opword  0x4800007C  // b .L_80054CD4
L_80054C5C:
    lhz r10, 0x10(r9)
    addi r30, r30, 0x1
    clrlwi r6, r30, 16
    subi r7, r10, 0x5
    cmpw r7, r6
    opword  0x4080000C  // bge .L_80054C7C
    li r3, -0x6
    opword  0x48000074  // b .L_80054CEC
L_80054C7C:
    addi r11, r11, 0x1
    clrlwi r6, r11, 16
    cmplwi r6, 0x5
    opword  0x4180000C  // blt .L_80054C94
    cmplw r6, r10
    opword  0x41800008  // blt .L_80054C98
L_80054C94:
    li r11, 0x5
L_80054C98:
    clrlslwi r6, r11, 16, 1
    add r7, r8, r6
    lhz r6, 0x0(r7)
    cmplwi r6, 0x0
    opword  0x4082002C  // bne .L_80054CD4
    clrlwi r6, r12, 16
    cmplwi r6, 0xffff
    opword  0x4082000C  // bne .L_80054CC0
    mr r12, r11
    opword  0x4800000C  // b .L_80054CC8
L_80054CC0:
    clrlslwi r6, r31, 16, 1
    sthx r11, r8, r6
L_80054CC8:
    sth r0, 0x0(r7)
    addi r31, r11, 0x0
    subi r4, r4, 0x1
L_80054CD4:
    cmplwi r4, 0x0
    opword  0x4082FF84  // bne .L_80054C5C
    sth r11, 0x8(r8)
    mr r4, r8
    sth r12, 0xbe(r9)
    bl fn_80054D04
L_80054CEC:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    addi r1, r1, 0x20
    mtlr r0
    blr
}

ASM void fn_80054D04(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x28(r1)
    stw r31, 0x24(r1)
    stw r30, 0x20(r1)
    addi r30, r5, 0x0
    stw r29, 0x1c(r1)
    addi r29, r4, 0x0
    addi r5, r29, 0x0
    stw r28, 0x18(r1)
    addi r28, r3, 0x0
    addi r6, r29, 0x2
    lhz r3, 0x4(r4)
    mulli r4, r28, 0x110
    addi r0, r3, 0x1
    lis r3, lbl_804B5BA0@ha
    sth r0, 0x4(r29)
    addi r0, r3, lbl_804B5BA0@l
    add r31, r0, r4
    addi r3, r29, 0x4
    li r4, 0x1ffc
    bl fn_80055014
    addi r3, r29, 0x0
    li r4, 0x2000
    bl fn_80040F90
    stw r30, 0xd8(r31)
    lis r3, fn_80054B24@ha
    addi r5, r3, fn_80054B24@l
    lwz r0, 0x80(r31)
    mr r3, r28
    lwz r4, 0xc(r31)
    subf r0, r0, r29
    srwi r0, r0, 13
    mullw r4, r4, r0
    bl fn_80053048
    lwz r0, 0x2c(r1)
    lwz r31, 0x24(r1)
    lwz r30, 0x20(r1)
    lwz r29, 0x1c(r1)
    lwz r28, 0x18(r1)
    addi r1, r1, 0x28
    mtlr r0
    blr
}

ASM void fn_80054DB0(void)
{
    nofralloc
    lwz r3, 0x84(r3)
    blr
}

ASM void fn_80054DB8(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x20(r1)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    mr. r30, r4
    stw r29, 0x14(r1)
    addi r29, r3, 0x0
    mulli r5, r29, 0x110
    lis r3, lbl_804B5BA0@ha
    addi r0, r3, lbl_804B5BA0@l
    add r31, r0, r5
    opword  0x41800044  // blt .L_80054E2C
    lwz r3, 0x80(r31)
    lwz r0, 0x84(r31)
    addi r4, r3, 0x2000
    cmplw r0, r4
    addi r0, r3, 0x4000
    opword  0x40820018  // bne .L_80054E18
    stw r0, 0x84(r31)
    mr r3, r0
    li r5, 0x2000
    bl memcpy
    opword  0x48000018  // b .L_80054E2C
L_80054E18:
    stw r4, 0x84(r31)
    addi r3, r4, 0x0
    mr r4, r0
    li r5, 0x2000
    bl memcpy
L_80054E2C:
    lwz r0, 0xd0(r31)
    cmplwi r0, 0x0
    opword  0x40820010  // bne .L_80054E44
    addi r3, r31, 0x0
    addi r4, r30, 0x0
    bl fn_800532CC
L_80054E44:
    lwz r0, 0xd8(r31)
    cmplwi r0, 0x0
    mr r12, r0
    opword  0x4182001C  // beq .L_80054E6C
    li r0, 0x0
    mtlr r12
    stw r0, 0xd8(r31)
    addi r3, r29, 0x0
    addi r4, r30, 0x0
    blrl
L_80054E6C:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    addi r1, r1, 0x20
    mtlr r0
    blr
}

ASM void fn_80054E88(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x28(r1)
    stw r31, 0x24(r1)
    addi r31, r3, 0x0
    lis r3, lbl_804B5BA0@ha
    stw r30, 0x20(r1)
    mulli r5, r31, 0x110
    stw r29, 0x1c(r1)
    addi r0, r3, lbl_804B5BA0@l
    mr. r29, r4
    add r30, r0, r5
    opword  0x4180003C  // blt .L_80054EF4
    lwz r5, 0x84(r30)
    lis r3, fn_80054DB8@ha
    lwz r0, 0x80(r30)
    addi r7, r3, fn_80054DB8@l
    lwz r3, 0xc(r30)
    subf r0, r0, r5
    srwi r0, r0, 13
    mullw r4, r3, r0
    addi r6, r5, 0x0
    addi r3, r31, 0x0
    li r5, 0x2000
    bl fn_800549E4
    mr. r29, r3
    opword  0x40800044  // bge .L_80054F34
L_80054EF4:
    lwz r0, 0xd0(r30)
    cmplwi r0, 0x0
    opword  0x40820010  // bne .L_80054F0C
    addi r3, r30, 0x0
    addi r4, r29, 0x0
    bl fn_800532CC
L_80054F0C:
    lwz r0, 0xd8(r30)
    cmplwi r0, 0x0
    mr r12, r0
    opword  0x4182001C  // beq .L_80054F34
    li r0, 0x0
    mtlr r12
    stw r0, 0xd8(r30)
    addi r3, r31, 0x0
    addi r4, r29, 0x0
    blrl
L_80054F34:
    lwz r0, 0x2c(r1)
    lwz r31, 0x24(r1)
    lwz r30, 0x20(r1)
    lwz r29, 0x1c(r1)
    addi r1, r1, 0x28
    mtlr r0
    blr
}

ASM void fn_80054F50(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x28(r1)
    stw r31, 0x24(r1)
    stw r30, 0x20(r1)
    stw r29, 0x1c(r1)
    addi r29, r4, 0x0
    stw r28, 0x18(r1)
    addi r28, r3, 0x0
    mulli r5, r28, 0x110
    lis r3, lbl_804B5BA0@ha
    addi r0, r3, lbl_804B5BA0@l
    add r30, r0, r5
    lwz r0, 0x0(r30)
    cmpwi r0, 0x0
    opword  0x4082000C  // bne .L_80054F98
    li r3, -0x3
    opword  0x48000060  // b .L_80054FF4
L_80054F98:
    lwz r31, 0x84(r30)
    li r4, 0x1ffc
    lha r5, 0x1ffa(r31)
    addi r6, r31, 0x1fc0
    addi r3, r31, 0x0
    addi r0, r5, 0x1
    sth r0, 0x1ffa(r31)
    addi r5, r6, 0x3c
    addi r6, r6, 0x3e
    bl fn_80055014
    addi r3, r31, 0x0
    li r4, 0x2000
    bl fn_80040F90
    stw r29, 0xd8(r30)
    lis r3, fn_80054E88@ha
    addi r5, r3, fn_80054E88@l
    lwz r0, 0x80(r30)
    mr r3, r28
    lwz r4, 0xc(r30)
    subf r0, r0, r31
    srwi r0, r0, 13
    mullw r4, r4, r0
    bl fn_80053048
L_80054FF4:
    lwz r0, 0x2c(r1)
    lwz r31, 0x24(r1)
    lwz r30, 0x20(r1)
    lwz r29, 0x1c(r1)
    lwz r28, 0x18(r1)
    addi r1, r1, 0x28
    mtlr r0
    blr
}

ASM void fn_80055014(void)
{
    nofralloc
    li r0, 0x0
    srawi r4, r4, 1
    sth r0, 0x0(r6)
    addze. r4, r4
    sth r0, 0x0(r5)
    opword  0x40810170  // ble .L_80055198
    srwi. r0, r4, 3
    mtctr r0
    opword  0x41820134  // beq .L_80055168
L_80055038:
    lhz r7, 0x0(r5)
    lhz r0, 0x0(r3)
    add r0, r7, r0
    sth r0, 0x0(r5)
    lhz r0, 0x0(r3)
    lhz r7, 0x0(r6)
    nor r0, r0, r0
    add r0, r7, r0
    sth r0, 0x0(r6)
    lhz r7, 0x0(r5)
    lhz r0, 0x2(r3)
    add r0, r7, r0
    sth r0, 0x0(r5)
    lhz r0, 0x2(r3)
    lhz r7, 0x0(r6)
    nor r0, r0, r0
    add r0, r7, r0
    sth r0, 0x0(r6)
    lhz r7, 0x0(r5)
    lhz r0, 0x4(r3)
    add r0, r7, r0
    sth r0, 0x0(r5)
    lhz r0, 0x4(r3)
    lhz r7, 0x0(r6)
    nor r0, r0, r0
    add r0, r7, r0
    sth r0, 0x0(r6)
    lhz r7, 0x0(r5)
    lhz r0, 0x6(r3)
    add r0, r7, r0
    sth r0, 0x0(r5)
    lhz r0, 0x6(r3)
    lhz r7, 0x0(r6)
    nor r0, r0, r0
    add r0, r7, r0
    sth r0, 0x0(r6)
    lhz r7, 0x0(r5)
    lhz r0, 0x8(r3)
    add r0, r7, r0
    sth r0, 0x0(r5)
    lhz r0, 0x8(r3)
    lhz r7, 0x0(r6)
    nor r0, r0, r0
    add r0, r7, r0
    sth r0, 0x0(r6)
    lhz r7, 0x0(r5)
    lhz r0, 0xa(r3)
    add r0, r7, r0
    sth r0, 0x0(r5)
    lhz r0, 0xa(r3)
    lhz r7, 0x0(r6)
    nor r0, r0, r0
    add r0, r7, r0
    sth r0, 0x0(r6)
    lhz r7, 0x0(r5)
    lhz r0, 0xc(r3)
    add r0, r7, r0
    sth r0, 0x0(r5)
    lhz r0, 0xc(r3)
    lhz r7, 0x0(r6)
    nor r0, r0, r0
    add r0, r7, r0
    sth r0, 0x0(r6)
    lhz r7, 0x0(r5)
    lhz r0, 0xe(r3)
    add r0, r7, r0
    sth r0, 0x0(r5)
    lhz r0, 0xe(r3)
    addi r3, r3, 0x10
    lhz r7, 0x0(r6)
    nor r0, r0, r0
    add r0, r7, r0
    sth r0, 0x0(r6)
    opword  0x4200FEDC  // bdnz .L_80055038
    andi. r4, r4, 0x7
    opword  0x41820034  // beq .L_80055198
L_80055168:
    mtctr r4
L_8005516C:
    lhz r7, 0x0(r5)
    lhz r0, 0x0(r3)
    add r0, r7, r0
    sth r0, 0x0(r5)
    lhz r0, 0x0(r3)
    addi r3, r3, 0x2
    lhz r7, 0x0(r6)
    nor r0, r0, r0
    add r0, r7, r0
    sth r0, 0x0(r6)
    opword  0x4200FFD8  // bdnz .L_8005516C
L_80055198:
    lhz r0, 0x0(r5)
    cmplwi r0, 0xffff
    opword  0x4082000C  // bne .L_800551AC
    li r0, 0x0
    sth r0, 0x0(r5)
L_800551AC:
    lhz r0, 0x0(r6)
    cmplwi r0, 0xffff
    bnelr
    li r0, 0x0
    sth r0, 0x0(r6)
    blr
}

ASM void fn_800551C4(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x30(r1)
    stmw r25, 0x14(r1)
    mr r26, r3
    lwz r3, 0x80(r3)
    lhz r0, 0x20(r3)
    addi r27, r3, 0x0
    cmplwi r0, 0x0
    opword  0x40820014  // bne .L_800551FC
    lhz r3, 0x22(r27)
    lhz r0, 0x8(r26)
    cmplw r3, r0
    opword  0x4182000C  // beq .L_80055204
L_800551FC:
    li r3, -0x6
    opword  0x48000234  // b .L_80055434
L_80055204:
    li r0, 0x1fc
    srawi r0, r0, 1
    addze. r0, r0
    addi r4, r27, 0x0
    li r7, 0x0
    mr r3, r0
    li r6, 0x0
    opword  0x408100BC  // ble .L_800552DC
    srwi. r0, r3, 3
    mtctr r0
    opword  0x41820094  // beq .L_800552C0
L_80055230:
    lhz r5, 0x0(r4)
    nor r0, r5, r5
    add r6, r6, r5
    lhz r5, 0x2(r4)
    add r7, r7, r0
    nor r0, r5, r5
    add r6, r6, r5
    lhz r5, 0x4(r4)
    add r7, r7, r0
    nor r0, r5, r5
    add r6, r6, r5
    lhz r5, 0x6(r4)
    add r7, r7, r0
    nor r0, r5, r5
    add r6, r6, r5
    lhz r5, 0x8(r4)
    add r7, r7, r0
    nor r0, r5, r5
    add r6, r6, r5
    lhz r5, 0xa(r4)
    add r7, r7, r0
    nor r0, r5, r5
    add r6, r6, r5
    lhz r5, 0xc(r4)
    add r7, r7, r0
    nor r0, r5, r5
    add r6, r6, r5
    lhz r5, 0xe(r4)
    add r7, r7, r0
    nor r0, r5, r5
    add r6, r6, r5
    add r7, r7, r0
    addi r4, r4, 0x10
    opword  0x4200FF7C  // bdnz .L_80055230
    andi. r3, r3, 0x7
    opword  0x41820020  // beq .L_800552DC
L_800552C0:
    mtctr r3
L_800552C4:
    lhz r5, 0x0(r4)
    addi r4, r4, 0x2
    nor r0, r5, r5
    add r6, r6, r5
    add r7, r7, r0
    opword  0x4200FFEC  // bdnz .L_800552C4
L_800552DC:
    clrlwi r0, r6, 16
    cmplwi r0, 0xffff
    opword  0x40820008  // bne .L_800552EC
    li r6, 0x0
L_800552EC:
    clrlwi r0, r7, 16
    cmplwi r0, 0xffff
    opword  0x40820008  // bne .L_800552FC
    li r7, 0x0
L_800552FC:
    lhz r3, 0x1fc(r27)
    clrlwi r0, r6, 16
    cmplw r3, r0
    opword  0x40820014  // bne .L_8005531C
    lhz r3, 0x1fe(r27)
    clrlwi r0, r7, 16
    cmplw r3, r0
    opword  0x4182000C  // beq .L_80055324
L_8005531C:
    li r3, -0x6
    opword  0x48000114  // b .L_80055434
L_80055324:
    lwz r31, 0xc(r27)
    lwz r28, 0x10(r27)
    bl __OSLockSramEx
    lis r4, lbl_804B5BA0@ha
    addi r0, r4, lbl_804B5BA0@l
    lis r4, 0x7878
    subf r0, r0, r26
    addi r4, r4, 0x7879
    mulhw r0, r4, r0
    srawi r0, r0, 7
    srwi r4, r0, 31
    add r0, r0, r4
    mulli r0, r0, 0xc
    lis r4, 0x41c6
    addi r25, r27, 0x0
    add r29, r3, r0
    addi r30, r4, 0x4e6d
    li r26, 0x0
L_8005536C:
    mullw r5, r31, r30
    mulhwu r3, r28, r30
    li r31, 0x0
    add r5, r5, r3
    mullw r3, r28, r31
    mullw r0, r28, r30
    li r28, 0x3039
    addc r4, r0, r28
    add r0, r5, r3
    adde r3, r0, r31
    li r5, 0x10
    bl __shr2i
    lbz r0, 0x0(r29)
    lbz r6, 0x0(r25)
    addc r0, r4, r0
    clrlwi r0, r0, 24
    cmplw r6, r0
    opword  0x41820014  // beq .L_800553C4
    li r3, 0x0
    bl __OSUnlockSramEx
    li r3, -0x6
    opword  0x48000074  // b .L_80055434
L_800553C4:
    mullw r5, r3, r30
    mulhwu r3, r4, r30
    add r5, r5, r3
    mullw r3, r4, r31
    mullw r0, r4, r30
    addc r4, r0, r28
    add r0, r5, r3
    adde r3, r0, r31
    li r5, 0x10
    bl __shr2i
    addi r26, r26, 0x1
    cmpwi r26, 0xc
    li r0, 0x7fff
    and r28, r4, r0
    and r31, r3, r31
    addi r29, r29, 0x1
    addi r25, r25, 0x1
    opword  0x4180FF64  // blt .L_8005536C
    li r3, 0x0
    bl __OSUnlockSramEx
    bl fn_800531D4
    lhz r0, 0x24(r27)
    clrlwi r3, r3, 16
    cmplw r0, r3
    opword  0x4182000C  // beq .L_80055430
    li r3, -0xd
    opword  0x48000008  // b .L_80055434
L_80055430:
    li r3, 0x0
L_80055434:
    lmw r25, 0x14(r1)
    lwz r0, 0x34(r1)
    addi r1, r1, 0x30
    mtlr r0
    blr
}

ASM void fn_80055448(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x38(r1)
    stw r31, 0x34(r1)
    addi r7, r1, 0x1c
    addi r8, r1, 0x14
    stw r30, 0x30(r1)
    li r31, 0x0
    li r30, 0x0
    stw r29, 0x2c(r1)
    addi r29, r4, 0x0
    li r4, 0x0
L_80055478:
    addi r0, r4, 0x1
    lwz r5, 0x80(r3)
    slwi r0, r0, 13
    add r0, r5, r0
    stw r0, 0x0(r7)
    li r6, 0x1ffc
    srawi r6, r6, 1
    lwz r5, 0x0(r7)
    addze. r6, r6
    li r11, 0x0
    addi r0, r5, 0x1fc0
    stw r0, 0x0(r8)
    li r10, 0x0
    lwz r5, 0x0(r7)
    opword  0x408100BC  // ble .L_8005556C
    srwi. r0, r6, 3
    mtctr r0
    opword  0x41820094  // beq .L_80055550
L_800554C0:
    lhz r9, 0x0(r5)
    nor r0, r9, r9
    add r10, r10, r9
    lhz r9, 0x2(r5)
    add r11, r11, r0
    nor r0, r9, r9
    add r10, r10, r9
    lhz r9, 0x4(r5)
    add r11, r11, r0
    nor r0, r9, r9
    add r10, r10, r9
    lhz r9, 0x6(r5)
    add r11, r11, r0
    nor r0, r9, r9
    add r10, r10, r9
    lhz r9, 0x8(r5)
    add r11, r11, r0
    nor r0, r9, r9
    add r10, r10, r9
    lhz r9, 0xa(r5)
    add r11, r11, r0
    nor r0, r9, r9
    add r10, r10, r9
    lhz r9, 0xc(r5)
    add r11, r11, r0
    nor r0, r9, r9
    add r10, r10, r9
    lhz r9, 0xe(r5)
    add r11, r11, r0
    nor r0, r9, r9
    add r10, r10, r9
    add r11, r11, r0
    addi r5, r5, 0x10
    opword  0x4200FF7C  // bdnz .L_800554C0
    andi. r6, r6, 0x7
    opword  0x41820020  // beq .L_8005556C
L_80055550:
    mtctr r6
L_80055554:
    lhz r9, 0x0(r5)
    addi r5, r5, 0x2
    nor r0, r9, r9
    add r10, r10, r9
    add r11, r11, r0
    opword  0x4200FFEC  // bdnz .L_80055554
L_8005556C:
    clrlwi r0, r10, 16
    cmplwi r0, 0xffff
    opword  0x40820008  // bne .L_8005557C
    li r10, 0x0
L_8005557C:
    clrlwi r0, r11, 16
    cmplwi r0, 0xffff
    opword  0x40820008  // bne .L_8005558C
    li r11, 0x0
L_8005558C:
    lwz r6, 0x0(r8)
    clrlwi r5, r10, 16
    lhz r0, 0x3c(r6)
    cmplw r5, r0
    opword  0x40820014  // bne .L_800555B0
    lhz r0, 0x3e(r6)
    clrlwi r5, r11, 16
    cmplw r5, r0
    opword  0x41820014  // beq .L_800555C0
L_800555B0:
    li r0, 0x0
    stw r0, 0x84(r3)
    addi r30, r4, 0x0
    addi r31, r31, 0x1
L_800555C0:
    addi r4, r4, 0x1
    cmpwi r4, 0x2
    addi r7, r7, 0x4
    addi r8, r8, 0x4
    opword  0x4180FEA8  // blt .L_80055478
    cmpwi r31, 0x0
    opword  0x40820084  // bne .L_8005565C
    lwz r4, 0x84(r3)
    cmplwi r4, 0x0
    opword  0x4082005C  // bne .L_80055640
    lwz r5, 0x18(r1)
    lwz r4, 0x14(r1)
    lha r5, 0x3a(r5)
    lha r0, 0x3a(r4)
    subf. r0, r5, r0
    opword  0x4080000C  // bge .L_80055608
    li r30, 0x0
    opword  0x48000008  // b .L_8005560C
L_80055608:
    li r30, 0x1
L_8005560C:
    slwi r0, r30, 2
    addi r6, r1, 0x1c
    add r6, r6, r0
    lwz r4, 0x0(r6)
    xori r0, r30, 0x1
    slwi r0, r0, 2
    stw r4, 0x84(r3)
    addi r4, r1, 0x1c
    li r5, 0x2000
    lwz r3, 0x0(r6)
    lwzx r4, r4, r0
    bl memcpy
    opword  0x48000020  // b .L_8005565C
L_80055640:
    lwz r0, 0x1c(r1)
    cmplw r4, r0
    opword  0x4082000C  // bne .L_80055654
    li r0, 0x0
    opword  0x48000008  // b .L_80055658
L_80055654:
    li r0, 0x1
L_80055658:
    mr r30, r0
L_8005565C:
    cmplwi r29, 0x0
    opword  0x41820008  // beq .L_80055668
    stw r30, 0x0(r29)
L_80055668:
    mr r3, r31
    lwz r0, 0x3c(r1)
    lwz r31, 0x34(r1)
    lwz r30, 0x30(r1)
    lwz r29, 0x2c(r1)
    addi r1, r1, 0x38
    mtlr r0
    blr
}

ASM void fn_80055688(void)
{
    nofralloc
    mflr r0
    li r5, 0x0
    stw r0, 0x4(r1)
    stwu r1, -0x28(r1)
    stw r31, 0x24(r1)
    li r31, 0x0
    stw r30, 0x20(r1)
    li r30, 0x0
    stw r29, 0x1c(r1)
    addi r29, r4, 0x0
    addi r4, r1, 0x10
L_800556B4:
    li r8, 0x1ffc
    lwz r6, 0x80(r3)
    addi r0, r5, 0x3
    srawi r8, r8, 1
    slwi r0, r0, 13
    add r7, r6, r0
    addze. r8, r8
    stw r7, 0x0(r4)
    addi r6, r7, 0x4
    li r11, 0x0
    li r10, 0x0
    opword  0x408100BC  // ble .L_8005579C
    srwi. r0, r8, 3
    mtctr r0
    opword  0x41820094  // beq .L_80055780
L_800556F0:
    lhz r9, 0x0(r6)
    nor r0, r9, r9
    add r10, r10, r9
    lhz r9, 0x2(r6)
    add r11, r11, r0
    nor r0, r9, r9
    add r10, r10, r9
    lhz r9, 0x4(r6)
    add r11, r11, r0
    nor r0, r9, r9
    add r10, r10, r9
    lhz r9, 0x6(r6)
    add r11, r11, r0
    nor r0, r9, r9
    add r10, r10, r9
    lhz r9, 0x8(r6)
    add r11, r11, r0
    nor r0, r9, r9
    add r10, r10, r9
    lhz r9, 0xa(r6)
    add r11, r11, r0
    nor r0, r9, r9
    add r10, r10, r9
    lhz r9, 0xc(r6)
    add r11, r11, r0
    nor r0, r9, r9
    add r10, r10, r9
    lhz r9, 0xe(r6)
    add r11, r11, r0
    nor r0, r9, r9
    add r10, r10, r9
    add r11, r11, r0
    addi r6, r6, 0x10
    opword  0x4200FF7C  // bdnz .L_800556F0
    andi. r8, r8, 0x7
    opword  0x41820020  // beq .L_8005579C
L_80055780:
    mtctr r8
L_80055784:
    lhz r9, 0x0(r6)
    addi r6, r6, 0x2
    nor r0, r9, r9
    add r10, r10, r9
    add r11, r11, r0
    opword  0x4200FFEC  // bdnz .L_80055784
L_8005579C:
    clrlwi r0, r10, 16
    cmplwi r0, 0xffff
    opword  0x40820008  // bne .L_800557AC
    li r10, 0x0
L_800557AC:
    clrlwi r0, r11, 16
    cmplwi r0, 0xffff
    opword  0x40820008  // bne .L_800557BC
    li r11, 0x0
L_800557BC:
    lhz r6, 0x0(r7)
    clrlwi r0, r10, 16
    cmplw r6, r0
    opword  0x40820014  // bne .L_800557DC
    lhz r6, 0x2(r7)
    clrlwi r0, r11, 16
    cmplw r6, r0
    opword  0x41820018  // beq .L_800557F0
L_800557DC:
    li r0, 0x0
    stw r0, 0x88(r3)
    addi r30, r5, 0x0
    addi r31, r31, 0x1
    opword  0x4800005C  // b .L_80055848
L_800557F0:
    lhz r8, 0x10(r3)
    addi r6, r7, 0xa
    li r10, 0x0
    li r9, 0x5
    opword  0x4800001C  // b .L_8005581C
L_80055804:
    lhz r0, 0x0(r6)
    cmplwi r0, 0x0
    opword  0x40820008  // bne .L_80055814
    addi r10, r10, 0x1
L_80055814:
    addi r6, r6, 0x2
    addi r9, r9, 0x1
L_8005581C:
    clrlwi r0, r9, 16
    cmplw r0, r8
    opword  0x4180FFE0  // blt .L_80055804
    lhz r0, 0x6(r7)
    clrlwi r6, r10, 16
    cmplw r6, r0
    opword  0x41820014  // beq .L_80055848
    li r0, 0x0
    stw r0, 0x88(r3)
    addi r30, r5, 0x0
    addi r31, r31, 0x1
L_80055848:
    addi r5, r5, 0x1
    cmpwi r5, 0x2
    addi r4, r4, 0x4
    opword  0x4180FE60  // blt .L_800556B4
    cmpwi r31, 0x0
    opword  0x40820084  // bne .L_800558E0
    lwz r4, 0x88(r3)
    cmplwi r4, 0x0
    opword  0x4082005C  // bne .L_800558C4
    lwz r5, 0x14(r1)
    lwz r4, 0x10(r1)
    lha r5, 0x4(r5)
    lha r0, 0x4(r4)
    subf. r0, r5, r0
    opword  0x4080000C  // bge .L_8005588C
    li r30, 0x0
    opword  0x48000008  // b .L_80055890
L_8005588C:
    li r30, 0x1
L_80055890:
    slwi r0, r30, 2
    addi r6, r1, 0x10
    add r6, r6, r0
    lwz r4, 0x0(r6)
    xori r0, r30, 0x1
    slwi r0, r0, 2
    stw r4, 0x88(r3)
    addi r4, r1, 0x10
    li r5, 0x2000
    lwz r3, 0x0(r6)
    lwzx r4, r4, r0
    bl memcpy
    opword  0x48000020  // b .L_800558E0
L_800558C4:
    lwz r0, 0x10(r1)
    cmplw r4, r0
    opword  0x4082000C  // bne .L_800558D8
    li r0, 0x0
    opword  0x48000008  // b .L_800558DC
L_800558D8:
    li r0, 0x1
L_800558DC:
    mr r30, r0
L_800558E0:
    cmplwi r29, 0x0
    opword  0x41820008  // beq .L_800558EC
    stw r30, 0x0(r29)
L_800558EC:
    mr r3, r31
    lwz r0, 0x2c(r1)
    lwz r31, 0x24(r1)
    lwz r30, 0x20(r1)
    lwz r29, 0x1c(r1)
    addi r1, r1, 0x28
    mtlr r0
    blr
}

ASM void fn_8005590C(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    stw r30, 0x10(r1)
    mr r30, r3
    bl fn_800551C4
    cmpwi r3, 0x0
    opword  0x40800008  // bge .L_80055934
    opword  0x48000050  // b .L_80055980
L_80055934:
    addi r3, r30, 0x0
    li r4, 0x0
    bl fn_80055448
    addi r31, r3, 0x0
    addi r3, r30, 0x0
    li r4, 0x0
    bl fn_80055688
    add r0, r31, r3
    cmpwi r0, 0x1
    opword  0x4182001C  // beq .L_80055974
    opword  0x40800020  // bge .L_8005597C
    cmpwi r0, 0x0
    opword  0x40800008  // bge .L_8005596C
    opword  0x48000014  // b .L_8005597C
L_8005596C:
    li r3, 0x0
    opword  0x48000010  // b .L_80055980
L_80055974:
    li r3, -0x6
    opword  0x48000008  // b .L_80055980
L_8005597C:
    li r3, -0x6
L_80055980:
    lwz r0, 0x1c(r1)
    lwz r31, 0x14(r1)
    lwz r30, 0x10(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

ASM void fn_80055998(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x58(r1)
    stmw r25, 0x3c(r1)
    mr. r26, r4
    addi r25, r3, 0x0
    addi r27, r5, 0x0
    li r30, 0x0
    li r29, 0x0
    li r28, 0x0
    opword  0x4182000C  // beq .L_800559CC
    li r0, 0x0
    stw r0, 0x0(r26)
L_800559CC:
    addi r3, r25, 0x0
    addi r4, r1, 0x30
    bl fn_80053214
    cmpwi r3, 0x0
    opword  0x40800008  // bge .L_800559E4
    opword  0x48000534  // b .L_80055F14
L_800559E4:
    lwz r3, 0x30(r1)
    bl fn_800551C4
    mr. r4, r3
    opword  0x40800010  // bge .L_80055A00
    lwz r3, 0x30(r1)
    bl fn_800532CC
    opword  0x48000518  // b .L_80055F14
L_80055A00:
    lwz r3, 0x30(r1)
    addi r4, r1, 0x18
    bl fn_80055448
    mr r31, r3
    lwz r3, 0x30(r1)
    addi r4, r1, 0x1c
    bl fn_80055688
    add r5, r31, r3
    cmpwi r5, 0x1
    opword  0x40810014  // ble .L_80055A38
    lwz r3, 0x30(r1)
    li r4, -0x6
    bl fn_800532CC
    opword  0x480004E0  // b .L_80055F14
L_80055A38:
    lwz r6, 0x30(r1)
    lwz r4, 0x80(r6)
    addi r3, r4, 0x2000
    addi r0, r4, 0x6000
    stw r3, 0x28(r1)
    addis r3, r4, 0x1
    addi r4, r4, 0x4000
    stw r0, 0x20(r1)
    addi r0, r3, -0x8000
    stw r4, 0x2c(r1)
    stw r0, 0x24(r1)
    opword  0x4182000C  // beq .L_80055A70
    opword  0x4080008C  // bge .L_80055AF4
    opword  0x48000088  // b .L_80055AF4
L_80055A70:
    addi r3, r6, 0x84
    lwz r0, 0x84(r6)
    cmplwi r0, 0x0
    opword  0x40820040  // bne .L_80055ABC
    lwz r0, 0x18(r1)
    addi r4, r1, 0x28
    li r5, 0x2000
    slwi r0, r0, 2
    lwzx r0, r4, r0
    stw r0, 0x0(r3)
    lwz r3, 0x18(r1)
    xori r0, r3, 0x1
    slwi r3, r3, 2
    slwi r0, r0, 2
    lwzx r3, r4, r3
    lwzx r4, r4, r0
    bl memcpy
    li r29, 0x1
    opword  0x4800003C  // b .L_80055AF4
L_80055ABC:
    lwz r0, 0x1c(r1)
    addi r4, r1, 0x20
    li r5, 0x2000
    slwi r0, r0, 2
    lwzx r0, r4, r0
    stw r0, 0x88(r6)
    lwz r3, 0x1c(r1)
    xori r0, r3, 0x1
    slwi r3, r3, 2
    slwi r0, r0, 2
    lwzx r3, r4, r3
    lwzx r4, r4, r0
    bl memcpy
    li r30, 0x1
L_80055AF4:
    lwz r0, 0x1c(r1)
    addi r3, r1, 0x20
    li r4, 0x0
    xori r0, r0, 0x1
    slwi r0, r0, 2
    lwzx r31, r3, r0
    li r5, 0x2000
    addi r3, r31, 0x0
    bl memset
    li r0, 0x7f
    lwz r5, 0x30(r1)
    mtctr r0
    li r6, 0x0
L_80055B28:
    lwz r0, 0x84(r5)
    add r7, r0, r6
    lbz r0, 0x0(r7)
    cmplwi r0, 0xff
    opword  0x418200A8  // beq .L_80055BE0
    lhz r4, 0x36(r7)
    li r8, 0x0
    opword  0x48000054  // b .L_80055B98
L_80055B48:
    clrlwi r3, r4, 16
    cmplwi r3, 0x5
    opword  0x4180002C  // blt .L_80055B7C
    lhz r0, 0x10(r5)
    cmplw r3, r0
    opword  0x40800020  // bge .L_80055B7C
    slwi r4, r3, 1
    lhzx r3, r31, r4
    addi r3, r3, 0x1
    clrlwi r0, r3, 16
    sthx r3, r31, r4
    cmplwi r0, 0x1
    opword  0x40810014  // ble .L_80055B8C
L_80055B7C:
    lwz r3, 0x30(r1)
    li r4, -0x6
    bl fn_800532CC
    opword  0x4800038C  // b .L_80055F14
L_80055B8C:
    lwz r3, 0x88(r5)
    addi r8, r8, 0x1
    lhzx r4, r3, r4
L_80055B98:
    clrlwi r0, r4, 16
    cmplwi r0, 0xffff
    opword  0x41820014  // beq .L_80055BB4
    lhz r0, 0x38(r7)
    clrlwi r3, r8, 16
    cmplw r3, r0
    opword  0x4180FF98  // blt .L_80055B48
L_80055BB4:
    lhz r0, 0x38(r7)
    clrlwi r3, r8, 16
    cmplw r3, r0
    opword  0x40820010  // bne .L_80055BD0
    clrlwi r0, r4, 16
    cmplwi r0, 0xffff
    opword  0x41820014  // beq .L_80055BE0
L_80055BD0:
    lwz r3, 0x30(r1)
    li r4, -0x6
    bl fn_800532CC
    opword  0x48000338  // b .L_80055F14
L_80055BE0:
    addi r6, r6, 0x40
    opword  0x4200FF44  // bdnz .L_80055B28
    lwz r3, 0x30(r1)
    addi r6, r31, 0xa
    li r9, 0x0
    li r8, 0x5
    li r5, 0xa
    opword  0x48000068  // b .L_80055C64
L_80055C00:
    lwz r4, 0x88(r3)
    lhz r0, 0x0(r6)
    add r4, r4, r5
    cmplwi r0, 0x0
    lhz r0, 0x0(r4)
    opword  0x40820020  // bne .L_80055C34
    cmplwi r0, 0x0
    opword  0x41820010  // beq .L_80055C2C
    li r0, 0x0
    sth r0, 0x0(r4)
    li r28, 0x1
L_80055C2C:
    addi r9, r9, 0x1
    opword  0x48000028  // b .L_80055C58
L_80055C34:
    cmplwi r0, 0x5
    opword  0x4180000C  // blt .L_80055C44
    cmplw r0, r7
    opword  0x41800018  // blt .L_80055C58
L_80055C44:
    cmplwi r0, 0xffff
    opword  0x41820010  // beq .L_80055C58
    li r4, -0x6
    bl fn_800532CC
    opword  0x480002C0  // b .L_80055F14
L_80055C58:
    addi r5, r5, 0x2
    addi r6, r6, 0x2
    addi r8, r8, 0x1
L_80055C64:
    lhz r7, 0x10(r3)
    clrlwi r0, r8, 16
    cmplw r0, r7
    opword  0x4180FF90  // blt .L_80055C00
    lwz r3, 0x88(r3)
    clrlwi r4, r9, 16
    lhzu r0, 0x6(r3)
    cmplw r4, r0
    opword  0x4182000C  // beq .L_80055C90
    sth r9, 0x0(r3)
    li r28, 0x1
L_80055C90:
    cmpwi r28, 0x0
    opword  0x418201C8  // beq .L_80055E5C
    lwz r3, 0x30(r1)
    li r4, 0x1ffc
    srawi r4, r4, 1
    lwz r6, 0x88(r3)
    li r0, 0x0
    addze. r4, r4
    sth r0, 0x2(r6)
    addi r7, r6, 0x2
    addi r5, r6, 0x4
    sth r0, 0x0(r6)
    addi r3, r4, 0x0
    opword  0x40810170  // ble .L_80055E34
    srwi. r0, r3, 3
    mtctr r0
    opword  0x41820134  // beq .L_80055E04
L_80055CD4:
    lhz r4, 0x0(r6)
    lhz r0, 0x0(r5)
    add r0, r4, r0
    sth r0, 0x0(r6)
    lhz r0, 0x0(r5)
    lhz r4, 0x0(r7)
    nor r0, r0, r0
    add r0, r4, r0
    sth r0, 0x0(r7)
    lhz r4, 0x0(r6)
    lhz r0, 0x2(r5)
    add r0, r4, r0
    sth r0, 0x0(r6)
    lhz r0, 0x2(r5)
    lhz r4, 0x0(r7)
    nor r0, r0, r0
    add r0, r4, r0
    sth r0, 0x0(r7)
    lhz r4, 0x0(r6)
    lhz r0, 0x4(r5)
    add r0, r4, r0
    sth r0, 0x0(r6)
    lhz r0, 0x4(r5)
    lhz r4, 0x0(r7)
    nor r0, r0, r0
    add r0, r4, r0
    sth r0, 0x0(r7)
    lhz r4, 0x0(r6)
    lhz r0, 0x6(r5)
    add r0, r4, r0
    sth r0, 0x0(r6)
    lhz r0, 0x6(r5)
    lhz r4, 0x0(r7)
    nor r0, r0, r0
    add r0, r4, r0
    sth r0, 0x0(r7)
    lhz r4, 0x0(r6)
    lhz r0, 0x8(r5)
    add r0, r4, r0
    sth r0, 0x0(r6)
    lhz r0, 0x8(r5)
    lhz r4, 0x0(r7)
    nor r0, r0, r0
    add r0, r4, r0
    sth r0, 0x0(r7)
    lhz r4, 0x0(r6)
    lhz r0, 0xa(r5)
    add r0, r4, r0
    sth r0, 0x0(r6)
    lhz r0, 0xa(r5)
    lhz r4, 0x0(r7)
    nor r0, r0, r0
    add r0, r4, r0
    sth r0, 0x0(r7)
    lhz r4, 0x0(r6)
    lhz r0, 0xc(r5)
    add r0, r4, r0
    sth r0, 0x0(r6)
    lhz r0, 0xc(r5)
    lhz r4, 0x0(r7)
    nor r0, r0, r0
    add r0, r4, r0
    sth r0, 0x0(r7)
    lhz r4, 0x0(r6)
    lhz r0, 0xe(r5)
    add r0, r4, r0
    sth r0, 0x0(r6)
    lhz r0, 0xe(r5)
    addi r5, r5, 0x10
    lhz r4, 0x0(r7)
    nor r0, r0, r0
    add r0, r4, r0
    sth r0, 0x0(r7)
    opword  0x4200FEDC  // bdnz .L_80055CD4
    andi. r3, r3, 0x7
    opword  0x41820034  // beq .L_80055E34
L_80055E04:
    mtctr r3
L_80055E08:
    lhz r4, 0x0(r6)
    lhz r0, 0x0(r5)
    add r0, r4, r0
    sth r0, 0x0(r6)
    lhz r0, 0x0(r5)
    addi r5, r5, 0x2
    lhz r4, 0x0(r7)
    nor r0, r0, r0
    add r0, r4, r0
    sth r0, 0x0(r7)
    opword  0x4200FFD8  // bdnz .L_80055E08
L_80055E34:
    lhz r0, 0x0(r6)
    cmplwi r0, 0xffff
    opword  0x4082000C  // bne .L_80055E48
    li r0, 0x0
    sth r0, 0x0(r6)
L_80055E48:
    lhz r0, 0x0(r7)
    cmplwi r0, 0xffff
    opword  0x4082000C  // bne .L_80055E5C
    li r0, 0x0
    sth r0, 0x0(r7)
L_80055E5C:
    lwz r6, 0x1c(r1)
    addi r4, r1, 0x20
    li r5, 0x2000
    xori r0, r6, 0x1
    slwi r3, r0, 2
    slwi r0, r6, 2
    lwzx r3, r4, r3
    lwzx r4, r4, r0
    bl memcpy
    cmpwi r29, 0x0
    opword  0x41820024  // beq .L_80055EA8
    cmplwi r26, 0x0
    opword  0x4182000C  // beq .L_80055E98
    li r0, 0x2000
    stw r0, 0x0(r26)
L_80055E98:
    addi r3, r25, 0x0
    addi r4, r27, 0x0
    bl fn_80054F50
    opword  0x48000070  // b .L_80055F14
L_80055EA8:
    or. r0, r30, r28
    opword  0x4182002C  // beq .L_80055ED8
    cmplwi r26, 0x0
    opword  0x4182000C  // beq .L_80055EC0
    li r0, 0x2000
    stw r0, 0x0(r26)
L_80055EC0:
    lwz r4, 0x30(r1)
    addi r3, r25, 0x0
    addi r5, r27, 0x0
    lwz r4, 0x88(r4)
    bl fn_80054D04
    opword  0x48000040  // b .L_80055F14
L_80055ED8:
    lwz r3, 0x30(r1)
    li r4, 0x0
    bl fn_800532CC
    cmplwi r27, 0x0
    opword  0x41820028  // beq .L_80055F10
    bl OSDisableInterrupts
    addi r12, r27, 0x0
    mtlr r12
    addi r26, r3, 0x0
    addi r3, r25, 0x0
    li r4, 0x0
    blrl
    mr r3, r26
    bl OSRestoreInterrupts
L_80055F10:
    li r3, 0x0
L_80055F14:
    lmw r25, 0x3c(r1)
    lwz r0, 0x5c(r1)
    addi r1, r1, 0x58
    mtlr r0
    blr
}

ASM void fn_80055F28(void)
{
    nofralloc
    mflr r0
    lis r4, fn_800522B8@ha
    stw r0, 0x4(r1)
    addi r5, r4, fn_800522B8@l
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    addi r31, r3, 0x0
    addi r4, r1, 0xc
    bl fn_80055998
    cmpwi r3, 0x0
    opword  0x41800018  // blt .L_80055F68
    addic. r0, r1, 0xc
    opword  0x40820008  // bne .L_80055F60
    opword  0x4800000C  // b .L_80055F68
L_80055F60:
    mr r3, r31
    bl fn_80053480
L_80055F68:
    lwz r0, 0x1c(r1)
    lwz r31, 0x14(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

ASM void fn_80055F7C(void)
{
    nofralloc
    clrrwi. r0, r3, 16
    opword  0x41820024  // beq .L_80055FA4
    addis r0, r3, 0x8000
    cmplwi r0, 0x4
    opword  0x40820010  // bne .L_80055F9C
    opword  0xA00D8108  // lhz r0, lbl_80539CC8@sda21(r0)
    cmplwi r0, 0xffff
    opword  0x4082000C  // bne .L_80055FA4
L_80055F9C:
    li r3, 0x0
    blr
L_80055FA4:
    clrlwi. r0, r3, 30
    opword  0x4182000C  // beq .L_80055FB4
    li r3, 0x0
    blr
L_80055FB4:
    rlwinm r5, r3, 0, 24, 29
    cmpwi r5, 0x20
    opword  0x41820048  // beq .L_80056004
    opword  0x40800028  // bge .L_80055FE8
    cmpwi r5, 0x8
    opword  0x4182003C  // beq .L_80056004
    opword  0x40800010  // bge .L_80055FDC
    cmpwi r5, 0x4
    opword  0x41820030  // beq .L_80056004
    opword  0x48000024  // b .L_80055FFC
L_80055FDC:
    cmpwi r5, 0x10
    opword  0x41820024  // beq .L_80056004
    opword  0x48000018  // b .L_80055FFC
L_80055FE8:
    cmpwi r5, 0x80
    opword  0x41820018  // beq .L_80056004
    opword  0x4080000C  // bge .L_80055FFC
    cmpwi r5, 0x40
    opword  0x4182000C  // beq .L_80056004
L_80055FFC:
    li r3, 0x0
    blr
L_80056004:
    lis r4, lbl_80496C60@ha
    rlwinm r3, r3, 23, 27, 29
    addi r0, r4, lbl_80496C60@l
    add r3, r0, r3
    lwz r3, 0x0(r3)
    cmpwi r3, 0x0
    opword  0x4082000C  // bne .L_80056028
    li r3, 0x0
    blr
L_80056028:
    clrlslwi r0, r5, 20, 17
    divwu r0, r0, r3
    cmplwi r0, 0x8
    opword  0x4080000C  // bge .L_80056040
    li r3, 0x0
    blr
L_80056040:
    li r3, 0x1
    blr
}

ASM void fn_80056048(void)
{
    nofralloc
    mflr r0
    lis r4, 0x8000
    stw r0, 0x4(r1)
    stwu r1, -0x8(r1)
    lbz r0, 0x30e3(r4)
    rlwinm. r0, r0, 0, 24, 24
    opword  0x4182000C  // beq .L_8005606C
    li r3, 0x0
    opword  0x48000008  // b .L_80056070
L_8005606C:
    bl EXIProbe
L_80056070:
    lwz r0, 0xc(r1)
    addi r1, r1, 0x8
    mtlr r0
    blr
}

ASM void fn_80056080(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x30(r1)
    stmw r27, 0x1c(r1)
    mr. r27, r3
    addi r28, r4, 0x0
    addi r31, r5, 0x0
    opword  0x4180000C  // blt .L_800560A8
    cmpwi r27, 0x2
    opword  0x4180000C  // blt .L_800560B0
L_800560A8:
    li r3, -0x80
    opword  0x4800013C  // b .L_800561E8
L_800560B0:
    lis r3, 0x8000
    lbz r0, 0x30e3(r3)
    rlwinm. r0, r0, 0, 24, 24
    opword  0x4182000C  // beq .L_800560C8
    li r3, -0x3
    opword  0x48000124  // b .L_800561E8
L_800560C8:
    mulli r4, r27, 0x110
    lis r3, lbl_804B5BA0@ha
    addi r0, r3, lbl_804B5BA0@l
    add r30, r0, r4
    bl OSDisableInterrupts
    addi r29, r3, 0x0
    addi r3, r27, 0x0
    bl EXIProbeEx
    cmpwi r3, -0x1
    opword  0x4082000C  // bne .L_800560F8
    li r30, -0x3
    opword  0x480000E8  // b .L_800561DC
L_800560F8:
    cmpwi r3, 0x0
    opword  0x4082000C  // bne .L_80056108
    li r30, -0x1
    opword  0x480000D8  // b .L_800561DC
L_80056108:
    lwz r0, 0x0(r30)
    cmpwi r0, 0x0
    opword  0x41820040  // beq .L_80056150
    lwz r0, 0x24(r30)
    cmpwi r0, 0x1
    opword  0x4080000C  // bge .L_80056128
    li r30, -0x1
    opword  0x480000B8  // b .L_800561DC
L_80056128:
    cmplwi r28, 0x0
    opword  0x4182000C  // beq .L_80056138
    lhz r0, 0x8(r30)
    stw r0, 0x0(r28)
L_80056138:
    cmplwi r31, 0x0
    opword  0x4182000C  // beq .L_80056148
    lwz r0, 0xc(r30)
    stw r0, 0x0(r31)
L_80056148:
    li r30, 0x0
    opword  0x48000090  // b .L_800561DC
L_80056150:
    mr r3, r27
    bl EXIGetState
    rlwinm. r0, r3, 0, 28, 28
    opword  0x4182000C  // beq .L_80056168
    li r30, -0x2
    opword  0x48000078  // b .L_800561DC
L_80056168:
    addi r3, r27, 0x0
    addi r5, r1, 0x14
    li r4, 0x0
    bl EXIGetID
    cmpwi r3, 0x0
    opword  0x4082000C  // bne .L_80056188
    li r30, -0x1
    opword  0x48000058  // b .L_800561DC
L_80056188:
    lwz r3, 0x14(r1)
    bl fn_80055F7C
    cmpwi r3, 0x0
    opword  0x41820044  // beq .L_800561D8
    cmplwi r28, 0x0
    opword  0x41820010  // beq .L_800561AC
    lwz r0, 0x14(r1)
    rlwinm r0, r0, 0, 24, 29
    stw r0, 0x0(r28)
L_800561AC:
    cmplwi r31, 0x0
    opword  0x41820020  // beq .L_800561D0
    lwz r4, 0x14(r1)
    lis r3, lbl_80496C60@ha
    addi r0, r3, lbl_80496C60@l
    rlwinm r3, r4, 23, 27, 29
    add r3, r0, r3
    lwz r0, 0x0(r3)
    stw r0, 0x0(r31)
L_800561D0:
    li r30, 0x0
    opword  0x48000008  // b .L_800561DC
L_800561D8:
    li r30, -0x2
L_800561DC:
    mr r3, r29
    bl OSRestoreInterrupts
    mr r3, r30
L_800561E8:
    lmw r27, 0x1c(r1)
    lwz r0, 0x34(r1)
    addi r1, r1, 0x30
    mtlr r0
    blr
}

ASM void fn_800561FC(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x30(r1)
    stw r31, 0x2c(r1)
    stw r30, 0x28(r1)
    stw r29, 0x24(r1)
    addi r29, r3, 0x0
    mulli r4, r29, 0x110
    stw r28, 0x20(r1)
    lis r3, lbl_804B5BA0@ha
    addi r0, r3, lbl_804B5BA0@l
    add r3, r0, r4
    lwz r0, 0x24(r3)
    addi r31, r3, 0x0
    cmpwi r0, 0x0
    opword  0x408202AC  // bne .L_800564E4
    addi r3, r29, 0x0
    addi r5, r1, 0x18
    li r4, 0x0
    bl EXIGetID
    cmpwi r3, 0x0
    opword  0x4082000C  // bne .L_8005625C
    li r30, -0x3
    opword  0x48000020  // b .L_80056278
L_8005625C:
    lwz r3, 0x18(r1)
    bl fn_80055F7C
    cmpwi r3, 0x0
    opword  0x4182000C  // beq .L_80056274
    li r30, 0x0
    opword  0x48000008  // b .L_80056278
L_80056274:
    li r30, -0x2
L_80056278:
    cmpwi r30, 0x0
    opword  0x41800344  // blt .L_800565C0
    lwz r0, 0x18(r1)
    lis r4, lbl_80496C60@ha
    addi r4, r4, lbl_80496C60@l
    stw r0, 0x108(r31)
    lis r3, lbl_80496C80@ha
    addi r0, r3, lbl_80496C80@l
    lwz r5, 0x18(r1)
    addi r3, r29, 0x0
    rlwinm r5, r5, 0, 24, 29
    sth r5, 0x8(r31)
    lwz r5, 0x18(r1)
    rlwinm r5, r5, 23, 27, 29
    add r4, r4, r5
    lwz r4, 0x0(r4)
    stw r4, 0xc(r31)
    lhz r5, 0x8(r31)
    lwz r4, 0xc(r31)
    slwi r5, r5, 20
    srawi r5, r5, 3
    addze r5, r5
    divw r4, r5, r4
    sth r4, 0x10(r31)
    lwz r4, 0x18(r1)
    rlwinm r4, r4, 26, 27, 29
    add r4, r0, r4
    lwz r0, 0x0(r4)
    stw r0, 0x14(r31)
    bl fn_800527B8
    mr. r30, r3
    opword  0x418002CC  // blt .L_800565C0
    addi r3, r29, 0x0
    addi r4, r1, 0x14
    bl fn_800526C8
    mr. r30, r3
    opword  0x418002B8  // blt .L_800565C0
    mr r3, r29
    bl EXIProbe
    cmpwi r3, 0x0
    opword  0x4082000C  // bne .L_80056324
    li r30, -0x3
    opword  0x480002A0  // b .L_800565C0
L_80056324:
    lbz r0, 0x14(r1)
    rlwinm. r0, r0, 0, 25, 25
    opword  0x40820114  // bne .L_80056440
    addi r3, r29, 0x0
    addi r4, r31, 0x18
    bl fn_800538DC
    mr. r30, r3
    opword  0x41800280  // blt .L_800565C0
    bl __OSLockSramEx
    mulli r0, r29, 0xc
    add r4, r3, r0
    lbz r0, 0x18(r31)
    addi r5, r31, 0x18
    stb r0, 0x0(r4)
    addi r8, r5, 0x2
    addi r9, r5, 0x3
    lbz r7, 0x18(r31)
    addi r10, r5, 0x4
    lbz r0, 0x19(r31)
    addi r11, r5, 0x5
    addi r12, r5, 0x6
    stb r0, 0x1(r4)
    addi r28, r5, 0x7
    li r5, 0x8
    lbz r0, 0x19(r31)
    lbz r6, 0x0(r8)
    add r0, r7, r0
    stb r6, 0x2(r4)
    lbz r7, 0x0(r8)
    lbz r6, 0x0(r9)
    add r0, r0, r7
    stb r6, 0x3(r4)
    lbz r7, 0x0(r9)
    lbz r6, 0x0(r10)
    add r0, r0, r7
    stb r6, 0x4(r4)
    lbz r7, 0x0(r10)
    lbz r6, 0x0(r11)
    add r0, r0, r7
    stb r6, 0x5(r4)
    lbz r7, 0x0(r11)
    lbz r6, 0x0(r12)
    add r0, r0, r7
    stb r6, 0x6(r4)
    lbz r7, 0x0(r12)
    lbz r6, 0x0(r28)
    add r0, r0, r7
    stb r6, 0x7(r4)
    lbz r6, 0x0(r28)
    add r0, r0, r6
    opword  0x480001F0  // b .L_800565DC
L_800563F0:
    subfic r4, r5, 0xc
    cmpwi r5, 0xc
    mtctr r4
    opword  0x40800028  // bge .L_80056424
L_80056400:
    addi r7, r5, 0x18
    add r7, r31, r7
    lbz r4, 0x0(r7)
    addi r5, r5, 0x1
    stb r4, 0x0(r6)
    addi r6, r6, 0x1
    lbz r4, 0x0(r7)
    add r0, r0, r4
    opword  0x4200FFE0  // bdnz .L_80056400
L_80056424:
    add r3, r3, r29
    nor r0, r0, r0
    stb r0, 0x26(r3)
    li r3, 0x1
    bl __OSUnlockSramEx
    mr r3, r30
    opword  0x480001B0  // b .L_800565EC
L_80056440:
    li r0, 0x1
    stw r0, 0x24(r31)
    bl __OSLockSramEx
    mulli r0, r29, 0xc
    addi r30, r3, 0x0
    add r5, r30, r0
    lbz r4, 0x0(r5)
    li r6, 0x8
    lbz r0, 0x1(r5)
    lbz r3, 0x2(r5)
    add r28, r4, r0
    lbz r0, 0x3(r5)
    add r28, r28, r3
    lbz r3, 0x4(r5)
    add r28, r28, r0
    lbz r0, 0x5(r5)
    add r28, r28, r3
    lbz r3, 0x6(r5)
    add r28, r28, r0
    lbz r0, 0x7(r5)
    add r28, r28, r3
    add r28, r28, r0
    opword  0x4800014C  // b .L_800565E4
L_8005649C:
    subfic r0, r6, 0xc
    cmpwi r6, 0xc
    mtctr r0
    opword  0x40800014  // bge .L_800564BC
L_800564AC:
    lbz r0, 0x0(r3)
    addi r3, r3, 0x1
    add r28, r28, r0
    opword  0x4200FFF4  // bdnz .L_800564AC
L_800564BC:
    li r3, 0x0
    bl __OSUnlockSramEx
    add r3, r30, r29
    nor r0, r28, r28
    lbz r3, 0x26(r3)
    clrlwi r0, r0, 24
    cmplw r3, r0
    opword  0x4182000C  // beq .L_800564E4
    li r30, -0x5
    opword  0x480000E0  // b .L_800565C0
L_800564E4:
    lwz r0, 0x24(r31)
    cmpwi r0, 0x1
    opword  0x40820088  // bne .L_80056574
    lwz r3, 0x108(r31)
    addis r0, r3, 0x8000
    cmplwi r0, 0x4
    opword  0x40820034  // bne .L_80056530
    bl __OSLockSramEx
    mulli r0, r29, 0xc
    lhzx r28, r3, r0
    li r3, 0x0
    bl __OSUnlockSramEx
    opword  0xA00D8108  // lhz r0, lbl_80539CC8@sda21(r0)
    cmplwi r0, 0xffff
    opword  0x4182000C  // beq .L_80056528
    cmplw r28, r0
    opword  0x4182000C  // beq .L_80056530
L_80056528:
    li r30, -0x2
    opword  0x48000094  // b .L_800565C0
L_80056530:
    li r0, 0x2
    stw r0, 0x24(r31)
    addi r3, r29, 0x0
    li r4, 0x1
    bl fn_80052608
    mr. r30, r3
    opword  0x41800078  // blt .L_800565C0
    lis r3, fn_800523C4@ha
    addi r4, r3, fn_800523C4@l
    addi r3, r29, 0x0
    bl EXISetExiCallback
    mr r3, r29
    bl EXIUnlock
    lis r4, 0x1
    lwz r3, 0x80(r31)
    subi r4, r4, 0x6000
    bl DCInvalidateRange
L_80056574:
    lwz r4, 0x24(r31)
    lis r3, fn_8005660C@ha
    lwz r0, 0xc(r31)
    addi r7, r3, fn_8005660C@l
    subi r3, r4, 0x2
    mullw r4, r0, r3
    lwz r5, 0x80(r31)
    slwi r0, r3, 13
    add r6, r5, r0
    addi r3, r29, 0x0
    li r5, 0x2000
    bl fn_800548A4
    mr. r28, r3
    opword  0x40800010  // bge .L_800565B8
    addi r3, r31, 0x0
    addi r4, r28, 0x0
    bl fn_800532CC
L_800565B8:
    mr r3, r28
    opword  0x48000030  // b .L_800565EC
L_800565C0:
    mr r3, r29
    bl EXIUnlock
    addi r3, r29, 0x0
    addi r4, r30, 0x0
    bl fn_8005692C
    mr r3, r30
    opword  0x48000014  // b .L_800565EC
L_800565DC:
    addi r6, r4, 0x8
    opword  0x4BFFFE10  // b .L_800563F0
L_800565E4:
    addi r3, r5, 0x8
    opword  0x4BFFFEB4  // b .L_8005649C
L_800565EC:
    lwz r0, 0x34(r1)
    lwz r31, 0x2c(r1)
    lwz r30, 0x28(r1)
    lwz r29, 0x24(r1)
    lwz r28, 0x20(r1)
    addi r1, r1, 0x30
    mtlr r0
    blr
}

ASM void fn_8005660C(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x20(r1)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    stw r29, 0x14(r1)
    addi r29, r4, 0x0
    cmpwi r29, -0x3
    stw r28, 0x10(r1)
    addi r28, r3, 0x0
    mulli r5, r28, 0x110
    lis r3, lbl_804B5BA0@ha
    addi r0, r3, lbl_804B5BA0@l
    add r31, r0, r5
    opword  0x418200A8  // beq .L_800566EC
    opword  0x40800010  // bge .L_80056658
    cmpwi r29, -0x5
    opword  0x4182009C  // beq .L_800566EC
    opword  0x480000A4  // b .L_800566F8
L_80056658:
    cmpwi r29, 0x1
    opword  0x4182004C  // beq .L_800566A8
    opword  0x40800098  // bge .L_800566F8
    cmpwi r29, 0x0
    opword  0x40800008  // bge .L_80056670
    opword  0x4800008C  // b .L_800566F8
L_80056670:
    lwz r3, 0x24(r31)
    addi r0, r3, 0x1
    cmpwi r0, 0x7
    stw r0, 0x24(r31)
    opword  0x40800018  // bge .L_80056698
    mr r3, r28
    bl fn_800561FC
    mr. r29, r3
    opword  0x41800068  // blt .L_800566F8
    opword  0x48000090  // b .L_80056724
L_80056698:
    mr r3, r31
    bl fn_8005590C
    mr r29, r3
    opword  0x48000054  // b .L_800566F8
L_800566A8:
    lis r3, fn_8005660C@ha
    addi r0, r3, fn_8005660C@l
    lis r3, fn_80052584@ha
    stw r0, 0xdc(r31)
    addi r5, r3, fn_80052584@l
    addi r3, r28, 0x0
    li r4, 0x0
    bl EXILock
    cmpwi r3, 0x0
    opword  0x41820058  // beq .L_80056724
    li r0, 0x0
    stw r0, 0xdc(r31)
    mr r3, r28
    bl fn_800561FC
    mr. r29, r3
    opword  0x41800014  // blt .L_800566F8
    opword  0x4800003C  // b .L_80056724
L_800566EC:
    addi r3, r28, 0x0
    addi r4, r29, 0x0
    bl fn_8005692C
L_800566F8:
    lwz r30, 0xd0(r31)
    li r0, 0x0
    addi r3, r31, 0x0
    stw r0, 0xd0(r31)
    mr r4, r29
    bl fn_800532CC
    addi r12, r30, 0x0
    mtlr r12
    addi r3, r28, 0x0
    addi r4, r29, 0x0
    blrl
L_80056724:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    lwz r28, 0x10(r1)
    addi r1, r1, 0x20
    mtlr r0
    blr
}

ASM void fn_80056744(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x30(r1)
    stmw r26, 0x18(r1)
    mr. r30, r3
    addi r26, r4, 0x0
    addi r27, r5, 0x0
    addi r29, r6, 0x0
    opword  0x4180000C  // blt .L_80056770
    cmpwi r30, 0x2
    opword  0x4180000C  // blt .L_80056778
L_80056770:
    li r3, -0x80
    opword  0x4800015C  // b .L_800568D0
L_80056778:
    lis r3, 0x8000
    lbz r0, 0x30e3(r3)
    rlwinm. r0, r0, 0, 24, 24
    opword  0x4182000C  // beq .L_80056790
    li r3, -0x3
    opword  0x48000144  // b .L_800568D0
L_80056790:
    mulli r4, r30, 0x110
    lis r3, lbl_804B5BA0@ha
    addi r0, r3, lbl_804B5BA0@l
    add r31, r0, r4
    bl OSDisableInterrupts
    lwz r0, 0x4(r31)
    addi r28, r3, 0x0
    cmpwi r0, -0x1
    opword  0x40820014  // bne .L_800567C4
    mr r3, r28
    bl OSRestoreInterrupts
    li r3, -0x1
    opword  0x48000110  // b .L_800568D0
L_800567C4:
    lwz r0, 0x0(r31)
    cmpwi r0, 0x0
    opword  0x40820024  // bne .L_800567F0
    mr r3, r30
    bl EXIGetState
    rlwinm. r0, r3, 0, 28, 28
    opword  0x41820014  // beq .L_800567F0
    mr r3, r28
    bl OSRestoreInterrupts
    li r3, -0x2
    opword  0x480000E4  // b .L_800568D0
L_800567F0:
    li r0, -0x1
    stw r0, 0x4(r31)
    cmplwi r29, 0x0
    stw r26, 0x80(r31)
    stw r27, 0xc4(r31)
    opword  0x4182000C  // beq .L_80056810
    mr r0, r29
    opword  0x4800000C  // b .L_80056818
L_80056810:
    lis r3, fn_800522B4@ha
    addi r0, r3, fn_800522B4@l
L_80056818:
    stw r0, 0xd0(r31)
    li r0, 0x0
    stw r0, 0xcc(r31)
    lwz r0, 0x0(r31)
    cmpwi r0, 0x0
    opword  0x40820034  // bne .L_80056860
    lis r3, fn_800522EC@ha
    addi r4, r3, fn_800522EC@l
    addi r3, r30, 0x0
    bl EXIAttach
    cmpwi r3, 0x0
    opword  0x4082001C  // bne .L_80056860
    li r0, -0x3
    stw r0, 0x4(r31)
    mr r3, r28
    bl OSRestoreInterrupts
    li r3, -0x3
    opword  0x48000074  // b .L_800568D0
L_80056860:
    li r29, 0x0
    stw r29, 0x24(r31)
    li r0, 0x1
    addi r3, r30, 0x0
    stw r0, 0x0(r31)
    li r4, 0x0
    bl EXISetExiCallback
    addi r3, r31, 0xe0
    bl fn_8004061C
    stw r29, 0x84(r31)
    mr r3, r28
    stw r29, 0x88(r31)
    bl OSRestoreInterrupts
    lis r3, fn_8005660C@ha
    addi r0, r3, fn_8005660C@l
    lis r3, fn_80052584@ha
    stw r0, 0xdc(r31)
    addi r5, r3, fn_80052584@l
    addi r3, r30, 0x0
    li r4, 0x0
    bl EXILock
    cmpwi r3, 0x0
    opword  0x4082000C  // bne .L_800568C4
    li r3, 0x0
    opword  0x48000010  // b .L_800568D0
L_800568C4:
    stw r29, 0xdc(r31)
    mr r3, r30
    bl fn_800561FC
L_800568D0:
    lmw r26, 0x18(r1)
    lwz r0, 0x34(r1)
    addi r1, r1, 0x30
    mtlr r0
    blr
}

ASM void fn_800568E4(void)
{
    nofralloc
    mflr r0
    lis r6, fn_800522B8@ha
    stw r0, 0x4(r1)
    addi r6, r6, fn_800522B8@l
    stwu r1, -0x20(r1)
    stw r31, 0x1c(r1)
    addi r31, r3, 0x0
    bl fn_80056744
    cmpwi r3, 0x0
    opword  0x40800008  // bge .L_80056910
    opword  0x4800000C  // b .L_80056918
L_80056910:
    mr r3, r31
    bl fn_80053480
L_80056918:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    addi r1, r1, 0x20
    mtlr r0
    blr
}

ASM void fn_8005692C(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x20(r1)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    stw r29, 0x14(r1)
    addi r29, r4, 0x0
    stw r28, 0x10(r1)
    addi r28, r3, 0x0
    mulli r5, r28, 0x110
    lis r3, lbl_804B5BA0@ha
    addi r0, r3, lbl_804B5BA0@l
    add r31, r0, r5
    bl OSDisableInterrupts
    lwz r0, 0x0(r31)
    addi r30, r3, 0x0
    cmpwi r0, 0x0
    opword  0x41820030  // beq .L_800569A0
    addi r3, r28, 0x0
    li r4, 0x0
    bl EXISetExiCallback
    mr r3, r28
    bl EXIDetach
    addi r3, r31, 0xe0
    bl fn_8004061C
    li r0, 0x0
    stw r0, 0x0(r31)
    stw r29, 0x4(r31)
    stw r0, 0x24(r31)
L_800569A0:
    mr r3, r30
    bl OSRestoreInterrupts
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    lwz r28, 0x10(r1)
    addi r1, r1, 0x20
    mtlr r0
    blr
}

ASM void fn_800569C8(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x20(r1)
    stw r31, 0x1c(r1)
    addi r4, r1, 0xc
    stw r30, 0x18(r1)
    stw r29, 0x14(r1)
    addi r29, r3, 0x0
    bl fn_80053214
    cmpwi r3, 0x0
    opword  0x40800008  // bge .L_800569F8
    opword  0x48000064  // b .L_80056A58
L_800569F8:
    mulli r4, r29, 0x110
    lis r3, lbl_804B5BA0@ha
    addi r0, r3, lbl_804B5BA0@l
    add r30, r0, r4
    bl OSDisableInterrupts
    lwz r0, 0x0(r30)
    addi r31, r3, 0x0
    cmpwi r0, 0x0
    opword  0x41820034  // beq .L_80056A4C
    addi r3, r29, 0x0
    li r4, 0x0
    bl EXISetExiCallback
    mr r3, r29
    bl EXIDetach
    addi r3, r30, 0xe0
    bl fn_8004061C
    li r3, 0x0
    stw r3, 0x0(r30)
    li r0, -0x3
    stw r0, 0x4(r30)
    stw r3, 0x24(r30)
L_80056A4C:
    mr r3, r31
    bl OSRestoreInterrupts
    li r3, 0x0
L_80056A58:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    addi r1, r1, 0x20
    mtlr r0
    blr
}

ASM void fn_80056A74(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x20(r1)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    addi r30, r3, 0x0
    lis r3, lbl_804B5BA0@ha
    stw r29, 0x14(r1)
    mulli r5, r30, 0x110
    stw r28, 0x10(r1)
    addi r0, r3, lbl_804B5BA0@l
    mr. r28, r4
    add r31, r0, r5
    opword  0x418000C4  // blt .L_80056B6C
    lwz r3, 0x28(r31)
    addi r0, r3, 0x1
    stw r0, 0x28(r31)
    lwz r4, 0x28(r31)
    cmpwi r4, 0x5
    opword  0x40800028  // bge .L_80056AE8
    lwz r0, 0xc(r31)
    lis r3, fn_80056A74@ha
    addi r5, r3, fn_80056A74@l
    mullw r4, r0, r4
    addi r3, r30, 0x0
    bl fn_80053048
    mr. r28, r3
    opword  0x4180008C  // blt .L_80056B6C
    opword  0x480000B4  // b .L_80056B98
L_80056AE8:
    cmpwi r4, 0xa
    opword  0x4080003C  // bge .L_80056B28
    lwz r0, 0xc(r31)
    subi r6, r4, 0x5
    lis r3, fn_80056A74@ha
    lwz r5, 0x80(r31)
    mullw r4, r0, r6
    slwi r0, r6, 13
    addi r7, r3, fn_80056A74@l
    add r6, r5, r0
    addi r3, r30, 0x0
    li r5, 0x2000
    bl fn_800549E4
    mr. r28, r3
    opword  0x4180004C  // blt .L_80056B6C
    opword  0x48000074  // b .L_80056B98
L_80056B28:
    lwz r3, 0x80(r31)
    li r5, 0x2000
    addi r0, r3, 0x2000
    stw r0, 0x84(r31)
    lwz r4, 0x80(r31)
    lwz r3, 0x84(r31)
    addi r4, r4, 0x4000
    bl memcpy
    lwz r3, 0x80(r31)
    li r5, 0x2000
    addi r0, r3, 0x6000
    stw r0, 0x88(r31)
    lwz r4, 0x80(r31)
    lwz r3, 0x88(r31)
    addis r4, r4, 0x1
    addi r4, r4, -0x8000
    bl memcpy
L_80056B6C:
    lwz r29, 0xd0(r31)
    li r0, 0x0
    addi r3, r31, 0x0
    stw r0, 0xd0(r31)
    mr r4, r28
    bl fn_800532CC
    addi r12, r29, 0x0
    mtlr r12
    addi r3, r30, 0x0
    addi r4, r28, 0x0
    blrl
L_80056B98:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    lwz r28, 0x10(r1)
    addi r1, r1, 0x20
    mtlr r0
    blr
}

ASM void fn_80056BB8(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x58(r1)
    stmw r18, 0x20(r1)
    addi r20, r4, 0x0
    addi r22, r3, 0x0
    addi r19, r5, 0x0
    addi r4, r1, 0x18
    bl fn_80053214
    cmpwi r3, 0x0
    opword  0x40800008  // bge .L_80056BE8
    opword  0x48000618  // b .L_800571FC
L_80056BE8:
    lwz r3, 0x18(r1)
    li r4, 0xff
    li r5, 0x2000
    lwz r27, 0x80(r3)
    mr r3, r27
    bl memset
    lis r3, 0xcc00
    lhz r18, 0x206e(r3)
    sth r20, 0x24(r27)
    bl __OSLockSram
    lwz r0, 0xc(r3)
    stw r0, 0x14(r27)
    lbz r0, 0x12(r3)
    li r3, 0x0
    stw r0, 0x18(r27)
    bl __OSUnlockSram
    bl OSGetTime
    addi r21, r4, 0x0
    addi r20, r3, 0x0
    addi r26, r21, 0x0
    addi r30, r20, 0x0
    bl __OSLockSramEx
    mulli r0, r22, 0xc
    add r25, r3, r0
    lis r3, 0x41c6
    addi r24, r25, 0x0
    addi r31, r3, 0x4e6d
    li r28, 0x0
    li r23, 0x4
    opword  0x48000374  // b .L_80056FD0
L_80056C60:
    mullw r5, r30, r31
    mulhwu r3, r26, r31
    li r30, 0x0
    add r5, r5, r3
    mullw r3, r26, r30
    mullw r0, r26, r31
    li r29, 0x3039
    addc r4, r0, r29
    add r0, r5, r3
    adde r3, r0, r30
    li r5, 0x10
    bl __shr2i
    mullw r6, r3, r31
    lbz r0, 0x0(r24)
    mulhwu r5, r4, r31
    add r6, r6, r5
    addc r8, r4, r0
    extsh r7, r28
    mullw r5, r4, r30
    stbx r8, r27, r7
    mullw r0, r4, r31
    addc r4, r0, r29
    add r0, r6, r5
    adde r3, r0, r30
    li r5, 0x10
    bl __shr2i
    li r26, 0x7fff
    and r0, r3, r30
    and r4, r4, r26
    mullw r5, r0, r31
    mulhwu r3, r4, r31
    add r5, r5, r3
    mullw r3, r4, r30
    mullw r0, r4, r31
    addc r4, r0, r29
    add r0, r5, r3
    adde r3, r0, r30
    li r5, 0x10
    bl __shr2i
    mullw r6, r3, r31
    mulhwu r5, r4, r31
    addi r9, r28, 0x1
    extsh r9, r9
    lbzx r0, r25, r9
    add r6, r6, r5
    mullw r5, r4, r30
    addc r7, r4, r0
    mullw r0, r4, r31
    stbx r7, r27, r9
    addc r4, r0, r29
    add r0, r6, r5
    adde r3, r0, r30
    li r5, 0x10
    bl __shr2i
    and r0, r3, r30
    and r4, r4, r26
    mullw r5, r0, r31
    mulhwu r3, r4, r31
    add r5, r5, r3
    mullw r3, r4, r30
    mullw r0, r4, r31
    addc r4, r0, r29
    add r0, r5, r3
    adde r3, r0, r30
    li r5, 0x10
    bl __shr2i
    mullw r6, r3, r31
    mulhwu r5, r4, r31
    addi r9, r28, 0x2
    extsh r9, r9
    lbzx r0, r25, r9
    add r6, r6, r5
    mullw r5, r4, r30
    addc r7, r4, r0
    mullw r0, r4, r31
    stbx r7, r27, r9
    addc r4, r0, r29
    add r0, r6, r5
    adde r3, r0, r30
    li r5, 0x10
    bl __shr2i
    and r0, r3, r30
    and r4, r4, r26
    mullw r5, r0, r31
    mulhwu r3, r4, r31
    add r5, r5, r3
    mullw r3, r4, r30
    mullw r0, r4, r31
    addc r4, r0, r29
    add r0, r5, r3
    adde r3, r0, r30
    li r5, 0x10
    bl __shr2i
    mullw r6, r3, r31
    mulhwu r5, r4, r31
    addi r9, r28, 0x3
    extsh r9, r9
    lbzx r0, r25, r9
    add r6, r6, r5
    mullw r5, r4, r30
    addc r7, r4, r0
    mullw r0, r4, r31
    stbx r7, r27, r9
    addc r4, r0, r29
    add r0, r6, r5
    adde r3, r0, r30
    li r5, 0x10
    bl __shr2i
    and r0, r3, r30
    and r4, r4, r26
    mullw r5, r0, r31
    mulhwu r3, r4, r31
    add r5, r5, r3
    mullw r3, r4, r30
    mullw r0, r4, r31
    addc r4, r0, r29
    add r0, r5, r3
    adde r3, r0, r30
    li r5, 0x10
    bl __shr2i
    mullw r6, r3, r31
    mulhwu r5, r4, r31
    addi r9, r28, 0x4
    extsh r9, r9
    lbzx r0, r25, r9
    add r6, r6, r5
    mullw r5, r4, r30
    addc r7, r4, r0
    mullw r0, r4, r31
    stbx r7, r27, r9
    addc r4, r0, r29
    add r0, r6, r5
    adde r3, r0, r30
    li r5, 0x10
    bl __shr2i
    and r0, r3, r30
    and r4, r4, r26
    mullw r5, r0, r31
    mulhwu r3, r4, r31
    add r5, r5, r3
    mullw r3, r4, r30
    mullw r0, r4, r31
    addc r4, r0, r29
    add r0, r5, r3
    adde r3, r0, r30
    li r5, 0x10
    bl __shr2i
    mullw r6, r3, r31
    mulhwu r5, r4, r31
    addi r9, r28, 0x5
    extsh r9, r9
    lbzx r0, r25, r9
    add r6, r6, r5
    mullw r5, r4, r30
    addc r7, r4, r0
    mullw r0, r4, r31
    stbx r7, r27, r9
    addc r4, r0, r29
    add r0, r6, r5
    adde r3, r0, r30
    li r5, 0x10
    bl __shr2i
    and r0, r3, r30
    and r4, r4, r26
    mullw r5, r0, r31
    mulhwu r3, r4, r31
    add r5, r5, r3
    mullw r3, r4, r30
    mullw r0, r4, r31
    addc r4, r0, r29
    add r0, r5, r3
    adde r3, r0, r30
    li r5, 0x10
    bl __shr2i
    mullw r6, r3, r31
    mulhwu r5, r4, r31
    addi r9, r28, 0x6
    extsh r9, r9
    lbzx r0, r25, r9
    add r6, r6, r5
    mullw r5, r4, r30
    addc r7, r4, r0
    mullw r0, r4, r31
    stbx r7, r27, r9
    addc r4, r0, r29
    add r0, r6, r5
    adde r3, r0, r30
    li r5, 0x10
    bl __shr2i
    and r0, r3, r30
    and r4, r4, r26
    mullw r5, r0, r31
    mulhwu r3, r4, r31
    add r5, r5, r3
    mullw r3, r4, r30
    mullw r0, r4, r31
    addc r4, r0, r29
    add r0, r5, r3
    adde r3, r0, r30
    li r5, 0x10
    bl __shr2i
    mullw r6, r3, r31
    mulhwu r5, r4, r31
    addi r9, r28, 0x7
    extsh r9, r9
    lbzx r0, r25, r9
    add r6, r6, r5
    mullw r5, r4, r30
    addc r7, r4, r0
    mullw r0, r4, r31
    stbx r7, r27, r9
    addc r4, r0, r29
    add r0, r6, r5
    adde r3, r0, r30
    li r5, 0x10
    bl __shr2i
    and r26, r4, r26
    and r30, r3, r30
    addi r24, r24, 0x8
    addi r28, r28, 0x8
L_80056FD0:
    extsh r0, r28
    cmpw r0, r23
    opword  0x4180FC88  // blt .L_80056C60
    opword  0x48000218  // b .L_800571F4
L_80056FE0:
    lis r3, 0x41c6
    addi r25, r3, 0x4e6d
    opword  0x48000080  // b .L_80057068
L_80056FEC:
    mullw r5, r30, r25
    mulhwu r3, r26, r25
    li r24, 0x0
    add r5, r5, r3
    mullw r3, r26, r24
    mullw r0, r26, r25
    li r23, 0x3039
    addc r4, r0, r23
    add r0, r5, r3
    adde r3, r0, r24
    li r5, 0x10
    bl __shr2i
    mullw r6, r3, r25
    lbz r0, 0x0(r29)
    mulhwu r5, r4, r25
    add r6, r6, r5
    addc r8, r4, r0
    extsh r7, r28
    mullw r5, r4, r24
    stbx r8, r27, r7
    mullw r0, r4, r25
    addc r4, r0, r23
    add r0, r6, r5
    adde r3, r0, r24
    li r5, 0x10
    bl __shr2i
    li r0, 0x7fff
    and r26, r4, r0
    and r30, r3, r24
    addi r29, r29, 0x1
    addi r28, r28, 0x1
L_80057068:
    extsh r0, r28
    cmpwi r0, 0xc
    opword  0x4180FF7C  // blt .L_80056FEC
    li r3, 0x0
    bl __OSUnlockSramEx
    stw r18, 0x1c(r27)
    li r18, 0x0
    addi r3, r27, 0x0
    stw r21, 0x10(r27)
    addi r5, r27, 0x1fc
    addi r6, r27, 0x1fe
    stw r20, 0xc(r27)
    li r4, 0x1fc
    sth r18, 0x20(r27)
    lwz r7, 0x18(r1)
    lhz r0, 0x8(r7)
    sth r0, 0x22(r27)
    bl fn_80055014
    opword  0x4800004C  // b .L_800570FC
L_800570B4:
    lwz r4, 0x18(r1)
    extsh r3, r18
    addi r0, r3, 0x1
    lwz r3, 0x80(r4)
    slwi r0, r0, 13
    li r4, 0xff
    add r20, r3, r0
    addi r3, r20, 0x0
    li r5, 0x2000
    bl memset
    addi r4, r20, 0x1fc0
    sth r18, 0x1ffa(r20)
    addi r3, r20, 0x0
    addi r5, r4, 0x3c
    addi r6, r4, 0x3e
    li r4, 0x1ffc
    bl fn_80055014
    addi r18, r18, 0x1
L_800570FC:
    extsh r0, r18
    cmpwi r0, 0x2
    opword  0x4180FFB0  // blt .L_800570B4
    li r18, 0x0
    opword  0x48000060  // b .L_8005716C
L_80057110:
    lwz r4, 0x18(r1)
    extsh r3, r18
    addi r0, r3, 0x3
    lwz r3, 0x80(r4)
    slwi r0, r0, 13
    li r4, 0x0
    add r20, r3, r0
    addi r3, r20, 0x0
    li r5, 0x2000
    bl memset
    sth r18, 0x4(r20)
    li r0, 0x4
    addi r5, r20, 0x0
    lwz r4, 0x18(r1)
    addi r3, r20, 0x4
    addi r6, r20, 0x2
    lhz r7, 0x10(r4)
    li r4, 0x1ffc
    subi r7, r7, 0x5
    sth r7, 0x6(r20)
    sth r0, 0x8(r20)
    bl fn_80055014
    addi r18, r18, 0x1
L_8005716C:
    extsh r0, r18
    cmpwi r0, 0x2
    opword  0x4180FF9C  // blt .L_80057110
    cmplwi r19, 0x0
    opword  0x4182000C  // beq .L_80057188
    mr r0, r19
    opword  0x4800000C  // b .L_80057190
L_80057188:
    lis r3, fn_800522B4@ha
    addi r0, r3, fn_800522B4@l
L_80057190:
    lwz r5, 0x18(r1)
    lis r3, 0x1
    subi r4, r3, 0x6000
    stw r0, 0xd0(r5)
    lwz r3, 0x18(r1)
    lwz r3, 0x80(r3)
    bl fn_80040F90
    lwz r4, 0x18(r1)
    li r0, 0x0
    lis r3, fn_80056A74@ha
    stw r0, 0x28(r4)
    addi r5, r3, fn_80056A74@l
    addi r3, r22, 0x0
    lwz r6, 0x18(r1)
    lwz r4, 0xc(r6)
    lwz r0, 0x28(r6)
    mullw r4, r4, r0
    bl fn_80053048
    mr. r18, r3
    opword  0x40800010  // bge .L_800571EC
    lwz r3, 0x18(r1)
    mr r4, r18
    bl fn_800532CC
L_800571EC:
    mr r3, r18
    opword  0x4800000C  // b .L_800571FC
L_800571F4:
    add r29, r25, r0
    opword  0x4BFFFDE8  // b .L_80056FE0
L_800571FC:
    lmw r18, 0x20(r1)
    lwz r0, 0x5c(r1)
    addi r1, r1, 0x58
    mtlr r0
    blr
}

ASM void fn_80057210(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    mr r31, r3
    bl fn_800531D4
    lis r5, fn_800522B8@ha
    addi r4, r3, 0x0
    addi r5, r5, fn_800522B8@l
    addi r3, r31, 0x0
    bl fn_80056BB8
    cmpwi r3, 0x0
    opword  0x40800008  // bge .L_80057248
    opword  0x4800000C  // b .L_80057250
L_80057248:
    mr r3, r31
    bl fn_80053480
L_80057250:
    lwz r0, 0x1c(r1)
    lwz r31, 0x14(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

ASM void fn_80057264(void)
{
    nofralloc
    addi r5, r3, 0x8
    li r7, 0x20
    opword  0x4800003C  // b .L_800572A8
L_80057270:
    lbz r0, 0x0(r5)
    addi r5, r5, 0x1
    lbz r6, 0x0(r4)
    addi r4, r4, 0x1
    extsb r3, r0
    extsb r0, r6
    cmpw r3, r0
    opword  0x4182000C  // beq .L_80057298
    li r3, 0x0
    blr
L_80057298:
    extsb. r0, r6
    opword  0x4082000C  // bne .L_800572A8
    li r3, 0x1
    blr
L_800572A8:
    subic. r7, r7, 0x1
    opword  0x4080FFC4  // bge .L_80057270
    lbz r0, 0x0(r4)
    extsb. r0, r0
    opword  0x4082000C  // bne .L_800572C4
    li r3, 0x1
    blr
L_800572C4:
    li r3, 0x0
    blr
}

ASM void fn_800572CC(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    stw r30, 0x10(r1)
    mr r30, r4
    lbz r0, 0x0(r4)
    lwz r31, 0x10c(r3)
    cmplwi r0, 0xff
    opword  0x4082000C  // bne .L_800572FC
    li r3, -0x4
    opword  0x48000050  // b .L_80057348
L_800572FC:
    lis r3, lbl_804B5DC0@ha
    addi r0, r3, lbl_804B5DC0@l
    cmplw r31, r0
    opword  0x41820034  // beq .L_8005733C
    addi r3, r30, 0x0
    addi r4, r31, 0x0
    li r5, 0x4
    bl fn_8006AEE4
    cmpwi r3, 0x0
    opword  0x40820024  // bne .L_80057344
    addi r3, r30, 0x4
    addi r4, r31, 0x4
    li r5, 0x2
    bl fn_8006AEE4
    cmpwi r3, 0x0
    opword  0x4082000C  // bne .L_80057344
L_8005733C:
    li r3, 0x0
    opword  0x48000008  // b .L_80057348
L_80057344:
    li r3, -0xa
L_80057348:
    lwz r0, 0x1c(r1)
    lwz r31, 0x14(r1)
    lwz r30, 0x10(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

ASM void fn_80057360(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x28(r1)
    stmw r27, 0x14(r1)
    mr r27, r4
    lbz r0, 0x0(r4)
    lwz r29, 0x10c(r3)
    cmplwi r0, 0xff
    opword  0x4082000C  // bne .L_8005738C
    li r30, -0x4
    opword  0x48000050  // b .L_800573D8
L_8005738C:
    lis r3, lbl_804B5DC0@ha
    addi r0, r3, lbl_804B5DC0@l
    cmplw r29, r0
    opword  0x41820034  // beq .L_800573CC
    addi r3, r27, 0x0
    addi r4, r29, 0x0
    li r5, 0x4
    bl fn_8006AEE4
    cmpwi r3, 0x0
    opword  0x40820024  // bne .L_800573D4
    addi r3, r27, 0x4
    addi r4, r29, 0x4
    li r5, 0x2
    bl fn_8006AEE4
    cmpwi r3, 0x0
    opword  0x4082000C  // bne .L_800573D4
L_800573CC:
    li r30, 0x0
    opword  0x48000008  // b .L_800573D8
L_800573D4:
    li r30, -0xa
L_800573D8:
    cmpwi r30, -0xa
    opword  0x408200A0  // bne .L_8005747C
    lbz r3, 0x34(r27)
    opword  0x880D810A  // lbz r0, lbl_80539CCA@sda21(r0)
    and r0, r3, r0
    clrlwi r28, r0, 24
    rlwinm. r0, r0, 0, 26, 26
    opword  0x41820044  // beq .L_80057438
    lis r3, lbl_804B5DC0@ha
    addi r31, r3, lbl_804B5DC0@l
    addi r3, r27, 0x0
    addi r4, r31, 0x0
    li r5, 0x4
    bl fn_8006AEE4
    cmpwi r3, 0x0
    opword  0x40820024  // bne .L_80057438
    addi r3, r27, 0x4
    addi r4, r31, 0x4
    li r5, 0x2
    bl fn_8006AEE4
    cmpwi r3, 0x0
    opword  0x4082000C  // bne .L_80057438
    li r3, 0x0
    opword  0x4800004C  // b .L_80057480
L_80057438:
    rlwinm. r0, r28, 0, 25, 25
    opword  0x41820040  // beq .L_8005747C
    lis r3, lbl_804B5DC0@ha
    addi r4, r3, lbl_804B5DC0@l
    addi r3, r27, 0x0
    li r5, 0x4
    bl fn_8006AEE4
    cmpwi r3, 0x0
    opword  0x40820024  // bne .L_8005747C
    addi r3, r27, 0x4
    addi r4, r29, 0x4
    li r5, 0x2
    bl fn_8006AEE4
    cmpwi r3, 0x0
    opword  0x4082000C  // bne .L_8005747C
    li r3, 0x0
    opword  0x48000008  // b .L_80057480
L_8005747C:
    mr r3, r30
L_80057480:
    lmw r27, 0x14(r1)
    lwz r0, 0x2c(r1)
    addi r1, r1, 0x28
    mtlr r0
    blr
}

ASM void fn_80057494(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x28(r1)
    stmw r27, 0x14(r1)
    mr r27, r4
    lwz r28, 0x10c(r3)
    bl fn_800572CC
    addi r29, r3, 0x0
    cmpwi r29, -0xa
    opword  0x4082009C  // bne .L_80057554
    lbz r3, 0x34(r27)
    opword  0x880D810A  // lbz r0, lbl_80539CCA@sda21(r0)
    and r0, r3, r0
    clrlwi r30, r0, 24
    rlwinm. r0, r0, 0, 26, 26
    opword  0x41820044  // beq .L_80057514
    lis r3, lbl_804B5DC0@ha
    addi r31, r3, lbl_804B5DC0@l
    addi r3, r27, 0x0
    addi r4, r31, 0x0
    li r5, 0x4
    bl fn_8006AEE4
    cmpwi r3, 0x0
    opword  0x40820024  // bne .L_80057514
    addi r3, r27, 0x4
    addi r4, r31, 0x4
    li r5, 0x2
    bl fn_8006AEE4
    cmpwi r3, 0x0
    opword  0x4082000C  // bne .L_80057514
    li r29, 0x0
    opword  0x48000044  // b .L_80057554
L_80057514:
    rlwinm. r0, r30, 0, 25, 25
    opword  0x4182003C  // beq .L_80057554
    lis r3, lbl_804B5DC0@ha
    addi r4, r3, lbl_804B5DC0@l
    addi r3, r27, 0x0
    li r5, 0x4
    bl fn_8006AEE4
    cmpwi r3, 0x0
    opword  0x40820020  // bne .L_80057554
    addi r3, r27, 0x4
    addi r4, r28, 0x4
    li r5, 0x2
    bl fn_8006AEE4
    cmpwi r3, 0x0
    opword  0x40820008  // bne .L_80057554
    li r29, 0x0
L_80057554:
    cmpwi r29, -0xa
    opword  0x40820018  // bne .L_80057570
    lbz r0, 0x34(r27)
    rlwinm. r0, r0, 0, 29, 29
    opword  0x4182000C  // beq .L_80057570
    li r3, 0x0
    opword  0x48000008  // b .L_80057574
L_80057570:
    mr r3, r29
L_80057574:
    lmw r27, 0x14(r1)
    lwz r0, 0x2c(r1)
    addi r1, r1, 0x28
    mtlr r0
    blr
}

ASM void fn_80057588(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    li r0, -0x1
    stwu r1, -0x38(r1)
    stmw r25, 0x1c(r1)
    addi r25, r4, 0x0
    addi r30, r5, 0x0
    addi r29, r3, 0x0
    addi r4, r1, 0x14
    stw r0, 0x0(r5)
    bl fn_80053214
    cmpwi r3, 0x0
    opword  0x40800008  // bge .L_800575C0
    opword  0x480000D4  // b .L_80057690
L_800575C0:
    lwz r26, 0x14(r1)
    lwz r0, 0x0(r26)
    cmpwi r0, 0x0
    opword  0x4082000C  // bne .L_800575D8
    li r26, -0x3
    opword  0x4800005C  // b .L_80057630
L_800575D8:
    mr r3, r26
    bl fn_80054DB0
    addi r27, r3, 0x0
    li r28, 0x0
L_800575E8:
    addi r3, r26, 0x0
    addi r4, r27, 0x0
    bl fn_800572CC
    cmpwi r3, 0x0
    opword  0x41800024  // blt .L_8005761C
    addi r3, r27, 0x0
    addi r4, r25, 0x0
    bl fn_80057264
    cmpwi r3, 0x0
    opword  0x41820010  // beq .L_8005761C
    addi r31, r28, 0x0
    li r26, 0x0
    opword  0x48000018  // b .L_80057630
L_8005761C:
    addi r28, r28, 0x1
    cmpwi r28, 0x7f
    addi r27, r27, 0x40
    opword  0x4180FFC0  // blt .L_800575E8
    li r26, -0x4
L_80057630:
    cmpwi r26, 0x0
    opword  0x41800050  // blt .L_80057684
    lwz r3, 0x14(r1)
    bl fn_80054DB0
    slwi r0, r31, 6
    add r5, r3, r0
    lhz r4, 0x36(r5)
    cmplwi r4, 0x5
    opword  0x41800014  // blt .L_80057664
    lwz r3, 0x14(r1)
    lhz r0, 0x10(r3)
    cmplw r4, r0
    opword  0x4180000C  // blt .L_8005766C
L_80057664:
    li r26, -0x6
    opword  0x4800001C  // b .L_80057684
L_8005766C:
    stw r29, 0x0(r30)
    li r0, 0x0
    stw r31, 0x4(r30)
    stw r0, 0x8(r30)
    lhz r0, 0x36(r5)
    sth r0, 0x10(r30)
L_80057684:
    lwz r3, 0x14(r1)
    mr r4, r26
    bl fn_800532CC
L_80057690:
    lmw r25, 0x1c(r1)
    lwz r0, 0x3c(r1)
    addi r1, r1, 0x38
    mtlr r0
    blr
}

ASM void fn_800576A4(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    mr r31, r3
    addi r4, r1, 0xc
    lwz r3, 0x0(r3)
    bl fn_80053214
    cmpwi r3, 0x0
    opword  0x40800008  // bge .L_800576D0
    opword  0x48000018  // b .L_800576E4
L_800576D0:
    li r0, -0x1
    stw r0, 0x0(r31)
    li r4, 0x0
    lwz r3, 0xc(r1)
    bl fn_800532CC
L_800576E4:
    lwz r0, 0x1c(r1)
    lwz r31, 0x14(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

ASM void fn_800576F8(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x28(r1)
    stmw r27, 0x14(r1)
    addi r28, r3, 0x0
    lis r3, lbl_804B5BA0@ha
    mulli r5, r28, 0x110
    addi r0, r3, lbl_804B5BA0@l
    add r31, r0, r5
    lwz r29, 0xd0(r31)
    li r27, 0x0
    mr. r30, r4
    stw r27, 0xd0(r31)
    opword  0x418000C0  // blt .L_800577EC
    mr r3, r31
    bl fn_80054DB0
    lhz r0, 0xbc(r31)
    li r5, 0x4
    lwz r4, 0x10c(r31)
    slwi r0, r0, 6
    add r30, r3, r0
    addi r3, r30, 0x0
    bl memcpy
    lwz r4, 0x10c(r31)
    addi r3, r30, 0x4
    li r5, 0x2
    addi r4, r4, 0x4
    bl memcpy
    li r0, 0x4
    stb r0, 0x34(r30)
    li r0, -0x1
    lis r3, 0x8000
    stb r27, 0x35(r30)
    lhz r4, 0xbe(r31)
    sth r4, 0x36(r30)
    stb r27, 0x7(r30)
    stw r0, 0x2c(r30)
    sth r27, 0x30(r30)
    sth r27, 0x32(r30)
    stw r0, 0x3c(r30)
    lhz r0, 0x32(r30)
    clrrwi r0, r0, 2
    ori r0, r0, 0x1
    sth r0, 0x32(r30)
    lwz r4, 0xc0(r31)
    stw r27, 0x8(r4)
    lhz r0, 0x36(r30)
    lwz r4, 0xc0(r31)
    sth r0, 0x10(r4)
    lwz r0, 0xf8(r3)
    srwi r27, r0, 2
    bl OSGetTime
    addi r6, r27, 0x0
    li r5, 0x0
    bl __div2i
    stw r4, 0x28(r30)
    addi r3, r28, 0x0
    addi r4, r29, 0x0
    bl fn_80054F50
    mr. r30, r3
    opword  0x4080002C  // bge .L_80057814
L_800577EC:
    addi r3, r31, 0x0
    addi r4, r30, 0x0
    bl fn_800532CC
    cmplwi r29, 0x0
    opword  0x41820018  // beq .L_80057814
    addi r12, r29, 0x0
    mtlr r12
    addi r3, r28, 0x0
    addi r4, r30, 0x0
    blrl
L_80057814:
    lmw r27, 0x14(r1)
    lwz r0, 0x2c(r1)
    addi r1, r1, 0x28
    mtlr r0
    blr
}

ASM void fn_80057828(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x48(r1)
    stmw r23, 0x24(r1)
    addi r26, r4, 0x0
    addi r25, r3, 0x0
    addi r27, r5, 0x0
    addi r28, r6, 0x0
    addi r29, r7, 0x0
    addi r3, r26, 0x0
    bl strlen
    cmplwi r3, 0x20
    opword  0x4081000C  // ble .L_80057864
    li r3, -0xc
    opword  0x480001D4  // b .L_80057A34
L_80057864:
    addi r3, r25, 0x0
    addi r4, r1, 0x1c
    bl fn_80053214
    cmpwi r3, 0x0
    opword  0x40800008  // bge .L_8005787C
    opword  0x480001BC  // b .L_80057A34
L_8005787C:
    cmplwi r27, 0x0
    opword  0x4182001C  // beq .L_8005789C
    lwz r3, 0x1c(r1)
    lwz r4, 0xc(r3)
    divwu r0, r27, r4
    mullw r0, r0, r4
    subf. r0, r0, r27
    opword  0x4182000C  // beq .L_800578A4
L_8005789C:
    li r3, -0x80
    opword  0x48000194  // b .L_80057A34
L_800578A4:
    lis r4, 0x1
    subi r30, r4, 0x1
    bl fn_80054DB0
    addi r31, r3, 0x0
    addi r24, r31, 0x0
    li r23, 0x0
    opword  0x4800008C  // b .L_80057948
L_800578C0:
    lbz r0, 0x0(r24)
    cmplwi r0, 0xff
    opword  0x40820018  // bne .L_800578E0
    clrlwi r0, r30, 16
    cmplwi r0, 0xffff
    opword  0x4082006C  // bne .L_80057940
    mr r30, r23
    opword  0x48000064  // b .L_80057940
L_800578E0:
    lwz r4, 0x1c(r1)
    addi r3, r24, 0x0
    li r5, 0x4
    lwz r4, 0x10c(r4)
    bl fn_8006AEE4
    cmpwi r3, 0x0
    opword  0x40820048  // bne .L_80057940
    lwz r4, 0x1c(r1)
    addi r3, r24, 0x4
    li r5, 0x2
    lwz r4, 0x10c(r4)
    addi r4, r4, 0x4
    bl fn_8006AEE4
    cmpwi r3, 0x0
    opword  0x40820028  // bne .L_80057940
    addi r3, r24, 0x0
    addi r4, r26, 0x0
    bl fn_80057264
    cmpwi r3, 0x0
    opword  0x41820014  // beq .L_80057940
    lwz r3, 0x1c(r1)
    li r4, -0x7
    bl fn_800532CC
    opword  0x480000F8  // b .L_80057A34
L_80057940:
    addi r24, r24, 0x40
    addi r23, r23, 0x1
L_80057948:
    clrlwi r0, r23, 16
    cmplwi r0, 0x7f
    opword  0x4180FF70  // blt .L_800578C0
    clrlwi r0, r30, 16
    cmplwi r0, 0xffff
    opword  0x40820014  // bne .L_80057970
    lwz r3, 0x1c(r1)
    li r4, -0x8
    bl fn_800532CC
    opword  0x480000C8  // b .L_80057A34
L_80057970:
    lwz r3, 0x1c(r1)
    bl fn_80054A48
    lwz r4, 0x1c(r1)
    lhz r0, 0x6(r3)
    lwz r3, 0xc(r4)
    mullw r0, r3, r0
    cmplw r0, r27
    opword  0x40800014  // bge .L_800579A0
    addi r3, r4, 0x0
    li r4, -0x9
    bl fn_800532CC
    opword  0x48000098  // b .L_80057A34
L_800579A0:
    cmplwi r29, 0x0
    opword  0x4182000C  // beq .L_800579B0
    mr r0, r29
    opword  0x4800000C  // b .L_800579B8
L_800579B0:
    lis r3, fn_800522B4@ha
    addi r0, r3, fn_800522B4@l
L_800579B8:
    stw r0, 0xd0(r4)
    clrlslwi r0, r30, 16, 6
    add r7, r31, r0
    lwz r3, 0x1c(r1)
    clrlwi r29, r30, 16
    addi r4, r26, 0x0
    sth r30, 0xbc(r3)
    addi r3, r7, 0x8
    li r5, 0x20
    lwz r6, 0x1c(r1)
    lwz r0, 0xc(r6)
    divwu r0, r27, r0
    sth r0, 0x38(r7)
    bl strncat
    lwz r4, 0x1c(r1)
    lis r3, fn_800576F8@ha
    addi r5, r3, fn_800576F8@l
    stw r28, 0xc0(r4)
    mr r3, r25
    stw r25, 0x0(r28)
    stw r29, 0x4(r28)
    lwz r4, 0x1c(r1)
    lwz r0, 0xc(r4)
    divwu r4, r27, r0
    bl fn_80054BEC
    mr. r4, r3
    opword  0x40800010  // bge .L_80057A30
    lwz r3, 0x1c(r1)
    bl fn_800532CC
    opword  0x48000008  // b .L_80057A34
L_80057A30:
    mr r3, r4
L_80057A34:
    lmw r23, 0x24(r1)
    lwz r0, 0x4c(r1)
    addi r1, r1, 0x48
    mtlr r0
    blr
}

ASM void fn_80057A48(void)
{
    nofralloc
    mflr r0
    lis r7, fn_800522B8@ha
    stw r0, 0x4(r1)
    addi r7, r7, fn_800522B8@l
    stwu r1, -0x20(r1)
    stw r31, 0x1c(r1)
    addi r31, r3, 0x0
    bl fn_80057828
    cmpwi r3, 0x0
    opword  0x40800008  // bge .L_80057A74
    opword  0x4800000C  // b .L_80057A7C
L_80057A74:
    mr r3, r31
    bl fn_80053480
L_80057A7C:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    addi r1, r1, 0x20
    mtlr r0
    blr
}

ASM void fn_80057A90(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x30(r1)
    stw r31, 0x2c(r1)
    addi r31, r6, 0x0
    stw r30, 0x28(r1)
    addi r30, r5, 0x0
    stw r29, 0x24(r1)
    addi r29, r4, 0x0
    addi r4, r1, 0x18
    stw r28, 0x20(r1)
    mr r28, r3
    lwz r3, 0x0(r3)
    bl fn_80053214
    cmpwi r3, 0x0
    opword  0x40800008  // bge .L_80057AD4
    opword  0x48000158  // b .L_80057C28
L_80057AD4:
    lhz r0, 0x10(r28)
    cmplwi r0, 0x5
    opword  0x41800028  // blt .L_80057B04
    lwz r3, 0x18(r1)
    lhz r5, 0x10(r3)
    cmplw r0, r5
    opword  0x40800018  // bge .L_80057B04
    lwz r4, 0xc(r3)
    lwz r0, 0x8(r28)
    mullw r4, r5, r4
    cmpw r4, r0
    opword  0x41810014  // bgt .L_80057B14
L_80057B04:
    lwz r3, 0x18(r1)
    li r4, -0x80
    bl fn_800532CC
    opword  0x48000118  // b .L_80057C28
L_80057B14:
    bl fn_80054DB0
    lwz r0, 0x4(r28)
    lwz r5, 0x18(r1)
    slwi r0, r0, 6
    add r4, r3, r0
    lwz r3, 0xc(r5)
    lhz r0, 0x38(r4)
    mullw r3, r0, r3
    cmpw r3, r30
    opword  0x40810010  // ble .L_80057B48
    add r0, r30, r29
    cmpw r3, r0
    opword  0x40800014  // bge .L_80057B58
L_80057B48:
    addi r3, r5, 0x0
    li r4, -0xb
    bl fn_800532CC
    opword  0x480000D4  // b .L_80057C28
L_80057B58:
    stw r28, 0xc0(r5)
    stw r29, 0xc(r28)
    lwz r0, 0x8(r28)
    cmpw r30, r0
    opword  0x40800040  // bge .L_80057BA8
    li r0, 0x0
    stw r0, 0x8(r28)
    lhz r0, 0x36(r4)
    sth r0, 0x10(r28)
    lhz r4, 0x10(r28)
    cmplwi r4, 0x5
    opword  0x41800014  // blt .L_80057B98
    lwz r3, 0x18(r1)
    lhz r0, 0x10(r3)
    cmplw r4, r0
    opword  0x41800014  // blt .L_80057BA8
L_80057B98:
    lwz r3, 0x18(r1)
    li r4, -0x6
    bl fn_800532CC
    opword  0x48000084  // b .L_80057C28
L_80057BA8:
    lwz r3, 0x18(r1)
    bl fn_80054A48
    opword  0x4800004C  // b .L_80057BFC
L_80057BB4:
    lwz r0, 0x8(r28)
    add r0, r0, r4
    stw r0, 0x8(r28)
    lhz r0, 0x10(r28)
    slwi r0, r0, 1
    lhzx r0, r3, r0
    sth r0, 0x10(r28)
    lhz r5, 0x10(r28)
    cmplwi r5, 0x5
    opword  0x41800014  // blt .L_80057BEC
    lwz r4, 0x18(r1)
    lhz r0, 0x10(r4)
    cmplw r5, r0
    opword  0x41800014  // blt .L_80057BFC
L_80057BEC:
    lwz r3, 0x18(r1)
    li r4, -0x6
    bl fn_800532CC
    opword  0x48000030  // b .L_80057C28
L_80057BFC:
    lwz r4, 0x18(r1)
    lwz r5, 0x8(r28)
    lwz r4, 0xc(r4)
    subi r0, r4, 0x1
    andc r0, r30, r0
    cmplw r5, r0
    opword  0x4180FFA0  // blt .L_80057BB4
    stw r30, 0x8(r28)
    li r3, 0x0
    lwz r0, 0x18(r1)
    stw r0, 0x0(r31)
L_80057C28:
    lwz r0, 0x34(r1)
    lwz r31, 0x2c(r1)
    lwz r30, 0x28(r1)
    lwz r29, 0x24(r1)
    lwz r28, 0x20(r1)
    addi r1, r1, 0x30
    mtlr r0
    blr
}

ASM void fn_80057C48(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x28(r1)
    stmw r27, 0x14(r1)
    addi r29, r3, 0x0
    lis r3, lbl_804B5BA0@ha
    mulli r5, r29, 0x110
    addi r0, r3, lbl_804B5BA0@l
    mr. r30, r4
    add r31, r0, r5
    opword  0x418000C8  // blt .L_80057D38
    lwz r28, 0xc0(r31)
    lwz r4, 0xc(r28)
    cmpwi r4, 0x0
    opword  0x4080000C  // bge .L_80057C8C
    li r30, -0xe
    opword  0x480000B0  // b .L_80057D38
L_80057C8C:
    lwz r5, 0xc(r31)
    lwz r6, 0x8(r28)
    subi r0, r5, 0x1
    nor r3, r0, r0
    add r0, r6, r5
    and r0, r3, r0
    subf r27, r6, r0
    subf r0, r27, r4
    stw r0, 0xc(r28)
    lwz r0, 0xc(r28)
    cmpwi r0, 0x0
    opword  0x40810080  // ble .L_80057D38
    mr r3, r31
    bl fn_80054A48
    lwz r0, 0x8(r28)
    add r0, r0, r27
    stw r0, 0x8(r28)
    lhz r0, 0x10(r28)
    slwi r0, r0, 1
    lhzx r0, r3, r0
    sth r0, 0x10(r28)
    lhz r3, 0x10(r28)
    cmplwi r3, 0x5
    opword  0x41800010  // blt .L_80057CF8
    lhz r0, 0x10(r31)
    cmplw r3, r0
    opword  0x4180000C  // blt .L_80057D00
L_80057CF8:
    li r30, -0x6
    opword  0x4800003C  // b .L_80057D38
L_80057D00:
    lwz r5, 0xc(r28)
    lwz r0, 0xc(r31)
    cmpw r5, r0
    opword  0x40800008  // bge .L_80057D14
    opword  0x48000008  // b .L_80057D18
L_80057D14:
    mr r5, r0
L_80057D18:
    mullw r4, r0, r3
    lwz r6, 0xb4(r31)
    lis r3, fn_80057C48@ha
    addi r7, r3, fn_80057C48@l
    addi r3, r29, 0x0
    bl fn_800548A4
    mr. r30, r3
    opword  0x40800030  // bge .L_80057D64
L_80057D38:
    lwz r27, 0xd0(r31)
    li r0, 0x0
    addi r3, r31, 0x0
    stw r0, 0xd0(r31)
    mr r4, r30
    bl fn_800532CC
    addi r12, r27, 0x0
    mtlr r12
    addi r3, r29, 0x0
    addi r4, r30, 0x0
    blrl
L_80057D64:
    lmw r27, 0x14(r1)
    lwz r0, 0x2c(r1)
    addi r1, r1, 0x28
    mtlr r0
    blr
}

ASM void fn_80057D78(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    clrlwi. r0, r6, 23
    stwu r1, -0x30(r1)
    stw r31, 0x2c(r1)
    addi r31, r5, 0x0
    stw r30, 0x28(r1)
    addi r30, r4, 0x0
    stw r29, 0x24(r1)
    addi r29, r3, 0x0
    stw r28, 0x20(r1)
    addi r28, r7, 0x0
    opword  0x4082000C  // bne .L_80057DB4
    clrlwi. r0, r31, 23
    opword  0x4182000C  // beq .L_80057DBC
L_80057DB4:
    li r3, -0x80
    opword  0x480000E4  // b .L_80057E9C
L_80057DBC:
    addi r3, r29, 0x0
    addi r4, r31, 0x0
    addi r5, r6, 0x0
    addi r6, r1, 0x1c
    bl fn_80057A90
    cmpwi r3, 0x0
    opword  0x40800008  // bge .L_80057DDC
    opword  0x480000C4  // b .L_80057E9C
L_80057DDC:
    lwz r3, 0x1c(r1)
    bl fn_80054DB0
    lwz r0, 0x4(r29)
    slwi r0, r0, 6
    add r4, r3, r0
    lwz r3, 0x1c(r1)
    bl fn_80057494
    mr. r4, r3
    opword  0x40800010  // bge .L_80057E0C
    lwz r3, 0x1c(r1)
    bl fn_800532CC
    opword  0x48000094  // b .L_80057E9C
L_80057E0C:
    addi r3, r30, 0x0
    addi r4, r31, 0x0
    bl DCInvalidateRange
    cmplwi r28, 0x0
    opword  0x4182000C  // beq .L_80057E28
    mr r0, r28
    opword  0x4800000C  // b .L_80057E30
L_80057E28:
    lis r3, fn_800522B4@ha
    addi r0, r3, fn_800522B4@l
L_80057E30:
    lwz r3, 0x1c(r1)
    stw r0, 0xd0(r3)
    lwz r3, 0x1c(r1)
    lwz r4, 0x8(r29)
    lwz r5, 0xc(r3)
    subi r0, r5, 0x1
    and r8, r4, r0
    subf r3, r8, r5
    cmpw r31, r3
    opword  0x40800008  // bge .L_80057E5C
    mr r3, r31
L_80057E5C:
    lhz r0, 0x10(r29)
    lis r4, fn_80057C48@ha
    addi r31, r3, 0x0
    lwz r3, 0x0(r29)
    mullw r0, r5, r0
    addi r7, r4, fn_80057C48@l
    addi r5, r31, 0x0
    addi r6, r30, 0x0
    add r4, r8, r0
    bl fn_800548A4
    mr. r29, r3
    opword  0x40800010  // bge .L_80057E98
    lwz r3, 0x1c(r1)
    mr r4, r29
    bl fn_800532CC
L_80057E98:
    mr r3, r29
L_80057E9C:
    lwz r0, 0x34(r1)
    lwz r31, 0x2c(r1)
    lwz r30, 0x28(r1)
    lwz r29, 0x24(r1)
    lwz r28, 0x20(r1)
    addi r1, r1, 0x30
    mtlr r0
    blr
}

ASM void fn_80057EBC(void)
{
    nofralloc
    mflr r0
    lis r7, fn_800522B8@ha
    stw r0, 0x4(r1)
    addi r7, r7, fn_800522B8@l
    stwu r1, -0x20(r1)
    stw r31, 0x1c(r1)
    addi r31, r3, 0x0
    bl fn_80057D78
    cmpwi r3, 0x0
    opword  0x40800008  // bge .L_80057EE8
    opword  0x4800000C  // b .L_80057EF0
L_80057EE8:
    lwz r3, 0x0(r31)
    bl fn_80053480
L_80057EF0:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    addi r1, r1, 0x20
    mtlr r0
    blr
}

ASM void fn_80057F04(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x20(r1)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    addi r30, r3, 0x0
    lis r3, lbl_804B5BA0@ha
    stw r29, 0x14(r1)
    mulli r5, r30, 0x110
    stw r28, 0x10(r1)
    addi r0, r3, lbl_804B5BA0@l
    mr. r28, r4
    add r31, r0, r5
    opword  0x418000F0  // blt .L_80058028
    lwz r29, 0xc0(r31)
    lwz r3, 0xc(r29)
    cmpwi r3, 0x0
    opword  0x4080000C  // bge .L_80057F54
    li r28, -0xe
    opword  0x480000D8  // b .L_80058028
L_80057F54:
    lwz r0, 0xc(r31)
    subf r0, r0, r3
    stw r0, 0xc(r29)
    lwz r0, 0xc(r29)
    cmpwi r0, 0x0
    opword  0x41810054  // bgt .L_80057FBC
    mr r3, r31
    bl fn_80054DB0
    lwz r5, 0x4(r29)
    lis r4, 0x8000
    lwz r0, 0xf8(r4)
    slwi r4, r5, 6
    add r28, r3, r4
    srwi r29, r0, 2
    bl OSGetTime
    addi r6, r29, 0x0
    li r5, 0x0
    bl __div2i
    stw r4, 0x28(r28)
    li r0, 0x0
    addi r3, r30, 0x0
    lwz r4, 0xd0(r31)
    stw r0, 0xd0(r31)
    bl fn_80054F50
    mr r28, r3
    opword  0x48000068  // b .L_80058020
L_80057FBC:
    mr r3, r31
    bl fn_80054A48
    lwz r4, 0x8(r29)
    lwz r0, 0xc(r31)
    add r0, r4, r0
    stw r0, 0x8(r29)
    lhz r0, 0x10(r29)
    slwi r0, r0, 1
    lhzx r0, r3, r0
    sth r0, 0x10(r29)
    lhz r4, 0x10(r29)
    cmplwi r4, 0x5
    opword  0x41800010  // blt .L_80057FFC
    lhz r0, 0x10(r31)
    cmplw r4, r0
    opword  0x4180000C  // blt .L_80058004
L_80057FFC:
    li r28, -0x6
    opword  0x48000028  // b .L_80058028
L_80058004:
    lwz r0, 0xc(r31)
    lis r3, fn_80058074@ha
    addi r5, r3, fn_80058074@l
    mullw r4, r0, r4
    addi r3, r30, 0x0
    bl fn_80053048
    mr r28, r3
L_80058020:
    cmpwi r28, 0x0
    opword  0x40800030  // bge .L_80058054
L_80058028:
    lwz r29, 0xd0(r31)
    li r0, 0x0
    addi r3, r31, 0x0
    stw r0, 0xd0(r31)
    mr r4, r28
    bl fn_800532CC
    addi r12, r29, 0x0
    mtlr r12
    addi r3, r30, 0x0
    addi r4, r28, 0x0
    blrl
L_80058054:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    lwz r28, 0x10(r1)
    addi r1, r1, 0x20
    mtlr r0
    blr
}

ASM void fn_80058074(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x20(r1)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    stw r29, 0x14(r1)
    mr. r29, r4
    stw r28, 0x10(r1)
    addi r28, r3, 0x0
    mulli r5, r28, 0x110
    lis r3, lbl_804B5BA0@ha
    addi r0, r3, lbl_804B5BA0@l
    add r31, r0, r5
    opword  0x41800030  // blt .L_800580D8
    lwz r4, 0xc0(r31)
    lis r3, fn_80057F04@ha
    addi r7, r3, fn_80057F04@l
    lwz r5, 0xc(r31)
    lhz r0, 0x10(r4)
    lwz r6, 0xb4(r31)
    addi r3, r28, 0x0
    mullw r4, r5, r0
    bl fn_800549E4
    mr. r29, r3
    opword  0x40800030  // bge .L_80058104
L_800580D8:
    lwz r30, 0xd0(r31)
    li r0, 0x0
    addi r3, r31, 0x0
    stw r0, 0xd0(r31)
    mr r4, r29
    bl fn_800532CC
    addi r12, r30, 0x0
    mtlr r12
    addi r3, r28, 0x0
    addi r4, r29, 0x0
    blrl
L_80058104:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    lwz r28, 0x10(r1)
    addi r1, r1, 0x20
    mtlr r0
    blr
}

ASM void fn_80058124(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x38(r1)
    stmw r27, 0x24(r1)
    addi r28, r6, 0x0
    addi r27, r5, 0x0
    addi r31, r4, 0x0
    addi r30, r3, 0x0
    addi r29, r7, 0x0
    addi r4, r27, 0x0
    addi r5, r28, 0x0
    addi r6, r1, 0x1c
    bl fn_80057A90
    cmpwi r3, 0x0
    opword  0x40800008  // bge .L_80058164
    opword  0x480000C4  // b .L_80058224
L_80058164:
    lwz r3, 0x1c(r1)
    lwz r4, 0xc(r3)
    subi r4, r4, 0x1
    and. r0, r28, r4
    opword  0x4082000C  // bne .L_80058180
    and. r0, r27, r4
    opword  0x41820010  // beq .L_8005818C
L_80058180:
    li r4, -0x80
    bl fn_800532CC
    opword  0x4800009C  // b .L_80058224
L_8005818C:
    bl fn_80054DB0
    lwz r0, 0x4(r30)
    slwi r0, r0, 6
    add r4, r3, r0
    lwz r3, 0x1c(r1)
    bl fn_80057360
    mr. r4, r3
    opword  0x40800010  // bge .L_800581B8
    lwz r3, 0x1c(r1)
    bl fn_800532CC
    opword  0x48000070  // b .L_80058224
L_800581B8:
    addi r3, r31, 0x0
    addi r4, r27, 0x0
    bl fn_80040F90
    cmplwi r29, 0x0
    opword  0x4182000C  // beq .L_800581D4
    mr r0, r29
    opword  0x4800000C  // b .L_800581DC
L_800581D4:
    lis r3, fn_800522B4@ha
    addi r0, r3, fn_800522B4@l
L_800581DC:
    lwz r4, 0x1c(r1)
    lis r3, fn_80058074@ha
    addi r5, r3, fn_80058074@l
    stw r0, 0xd0(r4)
    lwz r3, 0x1c(r1)
    stw r31, 0xb4(r3)
    lwz r3, 0x1c(r1)
    lhz r0, 0x10(r30)
    lwz r4, 0xc(r3)
    lwz r3, 0x0(r30)
    mullw r4, r4, r0
    bl fn_80053048
    mr. r30, r3
    opword  0x40800010  // bge .L_80058220
    lwz r3, 0x1c(r1)
    mr r4, r30
    bl fn_800532CC
L_80058220:
    mr r3, r30
L_80058224:
    lmw r27, 0x24(r1)
    lwz r0, 0x3c(r1)
    addi r1, r1, 0x38
    mtlr r0
    blr
}

ASM void fn_80058238(void)
{
    nofralloc
    mflr r0
    lis r7, fn_800522B8@ha
    stw r0, 0x4(r1)
    addi r7, r7, fn_800522B8@l
    stwu r1, -0x20(r1)
    stw r31, 0x1c(r1)
    addi r31, r3, 0x0
    bl fn_80058124
    cmpwi r3, 0x0
    opword  0x40800008  // bge .L_80058264
    opword  0x4800000C  // b .L_8005826C
L_80058264:
    lwz r3, 0x0(r31)
    bl fn_80053480
L_8005826C:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    addi r1, r1, 0x20
    mtlr r0
    blr
}

ASM void fn_80058280(void)
{
    nofralloc
    lwz r8, 0x2c(r3)
    addis r0, r8, 0x1
    cmplwi r0, 0xffff
    opword  0x40820018  // bne .L_800582A4
    li r0, 0x0
    stb r0, 0x2e(r4)
    li r8, 0x0
    sth r0, 0x34(r4)
    sth r0, 0x36(r4)
L_800582A4:
    lbz r0, 0x7(r3)
    li r9, 0x0
    clrlwi r0, r0, 30
    cmpwi r0, 0x2
    opword  0x41820028  // beq .L_800582DC
    opword  0x40800038  // bge .L_800582F0
    cmpwi r0, 0x1
    opword  0x40800008  // bge .L_800582C8
    opword  0x4800002C  // b .L_800582F0
L_800582C8:
    stw r8, 0x3c(r4)
    addi r0, r8, 0xc00
    addi r8, r8, 0xe00
    stw r0, 0x40(r4)
    opword  0x48000024  // b .L_800582FC
L_800582DC:
    stw r8, 0x3c(r4)
    li r0, -0x1
    addi r8, r8, 0x1800
    stw r0, 0x40(r4)
    opword  0x48000010  // b .L_800582FC
L_800582F0:
    li r0, -0x1
    stw r0, 0x3c(r4)
    stw r0, 0x40(r4)
L_800582FC:
    li r0, 0x2
    mtctr r0
    addi r7, r4, 0x0
    li r10, 0x0
    li r6, 0x0
    li r0, -0x1
L_80058314:
    lhz r5, 0x30(r3)
    sraw r5, r5, r6
    clrlwi r5, r5, 30
    cmpwi r5, 0x2
    opword  0x41820024  // beq .L_80058348
    opword  0x4080002C  // bge .L_80058354
    cmpwi r5, 0x1
    opword  0x40800008  // bge .L_80058338
    opword  0x48000020  // b .L_80058354
L_80058338:
    stw r8, 0x44(r7)
    li r9, 0x1
    addi r8, r8, 0x400
    opword  0x48000014  // b .L_80058358
L_80058348:
    stw r8, 0x44(r7)
    addi r8, r8, 0x800
    opword  0x48000008  // b .L_80058358
L_80058354:
    stw r0, 0x44(r7)
L_80058358:
    lhz r5, 0x30(r3)
    addi r6, r6, 0x2
    addi r7, r7, 0x4
    sraw r5, r5, r6
    clrlwi r5, r5, 30
    cmpwi r5, 0x2
    opword  0x41820024  // beq .L_80058394
    opword  0x4080002C  // bge .L_800583A0
    cmpwi r5, 0x1
    opword  0x40800008  // bge .L_80058384
    opword  0x48000020  // b .L_800583A0
L_80058384:
    stw r8, 0x44(r7)
    li r9, 0x1
    addi r8, r8, 0x400
    opword  0x48000014  // b .L_800583A4
L_80058394:
    stw r8, 0x44(r7)
    addi r8, r8, 0x800
    opword  0x48000008  // b .L_800583A4
L_800583A0:
    stw r0, 0x44(r7)
L_800583A4:
    lhz r5, 0x30(r3)
    addi r6, r6, 0x2
    addi r10, r10, 0x1
    sraw r5, r5, r6
    clrlwi r5, r5, 30
    cmpwi r5, 0x2
    addi r7, r7, 0x4
    opword  0x41820024  // beq .L_800583E4
    opword  0x4080002C  // bge .L_800583F0
    cmpwi r5, 0x1
    opword  0x40800008  // bge .L_800583D4
    opword  0x48000020  // b .L_800583F0
L_800583D4:
    stw r8, 0x44(r7)
    li r9, 0x1
    addi r8, r8, 0x400
    opword  0x48000014  // b .L_800583F4
L_800583E4:
    stw r8, 0x44(r7)
    addi r8, r8, 0x800
    opword  0x48000008  // b .L_800583F4
L_800583F0:
    stw r0, 0x44(r7)
L_800583F4:
    lhz r5, 0x30(r3)
    addi r6, r6, 0x2
    addi r10, r10, 0x1
    sraw r5, r5, r6
    clrlwi r5, r5, 30
    cmpwi r5, 0x2
    addi r7, r7, 0x4
    opword  0x41820024  // beq .L_80058434
    opword  0x4080002C  // bge .L_80058440
    cmpwi r5, 0x1
    opword  0x40800008  // bge .L_80058424
    opword  0x48000020  // b .L_80058440
L_80058424:
    stw r8, 0x44(r7)
    li r9, 0x1
    addi r8, r8, 0x400
    opword  0x48000014  // b .L_80058444
L_80058434:
    stw r8, 0x44(r7)
    addi r8, r8, 0x800
    opword  0x48000008  // b .L_80058444
L_80058440:
    stw r0, 0x44(r7)
L_80058444:
    addi r6, r6, 0x2
    addi r7, r7, 0x4
    addi r10, r10, 0x1
    opword  0x4200FEC4  // bdnz .L_80058314
    cmpwi r9, 0x0
    opword  0x41820010  // beq .L_80058468
    stw r8, 0x64(r4)
    addi r8, r8, 0x200
    opword  0x4800000C  // b .L_80058470
L_80058468:
    li r0, -0x1
    stw r0, 0x64(r4)
L_80058470:
    stw r8, 0x68(r4)
    blr
}

ASM void fn_80058478(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x28(r1)
    stw r31, 0x24(r1)
    addi r31, r5, 0x0
    stw r30, 0x20(r1)
    stw r29, 0x1c(r1)
    mr. r29, r4
    opword  0x4180000C  // blt .L_800584A4
    cmpwi r29, 0x7f
    opword  0x4180000C  // blt .L_800584AC
L_800584A4:
    li r3, -0x80
    opword  0x480000C8  // b .L_80058570
L_800584AC:
    addi r4, r1, 0x14
    bl fn_80053214
    cmpwi r3, 0x0
    opword  0x40800008  // bge .L_800584C0
    opword  0x480000B4  // b .L_80058570
L_800584C0:
    lwz r3, 0x14(r1)
    bl fn_80054DB0
    slwi r0, r29, 6
    add r29, r3, r0
    lwz r3, 0x14(r1)
    mr r4, r29
    bl fn_80057494
    mr. r30, r3
    opword  0x41800084  // blt .L_80058564
    addi r4, r29, 0x0
    addi r3, r31, 0x28
    li r5, 0x4
    bl memcpy
    addi r3, r31, 0x2c
    addi r4, r29, 0x4
    li r5, 0x2
    bl memcpy
    lwz r5, 0x14(r1)
    mr r3, r31
    lhz r6, 0x38(r29)
    addi r4, r29, 0x8
    lwz r0, 0xc(r5)
    li r5, 0x20
    mullw r0, r6, r0
    stw r0, 0x20(r31)
    bl memcpy
    lwz r0, 0x28(r29)
    addi r3, r29, 0x0
    addi r4, r31, 0x0
    stw r0, 0x24(r31)
    lbz r0, 0x7(r29)
    stb r0, 0x2e(r31)
    lwz r0, 0x2c(r29)
    stw r0, 0x30(r31)
    lhz r0, 0x30(r29)
    sth r0, 0x34(r31)
    lhz r0, 0x32(r29)
    sth r0, 0x36(r31)
    lwz r0, 0x3c(r29)
    stw r0, 0x38(r31)
    bl fn_80058280
L_80058564:
    lwz r3, 0x14(r1)
    mr r4, r30
    bl fn_800532CC
L_80058570:
    lwz r0, 0x2c(r1)
    lwz r31, 0x24(r1)
    lwz r30, 0x20(r1)
    lwz r29, 0x1c(r1)
    addi r1, r1, 0x28
    mtlr r0
    blr
}

ASM void fn_8005858C(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x30(r1)
    stw r31, 0x2c(r1)
    mr. r31, r4
    stw r30, 0x28(r1)
    addi r30, r6, 0x0
    stw r29, 0x24(r1)
    addi r29, r5, 0x0
    stw r28, 0x20(r1)
    addi r28, r3, 0x0
    opword  0x41800040  // blt .L_800585F8
    cmpwi r31, 0x7f
    opword  0x40800038  // bge .L_800585F8
    lwz r3, 0x30(r29)
    addis r0, r3, 0x1
    cmplwi r0, 0xffff
    opword  0x4182000C  // beq .L_800585DC
    cmplwi r3, 0x200
    opword  0x40800020  // bge .L_800585F8
L_800585DC:
    lwz r3, 0x38(r29)
    addis r0, r3, 0x1
    cmplwi r0, 0xffff
    opword  0x41820018  // beq .L_80058600
    clrlwi r0, r3, 19
    cmplwi r0, 0x1fc0
    opword  0x4081000C  // ble .L_80058600
L_800585F8:
    li r3, -0x80
    opword  0x480000E4  // b .L_800586E0
L_80058600:
    addi r3, r28, 0x0
    addi r4, r1, 0x18
    bl fn_80053214
    cmpwi r3, 0x0
    opword  0x40800008  // bge .L_80058618
    opword  0x480000CC  // b .L_800586E0
L_80058618:
    lwz r3, 0x18(r1)
    bl fn_80054DB0
    slwi r0, r31, 6
    add r31, r3, r0
    lwz r3, 0x18(r1)
    mr r4, r31
    bl fn_80057360
    mr. r4, r3
    opword  0x40800010  // bge .L_80058648
    lwz r3, 0x18(r1)
    bl fn_800532CC
    opword  0x4800009C  // b .L_800586E0
L_80058648:
    lbz r0, 0x2e(r29)
    addi r3, r31, 0x0
    addi r4, r29, 0x0
    stb r0, 0x7(r31)
    lwz r0, 0x30(r29)
    stw r0, 0x2c(r31)
    lhz r0, 0x34(r29)
    sth r0, 0x30(r31)
    lhz r0, 0x36(r29)
    sth r0, 0x32(r31)
    lwz r0, 0x38(r29)
    stw r0, 0x3c(r31)
    bl fn_80058280
    lwz r3, 0x2c(r31)
    addis r0, r3, 0x1
    cmplwi r0, 0xffff
    opword  0x40820014  // bne .L_8005869C
    lhz r0, 0x32(r31)
    clrrwi r0, r0, 2
    ori r0, r0, 0x1
    sth r0, 0x32(r31)
L_8005869C:
    lis r3, 0x8000
    lwz r0, 0xf8(r3)
    srwi r29, r0, 2
    bl OSGetTime
    addi r6, r29, 0x0
    li r5, 0x0
    bl __div2i
    stw r4, 0x28(r31)
    addi r3, r28, 0x0
    addi r4, r30, 0x0
    bl fn_80054F50
    mr. r28, r3
    opword  0x40800010  // bge .L_800586DC
    lwz r3, 0x18(r1)
    mr r4, r28
    bl fn_800532CC
L_800586DC:
    mr r3, r28
L_800586E0:
    lwz r0, 0x34(r1)
    lwz r31, 0x2c(r1)
    lwz r30, 0x28(r1)
    lwz r29, 0x24(r1)
    lwz r28, 0x20(r1)
    addi r1, r1, 0x30
    mtlr r0
    blr
}

ASM void fn_80058700(void)
{
    nofralloc
    mflr r0
    lis r6, fn_800522B8@ha
    stw r0, 0x4(r1)
    addi r6, r6, fn_800522B8@l
    stwu r1, -0x20(r1)
    stw r31, 0x1c(r1)
    addi r31, r3, 0x0
    bl fn_8005858C
    cmpwi r3, 0x0
    opword  0x40800008  // bge .L_8005872C
    opword  0x4800000C  // b .L_80058734
L_8005872C:
    mr r3, r31
    bl fn_80053480
L_80058734:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    addi r1, r1, 0x20
    mtlr r0
    blr
}

ASM void fn_80058748(void)
{
    nofralloc
    mflr r0
    cmpwi r3, 0x0
    stw r0, 0x4(r1)
    stwu r1, -0x20(r1)
    stw r31, 0x1c(r1)
    addi r31, r4, 0x0
    opword  0x4180000C  // blt .L_8005876C
    cmpwi r3, 0x2
    opword  0x4180000C  // blt .L_80058774
L_8005876C:
    li r3, -0x80
    opword  0x48000088  // b .L_800587F8
L_80058774:
    addi r4, r1, 0x10
    bl fn_80053214
    cmpwi r3, 0x0
    opword  0x40800008  // bge .L_80058788
    opword  0x48000074  // b .L_800587F8
L_80058788:
    lwz r3, 0x10(r1)
    li r7, 0x0
    li r6, 0x0
    lwz r5, 0x80(r3)
    li r4, 0x0
    lwz r3, 0x4(r5)
    lwz r0, 0x0(r5)
    xor r7, r7, r3
    addi r3, r5, 0x8
    xor r6, r6, r0
    lwz r0, 0x8(r5)
    lwz r3, 0x4(r3)
    xor r6, r6, r0
    xor r7, r7, r3
    addi r3, r5, 0x10
    lwz r0, 0x10(r5)
    lwz r3, 0x4(r3)
    xor r6, r6, r0
    xor r7, r7, r3
    addi r3, r5, 0x18
    lwz r0, 0x18(r5)
    lwz r3, 0x4(r3)
    xor r6, r6, r0
    xor r7, r7, r3
    stw r7, 0x4(r31)
    stw r6, 0x0(r31)
    lwz r3, 0x10(r1)
    bl fn_800532CC
L_800587F8:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    addi r1, r1, 0x20
    mtlr r0
    blr
}

ASM void fn_8005880C(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x20(r1)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    stw r29, 0x14(r1)
    mr r29, r3
    mr r30, r4
    mr r3, r29
    bl fn_8005DAD8
    mr r31, r3
    mr r3, r29
    bl fn_8005DAE0
    srawi r4, r30, 3
    addze r4, r4
    slwi r4, r4, 3
    cmpwi r31, 0x7
    subfc r4, r4, r30
    opword  0x41820068  // beq .L_800588BC
    opword  0x40800010  // bge .L_80058868
    cmpwi r31, 0x6
    opword  0x40800014  // bge .L_80058874
    opword  0x48000058  // b .L_800588BC
L_80058868:
    cmpwi r31, 0xb
    opword  0x40800050  // bge .L_800588BC
    opword  0x48000038  // b .L_800588A8
L_80058874:
    clrlwi r0, r3, 24
    cmplwi r0, 0x0
    opword  0x41820018  // beq .L_80058894
    slwi r3, r4, 4
    opword  0x800283A8  // lwz r0, __GXData@sda21(r0)
    addi r3, r3, 0x308
    add r3, r0, r3
    opword  0x4800005C  // b .L_800588EC
L_80058894:
    slwi r3, r4, 4
    opword  0x800283A8  // lwz r0, __GXData@sda21(r0)
    addi r3, r3, 0x288
    add r3, r0, r3
    opword  0x48000048  // b .L_800588EC
L_800588A8:
    slwi r3, r4, 4
    opword  0x800283A8  // lwz r0, __GXData@sda21(r0)
    addi r3, r3, 0x208
    add r3, r0, r3
    opword  0x48000034  // b .L_800588EC
L_800588BC:
    clrlwi r0, r3, 24
    cmplwi r0, 0x0
    opword  0x41820018  // beq .L_800588DC
    slwi r3, r4, 4
    opword  0x800283A8  // lwz r0, __GXData@sda21(r0)
    addi r3, r3, 0x288
    add r3, r0, r3
    opword  0x48000014  // b .L_800588EC
L_800588DC:
    slwi r3, r4, 4
    opword  0x800283A8  // lwz r0, __GXData@sda21(r0)
    addi r3, r3, 0x208
    add r3, r0, r3
L_800588EC:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    addi r1, r1, 0x20
    mtlr r0
    blr
}

ASM void fn_80058908(void)
{
    nofralloc
    cmplwi r3, 0x14
    opword  0x4180000C  // blt .L_80058918
    li r3, 0x0
    opword  0x48000014  // b .L_80058928
L_80058918:
    slwi r3, r3, 4
    opword  0x800283A8  // lwz r0, __GXData@sda21(r0)
    addi r3, r3, 0x388
    add r3, r0, r3
L_80058928:
    blr
}

ASM void fn_8005892C(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x20(r1)
    stw r31, 0x1c(r1)
    cmpwi r3, 0x0
    opword  0x408200FC  // bne .L_80058A3C
    opword  0x800D8B00  // lwz r0, lbl_8053A6C0@sda21(r0)
    cmplwi r0, 0x0
    opword  0x40820058  // bne .L_800589A4
    opword  0x806D8AEC  // lwz r3, __memReg@sda21(r0)
    addi r6, r3, 0x4e
    lhz r4, 0x0(r6)
    addi r5, r3, 0x50
    opword  0x48000004  // b .L_80058964
L_80058964:
    opword  0x48000004  // b .L_80058968
L_80058968:
    mr r0, r4
    lhz r4, 0x0(r6)
    lhz r3, 0x0(r5)
    cmplw r4, r0
    opword  0x4082FFF0  // bne .L_80058968
    slwi r0, r4, 16
    or r0, r0, r3
    opword  0x900D8AF0  // stw r0, lbl_8053A6B0@sda21(r0)
    bl OSGetTime
    opword  0x908D8AFC  // stw r4, lbl_8053A6BC@sda21(r0)
    li r0, 0x1
    opword  0x906D8AF8  // stw r3, lbl_8053A6B8@sda21(r0)
    li r3, 0x0
    opword  0x900D8B00  // stw r0, lbl_8053A6C0@sda21(r0)
    opword  0x48000108  // b .L_80058AA8
L_800589A4:
    bl OSGetTime
    opword  0x80AD8AEC  // lwz r5, __memReg@sda21(r0)
    addi r6, r5, 0x4e
    lhz r7, 0x0(r6)
    addi r5, r5, 0x50
    opword  0x48000004  // b .L_800589BC
L_800589BC:
    opword  0x48000004  // b .L_800589C0
L_800589C0:
    mr r0, r7
    lhz r7, 0x0(r6)
    lhz r10, 0x0(r5)
    cmplw r7, r0
    opword  0x4082FFF0  // bne .L_800589C0
    opword  0x80CD8AFC  // lwz r6, lbl_8053A6BC@sda21(r0)
    li r0, 0x0
    opword  0x80AD8AF8  // lwz r5, lbl_8053A6B8@sda21(r0)
    slwi r9, r7, 16
    subfc r8, r6, r4
    subfe r5, r5, r3
    li r7, 0xa
    xoris r6, r5, 0x8000
    xoris r5, r0, 0x8000
    subfc r0, r7, r8
    subfe r5, r5, r6
    subfe r5, r6, r6
    neg r5, r5
    cmpwi r5, 0x0
    or r5, r9, r10
    opword  0x4182000C  // beq .L_80058A1C
    li r3, 0x0
    opword  0x48000090  // b .L_80058AA8
L_80058A1C:
    opword  0x800D8AF0  // lwz r0, lbl_8053A6B0@sda21(r0)
    cmplw r5, r0
    opword  0x41820080  // beq .L_80058AA4
    opword  0x908D8AFC  // stw r4, lbl_8053A6BC@sda21(r0)
    opword  0x906D8AF8  // stw r3, lbl_8053A6B8@sda21(r0)
    li r3, 0x0
    opword  0x90AD8AF0  // stw r5, lbl_8053A6B0@sda21(r0)
    opword  0x48000070  // b .L_80058AA8
L_80058A3C:
    li r3, 0x0
    bl fn_8005A194
    li r3, 0x0
    bl fn_8005BFC8
    li r3, 0x0
    bl fn_8005C094
    li r31, 0x0
    lis r3, 0xcc01
    stw r31, -0x8000(r3)
    stw r31, -0x8000(r3)
    stw r31, -0x8000(r3)
    stw r31, -0x8000(r3)
    stw r31, -0x8000(r3)
    stw r31, -0x8000(r3)
    stw r31, -0x8000(r3)
    stw r31, -0x8000(r3)
    bl PPCSync
    opword  0x806D8AE4  // lwz r3, __cpReg@sda21(r0)
    li r4, 0x3
    li r0, 0x1
    sth r31, 0x2(r3)
    opword  0x806D8AE4  // lwz r3, __cpReg@sda21(r0)
    sth r4, 0x4(r3)
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    stb r0, 0x5aa(r3)
    bl fn_8005BA68
L_80058AA4:
    li r3, 0x1
L_80058AA8:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    addi r1, r1, 0x20
    mtlr r0
    blr
}

ASM void GXInit(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x40(r1)
    stmw r25, 0x24(r1)
    mr r26, r3
    mr r25, r4
    lis r4, FifoObj@ha
    opword  0x806D8110  // lwz r3, __GXVersion@sda21(r0)
    addi r30, r4, FifoObj@l
    bl OSRegisterVersion
    opword  0x80A283A8  // lwz r5, __GXData@sda21(r0)
    li r0, 0x0
    li r28, 0x1
    stb r0, 0x5a8(r5)
    li r3, 0x1
    li r4, 0x0
    stb r28, 0x5a9(r5)
    stb r28, 0x5aa(r5)
    stw r0, 0x594(r5)
    stw r0, 0x598(r5)
    bl GXSetMisc
    lis r4, 0xcc00
    addi r5, r4, 0x3000
    opword  0x908D8AE4  // stw r4, __cpReg@sda21(r0)
    addi r3, r4, 0x1000
    addi r0, r4, 0x4000
    opword  0x90AD8AE0  // stw r5, __piReg@sda21(r0)
    opword  0x906D8AE8  // stw r3, __peReg@sda21(r0)
    opword  0x900D8AEC  // stw r0, __memReg@sda21(r0)
    bl __GXFifoInit
    mr r3, r30
    mr r4, r26
    mr r5, r25
    bl GXInitFifoBase
    mr r3, r30
    bl GXSetCPUFifo
    mr r3, r30
    bl GXSetGPFifo
    opword  0x800D8B04  // lwz r0, resetFuncRegistered$70_8053A6C4@sda21(r0)
    cmplwi r0, 0x0
    opword  0x40820014  // bne .L_80058B70
    lis r3, GXResetFuncInfo@ha
    addi r3, r3, GXResetFuncInfo@l
    bl OSRegisterResetFunction
    opword  0x938D8B04  // stw r28, resetFuncRegistered$70_8053A6C4@sda21(r0)
L_80058B70:
    bl __GXPEInit
    bl PPCMfhid2
    lis r4, 0xc01
    mr r28, r3
    addi r3, r4, -0x8000
    bl PPCMtwpar
    oris r3, r28, 0x4000
    bl PPCMthid2
    opword  0x80C283A8  // lwz r6, __GXData@sda21(r0)
    li r29, 0x0
    li r3, 0x0
    stw r29, 0x204(r6)
    slwi r7, r3, 1
    li r5, 0xff
    lwz r0, 0x204(r6)
    rlwimi r0, r29, 24, 0, 7
    li r4, 0xf
    stw r0, 0x204(r6)
    li r0, 0x22
    addi r31, r7, 0xc0
    stw r5, 0x124(r6)
    addi r27, r7, 0xc1
    lwz r5, 0x124(r6)
    rlwimi r5, r4, 24, 0, 7
    stw r5, 0x124(r6)
    stw r29, 0x7c(r6)
    lwz r4, 0x7c(r6)
    rlwimi r4, r0, 24, 0, 7
    stw r4, 0x7c(r6)
    opword  0x48000004  // b .L_80058BE8
L_80058BE8:
    li r0, 0x8
    mtctr r0
    opword  0x48000004  // b .L_80058BF4
L_80058BF4:
    opword  0x48000004  // b .L_80058BF8
L_80058BF8:
    opword  0x818283A8  // lwz r12, __GXData@sda21(r0)
    srwi r26, r3, 1
    addi r11, r29, 0x130
    li r28, 0x0
    stwx r28, r12, r11
    addi r10, r29, 0x170
    slwi r25, r26, 2
    stwx r28, r12, r10
    addi r9, r25, 0x100
    addi r7, r29, 0x554
    stwx r28, r12, r9
    li r8, 0xff
    addi r6, r25, 0x1b0
    stwx r8, r12, r7
    addi r29, r29, 0x4
    addi r4, r26, 0xf6
    lwzx r5, r12, r11
    rlwimi r5, r31, 24, 0, 7
    addi r0, r26, 0x28
    stwx r5, r12, r11
    addi r3, r3, 0x1
    srwi r26, r3, 1
    lwzx r5, r12, r10
    rlwimi r5, r27, 24, 0, 7
    addi r11, r29, 0x130
    stwx r5, r12, r10
    addi r10, r29, 0x170
    addi r7, r29, 0x554
    lwzx r5, r12, r6
    rlwimi r5, r4, 24, 0, 7
    slwi r25, r26, 2
    stwx r5, r12, r6
    addi r31, r31, 0x2
    addi r27, r27, 0x2
    lwzx r4, r12, r9
    rlwimi r4, r0, 24, 0, 7
    addi r6, r25, 0x1b0
    stwx r4, r12, r9
    addi r9, r25, 0x100
    addi r4, r26, 0xf6
    stwx r28, r12, r11
    addi r0, r26, 0x28
    addi r29, r29, 0x4
    stwx r28, r12, r10
    addi r3, r3, 0x1
    stwx r28, r12, r9
    stwx r8, r12, r7
    lwzx r5, r12, r11
    rlwimi r5, r31, 24, 0, 7
    addi r31, r31, 0x2
    stwx r5, r12, r11
    lwzx r5, r12, r10
    rlwimi r5, r27, 24, 0, 7
    addi r27, r27, 0x2
    stwx r5, r12, r10
    lwzx r5, r12, r6
    rlwimi r5, r4, 24, 0, 7
    stwx r5, r12, r6
    lwzx r4, r12, r9
    rlwimi r4, r0, 24, 0, 7
    stwx r4, r12, r9
    opword  0x4200FF0C  // bdnz .L_80058BF8
    stw r28, 0x120(r12)
    slwi r4, r28, 1
    li r0, 0x27
    lwz r3, 0x120(r12)
    rlwimi r3, r0, 24, 0, 7
    mr r5, r28
    stw r3, 0x120(r12)
    addi r6, r4, 0x30
    addi r7, r4, 0x31
    opword  0x48000004  // b .L_80058D18
L_80058D18:
    li r0, 0x2
    mtctr r0
    opword  0x48000004  // b .L_80058D24
L_80058D24:
    opword  0x48000004  // b .L_80058D28
L_80058D28:
    opword  0x810283A8  // lwz r8, __GXData@sda21(r0)
    addi r4, r5, 0xb8
    addi r3, r5, 0xd8
    stwx r28, r8, r4
    addi r5, r5, 0x4
    stwx r28, r8, r3
    lwzx r0, r8, r4
    rlwimi r0, r6, 24, 0, 7
    addi r6, r6, 0x2
    stwx r0, r8, r4
    addi r4, r5, 0xb8
    lwzx r0, r8, r3
    rlwimi r0, r7, 24, 0, 7
    addi r7, r7, 0x2
    stwx r0, r8, r3
    addi r3, r5, 0xd8
    addi r5, r5, 0x4
    stwx r28, r8, r4
    stwx r28, r8, r3
    lwzx r0, r8, r4
    rlwimi r0, r6, 24, 0, 7
    addi r6, r6, 0x2
    stwx r0, r8, r4
    addi r4, r5, 0xb8
    lwzx r0, r8, r3
    rlwimi r0, r7, 24, 0, 7
    addi r7, r7, 0x2
    stwx r0, r8, r3
    addi r3, r5, 0xd8
    addi r5, r5, 0x4
    stwx r28, r8, r4
    stwx r28, r8, r3
    lwzx r0, r8, r4
    rlwimi r0, r6, 24, 0, 7
    addi r6, r6, 0x2
    stwx r0, r8, r4
    addi r4, r5, 0xb8
    lwzx r0, r8, r3
    rlwimi r0, r7, 24, 0, 7
    addi r7, r7, 0x2
    stwx r0, r8, r3
    addi r3, r5, 0xd8
    addi r5, r5, 0x4
    stwx r28, r8, r4
    stwx r28, r8, r3
    lwzx r0, r8, r4
    rlwimi r0, r6, 24, 0, 7
    addi r6, r6, 0x2
    stwx r0, r8, r4
    lwzx r0, r8, r3
    rlwimi r0, r7, 24, 0, 7
    addi r7, r7, 0x2
    stwx r0, r8, r3
    opword  0x4200FF2C  // bdnz .L_80058D28
    lwz r3, 0xf8(r8)
    li r0, 0x20
    rlwimi r3, r0, 24, 0, 7
    stw r3, 0xf8(r8)
    lis r3, 0x1062
    li r0, 0x21
    lwz r4, 0xfc(r8)
    rlwimi r4, r0, 24, 0, 7
    li r0, 0x41
    stw r4, 0xfc(r8)
    li r6, 0x42
    li r5, 0x40
    lwz r4, 0x1d0(r8)
    rlwimi r4, r0, 24, 0, 7
    li r0, 0x43
    stw r4, 0x1d0(r8)
    li r29, 0x0
    lis r4, 0x8000
    lwz r7, 0x1d4(r8)
    rlwimi r7, r6, 24, 0, 7
    addi r3, r3, 0x4dd3
    stw r7, 0x1d4(r8)
    lwz r6, 0x1d8(r8)
    rlwimi r6, r5, 24, 0, 7
    stw r6, 0x1d8(r8)
    lwz r5, 0x1dc(r8)
    rlwimi r5, r0, 24, 0, 7
    stw r5, 0x1dc(r8)
    lwz r0, 0x1fc(r8)
    rlwimi r0, r29, 7, 23, 24
    stw r0, 0x1fc(r8)
    opword  0xC00283AC  // lfs f0, "@289_8053B34C"@sda21(r0)
    stfs fp0, 0x510(r8)
    opword  0xC00283B0  // lfs f0, "@290_8053B350"@sda21(r0)
    stfs fp0, 0x50c(r8)
    stw r29, 0x5ac(r8)
    stb r29, 0x5ab(r8)
    lwz r0, 0xf8(r4)
    mulhwu r0, r3, r0
    srwi r25, r0, 5
    bl __GXFlushTextureState
    srwi r0, r25, 11
    oris r0, r0, 0x6900
    li r28, 0x61
    lis r31, 0xcc01
    stb r28, -0x8000(r31)
    ori r0, r0, 0x400
    stw r0, -0x8000(r31)
    bl __GXFlushTextureState
    lis r3, 0x3e10
    stb r28, -0x8000(r31)
    subi r0, r3, 0x7c1f
    mulhwu r0, r0, r25
    srwi r0, r0, 10
    oris r0, r0, 0x4600
    ori r0, r0, 0x200
    stw r0, -0x8000(r31)
    slwi r9, r29, 2
    opword  0x48000004  // b .L_80058EEC
L_80058EEC:
    li r0, 0x2
    mtctr r0
    li r6, 0x1
    li r4, 0x8
    opword  0x48000004  // b .L_80058F00
L_80058F00:
    opword  0x48000004  // b .L_80058F04
L_80058F04:
    opword  0x810283A8  // lwz r8, __GXData@sda21(r0)
    addi r7, r9, 0x1c
    addi r5, r9, 0x3c
    lwzx r0, r8, r7
    rlwimi r0, r6, 30, 1, 1
    ori r3, r29, 0x80
    stwx r0, r8, r7
    addi r9, r9, 0x4
    addi r7, r9, 0x1c
    lwzx r0, r8, r5
    rlwimi r0, r6, 31, 0, 0
    addi r29, r29, 0x1
    stwx r0, r8, r5
    stb r4, -0x8000(r31)
    stb r3, -0x8000(r31)
    ori r3, r29, 0x80
    addi r29, r29, 0x1
    lwzx r0, r8, r5
    addi r5, r9, 0x3c
    addi r9, r9, 0x4
    stw r0, -0x8000(r31)
    lwzx r0, r8, r7
    rlwimi r0, r6, 30, 1, 1
    stwx r0, r8, r7
    addi r7, r9, 0x1c
    lwzx r0, r8, r5
    rlwimi r0, r6, 31, 0, 0
    stwx r0, r8, r5
    stb r4, -0x8000(r31)
    stb r3, -0x8000(r31)
    ori r3, r29, 0x80
    addi r29, r29, 0x1
    lwzx r0, r8, r5
    addi r5, r9, 0x3c
    addi r9, r9, 0x4
    stw r0, -0x8000(r31)
    lwzx r0, r8, r7
    rlwimi r0, r6, 30, 1, 1
    stwx r0, r8, r7
    addi r7, r9, 0x1c
    lwzx r0, r8, r5
    rlwimi r0, r6, 31, 0, 0
    stwx r0, r8, r5
    stb r4, -0x8000(r31)
    stb r3, -0x8000(r31)
    ori r3, r29, 0x80
    addi r29, r29, 0x1
    lwzx r0, r8, r5
    addi r5, r9, 0x3c
    addi r9, r9, 0x4
    stw r0, -0x8000(r31)
    lwzx r0, r8, r7
    rlwimi r0, r6, 30, 1, 1
    stwx r0, r8, r7
    lwzx r0, r8, r5
    rlwimi r0, r6, 31, 0, 0
    stwx r0, r8, r5
    stb r4, -0x8000(r31)
    stb r3, -0x8000(r31)
    lwzx r0, r8, r5
    stw r0, -0x8000(r31)
    opword  0x4200FF0C  // bdnz .L_80058F04
    li r5, 0x1
    li r0, 0x0
    rlwimi r0, r5, 0, 31, 31
    mr r8, r0
    li r0, 0x0
    rlwimi r0, r5, 0, 31, 31
    mr r9, r0
    rlwimi r8, r5, 1, 30, 30
    rlwimi r8, r5, 2, 29, 29
    rlwimi r8, r5, 3, 28, 28
    rlwimi r8, r5, 4, 27, 27
    li r10, 0x0
    li r7, 0x10
    lis r6, 0xcc01
    rlwimi r9, r5, 1, 30, 30
    stb r7, -0x8000(r6)
    li r0, 0x1000
    stw r0, -0x8000(r6)
    rlwimi r8, r5, 5, 26, 26
    rlwimi r9, r5, 2, 29, 29
    stw r8, -0x8000(r6)
    li r31, 0x0
    li r4, 0x1012
    stb r7, -0x8000(r6)
    rlwimi r10, r5, 0, 31, 31
    rlwimi r9, r5, 3, 28, 28
    stw r4, -0x8000(r6)
    li r0, 0x58
    li r5, 0x61
    stw r10, -0x8000(r6)
    lis r3, GXTexRegionAddrTable@ha
    rlwimi r9, r0, 24, 0, 7
    stb r5, -0x8000(r6)
    slwi r4, r31, 2
    addi r0, r3, GXTexRegionAddrTable@l
    stw r9, -0x8000(r6)
    add r27, r0, r4
    slwi r28, r31, 4
    opword  0x48000004  // b .L_80059098
L_80059098:
    opword  0x48000004  // b .L_8005909C
L_8005909C:
    opword  0x48000004  // b .L_800590A0
L_800590A0:
    opword  0x800283A8  // lwz r0, __GXData@sda21(r0)
    addi r3, r28, 0x208
    lwz r5, 0x0(r27)
    li r4, 0x0
    lwz r7, 0x20(r27)
    add r3, r0, r3
    li r6, 0x0
    li r8, 0x0
    bl GXInitTexCacheRegion
    opword  0x800283A8  // lwz r0, __GXData@sda21(r0)
    addi r3, r28, 0x288
    lwz r5, 0x40(r27)
    li r4, 0x0
    lwz r7, 0x60(r27)
    add r3, r0, r3
    li r6, 0x0
    li r8, 0x0
    bl GXInitTexCacheRegion
    opword  0x800283A8  // lwz r0, __GXData@sda21(r0)
    addi r3, r28, 0x308
    lwz r5, 0x80(r27)
    li r4, 0x1
    lwz r7, 0xa0(r27)
    add r3, r0, r3
    li r6, 0x0
    li r8, 0x0
    bl GXInitTexCacheRegion
    addi r27, r27, 0x4
    addi r28, r28, 0x10
    addi r31, r31, 0x1
    cmplwi r31, 0x8
    opword  0x4180FF84  // blt .L_800590A0
    li r25, 0x0
    slwi r3, r25, 13
    addis r27, r3, 0xc
    slwi r28, r25, 4
    opword  0x48000004  // b .L_80059134
L_80059134:
    opword  0x48000004  // b .L_80059138
L_80059138:
    opword  0x48000004  // b .L_8005913C
L_8005913C:
    opword  0x800283A8  // lwz r0, __GXData@sda21(r0)
    addi r3, r28, 0x388
    mr r4, r27
    add r3, r0, r3
    li r5, 0x10
    bl GXInitTlutRegion
    addi r27, r27, 0x2000
    addi r28, r28, 0x10
    addi r25, r25, 0x1
    cmplwi r25, 0x10
    opword  0x4180FFD8  // blt .L_8005913C
    li r25, 0x0
    slwi r3, r25, 15
    addis r27, r3, 0xe
    opword  0x48000004  // b .L_80059178
L_80059178:
    opword  0x48000004  // b .L_8005917C
L_8005917C:
    opword  0x48000004  // b .L_80059180
L_80059180:
    addi r0, r25, 0x10
    opword  0x80A283A8  // lwz r5, __GXData@sda21(r0)
    slwi r3, r0, 4
    addi r3, r3, 0x388
    mr r4, r27
    add r3, r5, r3
    li r5, 0x40
    bl GXInitTlutRegion
    addis r27, r27, 0x1
    addi r27, r27, -0x8000
    addi r25, r25, 0x1
    cmplwi r25, 0x4
    opword  0x4180FFD0  // blt .L_80059180
    opword  0x806D8AE4  // lwz r3, __cpReg@sda21(r0)
    li r12, 0x0
    li r0, 0x8
    sth r12, 0x6(r3)
    lis r10, 0xcc01
    li r9, 0x20
    opword  0x816283A8  // lwz r11, __GXData@sda21(r0)
    li r8, 0x10
    li r7, 0x1006
    lwz r3, 0x5a4(r11)
    rlwimi r3, r12, 4, 24, 27
    li r6, 0x61
    stw r3, 0x5a4(r11)
    lis r5, 0x2300
    lis r4, 0x2400
    stb r0, -0x8000(r10)
    lis r0, 0x6700
    li r3, 0x0
    stb r9, -0x8000(r10)
    lwz r9, 0x5a4(r11)
    stw r9, -0x8000(r10)
    stb r8, -0x8000(r10)
    stw r7, -0x8000(r10)
    stw r12, -0x8000(r10)
    stb r6, -0x8000(r10)
    stw r5, -0x8000(r10)
    stb r6, -0x8000(r10)
    stw r4, -0x8000(r10)
    stb r6, -0x8000(r10)
    stw r0, -0x8000(r10)
    bl __GXSetIndirectMask
    li r3, 0x2
    bl __GXSetTmemConfig
    bl __GXInitGX
    mr r3, r30
    lmw r25, 0x24(r1)
    lwz r0, 0x44(r1)
    addi r1, r1, 0x40
    mtlr r0
    blr
}

ASM void __GXInitGX(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0xa0(r1)
    stw r31, 0x9c(r1)
    stw r30, 0x98(r1)
    stw r29, 0x94(r1)
    opword  0x808283B4  // lwz r4, lbl_8053B354@sda21(r0)
    lis r5, lbl_80496CA0@ha
    opword  0x806283B8  // lwz r3, lbl_8053B358@sda21(r0)
    addi r31, r5, lbl_80496CA0@l
    opword  0x800283BC  // lwz r0, lbl_8053B35C@sda21(r0)
    stw r4, 0x28(r1)
    stw r3, 0x24(r1)
    stw r0, 0x20(r1)
    bl VIGetTvFormat
    cmpwi r3, 0x2
    opword  0x41820054  // beq .L_800592E8
    opword  0x40800014  // bge .L_800592AC
    cmpwi r3, 0x0
    opword  0x41820018  // beq .L_800592B8
    opword  0x40800024  // bge .L_800592C8
    opword  0x48000050  // b .L_800592F8
L_800592AC:
    cmpwi r3, 0x5
    opword  0x41820028  // beq .L_800592D8
    opword  0x48000044  // b .L_800592F8
L_800592B8:
    lis r3, lbl_80497158@ha
    addi r0, r3, lbl_80497158@l
    mr r30, r0
    opword  0x48000040  // b .L_80059304
L_800592C8:
    lis r3, lbl_8049720C@ha
    addi r0, r3, lbl_8049720C@l
    mr r30, r0
    opword  0x48000030  // b .L_80059304
L_800592D8:
    lis r3, lbl_80497248@ha
    addi r0, r3, lbl_80497248@l
    mr r30, r0
    opword  0x48000020  // b .L_80059304
L_800592E8:
    lis r3, lbl_804971D0@ha
    addi r0, r3, lbl_804971D0@l
    mr r30, r0
    opword  0x48000010  // b .L_80059304
L_800592F8:
    lis r3, lbl_80497158@ha
    addi r0, r3, lbl_80497158@l
    mr r30, r0
L_80059304:
    lwz r0, 0x28(r1)
    lis r4, 0x100
    addi r3, r1, 0x1c
    stw r0, 0x1c(r1)
    subi r4, r4, 0x1
    bl fn_8005CB74
    li r3, 0x0
    li r4, 0x1
    li r5, 0x4
    li r6, 0x3c
    li r7, 0x0
    li r8, 0x7d
    bl fn_8005B6BC
    li r3, 0x1
    li r4, 0x1
    li r5, 0x5
    li r6, 0x3c
    li r7, 0x0
    li r8, 0x7d
    bl fn_8005B6BC
    li r3, 0x2
    li r4, 0x1
    li r5, 0x6
    li r6, 0x3c
    li r7, 0x0
    li r8, 0x7d
    bl fn_8005B6BC
    li r3, 0x3
    li r4, 0x1
    li r5, 0x7
    li r6, 0x3c
    li r7, 0x0
    li r8, 0x7d
    bl fn_8005B6BC
    li r3, 0x4
    li r4, 0x1
    li r5, 0x8
    li r6, 0x3c
    li r7, 0x0
    li r8, 0x7d
    bl fn_8005B6BC
    li r3, 0x5
    li r4, 0x1
    li r5, 0x9
    li r6, 0x3c
    li r7, 0x0
    li r8, 0x7d
    bl fn_8005B6BC
    li r3, 0x6
    li r4, 0x1
    li r5, 0xa
    li r6, 0x3c
    li r7, 0x0
    li r8, 0x7d
    bl fn_8005B6BC
    li r3, 0x7
    li r4, 0x1
    li r5, 0xb
    li r6, 0x3c
    li r7, 0x0
    li r8, 0x7d
    bl fn_8005B6BC
    li r3, 0x1
    bl fn_8005B93C
    bl fn_8005AD7C
    bl fn_8005B6AC
    li r29, 0x9
    opword  0x48000004  // b .L_80059414
L_80059414:
    opword  0x48000004  // b .L_80059418
L_80059418:
    opword  0x48000004  // b .L_8005941C
L_8005941C:
    opword  0x808283A8  // lwz r4, __GXData@sda21(r0)
    mr r3, r29
    li r5, 0x0
    bl fn_8005B620
    addi r29, r29, 0x1
    cmplwi r29, 0x18
    opword  0x4081FFE8  // ble .L_8005941C
    li r29, 0x0
    opword  0x48000004  // b .L_80059440
L_80059440:
    opword  0x48000004  // b .L_80059444
L_80059444:
    opword  0x48000004  // b .L_80059448
L_80059448:
    mr r3, r29
    addi r4, r31, 0x80
    bl fn_8005B010
    addi r29, r29, 0x1
    cmplwi r29, 0x8
    opword  0x4180FFEC  // blt .L_80059448
    li r3, 0x6
    li r4, 0x0
    bl fn_8005C3A4
    li r3, 0x6
    li r4, 0x0
    bl fn_8005C3E4
    li r3, 0x0
    li r4, 0x0
    li r5, 0x0
    bl fn_8005C424
    li r3, 0x1
    li r4, 0x0
    li r5, 0x0
    bl fn_8005C424
    li r3, 0x2
    li r4, 0x0
    li r5, 0x0
    bl fn_8005C424
    li r3, 0x3
    li r4, 0x0
    li r5, 0x0
    bl fn_8005C424
    li r3, 0x4
    li r4, 0x0
    li r5, 0x0
    bl fn_8005C424
    li r3, 0x5
    li r4, 0x0
    li r5, 0x0
    bl fn_8005C424
    li r3, 0x6
    li r4, 0x0
    li r5, 0x0
    bl fn_8005C424
    li r3, 0x7
    li r4, 0x0
    li r5, 0x0
    bl fn_8005C424
    opword  0xC02283C0  // lfs f1, lbl_8053B360@sda21(r0)
    addi r3, r1, 0x2c
    opword  0xC00283B0  // lfs f0, "@290_8053B350"@sda21(r0)
    li r4, 0x0
    stfs fp1, 0x2c(r1)
    stfs fp0, 0x30(r1)
    stfs fp0, 0x34(r1)
    stfs fp0, 0x38(r1)
    stfs fp0, 0x3c(r1)
    stfs fp1, 0x40(r1)
    stfs fp0, 0x44(r1)
    stfs fp0, 0x48(r1)
    stfs fp0, 0x4c(r1)
    stfs fp0, 0x50(r1)
    stfs fp1, 0x54(r1)
    stfs fp0, 0x58(r1)
    bl fn_8005FDF4
    addi r3, r1, 0x2c
    li r4, 0x0
    bl fn_8005FE44
    li r3, 0x0
    bl fn_8005FE94
    addi r3, r1, 0x2c
    li r4, 0x3c
    li r5, 0x0
    bl fn_8005FEC8
    addi r3, r1, 0x2c
    li r4, 0x7d
    li r5, 0x0
    bl fn_8005FEC8
    lhz r4, 0x4(r30)
    lis r3, 0x4330
    lhz r0, 0x8(r30)
    stw r4, 0x8c(r1)
    opword  0xC02283B0  // lfs f1, "@290_8053B350"@sda21(r0)
    stw r0, 0x84(r1)
    opword  0xC88283C8  // lfd f4, lbl_8053B368@sda21(r0)
    fmr fp2, fp1
    stw r3, 0x88(r1)
    fmr fp5, fp1
    opword  0xC0C283C0  // lfs f6, lbl_8053B360@sda21(r0)
    stw r3, 0x80(r1)
    lfd fp3, 0x88(r1)
    lfd fp0, 0x80(r1)
    fsubs fp3, fp3, fp4
    fsubs fp4, fp0, fp4
    bl fn_8006000C
    addi r3, r31, 0x150
    bl fn_8005FD68
    li r3, 0x0
    bl fn_8005C4B0
    li r3, 0x2
    bl fn_8005C46C
    li r3, 0x0
    bl fn_800601C0
    lhz r5, 0x4(r30)
    li r3, 0x0
    lhz r6, 0x6(r30)
    li r4, 0x0
    bl fn_800600C0
    li r3, 0x0
    li r4, 0x0
    bl fn_80060180
    li r3, 0x0
    bl fn_8005D3C8
    li r3, 0x4
    li r4, 0x0
    li r5, 0x0
    li r6, 0x1
    li r7, 0x0
    li r8, 0x0
    li r9, 0x2
    bl fn_8005D404
    lwz r0, 0x24(r1)
    addi r4, r1, 0x18
    li r3, 0x4
    stw r0, 0x18(r1)
    bl fn_8005D1E8
    lwz r0, 0x20(r1)
    addi r4, r1, 0x14
    li r3, 0x4
    stw r0, 0x14(r1)
    bl fn_8005D2D8
    li r3, 0x5
    li r4, 0x0
    li r5, 0x0
    li r6, 0x1
    li r7, 0x0
    li r8, 0x0
    li r9, 0x2
    bl fn_8005D404
    lwz r0, 0x24(r1)
    addi r4, r1, 0x10
    li r3, 0x5
    stw r0, 0x10(r1)
    bl fn_8005D1E8
    lwz r0, 0x20(r1)
    addi r4, r1, 0xc
    li r3, 0x5
    stw r0, 0xc(r1)
    bl fn_8005D2D8
    bl fn_8005DEC4
    lis r3, fn_8005880C@ha
    addi r3, r3, fn_8005880C@l
    bl fn_8005DF0C
    lis r3, fn_80058908@ha
    addi r3, r3, fn_80058908@l
    bl fn_8005DF20
    addi r3, r1, 0x5c
    addi r4, r31, 0x60
    li r5, 0x4
    li r6, 0x4
    li r7, 0x3
    li r8, 0x0
    li r9, 0x0
    li r10, 0x0
    bl fn_8005D6E0
    addi r3, r1, 0x5c
    li r4, 0x0
    bl fn_8005DC74
    addi r3, r1, 0x5c
    li r4, 0x1
    bl fn_8005DC74
    addi r3, r1, 0x5c
    li r4, 0x2
    bl fn_8005DC74
    addi r3, r1, 0x5c
    li r4, 0x3
    bl fn_8005DC74
    addi r3, r1, 0x5c
    li r4, 0x4
    bl fn_8005DC74
    addi r3, r1, 0x5c
    li r4, 0x5
    bl fn_8005DC74
    addi r3, r1, 0x5c
    li r4, 0x6
    bl fn_8005DC74
    addi r3, r1, 0x5c
    li r4, 0x7
    bl fn_8005DC74
    li r3, 0x0
    li r4, 0x0
    li r5, 0x0
    li r6, 0x4
    bl fn_8005EF80
    li r3, 0x1
    li r4, 0x1
    li r5, 0x1
    li r6, 0x4
    bl fn_8005EF80
    li r3, 0x2
    li r4, 0x2
    li r5, 0x2
    li r6, 0x4
    bl fn_8005EF80
    li r3, 0x3
    li r4, 0x3
    li r5, 0x3
    li r6, 0x4
    bl fn_8005EF80
    li r3, 0x4
    li r4, 0x4
    li r5, 0x4
    li r6, 0x4
    bl fn_8005EF80
    li r3, 0x5
    li r4, 0x5
    li r5, 0x5
    li r6, 0x4
    bl fn_8005EF80
    li r3, 0x6
    li r4, 0x6
    li r5, 0x6
    li r6, 0x4
    bl fn_8005EF80
    li r3, 0x7
    li r4, 0x7
    li r5, 0x7
    li r6, 0x4
    bl fn_8005EF80
    li r3, 0x8
    li r4, 0xff
    li r5, 0xff
    li r6, 0xff
    bl fn_8005EF80
    li r3, 0x9
    li r4, 0xff
    li r5, 0xff
    li r6, 0xff
    bl fn_8005EF80
    li r3, 0xa
    li r4, 0xff
    li r5, 0xff
    li r6, 0xff
    bl fn_8005EF80
    li r3, 0xb
    li r4, 0xff
    li r5, 0xff
    li r6, 0xff
    bl fn_8005EF80
    li r3, 0xc
    li r4, 0xff
    li r5, 0xff
    li r6, 0xff
    bl fn_8005EF80
    li r3, 0xd
    li r4, 0xff
    li r5, 0xff
    li r6, 0xff
    bl fn_8005EF80
    li r3, 0xe
    li r4, 0xff
    li r5, 0xff
    li r6, 0xff
    bl fn_8005EF80
    li r3, 0xf
    li r4, 0xff
    li r5, 0xff
    li r6, 0xff
    bl fn_8005EF80
    li r3, 0x1
    bl fn_8005F11C
    li r3, 0x0
    li r4, 0x3
    bl fn_8005E9E0
    li r3, 0x7
    li r4, 0x0
    li r5, 0x0
    li r6, 0x7
    li r7, 0x0
    bl fn_8005EEB0
    li r3, 0x0
    li r4, 0x11
    li r5, 0x0
    bl fn_8005EEF4
    li r31, 0x0
    opword  0x48000004  // b .L_800598B0
L_800598B0:
    opword  0x48000004  // b .L_800598B4
L_800598B4:
    opword  0x48000004  // b .L_800598B8
L_800598B8:
    mr r3, r31
    li r4, 0x6
    bl fn_8005ED30
    mr r3, r31
    li r4, 0x0
    bl fn_8005ED8C
    mr r3, r31
    li r4, 0x0
    li r5, 0x0
    bl fn_8005EDE8
    addi r31, r31, 0x1
    cmplwi r31, 0x10
    opword  0x4180FFD0  // blt .L_800598B8
    li r3, 0x0
    li r4, 0x0
    li r5, 0x1
    li r6, 0x2
    li r7, 0x3
    bl fn_8005EE30
    li r3, 0x1
    li r4, 0x0
    li r5, 0x0
    li r6, 0x0
    li r7, 0x3
    bl fn_8005EE30
    li r3, 0x2
    li r4, 0x1
    li r5, 0x1
    li r6, 0x1
    li r7, 0x3
    bl fn_8005EE30
    li r3, 0x3
    li r4, 0x2
    li r5, 0x2
    li r6, 0x2
    li r7, 0x3
    bl fn_8005EE30
    li r31, 0x0
    opword  0x48000004  // b .L_80059954
L_80059954:
    opword  0x48000004  // b .L_80059958
L_80059958:
    opword  0x48000004  // b .L_8005995C
L_8005995C:
    mr r3, r31
    bl fn_8005E8DC
    addi r31, r31, 0x1
    cmplwi r31, 0x10
    opword  0x4180FFF0  // blt .L_8005995C
    li r3, 0x0
    bl fn_8005E8B8
    li r3, 0x0
    li r4, 0x0
    li r5, 0x0
    bl fn_8005E688
    li r3, 0x1
    li r4, 0x0
    li r5, 0x0
    bl fn_8005E688
    li r3, 0x2
    li r4, 0x0
    li r5, 0x0
    bl fn_8005E688
    li r3, 0x3
    li r4, 0x0
    li r5, 0x0
    bl fn_8005E688
    opword  0xC04283C0  // lfs f2, lbl_8053B360@sda21(r0)
    addi r4, r1, 0x8
    lwz r0, 0x24(r1)
    li r3, 0x0
    fmr fp4, fp2
    stw r0, 0x8(r1)
    opword  0xC02283B0  // lfs f1, "@290_8053B350"@sda21(r0)
    opword  0xC06283C4  // lfs f3, lbl_8053B364@sda21(r0)
    bl fn_8005F144
    li r3, 0x0
    li r4, 0x0
    li r5, 0x0
    bl fn_8005F368
    li r3, 0x0
    li r4, 0x4
    li r5, 0x5
    li r6, 0x0
    bl fn_8005F48C
    li r3, 0x1
    bl fn_8005F4E0
    li r3, 0x1
    bl fn_8005F50C
    li r3, 0x1
    li r4, 0x3
    li r5, 0x1
    bl fn_8005F538
    li r3, 0x1
    bl fn_8005F56C
    li r3, 0x1
    bl fn_8005F674
    li r3, 0x0
    li r4, 0x0
    bl fn_8005F6A0
    li r3, 0x0
    li r4, 0x0
    bl fn_8005F5A0
    li r3, 0x1
    li r4, 0x1
    bl fn_8005F6DC
    lhz r0, 0x8(r30)
    lhz r3, 0x10(r30)
    slwi r0, r0, 1
    cmpw r3, r0
    opword  0x4082000C  // bne .L_80059A70
    li r4, 0x1
    opword  0x48000008  // b .L_80059A74
L_80059A70:
    li r4, 0x0
L_80059A74:
    lbz r3, 0x18(r30)
    bl fn_8005F714
    lhz r5, 0x4(r30)
    li r3, 0x0
    lhz r6, 0x6(r30)
    li r4, 0x0
    bl fn_8005C508
    lhz r3, 0x4(r30)
    lhz r4, 0x6(r30)
    bl fn_8005C600
    lhz r4, 0x8(r30)
    lis r3, 0x4330
    lhz r0, 0x6(r30)
    stw r4, 0x84(r1)
    opword  0xC84283C8  // lfd f2, lbl_8053B368@sda21(r0)
    stw r0, 0x8c(r1)
    stw r3, 0x80(r1)
    stw r3, 0x88(r1)
    lfd fp1, 0x80(r1)
    lfd fp0, 0x88(r1)
    fsubs fp1, fp1, fp2
    fsubs fp0, fp0, fp2
    fdivs fp1, fp1, fp0
    bl fn_8005CAA8
    li r3, 0x3
    bl fn_8005C788
    lbz r3, 0x19(r30)
    addi r4, r30, 0x1a
    addi r6, r30, 0x32
    li r5, 0x1
    bl fn_8005CBEC
    li r3, 0x0
    bl fn_8005CDF4
    li r3, 0x0
    bl fn_8005C764
    bl fn_8005D0FC
    li r3, 0x1
    bl fn_8005BF30
    li r3, 0x1
    bl fn_8005BEB4
    li r3, 0x0
    bl fn_8005BF6C
    li r3, 0x0
    li r4, 0x0
    li r5, 0x1
    li r6, 0xf
    bl fn_8005BECC
    li r3, 0x7
    li r4, 0x0
    bl fn_8005BE80
    li r3, 0x1
    bl fn_8005BE94
    li r3, 0x0
    li r4, 0x0
    bl fn_8005BF48
    li r3, 0x1
    li r4, 0x7
    li r5, 0x1
    bl fn_8005BF84
    li r3, 0x23
    li r4, 0x16
    bl fn_8006026C
    bl fn_80060AB4
    lwz r0, 0xa4(r1)
    lwz r31, 0x9c(r1)
    lwz r30, 0x98(r1)
    lwz r29, 0x94(r1)
    addi r1, r1, 0xa0
    mtlr r0
    blr
}

ASM void fn_80059B8C(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x2e0(r1)
    stw r31, 0x2dc(r1)
    mr r31, r4
    opword  0x80AD8AE4  // lwz r5, __cpReg@sda21(r0)
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    lhz r0, 0x0(r5)
    stw r0, 0xc(r3)
    lwz r0, 0x8(r3)
    extrwi. r0, r0, 1, 28
    opword  0x41820038  // beq .L_80059BF0
    lwz r0, 0xc(r3)
    extrwi. r0, r0, 1, 30
    opword  0x4182002C  // beq .L_80059BF0
    opword  0x806D8B10  // lwz r3, lbl_8053A6D0@sda21(r0)
    bl OSResumeThread
    li r0, 0x0
    opword  0x900D8B18  // stw r0, lbl_8053A6D8@sda21(r0)
    li r3, 0x1
    li r4, 0x1
    bl fn_8005A2D0
    li r3, 0x1
    li r4, 0x0
    bl fn_8005A2A0
L_80059BF0:
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    lwz r0, 0x8(r3)
    extrwi. r0, r0, 1, 29
    opword  0x41820044  // beq .L_80059C40
    lwz r0, 0xc(r3)
    clrlwi. r0, r0, 31
    opword  0x41820038  // beq .L_80059C40
    opword  0x80AD8B20  // lwz r5, lbl_8053A6E0@sda21(r0)
    li r3, 0x0
    li r4, 0x1
    addi r0, r5, 0x1
    opword  0x900D8B20  // stw r0, lbl_8053A6E0@sda21(r0)
    bl fn_8005A2A0
    li r3, 0x1
    li r4, 0x0
    bl fn_8005A2D0
    li r0, 0x1
    opword  0x806D8B10  // lwz r3, lbl_8053A6D0@sda21(r0)
    opword  0x900D8B18  // stw r0, lbl_8053A6D8@sda21(r0)
    bl OSSuspendThread
L_80059C40:
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    lwz r4, 0x8(r3)
    extrwi. r0, r4, 1, 26
    opword  0x41820060  // beq .L_80059CAC
    lwz r0, 0xc(r3)
    extrwi. r0, r0, 1, 27
    opword  0x41820054  // beq .L_80059CAC
    li r0, 0x0
    rlwimi r4, r0, 5, 26, 26
    stw r4, 0x8(r3)
    lwz r0, 0x8(r3)
    opword  0x806D8AE4  // lwz r3, __cpReg@sda21(r0)
    sth r0, 0x2(r3)
    opword  0x800D8B1C  // lwz r0, lbl_8053A6DC@sda21(r0)
    cmplwi r0, 0x0
    opword  0x41820030  // beq .L_80059CAC
    addi r3, r1, 0x10
    bl OSClearContext
    addi r3, r1, 0x10
    bl OSSetCurrentContext
    opword  0x818D8B1C  // lwz r12, lbl_8053A6DC@sda21(r0)
    mtlr r12
    blrl
    addi r3, r1, 0x10
    bl OSClearContext
    mr r3, r31
    bl OSSetCurrentContext
L_80059CAC:
    lwz r0, 0x2e4(r1)
    lwz r31, 0x2dc(r1)
    addi r1, r1, 0x2e0
    mtlr r0
    blr
}

ASM void GXInitFifoBase(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    subi r0, r5, 0x4
    stwu r1, -0x20(r1)
    stw r31, 0x1c(r1)
    addi r31, r4, 0x0
    add r0, r31, r0
    stw r30, 0x18(r1)
    addi r30, r3, 0x0
    subi r4, r5, 0x4000
    stw r31, 0x0(r3)
    stw r0, 0x4(r3)
    li r0, 0x0
    stw r5, 0x8(r3)
    rlwinm r5, r5, 31, 1, 26
    stw r0, 0x1c(r30)
    bl fn_80059D9C
    addi r3, r30, 0x0
    addi r4, r31, 0x0
    addi r5, r31, 0x0
    bl fn_80059D2C
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    addi r1, r1, 0x20
    mtlr r0
    blr
}

ASM void fn_80059D2C(void)
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
    bl OSDisableInterrupts
    stw r30, 0x14(r29)
    subf r0, r30, r31
    stw r31, 0x18(r29)
    stw r0, 0x1c(r29)
    lwz r4, 0x1c(r29)
    cmpwi r4, 0x0
    opword  0x40800010  // bge .L_80059D7C
    lwz r0, 0x8(r29)
    add r0, r4, r0
    stw r0, 0x1c(r29)
L_80059D7C:
    bl OSRestoreInterrupts
    lwz r0, 0x2c(r1)
    lwz r31, 0x24(r1)
    lwz r30, 0x20(r1)
    lwz r29, 0x1c(r1)
    addi r1, r1, 0x28
    mtlr r0
    blr
}

ASM void fn_80059D9C(void)
{
    nofralloc
    stw r4, 0xc(r3)
    stw r5, 0x10(r3)
    blr
}

ASM void GXSetCPUFifo(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    stw r30, 0x10(r1)
    mr r30, r3
    bl OSDisableInterrupts
    opword  0x800D8B0C  // lwz r0, lbl_8053A6CC@sda21(r0)
    addi r31, r3, 0x0
    opword  0x93CD8B08  // stw r30, lbl_8053A6C8@sda21(r0)
    cmplw r30, r0
    opword  0x40820070  // bne .L_80059E44
    lwz r0, 0x0(r30)
    li r8, 0x0
    opword  0x806D8AE0  // lwz r3, __piReg@sda21(r0)
    li r6, 0x0
    clrlwi r0, r0, 2
    stw r0, 0xc(r3)
    li r0, 0x1
    li r3, 0x1
    lwz r7, 0x4(r30)
    li r4, 0x1
    opword  0x80AD8AE0  // lwz r5, __piReg@sda21(r0)
    clrlwi r7, r7, 2
    stw r7, 0x10(r5)
    lwz r7, 0x18(r30)
    opword  0x80AD8AE0  // lwz r5, __piReg@sda21(r0)
    rlwimi r8, r7, 0, 6, 26
    addi r7, r8, 0x0
    rlwimi r7, r6, 26, 5, 5
    stw r7, 0x14(r5)
    opword  0x980D8B14  // stb r0, lbl_8053A6D4@sda21(r0)
    bl fn_8005A2D0
    li r3, 0x1
    li r4, 0x0
    bl fn_8005A2A0
    li r3, 0x1
    bl fn_8005A26C
    opword  0x4800006C  // b .L_80059EAC
L_80059E44:
    opword  0x880D8B14  // lbz r0, lbl_8053A6D4@sda21(r0)
    cmplwi r0, 0x0
    opword  0x41820014  // beq .L_80059E60
    li r3, 0x0
    bl fn_8005A26C
    li r0, 0x0
    opword  0x980D8B14  // stb r0, lbl_8053A6D4@sda21(r0)
L_80059E60:
    li r3, 0x0
    li r4, 0x0
    bl fn_8005A2A0
    lwz r4, 0x0(r30)
    li r5, 0x0
    opword  0x806D8AE0  // lwz r3, __piReg@sda21(r0)
    li r0, 0x0
    clrlwi r4, r4, 2
    stw r4, 0xc(r3)
    lwz r4, 0x4(r30)
    opword  0x806D8AE0  // lwz r3, __piReg@sda21(r0)
    clrlwi r4, r4, 2
    stw r4, 0x10(r3)
    lwz r4, 0x18(r30)
    opword  0x806D8AE0  // lwz r3, __piReg@sda21(r0)
    rlwimi r5, r4, 0, 6, 26
    addi r4, r5, 0x0
    rlwimi r4, r0, 26, 5, 5
    stw r4, 0x14(r3)
L_80059EAC:
    bl PPCSync
    mr r3, r31
    bl OSRestoreInterrupts
    lwz r0, 0x1c(r1)
    lwz r31, 0x14(r1)
    lwz r30, 0x10(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

ASM void GXSetGPFifo(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    stw r30, 0x10(r1)
    mr r30, r3
    bl OSDisableInterrupts
    mr r31, r3
    bl fn_8005A248
    li r3, 0x0
    li r4, 0x0
    bl fn_8005A2A0
    opword  0x93CD8B0C  // stw r30, lbl_8053A6CC@sda21(r0)
    opword  0x806D8AE4  // lwz r3, __cpReg@sda21(r0)
    lwz r0, 0x0(r30)
    sth r0, 0x20(r3)
    lwz r0, 0x4(r30)
    opword  0x806D8AE4  // lwz r3, __cpReg@sda21(r0)
    sth r0, 0x24(r3)
    lwz r0, 0x1c(r30)
    opword  0x806D8AE4  // lwz r3, __cpReg@sda21(r0)
    sth r0, 0x30(r3)
    lwz r0, 0x18(r30)
    opword  0x806D8AE4  // lwz r3, __cpReg@sda21(r0)
    sth r0, 0x34(r3)
    lwz r0, 0x14(r30)
    opword  0x806D8AE4  // lwz r3, __cpReg@sda21(r0)
    sth r0, 0x38(r3)
    lwz r0, 0xc(r30)
    opword  0x806D8AE4  // lwz r3, __cpReg@sda21(r0)
    sth r0, 0x28(r3)
    lwz r0, 0x10(r30)
    opword  0x806D8AE4  // lwz r3, __cpReg@sda21(r0)
    sth r0, 0x2c(r3)
    lwz r0, 0x0(r30)
    opword  0x806D8AE4  // lwz r3, __cpReg@sda21(r0)
    extrwi r0, r0, 14, 2
    sth r0, 0x22(r3)
    lwz r0, 0x4(r30)
    opword  0x806D8AE4  // lwz r3, __cpReg@sda21(r0)
    extrwi r0, r0, 14, 2
    sth r0, 0x26(r3)
    lwz r0, 0x1c(r30)
    opword  0x806D8AE4  // lwz r3, __cpReg@sda21(r0)
    srawi r0, r0, 16
    sth r0, 0x32(r3)
    lwz r0, 0x18(r30)
    opword  0x806D8AE4  // lwz r3, __cpReg@sda21(r0)
    extrwi r0, r0, 14, 2
    sth r0, 0x36(r3)
    lwz r0, 0x14(r30)
    opword  0x806D8AE4  // lwz r3, __cpReg@sda21(r0)
    extrwi r0, r0, 14, 2
    sth r0, 0x3a(r3)
    lwz r0, 0xc(r30)
    opword  0x806D8AE4  // lwz r3, __cpReg@sda21(r0)
    srwi r0, r0, 16
    sth r0, 0x2a(r3)
    lwz r0, 0x10(r30)
    opword  0x806D8AE4  // lwz r3, __cpReg@sda21(r0)
    srwi r0, r0, 16
    sth r0, 0x2e(r3)
    bl PPCSync
    opword  0x806D8B08  // lwz r3, lbl_8053A6C8@sda21(r0)
    opword  0x800D8B0C  // lwz r0, lbl_8053A6CC@sda21(r0)
    cmplw r3, r0
    opword  0x40820024  // bne .L_80059FFC
    li r0, 0x1
    opword  0x980D8B14  // stb r0, lbl_8053A6D4@sda21(r0)
    li r3, 0x1
    li r4, 0x0
    bl fn_8005A2A0
    li r3, 0x1
    bl fn_8005A26C
    opword  0x48000020  // b .L_8005A018
L_80059FFC:
    li r0, 0x0
    opword  0x980D8B14  // stb r0, lbl_8053A6D4@sda21(r0)
    li r3, 0x0
    li r4, 0x0
    bl fn_8005A2A0
    li r3, 0x0
    bl fn_8005A26C
L_8005A018:
    li r3, 0x1
    li r4, 0x1
    bl fn_8005A2D0
    bl fn_8005A224
    mr r3, r31
    bl OSRestoreInterrupts
    lwz r0, 0x1c(r1)
    lwz r31, 0x14(r1)
    lwz r30, 0x10(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

ASM void fn_8005A048(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x8(r1)
    bl fn_8005A068
    lwz r0, 0xc(r1)
    addi r1, r1, 0x8
    mtlr r0
    blr
}

ASM void fn_8005A068(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    stw r30, 0x10(r1)
    mr r30, r3
    bl OSDisableInterrupts
    mr r31, r3
    bl fn_8005BA0C
    opword  0x806D8AE0  // lwz r3, __piReg@sda21(r0)
    lwz r3, 0xc(r3)
    addis r0, r3, 0x8000
    stw r0, 0x0(r30)
    opword  0x806D8AE0  // lwz r3, __piReg@sda21(r0)
    lwz r3, 0x10(r3)
    addis r0, r3, 0x8000
    stw r0, 0x4(r30)
    opword  0x806D8AE0  // lwz r3, __piReg@sda21(r0)
    lwz r0, 0x14(r3)
    rlwinm r3, r0, 0, 6, 4
    addis r0, r3, 0x8000
    stw r0, 0x18(r30)
    opword  0x880D8B14  // lbz r0, lbl_8053A6D4@sda21(r0)
    cmplwi r0, 0x0
    opword  0x41820034  // beq .L_8005A0FC
    opword  0x808D8AE4  // lwz r4, __cpReg@sda21(r0)
    lhz r3, 0x3a(r4)
    lhz r4, 0x38(r4)
    rlwimi r4, r3, 16, 0, 15
    addis r0, r4, 0x8000
    stw r0, 0x14(r30)
    opword  0x808D8AE4  // lwz r4, __cpReg@sda21(r0)
    lhz r3, 0x32(r4)
    lhz r0, 0x30(r4)
    rlwimi r0, r3, 16, 0, 15
    stw r0, 0x1c(r30)
    opword  0x4800002C  // b .L_8005A124
L_8005A0FC:
    lwz r3, 0x14(r30)
    lwz r0, 0x18(r30)
    subf r0, r3, r0
    stw r0, 0x1c(r30)
    lwz r3, 0x1c(r30)
    cmpwi r3, 0x0
    opword  0x40800010  // bge .L_8005A124
    lwz r0, 0x8(r30)
    add r0, r3, r0
    stw r0, 0x1c(r30)
L_8005A124:
    mr r3, r31
    bl OSRestoreInterrupts
    lwz r0, 0x1c(r1)
    lwz r31, 0x14(r1)
    lwz r30, 0x10(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

ASM void fn_8005A144(void)
{
    nofralloc
    opword  0x812D8AE4  // lwz r9, __cpReg@sda21(r0)
    opword  0x810283A8  // lwz r8, __GXData@sda21(r0)
    lhz r0, 0x0(r9)
    stw r0, 0xc(r8)
    lwz r0, 0xc(r8)
    clrlwi r0, r0, 31
    stb r0, 0x0(r3)
    lwz r0, 0xc(r8)
    extrwi r0, r0, 1, 30
    stb r0, 0x0(r4)
    lwz r0, 0xc(r8)
    extrwi r0, r0, 1, 29
    stb r0, 0x0(r5)
    lwz r0, 0xc(r8)
    extrwi r0, r0, 1, 28
    stb r0, 0x0(r6)
    lwz r0, 0xc(r8)
    extrwi r0, r0, 1, 27
    stb r0, 0x0(r7)
    blr
}

ASM void fn_8005A194(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    stw r30, 0x10(r1)
    mr r30, r3
    opword  0x83ED8B1C  // lwz r31, lbl_8053A6DC@sda21(r0)
    bl OSDisableInterrupts
    opword  0x93CD8B1C  // stw r30, lbl_8053A6DC@sda21(r0)
    bl OSRestoreInterrupts
    mr r3, r31
    lwz r0, 0x1c(r1)
    lwz r31, 0x14(r1)
    lwz r30, 0x10(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

ASM void __GXFifoInit(void)
{
    nofralloc
    mflr r0
    lis r3, fn_80059B8C@ha
    stw r0, 0x4(r1)
    addi r4, r3, fn_80059B8C@l
    li r3, 0x11
    stwu r1, -0x8(r1)
    bl __OSSetInterruptHandler
    li r3, 0x4000
    bl __OSUnmaskInterrupts
    bl OSGetCurrentThread
    li r0, 0x0
    opword  0x906D8B10  // stw r3, lbl_8053A6D0@sda21(r0)
    opword  0x900D8B18  // stw r0, lbl_8053A6D8@sda21(r0)
    opword  0x900D8B08  // stw r0, lbl_8053A6C8@sda21(r0)
    opword  0x900D8B0C  // stw r0, lbl_8053A6CC@sda21(r0)
    lwz r0, 0xc(r1)
    addi r1, r1, 0x8
    mtlr r0
    blr
}

ASM void fn_8005A224(void)
{
    nofralloc
    opword  0x808283A8  // lwz r4, __GXData@sda21(r0)
    li r0, 0x1
    lwz r3, 0x8(r4)
    rlwimi r3, r0, 0, 31, 31
    stw r3, 0x8(r4)
    lwz r0, 0x8(r4)
    opword  0x806D8AE4  // lwz r3, __cpReg@sda21(r0)
    sth r0, 0x2(r3)
    blr
}

ASM void fn_8005A248(void)
{
    nofralloc
    opword  0x808283A8  // lwz r4, __GXData@sda21(r0)
    li r0, 0x0
    lwz r3, 0x8(r4)
    rlwimi r3, r0, 0, 31, 31
    stw r3, 0x8(r4)
    lwz r0, 0x8(r4)
    opword  0x806D8AE4  // lwz r3, __cpReg@sda21(r0)
    sth r0, 0x2(r3)
    blr
}

ASM void fn_8005A26C(void)
{
    nofralloc
    clrlwi. r0, r3, 24
    opword  0x4182000C  // beq .L_8005A27C
    li r4, 0x1
    opword  0x48000008  // b .L_8005A280
L_8005A27C:
    li r4, 0x0
L_8005A280:
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    lwz r0, 0x8(r3)
    rlwimi r0, r4, 4, 27, 27
    stw r0, 0x8(r3)
    lwz r0, 0x8(r3)
    opword  0x806D8AE4  // lwz r3, __cpReg@sda21(r0)
    sth r0, 0x2(r3)
    blr
}

ASM void fn_8005A2A0(void)
{
    nofralloc
    opword  0x80A283A8  // lwz r5, __GXData@sda21(r0)
    clrlwi r0, r4, 24
    lwz r4, 0x8(r5)
    rlwimi r4, r3, 2, 29, 29
    stw r4, 0x8(r5)
    lwz r3, 0x8(r5)
    rlwimi r3, r0, 3, 28, 28
    stw r3, 0x8(r5)
    lwz r0, 0x8(r5)
    opword  0x806D8AE4  // lwz r3, __cpReg@sda21(r0)
    sth r0, 0x2(r3)
    blr
}

ASM void fn_8005A2D0(void)
{
    nofralloc
    opword  0x80A283A8  // lwz r5, __GXData@sda21(r0)
    clrlwi r0, r4, 24
    lwz r4, 0x10(r5)
    rlwimi r4, r3, 0, 31, 31
    stw r4, 0x10(r5)
    lwz r3, 0x10(r5)
    rlwimi r3, r0, 1, 30, 30
    stw r3, 0x10(r5)
    lwz r0, 0x10(r5)
    opword  0x806D8AE4  // lwz r3, __cpReg@sda21(r0)
    sth r0, 0x4(r3)
    blr
}

ASM void fn_8005A300(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0xa8(r1)
    stw r31, 0xa4(r1)
    stw r30, 0xa0(r1)
    stw r29, 0x9c(r1)
    bl fn_8005A45C
    mr. r31, r3
    opword  0x418200C4  // beq .L_8005A3E4
    bl fn_8005A454
    li r0, 0x10
    lwz r29, 0x0(r31)
    mtctr r0
    addi r30, r3, 0x0
    addi r5, r1, 0xc
    subi r4, r31, 0x8
L_8005A340:
    lwzu r3, 0x8(r4)
    lwz r0, 0x4(r4)
    stwu r3, 0x8(r5)
    stw r0, 0x4(r5)
    opword  0x4200FFF0  // bdnz .L_8005A340
    bl OSDisableInterrupts
    stw r29, 0x28(r1)
    li r0, 0x0
    stw r29, 0x2c(r1)
    stw r0, 0x30(r1)
    lwz r4, 0x30(r1)
    cmpwi r4, 0x0
    opword  0x40800010  // bge .L_8005A380
    lwz r0, 0x1c(r1)
    add r0, r4, r0
    stw r0, 0x30(r1)
L_8005A380:
    bl OSRestoreInterrupts
    addi r3, r1, 0x14
    bl GXSetGPFifo
    cmplw r30, r31
    opword  0x4082000C  // bne .L_8005A39C
    addi r3, r1, 0x14
    bl GXSetCPUFifo
L_8005A39C:
    bl OSDisableInterrupts
    stw r29, 0x14(r31)
    li r0, 0x0
    stw r29, 0x18(r31)
    stw r0, 0x1c(r31)
    lwz r4, 0x1c(r31)
    cmpwi r4, 0x0
    opword  0x40800010  // bge .L_8005A3C8
    lwz r0, 0x8(r31)
    add r0, r4, r0
    stw r0, 0x1c(r31)
L_8005A3C8:
    bl OSRestoreInterrupts
    mr r3, r31
    bl GXSetGPFifo
    cmplw r30, r31
    opword  0x4082000C  // bne .L_8005A3E4
    mr r3, r30
    bl GXSetCPUFifo
L_8005A3E4:
    lwz r0, 0xac(r1)
    lwz r31, 0xa4(r1)
    lwz r30, 0xa0(r1)
    lwz r29, 0x9c(r1)
    addi r1, r1, 0xa8
    mtlr r0
    blr
}

ASM void fn_8005A400(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x10(r1)
    stw r31, 0xc(r1)
    stw r30, 0x8(r1)
    bl OSDisableInterrupts
    opword  0x83CD8B10  // lwz r30, lbl_8053A6D0@sda21(r0)
    mr r31, r3
    bl OSGetCurrentThread
    opword  0x906D8B10  // stw r3, lbl_8053A6D0@sda21(r0)
    mr r3, r31
    bl OSRestoreInterrupts
    mr r3, r30
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    addi r1, r1, 0x10
    mtlr r0
    blr
}

ASM void fn_8005A44C(void)
{
    nofralloc
    opword  0x806D8B10  // lwz r3, lbl_8053A6D0@sda21(r0)
    blr
}

ASM void fn_8005A454(void)
{
    nofralloc
    opword  0x806D8B08  // lwz r3, lbl_8053A6C8@sda21(r0)
    blr
}

ASM void fn_8005A45C(void)
{
    nofralloc
    opword  0x806D8B0C  // lwz r3, lbl_8053A6CC@sda21(r0)
    blr
}

// IDENTIFIED as the real GX SDK's `GXSetVtxDesc(GXAttr attr, GXAttrType
// type)` - `r3`=attr, `r4`=type. Confirmed by an exact structural match
// against zeldaret/tww's decompiled source: a `switch(attr)` jump table
// (attrs 0-25) where matrix-index attrs (`GX_VA_PNMTXIDX`/`TEX0-7MTXIDX`)
// each set a SINGLE bit of `__GXData->0x14` (vcdLo), `GX_VA_POS`/`CLR0`/
// `CLR1` set wider bitfields of the same word, `GX_VA_TEX0-7` set fields of
// `->0x18` (vcdHi), and `GX_VA_NRM`/`GX_VA_NBT` (normals/binormals) are
// special-cased into `->0x4d4`/`->0x4d5` (hasNrms/hasBiNrms) plus a shared
// `nrmType` value - matching this function's post-jump-table tail (reads
// `->0x4d4`/`->0x4d5`, re-packs bits 19-20 of vcdLo from `->0x4d0`
// (nrmType) or 0). Ends with `dirtyState |= GX_DIRTY_VCD` (0x5ac |= 8),
// same as `fn_8005AD7C`=GXClearVtxDesc. NOTE: kept the `fn_8005A464`
// symbol name - renaming to `GXSetVtxDesc` collides at link time with an
// unrelated, currently-dead same-named definition elsewhere in
// `src/Dolphin/gx/`/`src/sysdolphin/` (unwired, but the linker still trips
// on the duplicate). See [[project_fsa_gxbegin_identified]].
ASM void fn_8005A464(void)
{
    nofralloc
    cmplwi r3, 0x19
    opword  0x41810210  // bgt .L_8005A678
    lis r5, jumptable_80496EE0@ha
    addi r5, r5, jumptable_80496EE0@l
    slwi r0, r3, 2
    lwzx r0, r5, r0
    mtctr r0
    bctr
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    lwz r0, 0x14(r3)
    rlwimi r0, r4, 0, 31, 31
    stw r0, 0x14(r3)
    opword  0x480001E4  // b .L_8005A678
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    lwz r0, 0x14(r3)
    rlwimi r0, r4, 1, 30, 30
    stw r0, 0x14(r3)
    opword  0x480001D0  // b .L_8005A678
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    lwz r0, 0x14(r3)
    rlwimi r0, r4, 2, 29, 29
    stw r0, 0x14(r3)
    opword  0x480001BC  // b .L_8005A678
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    lwz r0, 0x14(r3)
    rlwimi r0, r4, 3, 28, 28
    stw r0, 0x14(r3)
    opword  0x480001A8  // b .L_8005A678
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    lwz r0, 0x14(r3)
    rlwimi r0, r4, 4, 27, 27
    stw r0, 0x14(r3)
    opword  0x48000194  // b .L_8005A678
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    lwz r0, 0x14(r3)
    rlwimi r0, r4, 5, 26, 26
    stw r0, 0x14(r3)
    opword  0x48000180  // b .L_8005A678
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    lwz r0, 0x14(r3)
    rlwimi r0, r4, 6, 25, 25
    stw r0, 0x14(r3)
    opword  0x4800016C  // b .L_8005A678
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    lwz r0, 0x14(r3)
    rlwimi r0, r4, 7, 24, 24
    stw r0, 0x14(r3)
    opword  0x48000158  // b .L_8005A678
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    lwz r0, 0x14(r3)
    rlwimi r0, r4, 8, 23, 23
    stw r0, 0x14(r3)
    opword  0x48000144  // b .L_8005A678
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    lwz r0, 0x14(r3)
    rlwimi r0, r4, 9, 21, 22
    stw r0, 0x14(r3)
    opword  0x48000130  // b .L_8005A678
    cmpwi r4, 0x0
    opword  0x41820020  // beq .L_8005A570
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    li r5, 0x1
    li r0, 0x0
    stb r5, 0x4d4(r3)
    stb r0, 0x4d5(r3)
    stw r4, 0x4d0(r3)
    opword  0x4800010C  // b .L_8005A678
L_8005A570:
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    li r0, 0x0
    stb r0, 0x4d4(r3)
    opword  0x480000FC  // b .L_8005A678
    cmpwi r4, 0x0
    opword  0x41820020  // beq .L_8005A5A4
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    li r5, 0x1
    li r0, 0x0
    stb r5, 0x4d5(r3)
    stb r0, 0x4d4(r3)
    stw r4, 0x4d0(r3)
    opword  0x480000D8  // b .L_8005A678
L_8005A5A4:
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    li r0, 0x0
    stb r0, 0x4d5(r3)
    opword  0x480000C8  // b .L_8005A678
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    lwz r0, 0x14(r3)
    rlwimi r0, r4, 13, 17, 18
    stw r0, 0x14(r3)
    opword  0x480000B4  // b .L_8005A678
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    lwz r0, 0x14(r3)
    rlwimi r0, r4, 15, 15, 16
    stw r0, 0x14(r3)
    opword  0x480000A0  // b .L_8005A678
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    lwz r0, 0x18(r3)
    rlwimi r0, r4, 0, 30, 31
    stw r0, 0x18(r3)
    opword  0x4800008C  // b .L_8005A678
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    lwz r0, 0x18(r3)
    rlwimi r0, r4, 2, 28, 29
    stw r0, 0x18(r3)
    opword  0x48000078  // b .L_8005A678
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    lwz r0, 0x18(r3)
    rlwimi r0, r4, 4, 26, 27
    stw r0, 0x18(r3)
    opword  0x48000064  // b .L_8005A678
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    lwz r0, 0x18(r3)
    rlwimi r0, r4, 6, 24, 25
    stw r0, 0x18(r3)
    opword  0x48000050  // b .L_8005A678
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    lwz r0, 0x18(r3)
    rlwimi r0, r4, 8, 22, 23
    stw r0, 0x18(r3)
    opword  0x4800003C  // b .L_8005A678
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    lwz r0, 0x18(r3)
    rlwimi r0, r4, 10, 20, 21
    stw r0, 0x18(r3)
    opword  0x48000028  // b .L_8005A678
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    lwz r0, 0x18(r3)
    rlwimi r0, r4, 12, 18, 19
    stw r0, 0x18(r3)
    opword  0x48000014  // b .L_8005A678
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    lwz r0, 0x18(r3)
    rlwimi r0, r4, 14, 16, 17
    stw r0, 0x18(r3)
L_8005A678:
    opword  0x808283A8  // lwz r4, __GXData@sda21(r0)
    lbz r0, 0x4d4(r4)
    cmplwi r0, 0x0
    opword  0x40820010  // bne .L_8005A694
    lbz r0, 0x4d5(r4)
    cmplwi r0, 0x0
    opword  0x4182001C  // beq .L_8005A6AC
L_8005A694:
    lwz r0, 0x4d0(r4)
    lwz r4, 0x14(r4)
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    rlwimi r4, r0, 11, 19, 20
    stw r4, 0x14(r3)
    opword  0x48000014  // b .L_8005A6BC
L_8005A6AC:
    lwz r3, 0x14(r4)
    li r0, 0x0
    rlwimi r3, r0, 11, 19, 20
    stw r3, 0x14(r4)
L_8005A6BC:
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    lwz r0, 0x5ac(r3)
    ori r0, r0, 0x8
    stw r0, 0x5ac(r3)
    blr
}

ASM void fn_8005A6D0(void)
{
    nofralloc
    lis r4, jumptable_80496F48@ha
    addi r4, r4, jumptable_80496F48@l
    opword  0x4800021C  // b .L_8005A8F4
L_8005A6DC:
    lwz r5, 0x0(r3)
    lwz r0, 0x4(r3)
    cmplwi r5, 0x19
    opword  0x41810208  // bgt .L_8005A8F0
    slwi r5, r5, 2
    lwzx r5, r4, r5
    mtctr r5
    bctr
    opword  0x80C283A8  // lwz r6, __GXData@sda21(r0)
    lwz r5, 0x14(r6)
    rlwimi r5, r0, 0, 31, 31
    stw r5, 0x14(r6)
    opword  0x480001E4  // b .L_8005A8F0
    opword  0x80C283A8  // lwz r6, __GXData@sda21(r0)
    lwz r5, 0x14(r6)
    rlwimi r5, r0, 1, 30, 30
    stw r5, 0x14(r6)
    opword  0x480001D0  // b .L_8005A8F0
    opword  0x80C283A8  // lwz r6, __GXData@sda21(r0)
    lwz r5, 0x14(r6)
    rlwimi r5, r0, 2, 29, 29
    stw r5, 0x14(r6)
    opword  0x480001BC  // b .L_8005A8F0
    opword  0x80C283A8  // lwz r6, __GXData@sda21(r0)
    lwz r5, 0x14(r6)
    rlwimi r5, r0, 3, 28, 28
    stw r5, 0x14(r6)
    opword  0x480001A8  // b .L_8005A8F0
    opword  0x80C283A8  // lwz r6, __GXData@sda21(r0)
    lwz r5, 0x14(r6)
    rlwimi r5, r0, 4, 27, 27
    stw r5, 0x14(r6)
    opword  0x48000194  // b .L_8005A8F0
    opword  0x80C283A8  // lwz r6, __GXData@sda21(r0)
    lwz r5, 0x14(r6)
    rlwimi r5, r0, 5, 26, 26
    stw r5, 0x14(r6)
    opword  0x48000180  // b .L_8005A8F0
    opword  0x80C283A8  // lwz r6, __GXData@sda21(r0)
    lwz r5, 0x14(r6)
    rlwimi r5, r0, 6, 25, 25
    stw r5, 0x14(r6)
    opword  0x4800016C  // b .L_8005A8F0
    opword  0x80C283A8  // lwz r6, __GXData@sda21(r0)
    lwz r5, 0x14(r6)
    rlwimi r5, r0, 7, 24, 24
    stw r5, 0x14(r6)
    opword  0x48000158  // b .L_8005A8F0
    opword  0x80C283A8  // lwz r6, __GXData@sda21(r0)
    lwz r5, 0x14(r6)
    rlwimi r5, r0, 8, 23, 23
    stw r5, 0x14(r6)
    opword  0x48000144  // b .L_8005A8F0
    opword  0x80C283A8  // lwz r6, __GXData@sda21(r0)
    lwz r5, 0x14(r6)
    rlwimi r5, r0, 9, 21, 22
    stw r5, 0x14(r6)
    opword  0x48000130  // b .L_8005A8F0
    cmpwi r0, 0x0
    opword  0x41820020  // beq .L_8005A7E8
    opword  0x80C283A8  // lwz r6, __GXData@sda21(r0)
    li r7, 0x1
    li r5, 0x0
    stb r7, 0x4d4(r6)
    stb r5, 0x4d5(r6)
    stw r0, 0x4d0(r6)
    opword  0x4800010C  // b .L_8005A8F0
L_8005A7E8:
    opword  0x80A283A8  // lwz r5, __GXData@sda21(r0)
    li r0, 0x0
    stb r0, 0x4d4(r5)
    opword  0x480000FC  // b .L_8005A8F0
    cmpwi r0, 0x0
    opword  0x41820020  // beq .L_8005A81C
    opword  0x80C283A8  // lwz r6, __GXData@sda21(r0)
    li r7, 0x1
    li r5, 0x0
    stb r7, 0x4d5(r6)
    stb r5, 0x4d4(r6)
    stw r0, 0x4d0(r6)
    opword  0x480000D8  // b .L_8005A8F0
L_8005A81C:
    opword  0x80A283A8  // lwz r5, __GXData@sda21(r0)
    li r0, 0x0
    stb r0, 0x4d5(r5)
    opword  0x480000C8  // b .L_8005A8F0
    opword  0x80C283A8  // lwz r6, __GXData@sda21(r0)
    lwz r5, 0x14(r6)
    rlwimi r5, r0, 13, 17, 18
    stw r5, 0x14(r6)
    opword  0x480000B4  // b .L_8005A8F0
    opword  0x80C283A8  // lwz r6, __GXData@sda21(r0)
    lwz r5, 0x14(r6)
    rlwimi r5, r0, 15, 15, 16
    stw r5, 0x14(r6)
    opword  0x480000A0  // b .L_8005A8F0
    opword  0x80C283A8  // lwz r6, __GXData@sda21(r0)
    lwz r5, 0x18(r6)
    rlwimi r5, r0, 0, 30, 31
    stw r5, 0x18(r6)
    opword  0x4800008C  // b .L_8005A8F0
    opword  0x80C283A8  // lwz r6, __GXData@sda21(r0)
    lwz r5, 0x18(r6)
    rlwimi r5, r0, 2, 28, 29
    stw r5, 0x18(r6)
    opword  0x48000078  // b .L_8005A8F0
    opword  0x80C283A8  // lwz r6, __GXData@sda21(r0)
    lwz r5, 0x18(r6)
    rlwimi r5, r0, 4, 26, 27
    stw r5, 0x18(r6)
    opword  0x48000064  // b .L_8005A8F0
    opword  0x80C283A8  // lwz r6, __GXData@sda21(r0)
    lwz r5, 0x18(r6)
    rlwimi r5, r0, 6, 24, 25
    stw r5, 0x18(r6)
    opword  0x48000050  // b .L_8005A8F0
    opword  0x80C283A8  // lwz r6, __GXData@sda21(r0)
    lwz r5, 0x18(r6)
    rlwimi r5, r0, 8, 22, 23
    stw r5, 0x18(r6)
    opword  0x4800003C  // b .L_8005A8F0
    opword  0x80C283A8  // lwz r6, __GXData@sda21(r0)
    lwz r5, 0x18(r6)
    rlwimi r5, r0, 10, 20, 21
    stw r5, 0x18(r6)
    opword  0x48000028  // b .L_8005A8F0
    opword  0x80C283A8  // lwz r6, __GXData@sda21(r0)
    lwz r5, 0x18(r6)
    rlwimi r5, r0, 12, 18, 19
    stw r5, 0x18(r6)
    opword  0x48000014  // b .L_8005A8F0
    opword  0x80C283A8  // lwz r6, __GXData@sda21(r0)
    lwz r5, 0x18(r6)
    rlwimi r5, r0, 14, 16, 17
    stw r5, 0x18(r6)
L_8005A8F0:
    addi r3, r3, 0x8
L_8005A8F4:
    lwz r0, 0x0(r3)
    cmpwi r0, 0xff
    opword  0x4082FDE0  // bne .L_8005A6DC
    opword  0x808283A8  // lwz r4, __GXData@sda21(r0)
    lbz r0, 0x4d4(r4)
    cmplwi r0, 0x0
    opword  0x40820010  // bne .L_8005A91C
    lbz r0, 0x4d5(r4)
    cmplwi r0, 0x0
    opword  0x4182001C  // beq .L_8005A934
L_8005A91C:
    lwz r0, 0x4d0(r4)
    lwz r4, 0x14(r4)
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    rlwimi r4, r0, 11, 19, 20
    stw r4, 0x14(r3)
    opword  0x48000014  // b .L_8005A944
L_8005A934:
    lwz r3, 0x14(r4)
    li r0, 0x0
    rlwimi r3, r0, 11, 19, 20
    stw r3, 0x14(r4)
L_8005A944:
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    lwz r0, 0x5ac(r3)
    ori r0, r0, 0x8
    stw r0, 0x5ac(r3)
    blr
}

ASM void fn_8005A958(void)
{
    nofralloc
    li r6, 0x8
    opword  0x808283A8  // lwz r4, __GXData@sda21(r0)
    lis r5, 0xcc01
    stb r6, -0x8000(r5)
    li r3, 0x50
    li r0, 0x60
    stb r3, -0x8000(r5)
    lwz r3, 0x14(r4)
    stw r3, -0x8000(r5)
    stb r6, -0x8000(r5)
    stb r0, -0x8000(r5)
    lwz r0, 0x18(r4)
    stw r0, -0x8000(r5)
    lbz r0, 0x4d5(r4)
    cmplwi r0, 0x0
    opword  0x4182000C  // beq .L_8005A9A0
    li r7, 0x2
    opword  0x4800001C  // b .L_8005A9B8
L_8005A9A0:
    lbz r0, 0x4d4(r4)
    cmplwi r0, 0x0
    opword  0x4182000C  // beq .L_8005A9B4
    li r7, 0x1
    opword  0x48000008  // b .L_8005A9B8
L_8005A9B4:
    li r7, 0x0
L_8005A9B8:
    opword  0x80A283A8  // lwz r5, __GXData@sda21(r0)
    li r0, 0x10
    lwz r6, 0x14(r4)
    lis r4, 0xcc01
    lwz r3, 0x18(r5)
    extrwi r6, r6, 4, 15
    cntlzw r6, r6
    stb r0, -0x8000(r4)
    clrlwi r3, r3, 16
    subfic r6, r6, 0x21
    cntlzw r0, r3
    subfic r3, r0, 0x21
    li r0, 0x1008
    stw r0, -0x8000(r4)
    srwi r6, r6, 1
    slwi r0, r7, 2
    extlwi r3, r3, 28, 3
    or r0, r6, r0
    or r0, r3, r0
    stw r0, -0x8000(r4)
    li r0, 0x1
    sth r0, 0x2(r5)
    blr
}

ASM void fn_8005AA14(void)
{
    nofralloc
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    lhz r0, 0x4(r3)
    cmplwi r0, 0x0
    beqlr
    lwz r9, 0x14(r3)
    opword  0x38AD8120  // li r5, lbl_80539CE0@sda21
    lwz r8, 0x1c(r3)
    clrlwi r0, r9, 31
    lwz r4, 0x18(r3)
    extrwi r6, r9, 1, 30
    add r0, r0, r6
    extrwi r6, r9, 1, 29
    add r0, r0, r6
    extrwi r7, r9, 1, 28
    extrwi r6, r9, 2, 21
    lbzx r5, r5, r6
    extrwi r8, r8, 1, 22
    add r0, r0, r7
    extrwi r6, r9, 1, 27
    add r0, r0, r6
    extrwi r6, r9, 1, 26
    add r0, r0, r6
    extrwi r6, r9, 1, 25
    add r0, r0, r6
    extrwi r6, r9, 1, 24
    add r0, r0, r6
    extrwi r6, r9, 1, 23
    add r0, r0, r6
    cmpwi r8, 0x1
    add r0, r0, r5
    opword  0x4082000C  // bne .L_8005AA98
    li r8, 0x3
    opword  0x48000008  // b .L_8005AA9C
L_8005AA98:
    li r8, 0x1
L_8005AA9C:
    extrwi r6, r9, 2, 19
    opword  0x38AD8120  // li r5, lbl_80539CE0@sda21
    lbzx r6, r5, r6
    extrwi r5, r9, 2, 17
    opword  0x38ED8118  // li r7, lbl_80539CD8@sda21
    mullw r8, r6, r8
    lbzx r6, r7, r5
    add r0, r0, r8
    extrwi r5, r9, 2, 15
    lbzx r9, r7, r5
    add r0, r0, r6
    clrlwi r6, r4, 30
    opword  0x390D811C  // li r8, lbl_80539CDC@sda21
    extrwi r5, r4, 2, 28
    lbzx r7, r8, r6
    add r0, r0, r9
    lbzx r6, r8, r5
    add r0, r0, r7
    extrwi r5, r4, 2, 26
    lbzx r7, r8, r5
    add r0, r0, r6
    extrwi r5, r4, 2, 24
    lbzx r6, r8, r5
    add r0, r0, r7
    extrwi r5, r4, 2, 22
    lbzx r7, r8, r5
    add r0, r0, r6
    extrwi r5, r4, 2, 20
    lbzx r6, r8, r5
    extrwi r5, r4, 2, 18
    add r0, r0, r7
    lbzx r5, r8, r5
    extrwi r4, r4, 2, 16
    add r0, r0, r6
    lbzx r4, r8, r4
    add r0, r0, r5
    add r0, r0, r4
    sth r0, 0x6(r3)
    blr
}

ASM void fn_8005AB38(void)
{
    nofralloc
    cmplwi r3, 0x19
    opword  0x418101A4  // bgt .L_8005ACE0
    lis r5, jumptable_80496FB0@ha
    addi r5, r5, jumptable_80496FB0@l
    slwi r0, r3, 2
    lwzx r0, r5, r0
    mtctr r0
    bctr
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    lwz r0, 0x14(r3)
    clrlwi r0, r0, 31
    opword  0x48000180  // b .L_8005ACE4
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    lwz r0, 0x14(r3)
    extrwi r0, r0, 1, 30
    opword  0x48000170  // b .L_8005ACE4
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    lwz r0, 0x14(r3)
    extrwi r0, r0, 1, 29
    opword  0x48000160  // b .L_8005ACE4
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    lwz r0, 0x14(r3)
    extrwi r0, r0, 1, 28
    opword  0x48000150  // b .L_8005ACE4
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    lwz r0, 0x14(r3)
    extrwi r0, r0, 1, 27
    opword  0x48000140  // b .L_8005ACE4
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    lwz r0, 0x14(r3)
    extrwi r0, r0, 1, 26
    opword  0x48000130  // b .L_8005ACE4
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    lwz r0, 0x14(r3)
    extrwi r0, r0, 1, 25
    opword  0x48000120  // b .L_8005ACE4
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    lwz r0, 0x14(r3)
    extrwi r0, r0, 1, 24
    opword  0x48000110  // b .L_8005ACE4
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    lwz r0, 0x14(r3)
    extrwi r0, r0, 1, 23
    opword  0x48000100  // b .L_8005ACE4
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    lwz r0, 0x14(r3)
    extrwi r0, r0, 2, 21
    opword  0x480000F0  // b .L_8005ACE4
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    lbz r0, 0x4d4(r3)
    cmplwi r0, 0x0
    opword  0x41820010  // beq .L_8005AC14
    lwz r0, 0x14(r3)
    extrwi r0, r0, 2, 19
    opword  0x480000D4  // b .L_8005ACE4
L_8005AC14:
    li r0, 0x0
    opword  0x480000CC  // b .L_8005ACE4
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    lbz r0, 0x4d5(r3)
    cmplwi r0, 0x0
    opword  0x41820010  // beq .L_8005AC38
    lwz r0, 0x14(r3)
    extrwi r0, r0, 2, 19
    opword  0x480000B0  // b .L_8005ACE4
L_8005AC38:
    li r0, 0x0
    opword  0x480000A8  // b .L_8005ACE4
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    lwz r0, 0x14(r3)
    extrwi r0, r0, 2, 17
    opword  0x48000098  // b .L_8005ACE4
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    lwz r0, 0x14(r3)
    extrwi r0, r0, 2, 15
    opword  0x48000088  // b .L_8005ACE4
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    lwz r0, 0x18(r3)
    clrlwi r0, r0, 30
    opword  0x48000078  // b .L_8005ACE4
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    lwz r0, 0x18(r3)
    extrwi r0, r0, 2, 28
    opword  0x48000068  // b .L_8005ACE4
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    lwz r0, 0x18(r3)
    extrwi r0, r0, 2, 26
    opword  0x48000058  // b .L_8005ACE4
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    lwz r0, 0x18(r3)
    extrwi r0, r0, 2, 24
    opword  0x48000048  // b .L_8005ACE4
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    lwz r0, 0x18(r3)
    extrwi r0, r0, 2, 22
    opword  0x48000038  // b .L_8005ACE4
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    lwz r0, 0x18(r3)
    extrwi r0, r0, 2, 20
    opword  0x48000028  // b .L_8005ACE4
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    lwz r0, 0x18(r3)
    extrwi r0, r0, 2, 18
    opword  0x48000018  // b .L_8005ACE4
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    lwz r0, 0x18(r3)
    extrwi r0, r0, 2, 16
    opword  0x48000008  // b .L_8005ACE4
L_8005ACE0:
    li r0, 0x0
L_8005ACE4:
    stw r0, 0x0(r4)
    blr
}

ASM void fn_8005ACEC(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x20(r1)
    stw r31, 0x1c(r1)
    li r31, 0x0
    stw r30, 0x18(r1)
    li r30, 0x0
    stw r29, 0x14(r1)
    addi r29, r3, 0x0
L_8005AD10:
    add r4, r29, r31
    stw r30, 0x0(r4)
    addi r3, r30, 0x0
    addi r4, r4, 0x4
    bl fn_8005AB38
    addi r30, r30, 0x1
    cmpwi r30, 0x14
    addi r31, r31, 0x8
    opword  0x4081FFE0  // ble .L_8005AD10
    slwi r0, r30, 3
    add r3, r29, r0
    li r0, 0x19
    stw r0, 0x0(r3)
    addi r4, r3, 0x4
    li r3, 0x19
    bl fn_8005AB38
    addi r30, r30, 0x1
    slwi r0, r30, 3
    li r3, 0xff
    stwx r3, r29, r0
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    addi r1, r1, 0x20
    mtlr r0
    blr
}

// IDENTIFIED as the real GX SDK's `GXClearVtxDesc(void)` - confirmed by an
// exact structural match against zeldaret/tww's decompiled source (same
// statically-linked SDK, since FSA and Wind Waker share the JSystem/GX
// engine): `gx->vcdLo = 0; GX_BITFIELD_SET(gx->vcdLo, 0x15, 2, GX_DIRECT);
// gx->vcdHi = 0; gx->hasNrms = FALSE; gx->hasBiNrms = FALSE;
// gx->dirtyState |= GX_DIRTY_VCD;` - matches this function field-for-field:
// `__GXData->0x14` = vcdLo (zeroed, then bits 21-22 set to GX_DIRECT=1),
// `->0x18` = vcdHi (zeroed), `->0x4d4`/`->0x4d5` = hasNrms/hasBiNrms
// (cleared), `->0x5ac` = dirtyState (OR'd with 0x8 = GX_DIRTY_VCD, also
// confirmed independently via `fn_8005C24C`=GXBegin's own dirty-bit checks
// below). NOTE: kept the `fn_8005AD7C` symbol name - renaming it to
// `GXClearVtxDesc` collides at link time with an unrelated, currently-dead
// same-named definition elsewhere in `src/Dolphin/gx/`/`src/sysdolphin/`
// (neither wired into this build, but the linker still trips on the
// duplicate); real identity is documented here instead. See
// [[project_fsa_gxbegin_identified]].
ASM void fn_8005AD7C(void)
{
    nofralloc
    opword  0x808283A8  // lwz r4, __GXData@sda21(r0)
    li r5, 0x0
    li r0, 0x1
    stw r5, 0x14(r4)
    lwz r3, 0x14(r4)
    rlwimi r3, r0, 9, 21, 22
    stw r3, 0x14(r4)
    stw r5, 0x18(r4)
    stb r5, 0x4d4(r4)
    stb r5, 0x4d5(r4)
    lwz r0, 0x5ac(r4)
    ori r0, r0, 0x8
    stw r0, 0x5ac(r4)
    blr
}

ASM void fn_8005ADB4(void)
{
    nofralloc
    subi r0, r4, 0x9
    opword  0x810283A8  // lwz r8, __GXData@sda21(r0)
    slwi r4, r3, 2
    add r8, r8, r4
    cmplwi r0, 0x10
    addi r4, r8, 0x1c
    addi r9, r8, 0x3c
    addi r10, r8, 0x5c
    opword  0x4181020C  // bgt .L_8005AFE0
    lis r8, jumptable_80497018@ha
    addi r8, r8, jumptable_80497018@l
    slwi r0, r0, 2
    lwzx r0, r8, r0
    mtctr r0
    bctr
    lwz r8, 0x0(r4)
    rlwimi r8, r5, 0, 31, 31
    stw r8, 0x0(r4)
    lwz r5, 0x0(r4)
    rlwimi r5, r6, 1, 28, 30
    stw r5, 0x0(r4)
    lwz r5, 0x0(r4)
    rlwimi r5, r7, 4, 23, 27
    stw r5, 0x0(r4)
    opword  0x480001CC  // b .L_8005AFE0
    lwz r0, 0x0(r4)
    rlwimi r0, r6, 10, 19, 21
    cmpwi r5, 0x2
    stw r0, 0x0(r4)
    opword  0x40820024  // bne .L_8005AE4C
    lwz r0, 0x0(r4)
    li r5, 0x1
    rlwimi r0, r5, 9, 22, 22
    stw r0, 0x0(r4)
    lwz r0, 0x0(r4)
    rlwimi r0, r5, 31, 0, 0
    stw r0, 0x0(r4)
    opword  0x48000198  // b .L_8005AFE0
L_8005AE4C:
    lwz r6, 0x0(r4)
    rlwimi r6, r5, 9, 22, 22
    li r0, 0x0
    stw r6, 0x0(r4)
    lwz r5, 0x0(r4)
    rlwimi r5, r0, 31, 0, 0
    stw r5, 0x0(r4)
    opword  0x48000178  // b .L_8005AFE0
    lwz r0, 0x0(r4)
    rlwimi r0, r5, 13, 18, 18
    stw r0, 0x0(r4)
    lwz r0, 0x0(r4)
    rlwimi r0, r6, 14, 15, 17
    stw r0, 0x0(r4)
    opword  0x4800015C  // b .L_8005AFE0
    lwz r0, 0x0(r4)
    rlwimi r0, r5, 17, 14, 14
    stw r0, 0x0(r4)
    lwz r0, 0x0(r4)
    rlwimi r0, r6, 18, 11, 13
    stw r0, 0x0(r4)
    opword  0x48000140  // b .L_8005AFE0
    lwz r8, 0x0(r4)
    rlwimi r8, r5, 21, 10, 10
    stw r8, 0x0(r4)
    lwz r5, 0x0(r4)
    rlwimi r5, r6, 22, 7, 9
    stw r5, 0x0(r4)
    lwz r5, 0x0(r4)
    rlwimi r5, r7, 25, 2, 6
    stw r5, 0x0(r4)
    opword  0x48000118  // b .L_8005AFE0
    lwz r4, 0x0(r9)
    rlwimi r4, r5, 0, 31, 31
    stw r4, 0x0(r9)
    lwz r4, 0x0(r9)
    rlwimi r4, r6, 1, 28, 30
    stw r4, 0x0(r9)
    lwz r4, 0x0(r9)
    rlwimi r4, r7, 4, 23, 27
    stw r4, 0x0(r9)
    opword  0x480000F0  // b .L_8005AFE0
    lwz r4, 0x0(r9)
    rlwimi r4, r5, 9, 22, 22
    stw r4, 0x0(r9)
    lwz r4, 0x0(r9)
    rlwimi r4, r6, 10, 19, 21
    stw r4, 0x0(r9)
    lwz r4, 0x0(r9)
    rlwimi r4, r7, 13, 14, 18
    stw r4, 0x0(r9)
    opword  0x480000C8  // b .L_8005AFE0
    lwz r4, 0x0(r9)
    rlwimi r4, r5, 18, 13, 13
    stw r4, 0x0(r9)
    lwz r4, 0x0(r9)
    rlwimi r4, r6, 19, 10, 12
    stw r4, 0x0(r9)
    lwz r4, 0x0(r9)
    rlwimi r4, r7, 22, 5, 9
    stw r4, 0x0(r9)
    opword  0x480000A0  // b .L_8005AFE0
    lwz r4, 0x0(r9)
    rlwimi r4, r5, 27, 4, 4
    stw r4, 0x0(r9)
    lwz r4, 0x0(r9)
    rlwimi r4, r6, 28, 1, 3
    stw r4, 0x0(r9)
    lwz r4, 0x0(r10)
    rlwimi r4, r7, 0, 27, 31
    stw r4, 0x0(r10)
    opword  0x48000078  // b .L_8005AFE0
    lwz r4, 0x0(r10)
    rlwimi r4, r5, 5, 26, 26
    stw r4, 0x0(r10)
    lwz r4, 0x0(r10)
    rlwimi r4, r6, 6, 23, 25
    stw r4, 0x0(r10)
    lwz r4, 0x0(r10)
    rlwimi r4, r7, 9, 18, 22
    stw r4, 0x0(r10)
    opword  0x48000050  // b .L_8005AFE0
    lwz r4, 0x0(r10)
    rlwimi r4, r5, 14, 17, 17
    stw r4, 0x0(r10)
    lwz r4, 0x0(r10)
    rlwimi r4, r6, 15, 14, 16
    stw r4, 0x0(r10)
    lwz r4, 0x0(r10)
    rlwimi r4, r7, 18, 9, 13
    stw r4, 0x0(r10)
    opword  0x48000028  // b .L_8005AFE0
    lwz r4, 0x0(r10)
    rlwimi r4, r5, 23, 8, 8
    stw r4, 0x0(r10)
    lwz r4, 0x0(r10)
    rlwimi r4, r6, 24, 5, 7
    stw r4, 0x0(r10)
    lwz r4, 0x0(r10)
    rlwimi r4, r7, 27, 0, 4
    stw r4, 0x0(r10)
L_8005AFE0:
    opword  0x80A283A8  // lwz r5, __GXData@sda21(r0)
    clrlwi r0, r3, 24
    li r3, 0x1
    lwz r4, 0x5ac(r5)
    slw r0, r3, r0
    clrlwi r0, r0, 24
    ori r3, r4, 0x10
    stw r3, 0x5ac(r5)
    lbz r3, 0x5ab(r5)
    or r0, r3, r0
    stb r0, 0x5ab(r5)
    blr
}

ASM void fn_8005B010(void)
{
    nofralloc
    opword  0x80C283A8  // lwz r6, __GXData@sda21(r0)
    slwi r0, r3, 2
    lis r5, jumptable_8049705C@ha
    add r6, r6, r0
    addi r7, r6, 0x1c
    addi r8, r6, 0x3c
    addi r9, r6, 0x5c
    addi r5, r5, jumptable_8049705C@l
    opword  0x48000224  // b .L_8005B254
L_8005B034:
    lwz r10, 0x0(r4)
    lbz r6, 0xc(r4)
    subi r10, r10, 0x9
    lwz r0, 0x8(r4)
    cmplwi r10, 0x10
    lwz r11, 0x4(r4)
    opword  0x41810204  // bgt .L_8005B250
    slwi r10, r10, 2
    lwzx r10, r5, r10
    mtctr r10
    bctr
    lwz r10, 0x0(r7)
    rlwimi r10, r11, 0, 31, 31
    stw r10, 0x0(r7)
    lwz r10, 0x0(r7)
    rlwimi r10, r0, 1, 28, 30
    stw r10, 0x0(r7)
    lwz r0, 0x0(r7)
    rlwimi r0, r6, 4, 23, 27
    stw r0, 0x0(r7)
    opword  0x480001CC  // b .L_8005B250
    lwz r6, 0x0(r7)
    rlwimi r6, r0, 10, 19, 21
    cmpwi r11, 0x2
    stw r6, 0x0(r7)
    opword  0x40820024  // bne .L_8005B0BC
    lwz r0, 0x0(r7)
    li r6, 0x1
    rlwimi r0, r6, 9, 22, 22
    stw r0, 0x0(r7)
    lwz r0, 0x0(r7)
    rlwimi r0, r6, 31, 0, 0
    stw r0, 0x0(r7)
    opword  0x48000198  // b .L_8005B250
L_8005B0BC:
    lwz r6, 0x0(r7)
    rlwimi r6, r11, 9, 22, 22
    li r0, 0x0
    stw r6, 0x0(r7)
    lwz r6, 0x0(r7)
    rlwimi r6, r0, 31, 0, 0
    stw r6, 0x0(r7)
    opword  0x48000178  // b .L_8005B250
    lwz r6, 0x0(r7)
    rlwimi r6, r11, 13, 18, 18
    stw r6, 0x0(r7)
    lwz r6, 0x0(r7)
    rlwimi r6, r0, 14, 15, 17
    stw r6, 0x0(r7)
    opword  0x4800015C  // b .L_8005B250
    lwz r6, 0x0(r7)
    rlwimi r6, r11, 17, 14, 14
    stw r6, 0x0(r7)
    lwz r6, 0x0(r7)
    rlwimi r6, r0, 18, 11, 13
    stw r6, 0x0(r7)
    opword  0x48000140  // b .L_8005B250
    lwz r10, 0x0(r7)
    rlwimi r10, r11, 21, 10, 10
    stw r10, 0x0(r7)
    lwz r10, 0x0(r7)
    rlwimi r10, r0, 22, 7, 9
    stw r10, 0x0(r7)
    lwz r0, 0x0(r7)
    rlwimi r0, r6, 25, 2, 6
    stw r0, 0x0(r7)
    opword  0x48000118  // b .L_8005B250
    lwz r10, 0x0(r8)
    rlwimi r10, r11, 0, 31, 31
    stw r10, 0x0(r8)
    lwz r10, 0x0(r8)
    rlwimi r10, r0, 1, 28, 30
    stw r10, 0x0(r8)
    lwz r0, 0x0(r8)
    rlwimi r0, r6, 4, 23, 27
    stw r0, 0x0(r8)
    opword  0x480000F0  // b .L_8005B250
    lwz r10, 0x0(r8)
    rlwimi r10, r11, 9, 22, 22
    stw r10, 0x0(r8)
    lwz r10, 0x0(r8)
    rlwimi r10, r0, 10, 19, 21
    stw r10, 0x0(r8)
    lwz r0, 0x0(r8)
    rlwimi r0, r6, 13, 14, 18
    stw r0, 0x0(r8)
    opword  0x480000C8  // b .L_8005B250
    lwz r10, 0x0(r8)
    rlwimi r10, r11, 18, 13, 13
    stw r10, 0x0(r8)
    lwz r10, 0x0(r8)
    rlwimi r10, r0, 19, 10, 12
    stw r10, 0x0(r8)
    lwz r0, 0x0(r8)
    rlwimi r0, r6, 22, 5, 9
    stw r0, 0x0(r8)
    opword  0x480000A0  // b .L_8005B250
    lwz r10, 0x0(r8)
    rlwimi r10, r11, 27, 4, 4
    stw r10, 0x0(r8)
    lwz r10, 0x0(r8)
    rlwimi r10, r0, 28, 1, 3
    stw r10, 0x0(r8)
    lwz r0, 0x0(r9)
    rlwimi r0, r6, 0, 27, 31
    stw r0, 0x0(r9)
    opword  0x48000078  // b .L_8005B250
    lwz r10, 0x0(r9)
    rlwimi r10, r11, 5, 26, 26
    stw r10, 0x0(r9)
    lwz r10, 0x0(r9)
    rlwimi r10, r0, 6, 23, 25
    stw r10, 0x0(r9)
    lwz r0, 0x0(r9)
    rlwimi r0, r6, 9, 18, 22
    stw r0, 0x0(r9)
    opword  0x48000050  // b .L_8005B250
    lwz r10, 0x0(r9)
    rlwimi r10, r11, 14, 17, 17
    stw r10, 0x0(r9)
    lwz r10, 0x0(r9)
    rlwimi r10, r0, 15, 14, 16
    stw r10, 0x0(r9)
    lwz r0, 0x0(r9)
    rlwimi r0, r6, 18, 9, 13
    stw r0, 0x0(r9)
    opword  0x48000028  // b .L_8005B250
    lwz r10, 0x0(r9)
    rlwimi r10, r11, 23, 8, 8
    stw r10, 0x0(r9)
    lwz r10, 0x0(r9)
    rlwimi r10, r0, 24, 5, 7
    stw r10, 0x0(r9)
    lwz r0, 0x0(r9)
    rlwimi r0, r6, 27, 0, 4
    stw r0, 0x0(r9)
L_8005B250:
    addi r4, r4, 0x10
L_8005B254:
    lwz r0, 0x0(r4)
    cmpwi r0, 0xff
    opword  0x4082FDD8  // bne .L_8005B034
    opword  0x80A283A8  // lwz r5, __GXData@sda21(r0)
    clrlwi r0, r3, 24
    li r3, 0x1
    lwz r4, 0x5ac(r5)
    slw r0, r3, r0
    clrlwi r0, r0, 24
    ori r3, r4, 0x10
    stw r3, 0x5ac(r5)
    lbz r3, 0x5ab(r5)
    or r0, r3, r0
    stb r0, 0x5ab(r5)
    blr
}

ASM void fn_8005B290(void)
{
    nofralloc
    opword  0x814283A8  // lwz r10, __GXData@sda21(r0)
    li r12, 0x0
    li r11, 0x0
    lis r7, 0xcc01
    opword  0x48000070  // b .L_8005B310
L_8005B2A4:
    clrlwi r9, r12, 24
    lbz r3, 0x5ab(r10)
    li r0, 0x1
    slw r0, r0, r9
    and. r0, r3, r0
    opword  0x41820050  // beq .L_8005B308
    li r8, 0x8
    stb r8, -0x8000(r7)
    ori r3, r9, 0x70
    addi r0, r11, 0x1c
    stb r3, -0x8000(r7)
    ori r5, r9, 0x80
    addi r4, r11, 0x3c
    lwzx r6, r10, r0
    ori r3, r9, 0x90
    addi r0, r11, 0x5c
    stw r6, -0x8000(r7)
    stb r8, -0x8000(r7)
    stb r5, -0x8000(r7)
    lwzx r4, r10, r4
    stw r4, -0x8000(r7)
    stb r8, -0x8000(r7)
    stb r3, -0x8000(r7)
    lwzx r0, r10, r0
    stw r0, -0x8000(r7)
L_8005B308:
    addi r11, r11, 0x4
    addi r12, r12, 0x1
L_8005B310:
    clrlwi r0, r12, 24
    cmplwi r0, 0x8
    opword  0x4180FF8C  // blt .L_8005B2A4
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    li r0, 0x0
    stb r0, 0x5ab(r3)
    blr
}

ASM void fn_8005B32C(void)
{
    nofralloc
    subi r0, r4, 0x9
    opword  0x808283A8  // lwz r4, __GXData@sda21(r0)
    slwi r3, r3, 2
    add r4, r4, r3
    cmplwi r0, 0x10
    addi r3, r4, 0x1c
    addi r8, r4, 0x3c
    addi r9, r4, 0x5c
    opword  0x41810248  // bgt .L_8005B594
    lis r4, jumptable_804970A0@ha
    addi r4, r4, jumptable_804970A0@l
    slwi r0, r0, 2
    lwzx r0, r4, r0
    mtctr r0
    bctr
    lwz r0, 0x0(r3)
    clrlwi r0, r0, 31
    stw r0, 0x0(r5)
    lwz r0, 0x0(r3)
    extrwi r0, r0, 3, 28
    stw r0, 0x0(r6)
    lwz r0, 0x0(r3)
    extrwi r0, r0, 5, 23
    stb r0, 0x0(r7)
    blr
    lwz r0, 0x0(r3)
    extrwi r0, r0, 1, 22
    stw r0, 0x0(r5)
    lwz r0, 0x0(r5)
    cmpwi r0, 0x1
    opword  0x40820018  // bne .L_8005B3BC
    lwz r0, 0x0(r3)
    srwi. r0, r0, 31
    opword  0x4182000C  // beq .L_8005B3BC
    li r0, 0x2
    stw r0, 0x0(r5)
L_8005B3BC:
    lwz r0, 0x0(r3)
    extrwi r0, r0, 3, 19
    stw r0, 0x0(r6)
    lwz r0, 0x0(r6)
    cmpwi r0, 0x2
    opword  0x41820030  // beq .L_8005B400
    opword  0x40800010  // bge .L_8005B3E4
    cmpwi r0, 0x1
    opword  0x40800014  // bge .L_8005B3F0
    opword  0x48000020  // b .L_8005B400
L_8005B3E4:
    cmpwi r0, 0x4
    opword  0x40800018  // bge .L_8005B400
    opword  0x4800000C  // b .L_8005B3F8
L_8005B3F0:
    li r0, 0x6
    opword  0x48000010  // b .L_8005B404
L_8005B3F8:
    li r0, 0xe
    opword  0x48000008  // b .L_8005B404
L_8005B400:
    li r0, 0x0
L_8005B404:
    stb r0, 0x0(r7)
    blr
    lwz r4, 0x0(r3)
    li r0, 0x0
    extrwi r4, r4, 1, 18
    stw r4, 0x0(r5)
    lwz r3, 0x0(r3)
    extrwi r3, r3, 3, 15
    stw r3, 0x0(r6)
    stb r0, 0x0(r7)
    blr
    lwz r4, 0x0(r3)
    li r0, 0x0
    extrwi r4, r4, 1, 14
    stw r4, 0x0(r5)
    lwz r3, 0x0(r3)
    extrwi r3, r3, 3, 11
    stw r3, 0x0(r6)
    stb r0, 0x0(r7)
    blr
    lwz r0, 0x0(r3)
    extrwi r0, r0, 1, 10
    stw r0, 0x0(r5)
    lwz r0, 0x0(r3)
    extrwi r0, r0, 3, 7
    stw r0, 0x0(r6)
    lwz r0, 0x0(r3)
    extrwi r0, r0, 5, 2
    stb r0, 0x0(r7)
    blr
    lwz r0, 0x0(r8)
    clrlwi r0, r0, 31
    stw r0, 0x0(r5)
    lwz r0, 0x0(r8)
    extrwi r0, r0, 3, 28
    stw r0, 0x0(r6)
    lwz r0, 0x0(r8)
    extrwi r0, r0, 5, 23
    stb r0, 0x0(r7)
    blr
    lwz r0, 0x0(r8)
    extrwi r0, r0, 1, 22
    stw r0, 0x0(r5)
    lwz r0, 0x0(r8)
    extrwi r0, r0, 3, 19
    stw r0, 0x0(r6)
    lwz r0, 0x0(r8)
    extrwi r0, r0, 5, 14
    stb r0, 0x0(r7)
    blr
    lwz r0, 0x0(r8)
    extrwi r0, r0, 1, 13
    stw r0, 0x0(r5)
    lwz r0, 0x0(r8)
    extrwi r0, r0, 3, 10
    stw r0, 0x0(r6)
    lwz r0, 0x0(r8)
    extrwi r0, r0, 5, 5
    stb r0, 0x0(r7)
    blr
    lwz r0, 0x0(r8)
    extrwi r0, r0, 1, 4
    stw r0, 0x0(r5)
    lwz r0, 0x0(r8)
    extrwi r0, r0, 3, 1
    stw r0, 0x0(r6)
    lwz r0, 0x0(r9)
    clrlwi r0, r0, 27
    stb r0, 0x0(r7)
    blr
    lwz r0, 0x0(r9)
    extrwi r0, r0, 1, 26
    stw r0, 0x0(r5)
    lwz r0, 0x0(r9)
    extrwi r0, r0, 3, 23
    stw r0, 0x0(r6)
    lwz r0, 0x0(r9)
    extrwi r0, r0, 5, 18
    stb r0, 0x0(r7)
    blr
    lwz r0, 0x0(r9)
    extrwi r0, r0, 1, 17
    stw r0, 0x0(r5)
    lwz r0, 0x0(r9)
    extrwi r0, r0, 3, 14
    stw r0, 0x0(r6)
    lwz r0, 0x0(r9)
    extrwi r0, r0, 5, 9
    stb r0, 0x0(r7)
    blr
    lwz r0, 0x0(r9)
    extrwi r0, r0, 1, 8
    stw r0, 0x0(r5)
    lwz r0, 0x0(r9)
    extrwi r0, r0, 3, 5
    stw r0, 0x0(r6)
    lwz r0, 0x0(r9)
    srwi r0, r0, 27
    stb r0, 0x0(r7)
    blr
L_8005B594:
    li r0, 0x1
    stw r0, 0x0(r5)
    li r0, 0x0
    stw r0, 0x0(r6)
    stb r0, 0x0(r7)
    blr
}

ASM void fn_8005B5AC(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x20(r1)
    stw r31, 0x1c(r1)
    li r31, 0x9
    stw r30, 0x18(r1)
    addi r30, r4, 0x0
    stw r29, 0x14(r1)
    addi r29, r3, 0x0
L_8005B5D0:
    stw r31, 0x0(r30)
    addi r3, r29, 0x0
    addi r4, r31, 0x0
    addi r5, r30, 0x4
    addi r6, r30, 0x8
    addi r7, r30, 0xc
    bl fn_8005B32C
    addi r31, r31, 0x1
    cmpwi r31, 0x14
    addi r30, r30, 0x10
    opword  0x4081FFD8  // ble .L_8005B5D0
    li r0, 0xff
    stw r0, 0x0(r30)
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    addi r1, r1, 0x20
    mtlr r0
    blr
}

ASM void fn_8005B620(void)
{
    nofralloc
    cmpwi r3, 0x19
    opword  0x40820008  // bne .L_8005B62C
    li r3, 0xa
L_8005B62C:
    li r0, 0x8
    subi r6, r3, 0x9
    lis r3, 0xcc01
    stb r0, -0x8000(r3)
    ori r0, r6, 0xa0
    clrlwi r4, r4, 2
    stb r0, -0x8000(r3)
    subic. r0, r6, 0xc
    stw r4, -0x8000(r3)
    opword  0x4180001C  // blt .L_8005B66C
    cmpwi r0, 0x4
    opword  0x40800014  // bge .L_8005B66C
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    slwi r0, r0, 2
    add r3, r3, r0
    stw r4, 0x88(r3)
L_8005B66C:
    li r0, 0x8
    lis r3, 0xcc01
    stb r0, -0x8000(r3)
    ori r0, r6, 0xb0
    clrlwi r4, r5, 24
    stb r0, -0x8000(r3)
    subic. r0, r6, 0xc
    stw r4, -0x8000(r3)
    bltlr
    cmpwi r0, 0x4
    bgelr
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    slwi r0, r0, 2
    add r3, r3, r0
    stw r4, 0x98(r3)
    blr
}

ASM void fn_8005B6AC(void)
{
    nofralloc
    li r0, 0x48
    lis r3, 0xcc01
    stb r0, -0x8000(r3)
    blr
}

ASM void fn_8005B6BC(void)
{
    nofralloc
    mflr r0
    cmplwi r5, 0x14
    stw r0, 0x4(r1)
    li r10, 0x0
    li r12, 0x0
    stwu r1, -0x8(r1)
    li r11, 0x5
    opword  0x41810098  // bgt .L_8005B770
    lis r9, jumptable_80497100@ha
    addi r9, r9, jumptable_80497100@l
    slwi r0, r5, 2
    lwzx r0, r9, r0
    mtctr r0
    bctr
    li r11, 0x0
    li r12, 0x1
    opword  0x48000074  // b .L_8005B770
    li r11, 0x1
    li r12, 0x1
    opword  0x48000068  // b .L_8005B770
    li r11, 0x3
    li r12, 0x1
    opword  0x4800005C  // b .L_8005B770
    li r11, 0x4
    li r12, 0x1
    opword  0x48000050  // b .L_8005B770
    li r11, 0x2
    opword  0x48000048  // b .L_8005B770
    li r11, 0x2
    opword  0x48000040  // b .L_8005B770
    li r11, 0x5
    opword  0x48000038  // b .L_8005B770
    li r11, 0x6
    opword  0x48000030  // b .L_8005B770
    li r11, 0x7
    opword  0x48000028  // b .L_8005B770
    li r11, 0x8
    opword  0x48000020  // b .L_8005B770
    li r11, 0x9
    opword  0x48000018  // b .L_8005B770
    li r11, 0xa
    opword  0x48000010  // b .L_8005B770
    li r11, 0xb
    opword  0x48000008  // b .L_8005B770
    li r11, 0xc
L_8005B770:
    cmpwi r4, 0x1
    opword  0x41820024  // beq .L_8005B798
    opword  0x40800010  // bge .L_8005B788
    cmpwi r4, 0x0
    opword  0x40800038  // bge .L_8005B7B8
    opword  0x480000AC  // b .L_8005B830
L_8005B788:
    cmpwi r4, 0xa
    opword  0x41820074  // beq .L_8005B800
    opword  0x408000A0  // bge .L_8005B830
    opword  0x48000040  // b .L_8005B7D4
L_8005B798:
    li r0, 0x0
    rlwimi r10, r0, 1, 30, 30
    addi r4, r10, 0x0
    rlwimi r4, r12, 2, 29, 29
    addi r10, r4, 0x0
    rlwimi r10, r0, 4, 25, 27
    rlwimi r10, r11, 7, 20, 24
    opword  0x4800007C  // b .L_8005B830
L_8005B7B8:
    li r0, 0x1
    rlwimi r10, r0, 1, 30, 30
    li r0, 0x0
    rlwimi r10, r12, 2, 29, 29
    rlwimi r10, r0, 4, 25, 27
    rlwimi r10, r11, 7, 20, 24
    opword  0x48000060  // b .L_8005B830
L_8005B7D4:
    li r0, 0x0
    rlwimi r10, r0, 1, 30, 30
    li r0, 0x1
    rlwimi r10, r12, 2, 29, 29
    rlwimi r10, r0, 4, 25, 27
    subi r0, r5, 0xc
    rlwimi r10, r11, 7, 20, 24
    rlwimi r10, r0, 12, 17, 19
    subi r0, r4, 0x2
    rlwimi r10, r0, 15, 14, 16
    opword  0x48000034  // b .L_8005B830
L_8005B800:
    cmpwi r5, 0x13
    li r0, 0x0
    rlwimi r10, r0, 1, 30, 30
    rlwimi r10, r12, 2, 29, 29
    opword  0x40820010  // bne .L_8005B820
    li r0, 0x2
    rlwimi r10, r0, 4, 25, 27
    opword  0x4800000C  // b .L_8005B828
L_8005B820:
    li r0, 0x3
    rlwimi r10, r0, 4, 25, 27
L_8005B828:
    li r0, 0x2
    rlwimi r10, r0, 7, 20, 24
L_8005B830:
    li r9, 0x10
    lis r5, 0xcc01
    stb r9, -0x8000(r5)
    addi r4, r3, 0x1040
    subi r0, r8, 0x40
    stw r4, -0x8000(r5)
    li r8, 0x0
    rlwimi r8, r0, 0, 26, 31
    stw r10, -0x8000(r5)
    addi r0, r3, 0x1050
    cmplwi r3, 0x6
    stb r9, -0x8000(r5)
    rlwimi r8, r7, 8, 23, 23
    stw r0, -0x8000(r5)
    stw r8, -0x8000(r5)
    opword  0x418100A8  // bgt .L_8005B914
    lis r4, jumptable_804970E4@ha
    addi r4, r4, jumptable_804970E4@l
    slwi r0, r3, 2
    lwzx r0, r4, r0
    mtctr r0
    bctr
    opword  0x808283A8  // lwz r4, __GXData@sda21(r0)
    lwz r0, 0x80(r4)
    rlwimi r0, r6, 6, 20, 25
    stw r0, 0x80(r4)
    opword  0x4800008C  // b .L_8005B924
    opword  0x808283A8  // lwz r4, __GXData@sda21(r0)
    lwz r0, 0x80(r4)
    rlwimi r0, r6, 12, 14, 19
    stw r0, 0x80(r4)
    opword  0x48000078  // b .L_8005B924
    opword  0x808283A8  // lwz r4, __GXData@sda21(r0)
    lwz r0, 0x80(r4)
    rlwimi r0, r6, 18, 8, 13
    stw r0, 0x80(r4)
    opword  0x48000064  // b .L_8005B924
    opword  0x808283A8  // lwz r4, __GXData@sda21(r0)
    lwz r0, 0x80(r4)
    rlwimi r0, r6, 24, 2, 7
    stw r0, 0x80(r4)
    opword  0x48000050  // b .L_8005B924
    opword  0x808283A8  // lwz r4, __GXData@sda21(r0)
    lwz r0, 0x84(r4)
    rlwimi r0, r6, 0, 26, 31
    stw r0, 0x84(r4)
    opword  0x4800003C  // b .L_8005B924
    opword  0x808283A8  // lwz r4, __GXData@sda21(r0)
    lwz r0, 0x84(r4)
    rlwimi r0, r6, 6, 20, 25
    stw r0, 0x84(r4)
    opword  0x48000028  // b .L_8005B924
    opword  0x808283A8  // lwz r4, __GXData@sda21(r0)
    lwz r0, 0x84(r4)
    rlwimi r0, r6, 12, 14, 19
    stw r0, 0x84(r4)
    opword  0x48000014  // b .L_8005B924
L_8005B914:
    opword  0x808283A8  // lwz r4, __GXData@sda21(r0)
    lwz r0, 0x84(r4)
    rlwimi r0, r6, 18, 8, 13
    stw r0, 0x84(r4)
L_8005B924:
    addi r3, r3, 0x1
    bl fn_800601E8
    lwz r0, 0xc(r1)
    addi r1, r1, 0x8
    mtlr r0
    blr
}

// IDENTIFIED as the real GX SDK's `GXSetNumTexGens(u8 nTexGens)` -
// `r3`=nTexGens. Confirmed BYTE-FOR-BYTE identical (down to register
// allocation) against the stale local reference copy at
// `src/Dolphin/gx/gxsetnumtexgens_801873e4.c` - same instruction sequence,
// packs `nTexGens` directly (no -1 adjustment) into `__GXData->0x204`
// (genMode) bits 0-3 (LSB, `rlwimi ...,0,28,31`), immediately flushes via
// `GX_LOAD_XF_REG` opcode 0x10 to XF address 0x103F, then sets
// `dirtyState |= GX_DIRTY_GEN_MODE` (0x5ac |= 4). NOTE: kept the
// `fn_8005B93C` symbol name - renaming to `GXSetNumTexGens` collides at
// link time with an unrelated, currently-dead same-named definition
// elsewhere in `src/Dolphin/gx/` (unwired, but the linker still trips on
// the duplicate). See [[project_fsa_gxbegin_identified]].
ASM void fn_8005B93C(void)
{
    nofralloc
    opword  0x80C283A8  // lwz r6, __GXData@sda21(r0)
    clrlwi r5, r3, 24
    li r4, 0x10
    lwz r0, 0x204(r6)
    rlwimi r0, r3, 0, 28, 31
    lis r3, 0xcc01
    stw r0, 0x204(r6)
    li r0, 0x103f
    stb r4, -0x8000(r3)
    stw r0, -0x8000(r3)
    stw r5, -0x8000(r3)
    lwz r0, 0x5ac(r6)
    ori r0, r0, 0x4
    stw r0, 0x5ac(r6)
    blr
}

ASM void GXSetMisc(void)
{
    nofralloc
    cmpwi r3, 0x2
    opword  0x41820060  // beq .L_8005B9DC
    opword  0x40800014  // bge .L_8005B994
    cmpwi r3, 0x0
    beqlr
    opword  0x40800014  // bge .L_8005B9A0
    blr
L_8005B994:
    cmpwi r3, 0x4
    bgelr
    opword  0x48000058  // b .L_8005B9F4
L_8005B9A0:
    opword  0x80A283A8  // lwz r5, __GXData@sda21(r0)
    li r0, 0x1
    sth r4, 0x4(r5)
    lhz r3, 0x4(r5)
    cntlzw r3, r3
    extrwi r3, r3, 16, 11
    sth r3, 0x0(r5)
    sth r0, 0x2(r5)
    lhz r0, 0x4(r5)
    cmplwi r0, 0x0
    beqlr
    lwz r0, 0x5ac(r5)
    ori r0, r0, 0x8
    stw r0, 0x5ac(r5)
    blr
L_8005B9DC:
    neg r4, r4
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    subic r0, r4, 0x1
    subfe r0, r0, r4
    stb r0, 0x5a9(r3)
    blr
L_8005B9F4:
    neg r4, r4
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    subic r0, r4, 0x1
    subfe r0, r0, r4
    stb r0, 0x5aa(r3)
    blr
}

ASM void fn_8005BA0C(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x8(r1)
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    lwz r0, 0x5ac(r3)
    cmplwi r0, 0x0
    opword  0x41820008  // beq .L_8005BA2C
    bl fn_8005C1CC
L_8005BA2C:
    li r0, 0x0
    lis r3, 0xcc01
    stw r0, -0x8000(r3)
    stw r0, -0x8000(r3)
    stw r0, -0x8000(r3)
    stw r0, -0x8000(r3)
    stw r0, -0x8000(r3)
    stw r0, -0x8000(r3)
    stw r0, -0x8000(r3)
    stw r0, -0x8000(r3)
    bl PPCSync
    lwz r0, 0xc(r1)
    addi r1, r1, 0x8
    mtlr r0
    blr
}

ASM void fn_8005BA68(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x28(r1)
    stmw r27, 0x14(r1)
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    lbz r0, 0x5aa(r3)
    cmplwi r0, 0x0
    opword  0x418200B0  // beq .L_8005BB34
    bl fn_8005A45C
    cmplwi r3, 0x0
    opword  0x418200A4  // beq .L_8005BB34
    opword  0x806D8AEC  // lwz r3, __memReg@sda21(r0)
    addi r6, r3, 0x4e
    lhz r4, 0x4e(r3)
    addi r5, r3, 0x50
L_8005BAA4:
    mr r0, r4
    lhz r4, 0x0(r6)
    lhz r3, 0x0(r5)
    cmplw r4, r0
    opword  0x4082FFF0  // bne .L_8005BAA4
    slwi r0, r4, 16
    or r27, r0, r3
L_8005BAC0:
    bl OSGetTime
    li r0, 0x0
    addi r31, r4, 0x0
    addi r30, r3, 0x0
    xoris r28, r0, 0x8000
    li r29, 0x8
L_8005BAD8:
    bl OSGetTime
    subfc r4, r31, r4
    subfe r0, r30, r3
    xoris r3, r0, 0x8000
    subfc r0, r4, r29
    subfe r3, r3, r28
    subfe r3, r28, r28
    neg. r3, r3
    opword  0x4182FFE0  // beq .L_8005BAD8
    opword  0x806D8AEC  // lwz r3, __memReg@sda21(r0)
    addi r6, r3, 0x4e
    lhz r4, 0x4e(r3)
    addi r5, r3, 0x50
L_8005BB0C:
    mr r0, r4
    lhz r4, 0x0(r6)
    lhz r3, 0x0(r5)
    cmplw r4, r0
    opword  0x4082FFF0  // bne .L_8005BB0C
    slwi r0, r4, 16
    or r0, r0, r3
    cmplw r0, r27
    mr r27, r0
    opword  0x4082FF90  // bne .L_8005BAC0
L_8005BB34:
    lis r3, 0xcc00
    li r0, 0x1
    addi r27, r3, 0x3000
    stwu r0, 0x18(r27)
    bl OSGetTime
    li r0, 0x0
    addi r31, r4, 0x0
    addi r30, r3, 0x0
    xoris r28, r0, 0x8000
    li r29, 0x32
L_8005BB5C:
    bl OSGetTime
    subfc r4, r31, r4
    subfe r0, r30, r3
    xoris r3, r0, 0x8000
    subfc r0, r4, r29
    subfe r3, r3, r28
    subfe r3, r28, r28
    neg. r3, r3
    opword  0x4182FFE0  // beq .L_8005BB5C
    li r30, 0x0
    stw r30, 0x0(r27)
    bl OSGetTime
    addi r28, r4, 0x0
    addi r29, r3, 0x0
    xoris r31, r30, 0x8000
    li r30, 0x5
L_8005BB9C:
    bl OSGetTime
    subfc r4, r28, r4
    subfe r0, r29, r3
    xoris r3, r0, 0x8000
    subfc r0, r4, r30
    subfe r3, r3, r31
    subfe r3, r31, r31
    neg. r3, r3
    opword  0x4182FFE0  // beq .L_8005BB9C
    lmw r27, 0x14(r1)
    lwz r0, 0x2c(r1)
    addi r1, r1, 0x28
    mtlr r0
    blr
}

ASM void fn_8005BBD4(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x28(r1)
    stmw r27, 0x14(r1)
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    lbz r0, 0x5aa(r3)
    cmplwi r0, 0x0
    opword  0x418200B0  // beq .L_8005BCA0
    bl fn_8005A45C
    cmplwi r3, 0x0
    opword  0x418200A4  // beq .L_8005BCA0
    opword  0x806D8AEC  // lwz r3, __memReg@sda21(r0)
    addi r6, r3, 0x4e
    lhz r4, 0x4e(r3)
    addi r5, r3, 0x50
L_8005BC10:
    mr r0, r4
    lhz r4, 0x0(r6)
    lhz r3, 0x0(r5)
    cmplw r4, r0
    opword  0x4082FFF0  // bne .L_8005BC10
    slwi r0, r4, 16
    or r27, r0, r3
L_8005BC2C:
    bl OSGetTime
    li r0, 0x0
    addi r31, r4, 0x0
    addi r30, r3, 0x0
    xoris r28, r0, 0x8000
    li r29, 0x8
L_8005BC44:
    bl OSGetTime
    subfc r4, r31, r4
    subfe r0, r30, r3
    xoris r3, r0, 0x8000
    subfc r0, r4, r29
    subfe r3, r3, r28
    subfe r3, r28, r28
    neg. r3, r3
    opword  0x4182FFE0  // beq .L_8005BC44
    opword  0x806D8AEC  // lwz r3, __memReg@sda21(r0)
    addi r6, r3, 0x4e
    lhz r4, 0x4e(r3)
    addi r5, r3, 0x50
L_8005BC78:
    mr r0, r4
    lhz r4, 0x0(r6)
    lhz r3, 0x0(r5)
    cmplw r4, r0
    opword  0x4082FFF0  // bne .L_8005BC78
    slwi r0, r4, 16
    or r0, r0, r3
    cmplw r0, r27
    mr r27, r0
    opword  0x4082FF90  // bne .L_8005BC2C
L_8005BCA0:
    lis r3, 0xcc00
    li r0, 0x1
    addi r27, r3, 0x3000
    stwu r0, 0x18(r27)
    bl OSGetTime
    li r0, 0x0
    addi r31, r4, 0x0
    addi r30, r3, 0x0
    xoris r28, r0, 0x8000
    li r29, 0x32
L_8005BCC8:
    bl OSGetTime
    subfc r4, r31, r4
    subfe r0, r30, r3
    xoris r3, r0, 0x8000
    subfc r0, r4, r29
    subfe r3, r3, r28
    subfe r3, r28, r28
    neg. r3, r3
    opword  0x4182FFE0  // beq .L_8005BCC8
    li r30, 0x0
    stw r30, 0x0(r27)
    bl OSGetTime
    addi r28, r4, 0x0
    addi r29, r3, 0x0
    xoris r31, r30, 0x8000
    li r30, 0x5
L_8005BD08:
    bl OSGetTime
    subfc r4, r28, r4
    subfe r0, r29, r3
    xoris r3, r0, 0x8000
    subfc r0, r4, r30
    subfe r3, r3, r31
    subfe r3, r31, r31
    neg. r3, r3
    opword  0x4182FFE0  // beq .L_8005BD08
    bl fn_8005A300
    lmw r27, 0x14(r1)
    lwz r0, 0x2c(r1)
    addi r1, r1, 0x28
    mtlr r0
    blr
}

ASM void fn_8005BD44(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    stw r30, 0x10(r1)
    bl OSDisableInterrupts
    li r0, 0x61
    opword  0x808283A8  // lwz r4, __GXData@sda21(r0)
    lis r6, 0xcc01
    lis r5, 0x4500
    stb r0, -0x8000(r6)
    addi r0, r5, 0x2
    stw r0, -0x8000(r6)
    mr r30, r3
    lwz r0, 0x5ac(r4)
    cmplwi r0, 0x0
    opword  0x41820008  // beq .L_8005BD8C
    bl fn_8005C1CC
L_8005BD8C:
    li r31, 0x0
    lis r3, 0xcc01
    stw r31, -0x8000(r3)
    stw r31, -0x8000(r3)
    stw r31, -0x8000(r3)
    stw r31, -0x8000(r3)
    stw r31, -0x8000(r3)
    stw r31, -0x8000(r3)
    stw r31, -0x8000(r3)
    stw r31, -0x8000(r3)
    bl PPCSync
    opword  0x9BED8B30  // stb r31, lbl_8053A6F0@sda21(r0)
    mr r3, r30
    bl OSRestoreInterrupts
    lwz r0, 0x1c(r1)
    lwz r31, 0x14(r1)
    lwz r30, 0x10(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

ASM void fn_8005BDDC(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    bl OSDisableInterrupts
    li r0, 0x61
    lis r5, 0xcc01
    lis r4, 0x4500
    stb r0, -0x8000(r5)
    addi r0, r4, 0x2
    stw r0, -0x8000(r5)
    mr r31, r3
    bl fn_8005BA0C
    li r0, 0x0
    opword  0x980D8B30  // stb r0, lbl_8053A6F0@sda21(r0)
    mr r3, r31
    bl OSRestoreInterrupts
    bl OSDisableInterrupts
    mr r31, r3
    opword  0x4800000C  // b .L_8005BE34
L_8005BE2C:
    opword  0x386D8B34  // li r3, lbl_8053A6F4@sda21
    bl OSSleepThread
L_8005BE34:
    opword  0x880D8B30  // lbz r0, lbl_8053A6F0@sda21(r0)
    cmplwi r0, 0x0
    opword  0x4182FFF0  // beq .L_8005BE2C
    mr r3, r31
    bl OSRestoreInterrupts
    lwz r0, 0x1c(r1)
    lwz r31, 0x14(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

ASM void fn_8005BE5C(void)
{
    nofralloc
    li r0, 0x61
    opword  0x808283A8  // lwz r4, __GXData@sda21(r0)
    lis r5, 0xcc01
    stb r0, -0x8000(r5)
    li r0, 0x0
    lwz r3, 0x1dc(r4)
    stw r3, -0x8000(r5)
    sth r0, 0x2(r4)
    blr
}

ASM void fn_8005BE80(void)
{
    nofralloc
    opword  0x80AD8AE8  // lwz r5, __peReg@sda21(r0)
    clrlwi r0, r4, 24
    rlwimi r0, r3, 8, 0, 23
    sth r0, 0x6(r5)
    blr
}

ASM void fn_8005BE94(void)
{
    nofralloc
    li r5, 0x0
    opword  0x808D8AE8  // lwz r4, __peReg@sda21(r0)
    rlwimi r5, r3, 0, 30, 31
    li r0, 0x1
    addi r3, r5, 0x0
    rlwimi r3, r0, 2, 29, 29
    sth r3, 0x8(r4)
    blr
}

ASM void fn_8005BEB4(void)
{
    nofralloc
    opword  0x808D8AE8  // lwz r4, __peReg@sda21(r0)
    clrlwi r0, r3, 24
    lhz r3, 0x2(r4)
    rlwimi r3, r0, 4, 27, 27
    sth r3, 0x2(r4)
    blr
}

ASM void fn_8005BECC(void)
{
    nofralloc
    opword  0x80ED8AE8  // lwz r7, __peReg@sda21(r0)
    cmpwi r3, 0x1
    li r9, 0x1
    lhz r10, 0x2(r7)
    opword  0x41820010  // beq .L_8005BEEC
    cmpwi r3, 0x3
    opword  0x41820008  // beq .L_8005BEEC
    li r9, 0x0
L_8005BEEC:
    subfic r0, r3, 0x3
    opword  0x80ED8AE8  // lwz r7, __peReg@sda21(r0)
    cntlzw r8, r0
    subfic r0, r3, 0x2
    rlwimi r10, r9, 0, 31, 31
    srwi r3, r8, 5
    addi r8, r10, 0x0
    cntlzw r0, r0
    rlwimi r8, r3, 11, 20, 20
    rlwimi r8, r0, 28, 30, 30
    rlwimi r8, r6, 12, 16, 19
    rlwimi r8, r4, 8, 21, 23
    li r0, 0x41
    rlwimi r8, r5, 5, 24, 26
    rlwimi r8, r0, 24, 0, 7
    sth r8, 0x2(r7)
    blr
}

ASM void fn_8005BF30(void)
{
    nofralloc
    opword  0x808D8AE8  // lwz r4, __peReg@sda21(r0)
    clrlwi r0, r3, 24
    lhz r3, 0x2(r4)
    rlwimi r3, r0, 3, 28, 28
    sth r3, 0x2(r4)
    blr
}

ASM void fn_8005BF48(void)
{
    nofralloc
    clrlwi r0, r4, 24
    opword  0x808D8AE8  // lwz r4, __peReg@sda21(r0)
    li r5, 0x0
    rlwimi r5, r0, 0, 24, 31
    clrlwi r0, r3, 24
    addi r3, r5, 0x0
    rlwimi r3, r0, 8, 23, 23
    sth r3, 0x4(r4)
    blr
}

ASM void fn_8005BF6C(void)
{
    nofralloc
    opword  0x808D8AE8  // lwz r4, __peReg@sda21(r0)
    clrlwi r0, r3, 24
    lhz r3, 0x2(r4)
    rlwimi r3, r0, 2, 29, 29
    sth r3, 0x2(r4)
    blr
}

ASM void fn_8005BF84(void)
{
    nofralloc
    clrlwi r0, r3, 24
    opword  0x806D8AE8  // lwz r3, __peReg@sda21(r0)
    li r6, 0x0
    rlwimi r6, r0, 0, 31, 31
    rlwimi r6, r4, 1, 28, 30
    rlwimi r6, r5, 4, 27, 27
    sth r6, 0x0(r3)
    blr
}

ASM void fn_8005BFA4(void)
{
    nofralloc
    clrlwi r0, r3, 16
    lis r3, 0xc800
    rlwimi r3, r0, 2, 20, 29
    li r0, 0x0
    rlwimi r3, r4, 12, 10, 19
    rlwimi r3, r0, 22, 8, 9
    lwz r0, 0x0(r3)
    stw r0, 0x0(r5)
    blr
}

ASM void fn_8005BFC8(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    stw r30, 0x10(r1)
    mr r30, r3
    opword  0x83ED8B28  // lwz r31, lbl_8053A6E8@sda21(r0)
    bl OSDisableInterrupts
    opword  0x93CD8B28  // stw r30, lbl_8053A6E8@sda21(r0)
    bl OSRestoreInterrupts
    mr r3, r31
    lwz r0, 0x1c(r1)
    lwz r31, 0x14(r1)
    lwz r30, 0x10(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

ASM void fn_8005C00C(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x2e0(r1)
    stw r31, 0x2dc(r1)
    stw r30, 0x2d8(r1)
    mr r30, r4
    opword  0x800D8B28  // lwz r0, lbl_8053A6E8@sda21(r0)
    opword  0x806D8AE8  // lwz r3, __peReg@sda21(r0)
    cmplwi r0, 0x0
    lhz r31, 0xe(r3)
    opword  0x41820034  // beq .L_8005C068
    addi r3, r1, 0x10
    bl OSClearContext
    addi r3, r1, 0x10
    bl OSSetCurrentContext
    opword  0x818D8B28  // lwz r12, lbl_8053A6E8@sda21(r0)
    addi r3, r31, 0x0
    mtlr r12
    blrl
    addi r3, r1, 0x10
    bl OSClearContext
    mr r3, r30
    bl OSSetCurrentContext
L_8005C068:
    opword  0x806D8AE8  // lwz r3, __peReg@sda21(r0)
    li r0, 0x1
    lhz r4, 0xa(r3)
    rlwimi r4, r0, 2, 29, 29
    sth r4, 0xa(r3)
    lwz r0, 0x2e4(r1)
    lwz r31, 0x2dc(r1)
    lwz r30, 0x2d8(r1)
    addi r1, r1, 0x2e0
    mtlr r0
    blr
}

ASM void fn_8005C094(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    stw r30, 0x10(r1)
    mr r30, r3
    opword  0x83ED8B2C  // lwz r31, lbl_8053A6EC@sda21(r0)
    bl OSDisableInterrupts
    opword  0x93CD8B2C  // stw r30, lbl_8053A6EC@sda21(r0)
    bl OSRestoreInterrupts
    mr r3, r31
    lwz r0, 0x1c(r1)
    lwz r31, 0x14(r1)
    lwz r30, 0x10(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

ASM void fn_8005C0D8(void)
{
    nofralloc
    mflr r0
    li r3, 0x1
    stw r0, 0x4(r1)
    stwu r1, -0x2e0(r1)
    stw r31, 0x2dc(r1)
    addi r31, r4, 0x0
    opword  0x80AD8AE8  // lwz r5, __peReg@sda21(r0)
    lhz r0, 0xa(r5)
    rlwimi r0, r3, 3, 28, 28
    sth r0, 0xa(r5)
    opword  0x800D8B2C  // lwz r0, lbl_8053A6EC@sda21(r0)
    opword  0x986D8B30  // stb r3, lbl_8053A6F0@sda21(r0)
    cmplwi r0, 0x0
    opword  0x41820030  // beq .L_8005C13C
    addi r3, r1, 0x10
    bl OSClearContext
    addi r3, r1, 0x10
    bl OSSetCurrentContext
    opword  0x818D8B2C  // lwz r12, lbl_8053A6EC@sda21(r0)
    mtlr r12
    blrl
    addi r3, r1, 0x10
    bl OSClearContext
    mr r3, r31
    bl OSSetCurrentContext
L_8005C13C:
    opword  0x386D8B34  // li r3, lbl_8053A6F4@sda21
    bl OSWakeupThread
    lwz r0, 0x2e4(r1)
    lwz r31, 0x2dc(r1)
    addi r1, r1, 0x2e0
    mtlr r0
    blr
}

ASM void __GXPEInit(void)
{
    nofralloc
    mflr r0
    lis r3, fn_8005C00C@ha
    stw r0, 0x4(r1)
    addi r4, r3, fn_8005C00C@l
    li r3, 0x12
    stwu r1, -0x8(r1)
    bl __OSSetInterruptHandler
    lis r3, fn_8005C0D8@ha
    addi r4, r3, fn_8005C0D8@l
    li r3, 0x13
    bl __OSSetInterruptHandler
    opword  0x386D8B34  // li r3, lbl_8053A6F4@sda21
    bl OSInitThreadQueue
    li r3, 0x2000
    bl __OSUnmaskInterrupts
    li r3, 0x1000
    bl __OSUnmaskInterrupts
    opword  0x806D8AE8  // lwz r3, __peReg@sda21(r0)
    li r0, 0x1
    lhz r4, 0xa(r3)
    rlwimi r4, r0, 2, 29, 29
    rlwimi r4, r0, 3, 28, 28
    rlwimi r4, r0, 0, 31, 31
    rlwimi r4, r0, 1, 30, 30
    sth r4, 0xa(r3)
    lwz r0, 0xc(r1)
    addi r1, r1, 0x8
    mtlr r0
    blr
}

ASM void fn_8005C1CC(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x10(r1)
    stw r31, 0xc(r1)
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    lwz r31, 0x5ac(r3)
    clrlwi. r0, r31, 31
    opword  0x41820008  // beq .L_8005C1F0
    bl fn_8005DFD4
L_8005C1F0:
    rlwinm. r0, r31, 0, 30, 30
    opword  0x41820008  // beq .L_8005C1FC
    bl fn_8005E988
L_8005C1FC:
    rlwinm. r0, r31, 0, 29, 29
    opword  0x41820008  // beq .L_8005C208
    bl fn_8005C4E4
L_8005C208:
    rlwinm. r0, r31, 0, 28, 28
    opword  0x41820008  // beq .L_8005C214
    bl fn_8005A958
L_8005C214:
    rlwinm. r0, r31, 0, 27, 27
    opword  0x41820008  // beq .L_8005C220
    bl fn_8005B290
L_8005C220:
    rlwinm. r0, r31, 0, 27, 28
    opword  0x41820008  // beq .L_8005C22C
    bl fn_8005AA14
L_8005C22C:
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    li r0, 0x0
    stw r0, 0x5ac(r3)
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    addi r1, r1, 0x10
    mtlr r0
    blr
}

// IDENTIFIED as the real GX SDK's `GXBegin(GXPrimitive type, GXVtxFmt fmt,
// u16 vert_num)` - `r3`=type, `r4`=fmt, `r5`=vert_num. Confirmed by a
// near-exact structural match against zeldaret/tww's decompiled source:
//   GXData* data = gx; u32 dirtyFlags = data->dirtyState;
//   if (dirtyFlags != 0) {
//       if (dirtyFlags & GX_DIRTY_SU_TEX)   __GXSetSUTexRegs();
//       if (dirtyFlags & GX_DIRTY_BP_MASK)  __GXUpdateBPMask();
//       if (dirtyFlags & GX_DIRTY_GEN_MODE) __GXSetGenMode();
//       if (dirtyFlags & GX_DIRTY_VCD)      __GXSetVCD();
//       if (dirtyFlags & GX_DIRTY_VAT)      __GXSetVAT();
//       if (dirtyFlags & (GX_DIRTY_VCD|GX_DIRTY_VAT)) __GXCalculateVLim();
//       gx->dirtyState = 0;
//   }
//   if (*(u32*)gx == 0) __GXSendFlushPrim();
//   GXFIFO.u8 = fmt | type; GXFIFO.u16 = vert_num;
// This pins the dirty-state bitmask exactly: SU_TEX=1, BP_MASK=2,
// GEN_MODE=4 (matches `fn_8005D3C8`=GXSetNumChans / `fn_8005B93C`=
// GXSetNumTexGens / `fn_8005F11C`=GXSetNumTevStages below), VCD=8 (matches
// `fn_8005AD7C`=GXClearVtxDesc above), VAT=16, and the "VLIM" check
// compiles down to testing VCD|VAT combined rather than its own bit. Also
// identifies 7 more internal GX SDK helpers by their call sites here:
// `fn_8005DFD4`=__GXSetSUTexRegs, `fn_8005E988`=__GXUpdateBPMask,
// `fn_8005C4E4`=__GXSetGenMode, `fn_8005A958`=__GXSetVCD,
// `fn_8005B290`=__GXSetVAT, `fn_8005AA14`=__GXCalculateVLim,
// `fn_8005C31C`=__GXSendFlushPrim (none of these 7 individually traced yet).
// `__GXData` global's offset 0x0 is therefore GX's internal "sent"/flush
// flag, and 0xCC010000-0x8000=0xCC008000 (the `lis r3,0xcc01` / `-0x8000(r3)`
// idiom here and throughout the renderer functions) is the real GX CPU
// write-gather-pipe FIFO address. NOTE: kept the `fn_8005C24C` symbol name
// - renaming to `GXBegin` collides at link time with an unrelated,
// currently-dead same-named definition elsewhere in `src/Dolphin/gx/`
// (unwired, but the linker still trips on the duplicate name); real
// identity documented here instead. See [[project_fsa_gxbegin_identified]].
ASM void fn_8005C24C(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x28(r1)
    stw r31, 0x24(r1)
    stw r30, 0x20(r1)
    addi r30, r5, 0x0
    stw r29, 0x1c(r1)
    addi r29, r4, 0x0
    stw r28, 0x18(r1)
    addi r28, r3, 0x0
    opword  0x80C283A8  // lwz r6, __GXData@sda21(r0)
    lwz r31, 0x5ac(r6)
    cmplwi r31, 0x0
    opword  0x41820058  // beq .L_8005C2D8
    clrlwi. r0, r31, 31
    opword  0x41820008  // beq .L_8005C290
    bl fn_8005DFD4
L_8005C290:
    rlwinm. r0, r31, 0, 30, 30
    opword  0x41820008  // beq .L_8005C29C
    bl fn_8005E988
L_8005C29C:
    rlwinm. r0, r31, 0, 29, 29
    opword  0x41820008  // beq .L_8005C2A8
    bl fn_8005C4E4
L_8005C2A8:
    rlwinm. r0, r31, 0, 28, 28
    opword  0x41820008  // beq .L_8005C2B4
    bl fn_8005A958
L_8005C2B4:
    rlwinm. r0, r31, 0, 27, 27
    opword  0x41820008  // beq .L_8005C2C0
    bl fn_8005B290
L_8005C2C0:
    rlwinm. r0, r31, 0, 27, 28
    opword  0x41820008  // beq .L_8005C2CC
    bl fn_8005AA14
L_8005C2CC:
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    li r0, 0x0
    stw r0, 0x5ac(r3)
L_8005C2D8:
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    lwz r0, 0x0(r3)
    cmplwi r0, 0x0
    opword  0x40820008  // bne .L_8005C2EC
    bl fn_8005C31C
L_8005C2EC:
    or r0, r29, r28
    lis r3, 0xcc01
    stb r0, -0x8000(r3)
    sth r30, -0x8000(r3)
    lwz r0, 0x2c(r1)
    lwz r31, 0x24(r1)
    lwz r30, 0x20(r1)
    lwz r29, 0x1c(r1)
    lwz r28, 0x18(r1)
    addi r1, r1, 0x28
    mtlr r0
    blr
}

ASM void fn_8005C31C(void)
{
    nofralloc
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    li r0, 0x98
    lis r5, 0xcc01
    lhz r6, 0x4(r3)
    li r4, 0x0
    lhz r3, 0x6(r3)
    mullw r7, r6, r3
    stb r0, -0x8000(r5)
    sth r6, -0x8000(r5)
    addi r3, r7, 0x3
    cmplwi r7, 0x0
    srwi r3, r3, 2
    opword  0x40810048  // ble .L_8005C394
    srwi. r0, r3, 3
    mtctr r0
    opword  0x41820030  // beq .L_8005C388
L_8005C35C:
    stw r4, -0x8000(r5)
    stw r4, -0x8000(r5)
    stw r4, -0x8000(r5)
    stw r4, -0x8000(r5)
    stw r4, -0x8000(r5)
    stw r4, -0x8000(r5)
    stw r4, -0x8000(r5)
    stw r4, -0x8000(r5)
    opword  0x4200FFE0  // bdnz .L_8005C35C
    andi. r3, r3, 0x7
    opword  0x41820010  // beq .L_8005C394
L_8005C388:
    mtctr r3
L_8005C38C:
    stw r4, -0x8000(r5)
    opword  0x4200FFFC  // bdnz .L_8005C38C
L_8005C394:
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    li r0, 0x1
    sth r0, 0x2(r3)
    blr
}

ASM void fn_8005C3A4(void)
{
    nofralloc
    opword  0x80E283A8  // lwz r7, __GXData@sda21(r0)
    clrlwi r0, r3, 24
    li r3, 0x61
    lwz r6, 0x7c(r7)
    rlwimi r6, r0, 0, 24, 31
    lis r5, 0xcc01
    stw r6, 0x7c(r7)
    li r0, 0x0
    lwz r6, 0x7c(r7)
    rlwimi r6, r4, 16, 13, 15
    stw r6, 0x7c(r7)
    stb r3, -0x8000(r5)
    lwz r3, 0x7c(r7)
    stw r3, -0x8000(r5)
    sth r0, 0x2(r7)
    blr
}

ASM void fn_8005C3E4(void)
{
    nofralloc
    opword  0x80E283A8  // lwz r7, __GXData@sda21(r0)
    clrlwi r0, r3, 24
    li r3, 0x61
    lwz r6, 0x7c(r7)
    rlwimi r6, r0, 8, 16, 23
    lis r5, 0xcc01
    stw r6, 0x7c(r7)
    li r0, 0x0
    lwz r6, 0x7c(r7)
    rlwimi r6, r4, 19, 10, 12
    stw r6, 0x7c(r7)
    stb r3, -0x8000(r5)
    lwz r3, 0x7c(r7)
    stw r3, -0x8000(r5)
    sth r0, 0x2(r7)
    blr
}

ASM void fn_8005C424(void)
{
    nofralloc
    opword  0x80E283A8  // lwz r7, __GXData@sda21(r0)
    slwi r3, r3, 2
    clrlwi r0, r5, 24
    add r6, r7, r3
    lwz r3, 0xb8(r6)
    rlwimi r3, r4, 18, 13, 13
    lis r4, 0xcc01
    stw r3, 0xb8(r6)
    li r3, 0x61
    lwz r5, 0xb8(r6)
    rlwimi r5, r0, 19, 12, 12
    li r0, 0x0
    stw r5, 0xb8(r6)
    stb r3, -0x8000(r4)
    lwz r3, 0xb8(r6)
    stw r3, -0x8000(r4)
    sth r0, 0x2(r7)
    blr
}

ASM void fn_8005C46C(void)
{
    nofralloc
    cmpwi r3, 0x2
    opword  0x4182001C  // beq .L_8005C48C
    opword  0x4080001C  // bge .L_8005C490
    cmpwi r3, 0x1
    opword  0x40800008  // bge .L_8005C484
    opword  0x48000010  // b .L_8005C490
L_8005C484:
    li r3, 0x2
    opword  0x48000008  // b .L_8005C490
L_8005C48C:
    li r3, 0x1
L_8005C490:
    opword  0x808283A8  // lwz r4, __GXData@sda21(r0)
    lwz r0, 0x204(r4)
    rlwimi r0, r3, 14, 16, 17
    stw r0, 0x204(r4)
    lwz r0, 0x5ac(r4)
    ori r0, r0, 0x4
    stw r0, 0x5ac(r4)
    blr
}

ASM void fn_8005C4B0(void)
{
    nofralloc
    opword  0x80C283A8  // lwz r6, __GXData@sda21(r0)
    li r4, 0x61
    lis r0, 0xfe08
    lwz r5, 0x204(r6)
    rlwimi r5, r3, 19, 12, 12
    lis r3, 0xcc01
    stw r5, 0x204(r6)
    stb r4, -0x8000(r3)
    stw r0, -0x8000(r3)
    stb r4, -0x8000(r3)
    lwz r0, 0x204(r6)
    stw r0, -0x8000(r3)
    blr
}

ASM void fn_8005C4E4(void)
{
    nofralloc
    li r0, 0x61
    opword  0x808283A8  // lwz r4, __GXData@sda21(r0)
    lis r5, 0xcc01
    stb r0, -0x8000(r5)
    li r0, 0x0
    lwz r3, 0x204(r4)
    stw r3, -0x8000(r5)
    sth r0, 0x2(r4)
    blr
}

ASM void fn_8005C508(void)
{
    nofralloc
    opword  0x810283A8  // lwz r8, __GXData@sda21(r0)
    li r9, 0x0
    clrlwi r7, r5, 16
    stw r9, 0x1e0(r8)
    clrlwi r5, r6, 16
    clrlwi r0, r3, 16
    lwz r3, 0x1e0(r8)
    rlwimi r3, r0, 0, 22, 31
    clrlwi r0, r4, 16
    stw r3, 0x1e0(r8)
    li r6, 0x49
    subi r4, r7, 0x1
    lwz r7, 0x1e0(r8)
    rlwimi r7, r0, 10, 12, 21
    subi r3, r5, 0x1
    stw r7, 0x1e0(r8)
    li r0, 0x4a
    lwz r5, 0x1e0(r8)
    rlwimi r5, r6, 24, 0, 7
    stw r5, 0x1e0(r8)
    stw r9, 0x1e4(r8)
    lwz r5, 0x1e4(r8)
    rlwimi r5, r4, 0, 22, 31
    stw r5, 0x1e4(r8)
    lwz r4, 0x1e4(r8)
    rlwimi r4, r3, 10, 12, 21
    stw r4, 0x1e4(r8)
    lwz r3, 0x1e4(r8)
    rlwimi r3, r0, 24, 0, 7
    stw r3, 0x1e4(r8)
    blr
}

ASM void fn_8005C584(void)
{
    nofralloc
    opword  0x810283A8  // lwz r8, __GXData@sda21(r0)
    li r9, 0x0
    clrlwi r7, r5, 16
    stw r9, 0x1f0(r8)
    clrlwi r5, r6, 16
    clrlwi r0, r3, 16
    lwz r3, 0x1f0(r8)
    rlwimi r3, r0, 0, 22, 31
    clrlwi r0, r4, 16
    stw r3, 0x1f0(r8)
    li r6, 0x49
    subi r4, r7, 0x1
    lwz r7, 0x1f0(r8)
    rlwimi r7, r0, 10, 12, 21
    subi r3, r5, 0x1
    stw r7, 0x1f0(r8)
    li r0, 0x4a
    lwz r5, 0x1f0(r8)
    rlwimi r5, r6, 24, 0, 7
    stw r5, 0x1f0(r8)
    stw r9, 0x1f4(r8)
    lwz r5, 0x1f4(r8)
    rlwimi r5, r4, 0, 22, 31
    stw r5, 0x1f4(r8)
    lwz r4, 0x1f4(r8)
    rlwimi r4, r3, 10, 12, 21
    stw r4, 0x1f4(r8)
    lwz r3, 0x1f4(r8)
    rlwimi r3, r0, 24, 0, 7
    stw r3, 0x1f4(r8)
    blr
}

ASM void fn_8005C600(void)
{
    nofralloc
    opword  0x808283A8  // lwz r4, __GXData@sda21(r0)
    li r0, 0x0
    stw r0, 0x1e8(r4)
    clrlslwi r0, r3, 17, 1
    srawi r0, r0, 5
    lwz r3, 0x1e8(r4)
    rlwimi r3, r0, 0, 22, 31
    li r0, 0x4d
    stw r3, 0x1e8(r4)
    lwz r3, 0x1e8(r4)
    rlwimi r3, r0, 24, 0, 7
    stw r3, 0x1e8(r4)
    blr
}

ASM void fn_8005C634(void)
{
    nofralloc
    mflr r0
    cmpwi r5, 0x13
    stw r0, 0x4(r1)
    li r0, 0x0
    addi r8, r3, 0x0
    stwu r1, -0x28(r1)
    stw r31, 0x24(r1)
    clrlwi r31, r5, 28
    stw r30, 0x20(r1)
    addi r30, r6, 0x0
    opword  0x80E283A8  // lwz r7, __GXData@sda21(r0)
    stb r0, 0x200(r7)
    addi r7, r4, 0x0
    opword  0x40820008  // bne .L_8005C670
    li r31, 0xb
L_8005C670:
    cmpwi r5, 0x26
    opword  0x4182001C  // beq .L_8005C690
    opword  0x40800030  // bge .L_8005C6A8
    cmpwi r5, 0x4
    opword  0x40800028  // bge .L_8005C6A8
    cmpwi r5, 0x0
    opword  0x40800008  // bge .L_8005C690
    opword  0x4800001C  // b .L_8005C6A8
L_8005C690:
    opword  0x808283A8  // lwz r4, __GXData@sda21(r0)
    li r0, 0x3
    lwz r3, 0x1fc(r4)
    rlwimi r3, r0, 15, 15, 16
    stw r3, 0x1fc(r4)
    opword  0x48000018  // b .L_8005C6BC
L_8005C6A8:
    opword  0x808283A8  // lwz r4, __GXData@sda21(r0)
    li r0, 0x2
    lwz r3, 0x1fc(r4)
    rlwimi r3, r0, 15, 15, 16
    stw r3, 0x1fc(r4)
L_8005C6BC:
    rlwinm r3, r5, 0, 27, 27
    opword  0x808283A8  // lwz r4, __GXData@sda21(r0)
    subi r0, r3, 0x10
    cntlzw r0, r0
    extrwi r0, r0, 8, 19
    stb r0, 0x200(r4)
    addi r3, r5, 0x0
    addi r5, r7, 0x0
    lwz r0, 0x1fc(r4)
    rlwimi r0, r31, 0, 28, 28
    clrlwi r31, r31, 29
    stw r0, 0x1fc(r4)
    addi r4, r8, 0x0
    addi r6, r1, 0x1c
    addi r7, r1, 0x18
    addi r8, r1, 0x14
    bl fn_8005D618
    opword  0x80E283A8  // lwz r7, __GXData@sda21(r0)
    li r0, 0x0
    li r3, 0x4d
    stw r0, 0x1f8(r7)
    lwz r5, 0x1c(r1)
    lwz r4, 0x14(r1)
    lwz r6, 0x1f8(r7)
    mullw r4, r5, r4
    rlwimi r6, r4, 0, 22, 31
    stw r6, 0x1f8(r7)
    lwz r4, 0x1f8(r7)
    rlwimi r4, r3, 24, 0, 7
    stw r4, 0x1f8(r7)
    lwz r3, 0x1fc(r7)
    rlwimi r3, r30, 9, 22, 22
    stw r3, 0x1fc(r7)
    lwz r0, 0x1fc(r7)
    rlwimi r0, r31, 4, 25, 27
    stw r0, 0x1fc(r7)
    lwz r0, 0x2c(r1)
    lwz r31, 0x24(r1)
    lwz r30, 0x20(r1)
    addi r1, r1, 0x28
    mtlr r0
    blr
}

ASM void fn_8005C764(void)
{
    nofralloc
    opword  0x80A283A8  // lwz r5, __GXData@sda21(r0)
    li r0, 0x0
    lwz r4, 0x1ec(r5)
    rlwimi r4, r3, 12, 18, 19
    stw r4, 0x1ec(r5)
    lwz r3, 0x1fc(r5)
    rlwimi r3, r0, 12, 18, 19
    stw r3, 0x1fc(r5)
    blr
}

ASM void fn_8005C788(void)
{
    nofralloc
    clrlwi r5, r3, 31
    opword  0x808283A8  // lwz r4, __GXData@sda21(r0)
    subi r0, r5, 0x1
    cntlzw r5, r0
    lwz r0, 0x1ec(r4)
    extrwi r5, r5, 8, 19
    rlwinm r3, r3, 0, 30, 30
    rlwimi r0, r5, 0, 31, 31
    subi r3, r3, 0x2
    stw r0, 0x1ec(r4)
    cntlzw r0, r3
    extrwi r3, r0, 8, 19
    lwz r0, 0x1ec(r4)
    rlwimi r0, r3, 1, 30, 30
    stw r0, 0x1ec(r4)
    lwz r0, 0x1fc(r4)
    rlwimi r0, r5, 0, 31, 31
    stw r0, 0x1fc(r4)
    lwz r0, 0x1fc(r4)
    rlwimi r0, r3, 1, 30, 30
    stw r0, 0x1fc(r4)
    blr
}

ASM void fn_8005C7E0(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x20(r1)
    stw r31, 0x1c(r1)
    mr r31, r3
    opword  0xC00283D0  // lfs f0, lbl_8053B370@sda21(r0)
    fdivs fp1, fp0, fp1
    bl __cvt_fp2unsigned
    clrlwi r5, r31, 16
    subi r0, r5, 0x1
    clrlwi r4, r3, 23
    slwi r0, r0, 8
    divwu r3, r0, r4
    cmplwi r4, 0x80
    addi r3, r3, 0x1
    opword  0x40810030  // ble .L_8005C84C
    cmplwi r4, 0x100
    opword  0x40800028  // bge .L_8005C84C
    opword  0x48000008  // b .L_8005C830
L_8005C82C:
    srwi r4, r4, 1
L_8005C830:
    clrlwi. r0, r4, 31
    opword  0x4182FFF8  // beq .L_8005C82C
    divwu r0, r5, r4
    mullw r0, r0, r4
    subf. r0, r0, r5
    opword  0x40820008  // bne .L_8005C84C
    addi r3, r3, 0x1
L_8005C84C:
    cmplwi r3, 0x400
    opword  0x40810008  // ble .L_8005C858
    li r3, 0x400
L_8005C858:
    lwz r0, 0x24(r1)
    clrlwi r3, r3, 16
    lwz r31, 0x1c(r1)
    addi r1, r1, 0x20
    mtlr r0
    blr
}

ASM void fn_8005C870(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    lis r0, 0x4330
    stwu r1, -0x78(r1)
    stfd fp31, 0x70(r1)
    stfd fp30, 0x68(r1)
    stfd fp29, 0x60(r1)
    stfd fp28, 0x58(r1)
    stmw r25, 0x3c(r1)
    clrlwi r28, r4, 16
    clrlwi r31, r3, 16
    stw r28, 0x34(r1)
    mr r27, r3
    mr r25, r4
    stw r31, 0x2c(r1)
    stw r0, 0x30(r1)
    stw r0, 0x28(r1)
    opword  0xC86283D8  // lfd f3, lbl_8053B378@sda21(r0)
    lfd fp2, 0x30(r1)
    lfd fp1, 0x28(r1)
    fsubs fp2, fp2, fp3
    opword  0xC00283D0  // lfs f0, lbl_8053B370@sda21(r0)
    fsubs fp1, fp1, fp3
    fdivs fp2, fp2, fp1
    fdivs fp1, fp0, fp2
    fmr fp28, fp2
    bl __cvt_fp2unsigned
    subi r0, r31, 0x1
    clrlwi r4, r3, 23
    slwi r30, r0, 8
    divwu r3, r30, r4
    cmplwi r4, 0x80
    addi r3, r3, 0x1
    opword  0x40810030  // ble .L_8005C924
    cmplwi r4, 0x100
    opword  0x40800028  // bge .L_8005C924
    opword  0x48000008  // b .L_8005C908
L_8005C904:
    srwi r4, r4, 1
L_8005C908:
    clrlwi. r0, r4, 31
    opword  0x4182FFF8  // beq .L_8005C904
    divwu r0, r31, r4
    mullw r0, r0, r4
    subf. r0, r0, r31
    opword  0x40820008  // bne .L_8005C924
    addi r3, r3, 0x1
L_8005C924:
    cmplwi r3, 0x400
    opword  0x40810008  // ble .L_8005C930
    li r3, 0x400
L_8005C930:
    opword  0xCBE283D8  // lfd f31, lbl_8053B378@sda21(r0)
    mr r0, r3
    opword  0xC3C283D0  // lfs f30, lbl_8053B370@sda21(r0)
    clrlwi r29, r25, 16
    clrlwi r26, r27, 16
    lis r25, 0x4330
    opword  0x48000088  // b .L_8005C9D0
L_8005C94C:
    subi r28, r28, 0x1
    stw r26, 0x34(r1)
    stw r28, 0x2c(r1)
    stw r25, 0x28(r1)
    stw r25, 0x30(r1)
    lfd fp1, 0x28(r1)
    lfd fp0, 0x30(r1)
    fsubs fp1, fp1, fp31
    fsubs fp0, fp0, fp31
    fdivs fp0, fp1, fp0
    fdivs fp1, fp30, fp0
    fmr fp28, fp0
    bl __cvt_fp2unsigned
    clrlwi r4, r3, 23
    divwu r3, r30, r4
    cmplwi r4, 0x80
    addi r3, r3, 0x1
    opword  0x40810030  // ble .L_8005C9C0
    cmplwi r4, 0x100
    opword  0x40800028  // bge .L_8005C9C0
    opword  0x48000008  // b .L_8005C9A4
L_8005C9A0:
    srwi r4, r4, 1
L_8005C9A4:
    clrlwi. r0, r4, 31
    opword  0x4182FFF8  // beq .L_8005C9A0
    divwu r0, r31, r4
    mullw r0, r0, r4
    subf. r0, r0, r31
    opword  0x40820008  // bne .L_8005C9C0
    addi r3, r3, 0x1
L_8005C9C0:
    cmplwi r3, 0x400
    opword  0x40810008  // ble .L_8005C9CC
    li r3, 0x400
L_8005C9CC:
    mr r0, r3
L_8005C9D0:
    cmplw r0, r29
    opword  0x4181FF78  // bgt .L_8005C94C
    fmr fp29, fp28
    opword  0xCBC283D8  // lfd f30, lbl_8053B378@sda21(r0)
    opword  0xC3E283D0  // lfs f31, lbl_8053B370@sda21(r0)
    clrlwi r27, r27, 16
    lis r26, 0x4330
    opword  0x4800008C  // b .L_8005CA78
L_8005C9F0:
    addi r28, r28, 0x1
    stw r27, 0x34(r1)
    fmr fp29, fp28
    stw r28, 0x2c(r1)
    stw r26, 0x28(r1)
    stw r26, 0x30(r1)
    lfd fp1, 0x28(r1)
    lfd fp0, 0x30(r1)
    fsubs fp1, fp1, fp30
    fsubs fp0, fp0, fp30
    fdivs fp0, fp1, fp0
    fdivs fp1, fp31, fp0
    fmr fp28, fp0
    bl __cvt_fp2unsigned
    clrlwi r4, r3, 23
    divwu r3, r30, r4
    cmplwi r4, 0x80
    addi r3, r3, 0x1
    opword  0x40810030  // ble .L_8005CA68
    cmplwi r4, 0x100
    opword  0x40800028  // bge .L_8005CA68
    opword  0x48000008  // b .L_8005CA4C
L_8005CA48:
    srwi r4, r4, 1
L_8005CA4C:
    clrlwi. r0, r4, 31
    opword  0x4182FFF8  // beq .L_8005CA48
    divwu r0, r31, r4
    mullw r0, r0, r4
    subf. r0, r0, r31
    opword  0x40820008  // bne .L_8005CA68
    addi r3, r3, 0x1
L_8005CA68:
    cmplwi r3, 0x400
    opword  0x40810008  // ble .L_8005CA74
    li r3, 0x400
L_8005CA74:
    mr r0, r3
L_8005CA78:
    cmplw r0, r29
    opword  0x4180FF74  // blt .L_8005C9F0
    lmw r25, 0x3c(r1)
    fmr fp1, fp29
    lwz r0, 0x7c(r1)
    lfd fp31, 0x70(r1)
    lfd fp30, 0x68(r1)
    lfd fp29, 0x60(r1)
    lfd fp28, 0x58(r1)
    addi r1, r1, 0x78
    mtlr r0
    blr
}

ASM void fn_8005CAA8(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x8(r1)
    opword  0xC00283D0  // lfs f0, lbl_8053B370@sda21(r0)
    fdivs fp1, fp0, fp1
    bl __cvt_fp2unsigned
    clrlwi r7, r3, 23
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    li r0, 0x61
    lis r4, 0xcc01
    subfic r5, r7, 0x100
    stb r0, -0x8000(r4)
    subic r0, r5, 0x1
    subfe r5, r0, r5
    li r6, 0x0
    li r0, 0x4e
    rlwimi r6, r7, 0, 23, 31
    rlwimi r6, r0, 24, 0, 7
    stw r6, -0x8000(r4)
    li r0, 0x0
    cmplwi r7, 0x80
    sth r0, 0x2(r3)
    addi r4, r7, 0x0
    lwz r0, 0x1ec(r3)
    rlwimi r0, r5, 10, 21, 21
    stw r0, 0x1ec(r3)
    lwz r0, 0x1e4(r3)
    extrwi r5, r0, 10, 12
    rlwinm r0, r0, 30, 14, 23
    divwu r3, r0, r7
    addi r5, r5, 0x1
    addi r3, r3, 0x1
    opword  0x40810030  // ble .L_8005CB58
    cmplwi r7, 0x100
    opword  0x40800028  // bge .L_8005CB58
    opword  0x48000008  // b .L_8005CB3C
L_8005CB38:
    srwi r4, r4, 1
L_8005CB3C:
    clrlwi. r0, r4, 31
    opword  0x4182FFF8  // beq .L_8005CB38
    divwu r0, r5, r4
    mullw r0, r0, r4
    subf. r0, r0, r5
    opword  0x40820008  // bne .L_8005CB58
    addi r3, r3, 0x1
L_8005CB58:
    cmplwi r3, 0x400
    opword  0x40810008  // ble .L_8005CB64
    li r3, 0x400
L_8005CB64:
    lwz r0, 0xc(r1)
    addi r1, r1, 0x8
    mtlr r0
    blr
}

ASM void fn_8005CB74(void)
{
    nofralloc
    lbz r5, 0x0(r3)
    li r6, 0x0
    lbz r0, 0x3(r3)
    li r9, 0x61
    rlwimi r6, r5, 0, 24, 31
    lis r8, 0xcc01
    opword  0x80A283A8  // lwz r5, __GXData@sda21(r0)
    rlwimi r6, r0, 8, 16, 23
    stb r9, -0x8000(r8)
    li r0, 0x4f
    rlwimi r6, r0, 24, 0, 7
    stw r6, -0x8000(r8)
    li r10, 0x0
    li r6, 0x50
    lbz r7, 0x2(r3)
    li r11, 0x0
    lbz r3, 0x1(r3)
    li r0, 0x51
    rlwimi r11, r7, 0, 24, 31
    rlwimi r11, r3, 8, 16, 23
    stb r9, -0x8000(r8)
    rlwimi r11, r6, 24, 0, 7
    stw r11, -0x8000(r8)
    rlwimi r10, r4, 0, 8, 31
    rlwimi r10, r0, 24, 0, 7
    stb r9, -0x8000(r8)
    li r0, 0x0
    stw r10, -0x8000(r8)
    sth r0, 0x2(r5)
    blr
}

ASM void fn_8005CBEC(void)
{
    nofralloc
    stwu r1, -0x48(r1)
    clrlwi. r0, r3, 24
    stmw r24, 0x28(r1)
    opword  0x418200F8  // beq .L_8005CCF0
    lbz r0, 0x6(r4)
    li r7, 0x0
    lbz r8, 0x0(r4)
    li r3, 0x0
    rlwimi r7, r0, 0, 28, 31
    lbz r9, 0xc(r4)
    rlwimi r3, r8, 0, 28, 31
    li r8, 0x0
    lbz r0, 0x12(r4)
    rlwimi r8, r9, 0, 28, 31
    li r9, 0x0
    lbz r10, 0x1(r4)
    rlwimi r9, r0, 0, 28, 31
    lbz r0, 0x13(r4)
    lbz r11, 0xd(r4)
    rlwimi r3, r10, 4, 24, 27
    lbz r27, 0x2(r4)
    rlwimi r9, r0, 4, 24, 27
    lbz r25, 0x7(r4)
    lbz r10, 0x14(r4)
    rlwimi r8, r11, 4, 24, 27
    lbz r12, 0xe(r4)
    rlwimi r3, r27, 8, 20, 23
    lbz r28, 0x3(r4)
    rlwimi r8, r12, 8, 20, 23
    lbz r29, 0x4(r4)
    rlwimi r3, r28, 12, 16, 19
    lbz r0, 0x5(r4)
    rlwimi r3, r29, 16, 12, 15
    lbz r24, 0x8(r4)
    rlwimi r7, r25, 4, 24, 27
    lbz r25, 0xf(r4)
    rlwimi r3, r0, 20, 8, 11
    lbz r30, 0x9(r4)
    li r0, 0x1
    lbz r31, 0xa(r4)
    rlwimi r9, r10, 8, 20, 23
    lbz r26, 0x15(r4)
    rlwimi r3, r0, 24, 0, 7
    lbz r12, 0xb(r4)
    rlwimi r7, r24, 8, 20, 23
    lbz r11, 0x10(r4)
    rlwimi r7, r30, 12, 16, 19
    lbz r10, 0x11(r4)
    lbz r27, 0x16(r4)
    rlwimi r7, r31, 16, 12, 15
    rlwimi r8, r25, 12, 16, 19
    lbz r4, 0x17(r4)
    rlwimi r8, r11, 16, 12, 15
    rlwimi r9, r26, 12, 16, 19
    rlwimi r9, r27, 16, 12, 15
    li r0, 0x2
    rlwimi r7, r12, 20, 8, 11
    rlwimi r7, r0, 24, 0, 7
    li r0, 0x3
    rlwimi r8, r10, 20, 8, 11
    rlwimi r8, r0, 24, 0, 7
    li r0, 0x4
    rlwimi r9, r4, 20, 8, 11
    rlwimi r9, r0, 24, 0, 7
    opword  0x48000024  // b .L_8005CD10
L_8005CCF0:
    lis r3, 0x166
    lis r7, 0x266
    lis r8, 0x366
    lis r4, 0x466
    addi r3, r3, 0x6666
    addi r7, r7, 0x6666
    addi r8, r8, 0x6666
    addi r9, r4, 0x6666
L_8005CD10:
    li r10, 0x61
    lis r4, 0xcc01
    stb r10, -0x8000(r4)
    clrlwi. r0, r5, 24
    li r0, 0x53
    stw r3, -0x8000(r4)
    li r3, 0x0
    rlwimi r3, r0, 24, 0, 7
    stb r10, -0x8000(r4)
    li r0, 0x54
    li r5, 0x0
    stw r7, -0x8000(r4)
    rlwimi r5, r0, 24, 0, 7
    addi r11, r3, 0x0
    stb r10, -0x8000(r4)
    addi r0, r5, 0x0
    stw r8, -0x8000(r4)
    stb r10, -0x8000(r4)
    stw r9, -0x8000(r4)
    opword  0x41820040  // beq .L_8005CD9C
    lbz r4, 0x0(r6)
    lbz r3, 0x4(r6)
    rlwimi r11, r4, 0, 26, 31
    lbz r4, 0x1(r6)
    rlwimi r0, r3, 0, 26, 31
    lbz r7, 0x2(r6)
    rlwimi r11, r4, 6, 20, 25
    lbz r4, 0x5(r6)
    lbz r5, 0x3(r6)
    rlwimi r11, r7, 12, 14, 19
    lbz r3, 0x6(r6)
    rlwimi r0, r4, 6, 20, 25
    rlwimi r11, r5, 18, 8, 13
    rlwimi r0, r3, 12, 14, 19
    opword  0x4800002C  // b .L_8005CDC4
L_8005CD9C:
    li r4, 0x0
    li r3, 0x15
    rlwimi r11, r4, 0, 26, 31
    rlwimi r11, r4, 6, 20, 25
    rlwimi r0, r3, 0, 26, 31
    rlwimi r11, r3, 12, 14, 19
    li r3, 0x16
    rlwimi r0, r4, 6, 20, 25
    rlwimi r0, r4, 12, 14, 19
    rlwimi r11, r3, 18, 8, 13
L_8005CDC4:
    li r6, 0x61
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    lis r5, 0xcc01
    stb r6, -0x8000(r5)
    li r4, 0x0
    stw r11, -0x8000(r5)
    stb r6, -0x8000(r5)
    stw r0, -0x8000(r5)
    sth r4, 0x2(r3)
    lmw r24, 0x28(r1)
    addi r1, r1, 0x48
    blr
}

ASM void fn_8005CDF4(void)
{
    nofralloc
    opword  0x808283A8  // lwz r4, __GXData@sda21(r0)
    lwz r0, 0x1ec(r4)
    rlwimi r0, r3, 7, 23, 24
    stw r0, 0x1ec(r4)
    blr
}

ASM void fn_8005CE08(void)
{
    nofralloc
    clrlwi. r0, r4, 24
    opword  0x41820044  // beq .L_8005CE50
    opword  0x80E283A8  // lwz r7, __GXData@sda21(r0)
    li r0, 0x1
    li r6, 0x61
    lwz r8, 0x1d8(r7)
    lis r5, 0xcc01
    rlwimi r8, r0, 0, 31, 31
    li r0, 0x7
    stb r6, -0x8000(r5)
    rlwimi r8, r0, 1, 28, 30
    stw r8, -0x8000(r5)
    li r0, 0x0
    lwz r7, 0x1d0(r7)
    rlwimi r7, r0, 0, 31, 31
    rlwimi r7, r0, 1, 30, 30
    stb r6, -0x8000(r5)
    stw r7, -0x8000(r5)
L_8005CE50:
    clrlwi. r0, r4, 24
    li r10, 0x0
    opword  0x40820018  // bne .L_8005CE70
    opword  0x80A283A8  // lwz r5, __GXData@sda21(r0)
    lwz r0, 0x1dc(r5)
    clrlwi r0, r0, 29
    cmplwi r0, 0x3
    opword  0x40820034  // bne .L_8005CEA0
L_8005CE70:
    opword  0x80A283A8  // lwz r5, __GXData@sda21(r0)
    lwz r6, 0x1dc(r5)
    extrwi r0, r6, 1, 25
    cmplwi r0, 0x1
    opword  0x40820020  // bne .L_8005CEA0
    li r0, 0x61
    lis r5, 0xcc01
    stb r0, -0x8000(r5)
    li r0, 0x0
    rlwimi r6, r0, 6, 25, 25
    stw r6, -0x8000(r5)
    li r10, 0x1
L_8005CEA0:
    li r8, 0x61
    opword  0x80C283A8  // lwz r6, __GXData@sda21(r0)
    lis r7, 0xcc01
    stb r8, -0x8000(r7)
    li r9, 0x0
    rlwimi r9, r3, 27, 11, 31
    lwz r5, 0x1e0(r6)
    li r0, 0x4b
    rlwimi r9, r0, 24, 0, 7
    stw r5, -0x8000(r7)
    clrlwi. r4, r4, 24
    li r3, 0x1
    stb r8, -0x8000(r7)
    li r0, 0x52
    lwz r5, 0x1e4(r6)
    stw r5, -0x8000(r7)
    stb r8, -0x8000(r7)
    lwz r5, 0x1e8(r6)
    stw r5, -0x8000(r7)
    stb r8, -0x8000(r7)
    stw r9, -0x8000(r7)
    lwz r5, 0x1ec(r6)
    rlwimi r5, r4, 11, 20, 20
    stw r5, 0x1ec(r6)
    lwz r4, 0x1ec(r6)
    rlwimi r4, r3, 14, 17, 17
    stw r4, 0x1ec(r6)
    lwz r3, 0x1ec(r6)
    rlwimi r3, r0, 24, 0, 7
    stw r3, 0x1ec(r6)
    stb r8, -0x8000(r7)
    lwz r0, 0x1ec(r6)
    stw r0, -0x8000(r7)
    opword  0x4182001C  // beq .L_8005CF40
    stb r8, -0x8000(r7)
    lwz r0, 0x1d8(r6)
    stw r0, -0x8000(r7)
    stb r8, -0x8000(r7)
    lwz r0, 0x1d0(r6)
    stw r0, -0x8000(r7)
L_8005CF40:
    clrlwi. r0, r10, 24
    opword  0x4182001C  // beq .L_8005CF60
    li r0, 0x61
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    lis r4, 0xcc01
    stb r0, -0x8000(r4)
    lwz r0, 0x1dc(r3)
    stw r0, -0x8000(r4)
L_8005CF60:
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    li r0, 0x0
    sth r0, 0x2(r3)
    blr
}

ASM void fn_8005CF70(void)
{
    nofralloc
    clrlwi. r0, r4, 24
    opword  0x41820044  // beq .L_8005CFB8
    opword  0x80E283A8  // lwz r7, __GXData@sda21(r0)
    li r0, 0x1
    li r6, 0x61
    lwz r8, 0x1d8(r7)
    lis r5, 0xcc01
    rlwimi r8, r0, 0, 31, 31
    li r0, 0x7
    stb r6, -0x8000(r5)
    rlwimi r8, r0, 1, 28, 30
    stw r8, -0x8000(r5)
    li r0, 0x0
    lwz r7, 0x1d0(r7)
    rlwimi r7, r0, 0, 31, 31
    rlwimi r7, r0, 1, 30, 30
    stb r6, -0x8000(r5)
    stw r7, -0x8000(r5)
L_8005CFB8:
    opword  0x80C283A8  // lwz r6, __GXData@sda21(r0)
    li r0, 0x0
    lbz r5, 0x200(r6)
    lwz r7, 0x1dc(r6)
    cmplwi r5, 0x0
    opword  0x4182001C  // beq .L_8005CFE8
    clrlwi r5, r7, 29
    cmplwi r5, 0x3
    opword  0x41820010  // beq .L_8005CFE8
    li r0, 0x3
    rlwimi r7, r0, 0, 29, 31
    li r0, 0x1
L_8005CFE8:
    clrlwi. r5, r4, 24
    opword  0x40820010  // bne .L_8005CFFC
    clrlwi r5, r7, 29
    cmplwi r5, 0x3
    opword  0x4082001C  // bne .L_8005D014
L_8005CFFC:
    extrwi r5, r7, 1, 25
    cmplwi r5, 0x1
    opword  0x40820010  // bne .L_8005D014
    li r0, 0x0
    rlwimi r7, r0, 6, 25, 25
    li r0, 0x1
L_8005D014:
    clrlwi. r5, r0, 24
    opword  0x41820014  // beq .L_8005D02C
    li r6, 0x61
    lis r5, 0xcc01
    stb r6, -0x8000(r5)
    stw r7, -0x8000(r5)
L_8005D02C:
    li r9, 0x61
    opword  0x80E283A8  // lwz r7, __GXData@sda21(r0)
    lis r8, 0xcc01
    stb r9, -0x8000(r8)
    clrlwi. r5, r4, 24
    li r10, 0x0
    lwz r4, 0x1f0(r7)
    rlwimi r10, r3, 27, 11, 31
    li r3, 0x4b
    stw r4, -0x8000(r8)
    rlwimi r10, r3, 24, 0, 7
    li r4, 0x0
    stb r9, -0x8000(r8)
    li r3, 0x52
    lwz r6, 0x1f4(r7)
    stw r6, -0x8000(r8)
    stb r9, -0x8000(r8)
    lwz r6, 0x1f8(r7)
    stw r6, -0x8000(r8)
    stb r9, -0x8000(r8)
    stw r10, -0x8000(r8)
    lwz r6, 0x1fc(r7)
    rlwimi r6, r5, 11, 20, 20
    stw r6, 0x1fc(r7)
    lwz r5, 0x1fc(r7)
    rlwimi r5, r4, 14, 17, 17
    stw r5, 0x1fc(r7)
    lwz r4, 0x1fc(r7)
    rlwimi r4, r3, 24, 0, 7
    stw r4, 0x1fc(r7)
    stb r9, -0x8000(r8)
    lwz r3, 0x1fc(r7)
    stw r3, -0x8000(r8)
    opword  0x4182001C  // beq .L_8005D0CC
    stb r9, -0x8000(r8)
    lwz r3, 0x1d8(r7)
    stw r3, -0x8000(r8)
    stb r9, -0x8000(r8)
    lwz r3, 0x1d0(r7)
    stw r3, -0x8000(r8)
L_8005D0CC:
    clrlwi. r0, r0, 24
    opword  0x4182001C  // beq .L_8005D0EC
    li r0, 0x61
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    lis r4, 0xcc01
    stb r0, -0x8000(r4)
    lwz r0, 0x1dc(r3)
    stw r0, -0x8000(r4)
L_8005D0EC:
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    li r0, 0x0
    sth r0, 0x2(r3)
    blr
}

ASM void fn_8005D0FC(void)
{
    nofralloc
    li r6, 0x61
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    lis r5, 0xcc01
    lis r4, 0x5500
    stb r6, -0x8000(r5)
    addi r0, r4, 0x3ff
    stw r0, -0x8000(r5)
    lis r4, 0x5600
    addi r4, r4, 0x3ff
    stb r6, -0x8000(r5)
    li r0, 0x0
    stw r4, -0x8000(r5)
    sth r0, 0x2(r3)
    blr
}

ASM void fn_8005D134(void)
{
    nofralloc
    stfs fp1, 0x10(r3)
    stfs fp2, 0x14(r3)
    stfs fp3, 0x18(r3)
    stfs fp4, 0x1c(r3)
    stfs fp5, 0x20(r3)
    stfs fp6, 0x24(r3)
    blr
}

ASM void fn_8005D150(void)
{
    nofralloc
    stfs fp1, 0x28(r3)
    stfs fp2, 0x2c(r3)
    stfs fp3, 0x30(r3)
    blr
}

ASM void fn_8005D160(void)
{
    nofralloc
    lwz r0, 0x0(r4)
    stw r0, 0xc(r3)
    blr
}

ASM void fn_8005D16C(void)
{
    nofralloc
    cntlzw r0, r4
    subfic r0, r0, 0x1f
    clrlslwi r5, r0, 29, 4
    lis r4, 0xcc01
    li r0, 0x10
    addi r5, r5, 0x600
    stb r0, -0x8000(r4)
    oris r0, r5, 0xf
    stwu r0, -0x8000(r4)
    lwz r0, 0xc(r3)
    xor r6, r6, r6
    psq_l fp5, 0x10(r3), 0, 0
    psq_l fp4, 0x18(r3), 0, 0
    psq_l fp3, 0x20(r3), 0, 0
    psq_l fp2, 0x28(r3), 0, 0
    psq_l fp1, 0x30(r3), 0, 0
    psq_l fp0, 0x38(r3), 0, 0
    stw r6, 0x0(r4)
    stw r6, 0x0(r4)
    stw r6, 0x0(r4)
    stw r0, 0x0(r4)
    psq_st fp5, 0x0(r4), 0, 0
    psq_st fp4, 0x0(r4), 0, 0
    psq_st fp3, 0x0(r4), 0, 0
    psq_st fp2, 0x0(r4), 0, 0
    psq_st fp1, 0x0(r4), 0, 0
    psq_st fp0, 0x0(r4), 0, 0
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    li r0, 0x1
    sth r0, 0x2(r3)
    blr
}

ASM void fn_8005D1E8(void)
{
    nofralloc
    cmpwi r3, 0x3
    opword  0x41820084  // beq .L_8005D270
    opword  0x4080001C  // bge .L_8005D20C
    cmpwi r3, 0x1
    opword  0x41820040  // beq .L_8005D238
    opword  0x40800058  // bge .L_8005D254
    cmpwi r3, 0x0
    opword  0x40800018  // bge .L_8005D21C
    blr
L_8005D20C:
    cmpwi r3, 0x5
    opword  0x41820084  // beq .L_8005D294
    bgelr
    opword  0x48000070  // b .L_8005D288
L_8005D21C:
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    li r5, 0x0
    lwz r0, 0x0(r4)
    lwz r3, 0xa8(r3)
    clrrwi r7, r0, 8
    rlwimi r7, r3, 0, 24, 31
    opword  0x48000070  // b .L_8005D2A4
L_8005D238:
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    li r5, 0x1
    lwz r0, 0x0(r4)
    lwz r3, 0xac(r3)
    clrrwi r7, r0, 8
    rlwimi r7, r3, 0, 24, 31
    opword  0x48000054  // b .L_8005D2A4
L_8005D254:
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    li r5, 0x0
    lbz r0, 0x3(r4)
    lwz r3, 0xa8(r3)
    rlwimi r3, r0, 0, 24, 31
    addi r7, r3, 0x0
    opword  0x48000038  // b .L_8005D2A4
L_8005D270:
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    li r5, 0x1
    lbz r0, 0x3(r4)
    lwz r7, 0xac(r3)
    rlwimi r7, r0, 0, 24, 31
    opword  0x48000020  // b .L_8005D2A4
L_8005D288:
    lwz r7, 0x0(r4)
    li r5, 0x0
    opword  0x48000014  // b .L_8005D2A4
L_8005D294:
    lwz r7, 0x0(r4)
    li r5, 0x1
    opword  0x48000008  // b .L_8005D2A4
    blr
L_8005D2A4:
    li r0, 0x10
    opword  0x808283A8  // lwz r4, __GXData@sda21(r0)
    lis r6, 0xcc01
    stb r0, -0x8000(r6)
    addi r3, r5, 0x100a
    slwi r0, r5, 2
    stw r3, -0x8000(r6)
    li r5, 0x1
    add r3, r4, r0
    stw r7, -0x8000(r6)
    sth r5, 0x2(r4)
    stw r7, 0xa8(r3)
    blr
}

ASM void fn_8005D2D8(void)
{
    nofralloc
    cmpwi r3, 0x3
    opword  0x41820084  // beq .L_8005D360
    opword  0x4080001C  // bge .L_8005D2FC
    cmpwi r3, 0x1
    opword  0x41820040  // beq .L_8005D328
    opword  0x40800058  // bge .L_8005D344
    cmpwi r3, 0x0
    opword  0x40800018  // bge .L_8005D30C
    blr
L_8005D2FC:
    cmpwi r3, 0x5
    opword  0x41820084  // beq .L_8005D384
    bgelr
    opword  0x48000070  // b .L_8005D378
L_8005D30C:
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    li r5, 0x0
    lwz r0, 0x0(r4)
    lwz r3, 0xb0(r3)
    clrrwi r7, r0, 8
    rlwimi r7, r3, 0, 24, 31
    opword  0x48000070  // b .L_8005D394
L_8005D328:
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    li r5, 0x1
    lwz r0, 0x0(r4)
    lwz r3, 0xb4(r3)
    clrrwi r7, r0, 8
    rlwimi r7, r3, 0, 24, 31
    opword  0x48000054  // b .L_8005D394
L_8005D344:
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    li r5, 0x0
    lbz r0, 0x3(r4)
    lwz r3, 0xb0(r3)
    rlwimi r3, r0, 0, 24, 31
    addi r7, r3, 0x0
    opword  0x48000038  // b .L_8005D394
L_8005D360:
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    li r5, 0x1
    lbz r0, 0x3(r4)
    lwz r7, 0xb4(r3)
    rlwimi r7, r0, 0, 24, 31
    opword  0x48000020  // b .L_8005D394
L_8005D378:
    lwz r7, 0x0(r4)
    li r5, 0x0
    opword  0x48000014  // b .L_8005D394
L_8005D384:
    lwz r7, 0x0(r4)
    li r5, 0x1
    opword  0x48000008  // b .L_8005D394
    blr
L_8005D394:
    li r0, 0x10
    opword  0x808283A8  // lwz r4, __GXData@sda21(r0)
    lis r6, 0xcc01
    stb r0, -0x8000(r6)
    addi r3, r5, 0x100c
    slwi r0, r5, 2
    stw r3, -0x8000(r6)
    li r5, 0x1
    add r3, r4, r0
    stw r7, -0x8000(r6)
    sth r5, 0x2(r4)
    stw r7, 0xb0(r3)
    blr
}

// IDENTIFIED as the real GX SDK's `GXSetNumChans(u8 count)` - `r3`=count.
// Confirmed by an exact structural match against zeldaret/tww's decompiled
// source: `GX_SET_REG(gx->genMode, count, 25, 27); GX_XF_LOAD_REG(
// GX_XF_REG_NUMCOLORS, count); gx->dirtyState |= GX_DIRTY_GEN_MODE;` -
// matches field-for-field: packs `count` into `__GXData->0x204` (genMode)
// bits 25-27 (`rlwimi ...,4,25,27`, exact bit range match), immediately
// flushes via `GX_LOAD_XF_REG` opcode 0x10 to XF address 0x1009 (pins
// `GX_XF_REG_NUMCOLORS = 0x1009`), then sets `dirtyState |=
// GX_DIRTY_GEN_MODE` (0x5ac |= 4). NOTE: kept the `fn_8005D3C8` symbol
// name - renaming to `GXSetNumChans` collides at link time with an
// unrelated, currently-dead same-named definition elsewhere in
// `src/Dolphin/gx/` (unwired, but the linker still trips on the
// duplicate). See [[project_fsa_gxbegin_identified]].
ASM void fn_8005D3C8(void)
{
    nofralloc
    opword  0x80C283A8  // lwz r6, __GXData@sda21(r0)
    clrlwi r5, r3, 24
    li r4, 0x10
    lwz r0, 0x204(r6)
    rlwimi r0, r3, 4, 25, 27
    lis r3, 0xcc01
    stw r0, 0x204(r6)
    li r0, 0x1009
    stb r4, -0x8000(r3)
    stw r0, -0x8000(r3)
    stw r5, -0x8000(r3)
    lwz r0, 0x5ac(r6)
    ori r0, r0, 0x4
    stw r0, 0x5ac(r6)
    blr
}

ASM void fn_8005D404(void)
{
    nofralloc
    clrlwi r0, r4, 24
    li r4, 0x0
    rlwimi r4, r0, 1, 30, 30
    addi r10, r4, 0x0
    rlwimi r10, r6, 0, 31, 31
    cmpwi r9, 0x0
    rlwimi r10, r5, 6, 25, 25
    clrlwi r6, r3, 30
    opword  0x40820008  // bne .L_8005D42C
    li r8, 0x0
L_8005D42C:
    subfic r4, r9, 0x2
    subic r0, r4, 0x1
    subfe r5, r0, r4
    neg r4, r9
    subic r0, r4, 0x1
    rlwimi r10, r8, 7, 23, 24
    rlwimi r10, r5, 9, 22, 22
    subfe r0, r0, r4
    rlwimi r10, r0, 10, 21, 21
    addi r0, r6, 0x100e
    rlwinm r6, r10, 0, 30, 25
    rlwimi r6, r7, 2, 26, 29
    rlwinm r6, r6, 0, 21, 16
    li r5, 0x10
    lis r4, 0xcc01
    stb r5, -0x8000(r4)
    rlwimi r6, r7, 7, 17, 20
    cmpwi r3, 0x4
    stw r0, -0x8000(r4)
    stw r6, -0x8000(r4)
    opword  0x40820018  // bne .L_8005D494
    stb r5, -0x8000(r4)
    li r0, 0x1010
    stw r0, -0x8000(r4)
    stw r6, -0x8000(r4)
    opword  0x4800001C  // b .L_8005D4AC
L_8005D494:
    cmpwi r3, 0x5
    opword  0x40820014  // bne .L_8005D4AC
    stb r5, -0x8000(r4)
    li r0, 0x1011
    stw r0, -0x8000(r4)
    stw r6, -0x8000(r4)
L_8005D4AC:
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    li r0, 0x1
    sth r0, 0x2(r3)
    blr
}

ASM void fn_8005D4BC(void)
{
    nofralloc
    stwu r1, -0x28(r1)
    cmplwi r5, 0x3c
    stw r31, 0x24(r1)
    opword  0x41810040  // bgt .L_8005D508
    lis r8, jumptable_80497288@ha
    addi r8, r8, jumptable_80497288@l
    slwi r0, r5, 2
    lwzx r0, r8, r0
    mtctr r0
    bctr
    li r0, 0x3
    li r8, 0x3
    opword  0x48000024  // b .L_8005D510
    li r0, 0x3
    li r8, 0x2
    opword  0x48000018  // b .L_8005D510
    li r0, 0x2
    li r8, 0x2
    opword  0x4800000C  // b .L_8005D510
L_8005D508:
    li r8, 0x0
    li r0, 0x0
L_8005D510:
    cmplwi r5, 0x6
    opword  0x4182000C  // beq .L_8005D520
    cmplwi r5, 0x16
    opword  0x4082000C  // bne .L_8005D528
L_8005D520:
    li r5, 0x40
    opword  0x48000008  // b .L_8005D52C
L_8005D528:
    li r5, 0x20
L_8005D52C:
    clrlwi r6, r6, 24
    cmplwi r6, 0x1
    opword  0x408200A0  // bne .L_8005D5D4
    clrlwi r9, r7, 24
    li r6, 0x1
    mtctr r9
    slw r7, r6, r8
    slw r6, r6, r0
    cmplwi r9, 0x0
    subi r10, r6, 0x1
    subi r7, r7, 0x1
    li r31, 0x0
    opword  0x408100AC  // ble .L_8005D608
L_8005D560:
    clrlwi r11, r3, 16
    add r6, r11, r10
    clrlwi r12, r4, 16
    sraw r9, r6, r0
    add r6, r12, r7
    sraw r6, r6, r8
    mullw r6, r9, r6
    mullw r6, r5, r6
    cmplwi r11, 0x1
    add r31, r31, r6
    opword  0x4082000C  // bne .L_8005D594
    cmplwi r12, 0x1
    opword  0x41820078  // beq .L_8005D608
L_8005D594:
    clrlwi r3, r3, 16
    cmplwi r3, 0x1
    opword  0x4081000C  // ble .L_8005D5A8
    srawi r6, r11, 1
    opword  0x48000008  // b .L_8005D5AC
L_8005D5A8:
    li r6, 0x1
L_8005D5AC:
    clrlwi r3, r4, 16
    cmplwi r3, 0x1
    clrlwi r3, r6, 16
    opword  0x4081000C  // ble .L_8005D5C4
    srawi r4, r12, 1
    opword  0x48000008  // b .L_8005D5C8
L_8005D5C4:
    li r4, 0x1
L_8005D5C8:
    clrlwi r4, r4, 16
    opword  0x4200FF94  // bdnz .L_8005D560
    opword  0x48000038  // b .L_8005D608
L_8005D5D4:
    li r6, 0x1
    slw r7, r6, r0
    slw r6, r6, r8
    clrlwi r9, r3, 16
    subi r3, r7, 0x1
    add r7, r9, r3
    clrlwi r4, r4, 16
    subi r3, r6, 0x1
    sraw r6, r7, r0
    add r0, r4, r3
    sraw r0, r0, r8
    mullw r0, r6, r0
    mullw r31, r5, r0
L_8005D608:
    mr r3, r31
    lwz r31, 0x24(r1)
    addi r1, r1, 0x28
    blr
}

ASM void fn_8005D618(void)
{
    nofralloc
    cmplwi r3, 0x3c
    opword  0x41810040  // bgt .L_8005D65C
    lis r9, jumptable_8049737C@ha
    addi r9, r9, jumptable_8049737C@l
    slwi r0, r3, 2
    lwzx r0, r9, r0
    mtctr r0
    bctr
    li r11, 0x3
    li r12, 0x3
    opword  0x48000024  // b .L_8005D664
    li r11, 0x3
    li r12, 0x2
    opword  0x48000018  // b .L_8005D664
    li r11, 0x2
    li r12, 0x2
    opword  0x4800000C  // b .L_8005D664
L_8005D65C:
    li r12, 0x0
    li r11, 0x0
L_8005D664:
    clrlwi. r0, r4, 16
    opword  0x40820008  // bne .L_8005D670
    li r4, 0x1
L_8005D670:
    clrlwi. r0, r5, 16
    opword  0x40820008  // bne .L_8005D67C
    li r5, 0x1
L_8005D67C:
    li r10, 0x1
    slw r9, r10, r11
    clrlwi r4, r4, 16
    subi r0, r9, 0x1
    add r0, r4, r0
    sraw r0, r0, r11
    slw r4, r10, r12
    stw r0, 0x0(r6)
    clrlwi r5, r5, 16
    subi r0, r4, 0x1
    add r0, r5, r0
    sraw r0, r0, r12
    cmpwi r3, 0x6
    stw r0, 0x0(r7)
    opword  0x41820010  // beq .L_8005D6C4
    cmpwi r3, 0x16
    opword  0x41820008  // beq .L_8005D6C4
    li r10, 0x0
L_8005D6C4:
    cmpwi r10, 0x0
    opword  0x4182000C  // beq .L_8005D6D4
    li r0, 0x2
    opword  0x48000008  // b .L_8005D6D8
L_8005D6D4:
    li r0, 0x1
L_8005D6D8:
    stw r0, 0x0(r8)
    blr
}

ASM void fn_8005D6E0(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x60(r1)
    stmw r24, 0x40(r1)
    addi r27, r4, 0x0
    addi r28, r5, 0x0
    addi r31, r3, 0x0
    addi r29, r6, 0x0
    addi r30, r7, 0x0
    addi r24, r8, 0x0
    addi r25, r9, 0x0
    addi r26, r10, 0x0
    li r4, 0x0
    li r5, 0x20
    bl memset
    lwz r3, 0x0(r31)
    rlwimi r3, r24, 0, 30, 31
    clrlwi. r0, r26, 24
    stw r3, 0x0(r31)
    li r3, 0x1
    lwz r0, 0x0(r31)
    rlwimi r0, r25, 2, 28, 29
    stw r0, 0x0(r31)
    lwz r0, 0x0(r31)
    rlwimi r0, r3, 4, 27, 27
    stw r0, 0x0(r31)
    opword  0x418200A0  // beq .L_8005D7E8
    lbz r3, 0x1f(r31)
    subi r0, r30, 0x8
    cmplwi r0, 0x2
    ori r0, r3, 0x1
    stb r0, 0x1f(r31)
    opword  0x41810018  // bgt .L_8005D778
    lwz r3, 0x0(r31)
    li r0, 0x5
    rlwimi r3, r0, 5, 24, 26
    stw r3, 0x0(r31)
    opword  0x48000014  // b .L_8005D788
L_8005D778:
    lwz r3, 0x0(r31)
    li r0, 0x6
    rlwimi r3, r0, 5, 24, 26
    stw r3, 0x0(r31)
L_8005D788:
    clrlwi r3, r28, 16
    clrlwi r0, r29, 16
    cmplw r3, r0
    opword  0x40810010  // ble .L_8005D7A4
    cntlzw r0, r3
    subfic r0, r0, 0x1f
    opword  0x4800000C  // b .L_8005D7AC
L_8005D7A4:
    cntlzw r0, r0
    subfic r0, r0, 0x1f
L_8005D7AC:
    stw r0, 0x3c(r1)
    lis r0, 0x4330
    opword  0xC82283E8  // lfd f1, lbl_8053B388@sda21(r0)
    stw r0, 0x38(r1)
    opword  0xC04283E0  // lfs f2, lbl_8053B380@sda21(r0)
    lfd fp0, 0x38(r1)
    lwz r3, 0x4(r31)
    fsubs fp0, fp0, fp1
    fmuls fp0, fp2, fp0
    fctiwz fp0, fp0
    stfd fp0, 0x30(r1)
    lwz r0, 0x34(r1)
    rlwimi r3, r0, 8, 16, 23
    stw r3, 0x4(r31)
    opword  0x48000014  // b .L_8005D7F8
L_8005D7E8:
    lwz r3, 0x0(r31)
    li r0, 0x4
    rlwimi r3, r0, 5, 24, 26
    stw r3, 0x0(r31)
L_8005D7F8:
    stw r30, 0x14(r31)
    clrlwi r7, r28, 16
    clrlwi r4, r30, 28
    subi r0, r7, 0x1
    lwz r3, 0x8(r31)
    rlwimi r3, r0, 0, 22, 31
    stw r3, 0x8(r31)
    clrlwi r5, r29, 16
    subi r0, r5, 0x1
    lwz r3, 0x8(r31)
    rlwimi r3, r0, 10, 12, 21
    cmplwi r4, 0xe
    stw r3, 0x8(r31)
    lwz r0, 0x8(r31)
    rlwimi r0, r30, 20, 8, 11
    stw r0, 0x8(r31)
    lwz r0, 0xc(r31)
    rlwimi r0, r27, 27, 11, 31
    stw r0, 0xc(r31)
    opword  0x41810080  // bgt .L_8005D8C4
    lis r3, jumptable_80497470@ha
    addi r3, r3, jumptable_80497470@l
    slwi r0, r4, 2
    lwzx r0, r3, r0
    mtctr r0
    bctr
    li r0, 0x1
    stb r0, 0x1e(r31)
    li r0, 0x3
    li r6, 0x3
    opword  0x48000064  // b .L_8005D8D4
    li r0, 0x2
    stb r0, 0x1e(r31)
    li r0, 0x3
    li r6, 0x2
    opword  0x48000050  // b .L_8005D8D4
    li r0, 0x2
    stb r0, 0x1e(r31)
    li r0, 0x2
    li r6, 0x2
    opword  0x4800003C  // b .L_8005D8D4
    li r0, 0x3
    stb r0, 0x1e(r31)
    li r0, 0x2
    li r6, 0x2
    opword  0x48000028  // b .L_8005D8D4
    li r0, 0x0
    stb r0, 0x1e(r31)
    li r0, 0x3
    li r6, 0x3
    opword  0x48000014  // b .L_8005D8D4
L_8005D8C4:
    li r0, 0x2
    stb r0, 0x1e(r31)
    li r0, 0x2
    li r6, 0x2
L_8005D8D4:
    clrlwi r8, r0, 16
    li r4, 0x1
    slw r3, r4, r8
    clrlwi r6, r6, 16
    subi r0, r3, 0x1
    slw r3, r4, r6
    add r4, r7, r0
    subi r0, r3, 0x1
    sraw r3, r4, r8
    add r0, r5, r0
    sraw r0, r0, r6
    mullw r0, r3, r0
    clrlwi r0, r0, 17
    sth r0, 0x1c(r31)
    lbz r0, 0x1f(r31)
    ori r0, r0, 0x2
    stb r0, 0x1f(r31)
    lwz r0, 0x64(r1)
    lmw r24, 0x40(r1)
    addi r1, r1, 0x60
    mtlr r0
    blr
}

ASM void fn_8005D92C(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x30(r1)
    stw r31, 0x2c(r1)
    lwz r31, 0x38(r1)
    stw r30, 0x28(r1)
    mr r30, r3
    bl fn_8005D6E0
    lbz r0, 0x1f(r30)
    rlwinm r0, r0, 0, 31, 29
    stb r0, 0x1f(r30)
    stw r31, 0x18(r30)
    lwz r0, 0x34(r1)
    lwz r31, 0x2c(r1)
    lwz r30, 0x28(r1)
    addi r1, r1, 0x30
    mtlr r0
    blr
}

ASM void fn_8005D974(void)
{
    nofralloc
    stwu r1, -0x30(r1)
    opword  0xC00283F0  // lfs f0, lbl_8053B390@sda21(r0)
    fcmpo cr0, fp3, fp0
    opword  0x4080000C  // bge .L_8005D98C
    fmr fp3, fp0
    opword  0x48000018  // b .L_8005D9A0
L_8005D98C:
    opword  0xC00283F4  // lfs f0, lbl_8053B394@sda21(r0)
    fcmpo cr0, fp3, fp0
    cror eq, gt, eq
    opword  0x40820008  // bne .L_8005D9A0
    opword  0xC06283F8  // lfs f3, lbl_8053B398@sda21(r0)
L_8005D9A0:
    opword  0xC00283FC  // lfs f0, lbl_8053B39C@sda21(r0)
    cmpwi r5, 0x1
    lwz r5, 0x0(r3)
    fmuls fp0, fp0, fp3
    fctiwz fp0, fp0
    stfd fp0, 0x28(r1)
    lwz r0, 0x2c(r1)
    rlwimi r5, r0, 9, 15, 22
    stw r5, 0x0(r3)
    opword  0x4082000C  // bne .L_8005D9D0
    li r0, 0x1
    opword  0x48000008  // b .L_8005D9D4
L_8005D9D0:
    li r0, 0x0
L_8005D9D4:
    lwz r5, 0x0(r3)
    rlwimi r5, r0, 4, 27, 27
    clrlwi. r0, r7, 24
    stw r5, 0x0(r3)
    opword  0x38AD8160  // li r5, lbl_80539D20@sda21
    lbzx r0, r5, r4
    lwz r4, 0x0(r3)
    rlwimi r4, r0, 5, 24, 26
    stw r4, 0x0(r3)
    opword  0x4182000C  // beq .L_8005DA04
    li r4, 0x0
    opword  0x48000008  // b .L_8005DA08
L_8005DA04:
    li r4, 0x1
L_8005DA08:
    lwz r0, 0x0(r3)
    rlwimi r0, r4, 8, 23, 23
    li r5, 0x0
    stw r0, 0x0(r3)
    lwz r4, 0x0(r3)
    rlwimi r4, r5, 17, 14, 14
    stw r4, 0x0(r3)
    lwz r4, 0x0(r3)
    rlwimi r4, r5, 18, 13, 13
    stw r4, 0x0(r3)
    lwz r4, 0x0(r3)
    rlwimi r4, r8, 19, 11, 12
    stw r4, 0x0(r3)
    lwz r4, 0x0(r3)
    rlwimi r4, r6, 21, 10, 10
    stw r4, 0x0(r3)
    opword  0xC0028400  // lfs f0, lbl_8053B3A0@sda21(r0)
    fcmpo cr0, fp1, fp0
    opword  0x4080000C  // bge .L_8005DA5C
    fmr fp1, fp0
    opword  0x48000014  // b .L_8005DA6C
L_8005DA5C:
    opword  0xC0028404  // lfs f0, lbl_8053B3A4@sda21(r0)
    fcmpo cr0, fp1, fp0
    opword  0x40810008  // ble .L_8005DA6C
    fmr fp1, fp0
L_8005DA6C:
    opword  0xC06283E0  // lfs f3, lbl_8053B380@sda21(r0)
    opword  0xC0028400  // lfs f0, lbl_8053B3A0@sda21(r0)
    fmuls fp1, fp3, fp1
    fcmpo cr0, fp2, fp0
    fctiwz fp1, fp1
    stfd fp1, 0x28(r1)
    lwz r0, 0x2c(r1)
    opword  0x4080000C  // bge .L_8005DA94
    fmr fp2, fp0
    opword  0x48000014  // b .L_8005DAA4
L_8005DA94:
    opword  0xC0028404  // lfs f0, lbl_8053B3A4@sda21(r0)
    fcmpo cr0, fp2, fp0
    opword  0x40810008  // ble .L_8005DAA4
    fmr fp2, fp0
L_8005DAA4:
    opword  0xC00283E0  // lfs f0, lbl_8053B380@sda21(r0)
    lwz r4, 0x4(r3)
    rlwimi r4, r0, 0, 24, 31
    fmuls fp0, fp0, fp2
    stw r4, 0x4(r3)
    fctiwz fp0, fp0
    lwz r4, 0x4(r3)
    stfd fp0, 0x28(r1)
    lwz r0, 0x2c(r1)
    rlwimi r4, r0, 8, 16, 23
    stw r4, 0x4(r3)
    addi r1, r1, 0x30
    blr
}

ASM void fn_8005DAD8(void)
{
    nofralloc
    lwz r3, 0x14(r3)
    blr
}

ASM void fn_8005DAE0(void)
{
    nofralloc
    lbz r0, 0x1f(r3)
    clrlwi r3, r0, 31
    subi r0, r3, 0x1
    cntlzw r0, r0
    extrwi r3, r0, 8, 19
    blr
}

ASM void fn_8005DAF8(void)
{
    nofralloc
    mflr r0
    opword  0x38ED8138  // li r7, lbl_80539CF8@sda21
    stw r0, 0x4(r1)
    opword  0x38CD8140  // li r6, lbl_80539D00@sda21
    stwu r1, -0x40(r1)
    stw r31, 0x3c(r1)
    addi r31, r5, 0x0
    opword  0x38AD8128  // li r5, lbl_80539CE8@sda21
    stw r30, 0x38(r1)
    addi r30, r3, 0x0
    stw r29, 0x34(r1)
    lis r29, 0xcc01
    stw r28, 0x30(r1)
    li r28, 0x61
    lbzx r0, r5, r31
    lwz r5, 0x0(r3)
    opword  0x386D8130  // li r3, lbl_80539CF0@sda21
    rlwimi r5, r0, 24, 0, 7
    stw r5, 0x0(r30)
    opword  0x38AD8148  // li r5, lbl_80539D08@sda21
    lbzx r0, r3, r31
    opword  0x386D8150  // li r3, lbl_80539D10@sda21
    lwz r8, 0x4(r30)
    rlwimi r8, r0, 24, 0, 7
    stw r8, 0x4(r30)
    lbzx r0, r7, r31
    lwz r7, 0x8(r30)
    rlwimi r7, r0, 24, 0, 7
    stw r7, 0x8(r30)
    lbzx r0, r6, r31
    lwz r6, 0x0(r4)
    rlwimi r6, r0, 24, 0, 7
    stw r6, 0x0(r4)
    lbzx r0, r5, r31
    lwz r5, 0x4(r4)
    rlwimi r5, r0, 24, 0, 7
    stw r5, 0x4(r4)
    lbzx r0, r3, r31
    lwz r3, 0xc(r30)
    rlwimi r3, r0, 24, 0, 7
    stw r3, 0xc(r30)
    stb r28, -0x8000(r29)
    lwz r0, 0x0(r30)
    stw r0, -0x8000(r29)
    stb r28, -0x8000(r29)
    lwz r0, 0x4(r30)
    stw r0, -0x8000(r29)
    stb r28, -0x8000(r29)
    lwz r0, 0x8(r30)
    stw r0, -0x8000(r29)
    stb r28, -0x8000(r29)
    lwz r0, 0x0(r4)
    stw r0, -0x8000(r29)
    stb r28, -0x8000(r29)
    lwz r0, 0x4(r4)
    stw r0, -0x8000(r29)
    stb r28, -0x8000(r29)
    lwz r0, 0xc(r30)
    stw r0, -0x8000(r29)
    lbz r0, 0x1f(r30)
    rlwinm. r0, r0, 0, 30, 30
    opword  0x40820038  // bne .L_8005DC24
    opword  0x808283A8  // lwz r4, __GXData@sda21(r0)
    lwz r3, 0x18(r30)
    lwz r12, 0x4cc(r4)
    mtlr r12
    blrl
    opword  0x388D8158  // li r4, lbl_80539D18@sda21
    lwz r5, 0x4(r3)
    lbzx r0, r4, r31
    rlwimi r5, r0, 24, 0, 7
    stw r5, 0x4(r3)
    stb r28, -0x8000(r29)
    lwz r0, 0x4(r3)
    stw r0, -0x8000(r29)
L_8005DC24:
    opword  0x80A283A8  // lwz r5, __GXData@sda21(r0)
    slwi r4, r31, 2
    lwz r3, 0x8(r30)
    li r0, 0x0
    add r4, r5, r4
    stw r3, 0x514(r4)
    lwz r3, 0x0(r30)
    stw r3, 0x534(r4)
    lwz r3, 0x5ac(r5)
    ori r3, r3, 0x1
    stw r3, 0x5ac(r5)
    sth r0, 0x2(r5)
    lwz r0, 0x44(r1)
    lwz r31, 0x3c(r1)
    lwz r30, 0x38(r1)
    lwz r29, 0x34(r1)
    lwz r28, 0x30(r1)
    addi r1, r1, 0x40
    mtlr r0
    blr
}

ASM void fn_8005DC74(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    addi r31, r4, 0x0
    stw r30, 0x10(r1)
    addi r30, r3, 0x0
    opword  0x80A283A8  // lwz r5, __GXData@sda21(r0)
    lwz r12, 0x4c8(r5)
    mtlr r12
    blrl
    addi r4, r3, 0x0
    addi r3, r30, 0x0
    addi r5, r31, 0x0
    bl fn_8005DAF8
    lwz r0, 0x1c(r1)
    lwz r31, 0x14(r1)
    lwz r30, 0x10(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

ASM void fn_8005DCC8(void)
{
    nofralloc
    li r0, 0x0
    stw r0, 0x0(r3)
    li r0, 0x64
    lwz r7, 0x0(r3)
    rlwimi r7, r5, 10, 20, 21
    stw r7, 0x0(r3)
    lwz r5, 0x4(r3)
    rlwimi r5, r4, 27, 11, 31
    stw r5, 0x4(r3)
    lwz r4, 0x4(r3)
    rlwimi r4, r0, 24, 0, 7
    stw r4, 0x4(r3)
    sth r6, 0x8(r3)
    blr
}

ASM void fn_8005DD00(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    stw r30, 0x10(r1)
    mr r30, r3
    addi r3, r4, 0x0
    opword  0x80A283A8  // lwz r5, __GXData@sda21(r0)
    lwz r12, 0x4cc(r5)
    mtlr r12
    blrl
    mr r31, r3
    bl __GXFlushTextureState
    li r4, 0x61
    lis r3, 0xcc01
    stb r4, -0x8000(r3)
    lwz r0, 0x4(r30)
    stw r0, -0x8000(r3)
    stb r4, -0x8000(r3)
    lwz r0, 0x0(r31)
    stw r0, -0x8000(r3)
    bl __GXFlushTextureState
    lwz r3, 0x0(r31)
    lwz r0, 0x0(r30)
    rlwimi r0, r3, 0, 22, 31
    stw r0, 0x0(r30)
    lwz r3, 0x0(r30)
    lwz r0, 0x4(r30)
    stw r3, 0x4(r31)
    stw r0, 0x8(r31)
    lwz r0, 0x8(r30)
    stw r0, 0xc(r31)
    lwz r0, 0x1c(r1)
    lwz r31, 0x14(r1)
    lwz r30, 0x10(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

ASM void GXInitTexCacheRegion(void)
{
    nofralloc
    cmpwi r6, 0x1
    opword  0x41820028  // beq .L_8005DDC4
    opword  0x40800010  // bge .L_8005DDB0
    cmpwi r6, 0x0
    opword  0x40800014  // bge .L_8005DDBC
    opword  0x48000024  // b .L_8005DDD0
L_8005DDB0:
    cmpwi r6, 0x3
    opword  0x4080001C  // bge .L_8005DDD0
    opword  0x48000014  // b .L_8005DDCC
L_8005DDBC:
    li r9, 0x3
    opword  0x48000010  // b .L_8005DDD0
L_8005DDC4:
    li r9, 0x4
    opword  0x48000008  // b .L_8005DDD0
L_8005DDCC:
    li r9, 0x5
L_8005DDD0:
    li r6, 0x0
    stw r6, 0x0(r3)
    srwi r0, r5, 5
    cmpwi r8, 0x2
    lwz r5, 0x0(r3)
    rlwimi r5, r0, 0, 17, 31
    stw r5, 0x0(r3)
    lwz r0, 0x0(r3)
    rlwimi r0, r9, 15, 14, 16
    stw r0, 0x0(r3)
    lwz r0, 0x0(r3)
    rlwimi r0, r9, 18, 11, 13
    stw r0, 0x0(r3)
    lwz r0, 0x0(r3)
    rlwimi r0, r6, 21, 10, 10
    stw r0, 0x0(r3)
    opword  0x41820034  // beq .L_8005DE44
    opword  0x40800014  // bge .L_8005DE28
    cmpwi r8, 0x0
    opword  0x41820018  // beq .L_8005DE34
    opword  0x4080001C  // bge .L_8005DE3C
    opword  0x4800002C  // b .L_8005DE50
L_8005DE28:
    cmpwi r8, 0x4
    opword  0x40800024  // bge .L_8005DE50
    opword  0x4800001C  // b .L_8005DE4C
L_8005DE34:
    li r9, 0x3
    opword  0x48000018  // b .L_8005DE50
L_8005DE3C:
    li r9, 0x4
    opword  0x48000010  // b .L_8005DE50
L_8005DE44:
    li r9, 0x5
    opword  0x48000008  // b .L_8005DE50
L_8005DE4C:
    li r9, 0x0
L_8005DE50:
    li r0, 0x0
    stw r0, 0x4(r3)
    li r0, 0x1
    lwz r6, 0x4(r3)
    rlwimi r6, r7, 27, 17, 31
    stw r6, 0x4(r3)
    lwz r5, 0x4(r3)
    rlwimi r5, r9, 15, 14, 16
    stw r5, 0x4(r3)
    lwz r5, 0x4(r3)
    rlwimi r5, r9, 18, 11, 13
    stw r5, 0x4(r3)
    stb r4, 0xc(r3)
    stb r0, 0xd(r3)
    blr
}

ASM void GXInitTlutRegion(void)
{
    nofralloc
    li r0, 0x0
    stw r0, 0x0(r3)
    subis r0, r4, 0x8
    lwz r4, 0x0(r3)
    rlwimi r4, r0, 23, 22, 31
    li r0, 0x65
    stw r4, 0x0(r3)
    lwz r4, 0x0(r3)
    rlwimi r4, r5, 10, 11, 21
    stw r4, 0x0(r3)
    lwz r4, 0x0(r3)
    rlwimi r4, r0, 24, 0, 7
    stw r4, 0x0(r3)
    blr
}

ASM void fn_8005DEC4(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x8(r1)
    bl __GXFlushTextureState
    li r6, 0x61
    lis r3, 0x6600
    lis r5, 0xcc01
    stb r6, -0x8000(r5)
    addi r4, r3, 0x1000
    addi r0, r3, 0x1100
    stw r4, -0x8000(r5)
    stb r6, -0x8000(r5)
    stw r0, -0x8000(r5)
    bl __GXFlushTextureState
    lwz r0, 0xc(r1)
    addi r1, r1, 0x8
    mtlr r0
    blr
}

ASM void fn_8005DF0C(void)
{
    nofralloc
    opword  0x808283A8  // lwz r4, __GXData@sda21(r0)
    lwzu r0, 0x4c8(r4)
    stw r3, 0x0(r4)
    mr r3, r0
    blr
}

ASM void fn_8005DF20(void)
{
    nofralloc
    opword  0x808283A8  // lwz r4, __GXData@sda21(r0)
    lwzu r0, 0x4cc(r4)
    stw r3, 0x0(r4)
    mr r3, r0
    blr
}

ASM void fn_8005DF34(void)
{
    nofralloc
    opword  0x810283A8  // lwz r8, __GXData@sda21(r0)
    slwi r3, r3, 2
    slwi r0, r4, 2
    add r3, r8, r3
    lwz r4, 0x514(r3)
    add r7, r8, r0
    lwz r0, 0xb8(r7)
    li r5, 0x61
    clrlwi r6, r4, 22
    rlwimi r0, r6, 0, 16, 31
    stw r0, 0xb8(r7)
    extrwi r4, r4, 10, 12
    lwz r0, 0xd8(r7)
    rlwimi r0, r4, 0, 16, 31
    lis r4, 0xcc01
    stw r0, 0xd8(r7)
    li r0, 0x0
    lwz r9, 0x534(r3)
    lwz r3, 0xb8(r7)
    clrlwi r6, r9, 30
    subfic r6, r6, 0x1
    cntlzw r6, r6
    extrwi r10, r6, 8, 19
    extrwi r6, r9, 2, 28
    rlwimi r3, r10, 16, 15, 15
    subfic r6, r6, 0x1
    stw r3, 0xb8(r7)
    cntlzw r3, r6
    extrwi r6, r3, 8, 19
    lwz r3, 0xd8(r7)
    rlwimi r3, r6, 16, 15, 15
    stw r3, 0xd8(r7)
    stb r5, -0x8000(r4)
    lwz r3, 0xb8(r7)
    stw r3, -0x8000(r4)
    stb r5, -0x8000(r4)
    lwz r3, 0xd8(r7)
    stw r3, -0x8000(r4)
    sth r0, 0x2(r8)
    blr
}

ASM void fn_8005DFD4(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x28(r1)
    stmw r27, 0x14(r1)
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    lwz r0, 0x594(r3)
    cmplwi r0, 0xff
    opword  0x4182014C  // beq .L_8005E13C
    lwz r0, 0x204(r3)
    li r31, 0x0
    extrwi r3, r0, 4, 18
    addi r30, r3, 0x1
    extrwi r27, r0, 3, 13
    opword  0x480000A0  // b .L_8005E0A8
L_8005E00C:
    cmpwi r31, 0x2
    opword  0x4182004C  // beq .L_8005E05C
    opword  0x40800014  // bge .L_8005E028
    cmpwi r31, 0x0
    opword  0x41820018  // beq .L_8005E034
    opword  0x40800028  // bge .L_8005E048
    opword  0x4800005C  // b .L_8005E080
L_8005E028:
    cmpwi r31, 0x4
    opword  0x40800054  // bge .L_8005E080
    opword  0x48000040  // b .L_8005E070
L_8005E034:
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    lwz r0, 0x120(r3)
    clrlwi r29, r0, 29
    extrwi r28, r0, 3, 26
    opword  0x4800003C  // b .L_8005E080
L_8005E048:
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    lwz r0, 0x120(r3)
    extrwi r29, r0, 3, 23
    extrwi r28, r0, 3, 20
    opword  0x48000028  // b .L_8005E080
L_8005E05C:
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    lwz r0, 0x120(r3)
    extrwi r29, r0, 3, 17
    extrwi r28, r0, 3, 14
    opword  0x48000014  // b .L_8005E080
L_8005E070:
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    lwz r0, 0x120(r3)
    extrwi r29, r0, 3, 11
    extrwi r28, r0, 3, 8
L_8005E080:
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    li r0, 0x1
    slw r0, r0, r28
    lwz r3, 0x594(r3)
    and. r0, r3, r0
    opword  0x40820010  // bne .L_8005E0A4
    addi r3, r29, 0x0
    addi r4, r28, 0x0
    bl fn_8005DF34
L_8005E0A4:
    addi r31, r31, 0x1
L_8005E0A8:
    cmplw r31, r27
    opword  0x4180FF60  // blt .L_8005E00C
    li r31, 0x0
    addi r27, r31, 0x0
    opword  0x4800007C  // b .L_8005E134
L_8005E0BC:
    opword  0x80A283A8  // lwz r5, __GXData@sda21(r0)
    addi r3, r27, 0x554
    extlwi r4, r31, 30, 1
    lwzx r3, r5, r3
    clrlwi. r0, r31, 31
    addi r4, r4, 0x100
    add r4, r5, r4
    rlwinm r29, r3, 0, 24, 22
    opword  0x41820010  // beq .L_8005E0EC
    lwz r0, 0x0(r4)
    extrwi r28, r0, 3, 14
    opword  0x4800000C  // b .L_8005E0F4
L_8005E0EC:
    lwz r0, 0x0(r4)
    extrwi r28, r0, 3, 26
L_8005E0F4:
    cmplwi r29, 0xff
    opword  0x41820034  // beq .L_8005E12C
    li r4, 0x1
    lwz r3, 0x594(r5)
    slw r0, r4, r28
    and. r0, r3, r0
    opword  0x40820020  // bne .L_8005E12C
    lwz r3, 0x598(r5)
    slw r0, r4, r31
    and. r0, r3, r0
    opword  0x41820010  // beq .L_8005E12C
    addi r3, r29, 0x0
    addi r4, r28, 0x0
    bl fn_8005DF34
L_8005E12C:
    addi r27, r27, 0x4
    addi r31, r31, 0x1
L_8005E134:
    cmplw r31, r30
    opword  0x4180FF84  // blt .L_8005E0BC
L_8005E13C:
    lmw r27, 0x14(r1)
    lwz r0, 0x2c(r1)
    addi r1, r1, 0x28
    mtlr r0
    blr
}

ASM void __GXSetTmemConfig(void)
{
    nofralloc
    stwu r1, -0x18(r1)
    cmpwi r3, 0x1
    stw r31, 0x14(r1)
    stw r30, 0x10(r1)
    opword  0x41820120  // beq .L_8005E280
    opword  0x40800008  // bge .L_8005E16C
    opword  0x48000224  // b .L_8005E38C
L_8005E16C:
    cmpwi r3, 0x3
    opword  0x4080021C  // bge .L_8005E38C
    li r0, 0x61
    lis r3, 0xcc01
    lis r4, 0x8c0e
    stb r0, -0x8000(r3)
    addi r4, r4, -0x8000
    stw r4, -0x8000(r3)
    lis r4, 0x900e
    lis r7, 0x8d0e
    stb r0, -0x8000(r3)
    subi r4, r4, 0x4000
    lis r6, 0x910e
    stw r4, -0x8000(r3)
    lis r5, 0x8e0e
    lis r4, 0x920e
    stb r0, -0x8000(r3)
    subi r7, r7, 0x7800
    lis r30, 0x8f0e
    stw r7, -0x8000(r3)
    lis r12, 0x930e
    lis r11, 0xac0e
    stb r0, -0x8000(r3)
    subi r6, r6, 0x3800
    lis r10, 0xb00e
    stw r6, -0x8000(r3)
    lis r9, 0xad0e
    lis r8, 0xb10e
    stb r0, -0x8000(r3)
    subi r5, r5, 0x7000
    lis r7, 0xae0e
    stw r5, -0x8000(r3)
    lis r6, 0xb20e
    lis r5, 0xaf0e
    stb r0, -0x8000(r3)
    subi r31, r4, 0x3000
    lis r4, 0xb30e
    stw r31, -0x8000(r3)
    subi r30, r30, 0x6800
    subi r12, r12, 0x2800
    stb r0, -0x8000(r3)
    subi r11, r11, 0x6000
    subi r10, r10, 0x3c00
    stw r30, -0x8000(r3)
    subi r9, r9, 0x5800
    subi r8, r8, 0x3400
    stb r0, -0x8000(r3)
    subi r7, r7, 0x5000
    subi r6, r6, 0x2c00
    stw r12, -0x8000(r3)
    subi r5, r5, 0x4800
    subi r4, r4, 0x2400
    stb r0, -0x8000(r3)
    stw r11, -0x8000(r3)
    stb r0, -0x8000(r3)
    stw r10, -0x8000(r3)
    stb r0, -0x8000(r3)
    stw r9, -0x8000(r3)
    stb r0, -0x8000(r3)
    stw r8, -0x8000(r3)
    stb r0, -0x8000(r3)
    stw r7, -0x8000(r3)
    stb r0, -0x8000(r3)
    stw r6, -0x8000(r3)
    stb r0, -0x8000(r3)
    stw r5, -0x8000(r3)
    stb r0, -0x8000(r3)
    stw r4, -0x8000(r3)
    opword  0x48000218  // b .L_8005E494
L_8005E280:
    li r0, 0x61
    lis r3, 0xcc01
    lis r4, 0x8c0e
    stb r0, -0x8000(r3)
    addi r4, r4, -0x8000
    stw r4, -0x8000(r3)
    lis r4, 0x900e
    lis r7, 0x8d0e
    stb r0, -0x8000(r3)
    subi r4, r4, 0x4000
    lis r6, 0x910e
    stw r4, -0x8000(r3)
    lis r5, 0x8e0e
    lis r4, 0x920e
    stb r0, -0x8000(r3)
    subi r7, r7, 0x7800
    lis r30, 0x8f0e
    stw r7, -0x8000(r3)
    lis r12, 0x930e
    lis r11, 0xac0e
    stb r0, -0x8000(r3)
    subi r6, r6, 0x3800
    lis r10, 0xb00e
    stw r6, -0x8000(r3)
    lis r9, 0xad0e
    lis r8, 0xb10e
    stb r0, -0x8000(r3)
    subi r5, r5, 0x7000
    lis r7, 0xae0e
    stw r5, -0x8000(r3)
    lis r6, 0xb20e
    lis r5, 0xaf0e
    stb r0, -0x8000(r3)
    subi r31, r4, 0x3000
    lis r4, 0xb30e
    stw r31, -0x8000(r3)
    subi r30, r30, 0x6800
    subi r12, r12, 0x2800
    stb r0, -0x8000(r3)
    subi r11, r11, 0x6000
    subi r10, r10, 0x2000
    stw r30, -0x8000(r3)
    subi r9, r9, 0x5800
    subi r8, r8, 0x1800
    stb r0, -0x8000(r3)
    subi r7, r7, 0x5000
    subi r6, r6, 0x1000
    stw r12, -0x8000(r3)
    subi r5, r5, 0x4800
    subi r4, r4, 0x800
    stb r0, -0x8000(r3)
    stw r11, -0x8000(r3)
    stb r0, -0x8000(r3)
    stw r10, -0x8000(r3)
    stb r0, -0x8000(r3)
    stw r9, -0x8000(r3)
    stb r0, -0x8000(r3)
    stw r8, -0x8000(r3)
    stb r0, -0x8000(r3)
    stw r7, -0x8000(r3)
    stb r0, -0x8000(r3)
    stw r6, -0x8000(r3)
    stb r0, -0x8000(r3)
    stw r5, -0x8000(r3)
    stb r0, -0x8000(r3)
    stw r4, -0x8000(r3)
    opword  0x4800010C  // b .L_8005E494
L_8005E38C:
    li r0, 0x61
    lis r3, 0xcc01
    lis r4, 0x8c0e
    stb r0, -0x8000(r3)
    addi r4, r4, -0x8000
    stw r4, -0x8000(r3)
    lis r4, 0x900e
    lis r7, 0x8d0e
    stb r0, -0x8000(r3)
    subi r4, r4, 0x4000
    lis r6, 0x910e
    stw r4, -0x8000(r3)
    lis r5, 0x8e0e
    lis r4, 0x920e
    stb r0, -0x8000(r3)
    subi r7, r7, 0x7c00
    lis r31, 0x8f0e
    stw r7, -0x8000(r3)
    lis r12, 0x930e
    lis r11, 0xac0e
    stb r0, -0x8000(r3)
    subi r6, r6, 0x3c00
    lis r10, 0xb00e
    stw r6, -0x8000(r3)
    lis r9, 0xad0e
    lis r8, 0xb10e
    stb r0, -0x8000(r3)
    subi r5, r5, 0x7800
    lis r7, 0xae0e
    stw r5, -0x8000(r3)
    lis r6, 0xb20e
    lis r5, 0xaf0e
    stb r0, -0x8000(r3)
    subi r30, r4, 0x3800
    lis r4, 0xb30e
    stw r30, -0x8000(r3)
    subi r31, r31, 0x7400
    subi r12, r12, 0x3400
    stb r0, -0x8000(r3)
    subi r11, r11, 0x7000
    subi r10, r10, 0x3000
    stw r31, -0x8000(r3)
    subi r9, r9, 0x6c00
    subi r8, r8, 0x2c00
    stb r0, -0x8000(r3)
    subi r7, r7, 0x6800
    subi r6, r6, 0x2800
    stw r12, -0x8000(r3)
    subi r5, r5, 0x6400
    subi r4, r4, 0x2400
    stb r0, -0x8000(r3)
    stw r11, -0x8000(r3)
    stb r0, -0x8000(r3)
    stw r10, -0x8000(r3)
    stb r0, -0x8000(r3)
    stw r9, -0x8000(r3)
    stb r0, -0x8000(r3)
    stw r8, -0x8000(r3)
    stb r0, -0x8000(r3)
    stw r7, -0x8000(r3)
    stb r0, -0x8000(r3)
    stw r6, -0x8000(r3)
    stb r0, -0x8000(r3)
    stw r5, -0x8000(r3)
    stb r0, -0x8000(r3)
    stw r4, -0x8000(r3)
L_8005E494:
    lwz r31, 0x14(r1)
    lwz r30, 0x10(r1)
    addi r1, r1, 0x18
    blr
}

ASM void fn_8005E4A4(void)
{
    nofralloc
    stwu r1, -0x30(r1)
    li r0, 0x0
    rlwimi r0, r4, 0, 30, 31
    stw r31, 0x2c(r1)
    mr r11, r0
    rlwimi r11, r5, 2, 28, 29
    lwz r12, 0x3c(r1)
    lbz r31, 0x3b(r1)
    rlwimi r11, r6, 4, 25, 27
    opword  0x808283A8  // lwz r4, __GXData@sda21(r0)
    rlwimi r11, r12, 7, 23, 24
    rlwimi r11, r7, 9, 19, 22
    rlwimi r11, r8, 13, 16, 18
    rlwimi r11, r9, 16, 13, 15
    rlwimi r11, r31, 19, 12, 12
    li r0, 0x61
    lis r5, 0xcc01
    stb r0, -0x8000(r5)
    addi r0, r3, 0x10
    rlwimi r11, r10, 20, 11, 11
    rlwimi r11, r0, 24, 0, 7
    stw r11, -0x8000(r5)
    li r0, 0x0
    sth r0, 0x2(r4)
    lwz r31, 0x2c(r1)
    addi r1, r1, 0x30
    blr
}

ASM void fn_8005E510(void)
{
    nofralloc
    stwu r1, -0x70(r1)
    cmpwi r3, 0x8
    stw r31, 0x6c(r1)
    stw r30, 0x68(r1)
    stw r29, 0x64(r1)
    opword  0x41820044  // beq .L_8005E568
    opword  0x4080001C  // bge .L_8005E544
    cmpwi r3, 0x4
    opword  0x41820038  // beq .L_8005E568
    opword  0x40800024  // bge .L_8005E558
    cmpwi r3, 0x1
    opword  0x40800014  // bge .L_8005E550
    opword  0x48000028  // b .L_8005E568
L_8005E544:
    cmpwi r3, 0xc
    opword  0x40800020  // bge .L_8005E568
    opword  0x48000014  // b .L_8005E560
L_8005E550:
    subi r0, r3, 0x1
    opword  0x48000018  // b .L_8005E56C
L_8005E558:
    subi r0, r3, 0x5
    opword  0x48000010  // b .L_8005E56C
L_8005E560:
    subi r0, r3, 0x9
    opword  0x48000008  // b .L_8005E56C
L_8005E568:
    li r0, 0x0
L_8005E56C:
    opword  0xC0428408  // lfs f2, lbl_8053B3A8@sda21(r0)
    mulli r31, r0, 0x3
    lfs fp1, 0x0(r4)
    lfs fp0, 0xc(r4)
    fmuls fp1, fp2, fp1
    addi r10, r5, 0x11
    fmuls fp0, fp2, fp0
    extsb r10, r10
    li r12, 0x61
    fctiwz fp1, fp1
    lis r11, 0xcc01
    fctiwz fp0, fp0
    li r30, 0x0
    addi r0, r31, 0x6
    stfd fp1, 0x58(r1)
    extrwi r8, r10, 2, 28
    addi r7, r31, 0x7
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    stfd fp0, 0x50(r1)
    lwz r9, 0x5c(r1)
    li r29, 0x0
    lwz r6, 0x54(r1)
    addi r5, r31, 0x8
    rlwimi r30, r9, 0, 21, 31
    addi r9, r30, 0x0
    stb r12, -0x8000(r11)
    rlwimi r9, r6, 11, 10, 20
    rlwimi r9, r10, 22, 8, 9
    rlwimi r9, r0, 24, 0, 7
    stw r9, -0x8000(r11)
    extrwi r6, r10, 2, 26
    li r30, 0x0
    lfs fp1, 0x4(r4)
    li r0, 0x0
    lfs fp0, 0x10(r4)
    fmuls fp1, fp2, fp1
    fmuls fp0, fp2, fp0
    stb r12, -0x8000(r11)
    fctiwz fp1, fp1
    fctiwz fp0, fp0
    stfd fp1, 0x48(r1)
    stfd fp0, 0x40(r1)
    lwz r10, 0x4c(r1)
    lwz r9, 0x44(r1)
    rlwimi r29, r10, 0, 21, 31
    rlwimi r29, r9, 11, 10, 20
    rlwimi r29, r8, 22, 8, 9
    rlwimi r29, r7, 24, 0, 7
    stw r29, -0x8000(r11)
    lfs fp1, 0x8(r4)
    lfs fp0, 0x14(r4)
    fmuls fp1, fp2, fp1
    fmuls fp0, fp2, fp0
    stb r12, -0x8000(r11)
    fctiwz fp1, fp1
    fctiwz fp0, fp0
    stfd fp1, 0x38(r1)
    stfd fp0, 0x30(r1)
    lwz r7, 0x3c(r1)
    lwz r4, 0x34(r1)
    rlwimi r30, r7, 0, 21, 31
    rlwimi r30, r4, 11, 10, 20
    rlwimi r30, r6, 22, 8, 9
    rlwimi r30, r5, 24, 0, 7
    stw r30, -0x8000(r11)
    sth r0, 0x2(r3)
    lwz r31, 0x6c(r1)
    lwz r30, 0x68(r1)
    lwz r29, 0x64(r1)
    addi r1, r1, 0x70
    blr
}

ASM void fn_8005E688(void)
{
    nofralloc
    cmpwi r3, 0x2
    opword  0x418200AC  // beq .L_8005E738
    opword  0x40800014  // bge .L_8005E6A4
    cmpwi r3, 0x0
    opword  0x41820018  // beq .L_8005E6B0
    opword  0x40800058  // bge .L_8005E6F4
    opword  0x4800011C  // b .L_8005E7BC
L_8005E6A4:
    cmpwi r3, 0x4
    opword  0x40800114  // bge .L_8005E7BC
    opword  0x480000D0  // b .L_8005E77C
L_8005E6B0:
    opword  0x810283A8  // lwz r8, __GXData@sda21(r0)
    li r6, 0x25
    li r0, 0x61
    lwz r7, 0x128(r8)
    rlwimi r7, r4, 0, 28, 31
    lis r3, 0xcc01
    stw r7, 0x128(r8)
    lwz r4, 0x128(r8)
    rlwimi r4, r5, 4, 24, 27
    stw r4, 0x128(r8)
    lwz r4, 0x128(r8)
    rlwimi r4, r6, 24, 0, 7
    stw r4, 0x128(r8)
    stb r0, -0x8000(r3)
    lwz r0, 0x128(r8)
    stw r0, -0x8000(r3)
    opword  0x480000CC  // b .L_8005E7BC
L_8005E6F4:
    opword  0x810283A8  // lwz r8, __GXData@sda21(r0)
    li r6, 0x25
    li r0, 0x61
    lwz r7, 0x128(r8)
    rlwimi r7, r4, 8, 20, 23
    lis r3, 0xcc01
    stw r7, 0x128(r8)
    lwz r4, 0x128(r8)
    rlwimi r4, r5, 12, 16, 19
    stw r4, 0x128(r8)
    lwz r4, 0x128(r8)
    rlwimi r4, r6, 24, 0, 7
    stw r4, 0x128(r8)
    stb r0, -0x8000(r3)
    lwz r0, 0x128(r8)
    stw r0, -0x8000(r3)
    opword  0x48000088  // b .L_8005E7BC
L_8005E738:
    opword  0x810283A8  // lwz r8, __GXData@sda21(r0)
    li r6, 0x26
    li r0, 0x61
    lwz r7, 0x12c(r8)
    rlwimi r7, r4, 0, 28, 31
    lis r3, 0xcc01
    stw r7, 0x12c(r8)
    lwz r4, 0x12c(r8)
    rlwimi r4, r5, 4, 24, 27
    stw r4, 0x12c(r8)
    lwz r4, 0x12c(r8)
    rlwimi r4, r6, 24, 0, 7
    stw r4, 0x12c(r8)
    stb r0, -0x8000(r3)
    lwz r0, 0x12c(r8)
    stw r0, -0x8000(r3)
    opword  0x48000044  // b .L_8005E7BC
L_8005E77C:
    opword  0x810283A8  // lwz r8, __GXData@sda21(r0)
    li r6, 0x26
    li r0, 0x61
    lwz r7, 0x12c(r8)
    rlwimi r7, r4, 8, 20, 23
    lis r3, 0xcc01
    stw r7, 0x12c(r8)
    lwz r4, 0x12c(r8)
    rlwimi r4, r5, 12, 16, 19
    stw r4, 0x12c(r8)
    lwz r4, 0x12c(r8)
    rlwimi r4, r6, 24, 0, 7
    stw r4, 0x12c(r8)
    stb r0, -0x8000(r3)
    lwz r0, 0x12c(r8)
    stw r0, -0x8000(r3)
L_8005E7BC:
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    li r0, 0x0
    sth r0, 0x2(r3)
    blr
}

ASM void fn_8005E7CC(void)
{
    nofralloc
    cmpwi r5, 0xff
    opword  0x40820008  // bne .L_8005E7D8
    li r5, 0x0
L_8005E7D8:
    cmpwi r4, 0xff
    opword  0x40820008  // bne .L_8005E7E4
    li r4, 0x0
L_8005E7E4:
    cmpwi r3, 0x2
    opword  0x41820064  // beq .L_8005E84C
    opword  0x40800014  // bge .L_8005E800
    cmpwi r3, 0x0
    opword  0x41820018  // beq .L_8005E80C
    opword  0x40800034  // bge .L_8005E82C
    opword  0x4800008C  // b .L_8005E888
L_8005E800:
    cmpwi r3, 0x4
    opword  0x40800084  // bge .L_8005E888
    opword  0x48000064  // b .L_8005E86C
L_8005E80C:
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    lwz r0, 0x120(r3)
    rlwimi r0, r5, 0, 29, 31
    stw r0, 0x120(r3)
    lwz r0, 0x120(r3)
    rlwimi r0, r4, 3, 26, 28
    stw r0, 0x120(r3)
    opword  0x48000060  // b .L_8005E888
L_8005E82C:
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    lwz r0, 0x120(r3)
    rlwimi r0, r5, 6, 23, 25
    stw r0, 0x120(r3)
    lwz r0, 0x120(r3)
    rlwimi r0, r4, 9, 20, 22
    stw r0, 0x120(r3)
    opword  0x48000040  // b .L_8005E888
L_8005E84C:
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    lwz r0, 0x120(r3)
    rlwimi r0, r5, 12, 17, 19
    stw r0, 0x120(r3)
    lwz r0, 0x120(r3)
    rlwimi r0, r4, 15, 14, 16
    stw r0, 0x120(r3)
    opword  0x48000020  // b .L_8005E888
L_8005E86C:
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    lwz r0, 0x120(r3)
    rlwimi r0, r5, 18, 11, 13
    stw r0, 0x120(r3)
    lwz r0, 0x120(r3)
    rlwimi r0, r4, 21, 8, 10
    stw r0, 0x120(r3)
L_8005E888:
    li r0, 0x61
    opword  0x808283A8  // lwz r4, __GXData@sda21(r0)
    lis r5, 0xcc01
    stb r0, -0x8000(r5)
    li r0, 0x0
    lwz r3, 0x120(r4)
    stw r3, -0x8000(r5)
    lwz r3, 0x5ac(r4)
    ori r3, r3, 0x3
    stw r3, 0x5ac(r4)
    sth r0, 0x2(r4)
    blr
}

ASM void fn_8005E8B8(void)
{
    nofralloc
    opword  0x808283A8  // lwz r4, __GXData@sda21(r0)
    clrlwi r0, r3, 24
    lwz r3, 0x204(r4)
    rlwimi r3, r0, 16, 13, 15
    stw r3, 0x204(r4)
    lwz r0, 0x5ac(r4)
    ori r0, r0, 0x6
    stw r0, 0x5ac(r4)
    blr
}

ASM void fn_8005E8DC(void)
{
    nofralloc
    mflr r0
    li r4, 0x0
    stw r0, 0x4(r1)
    li r0, 0x0
    li r5, 0x0
    stwu r1, -0x18(r1)
    li r6, 0x0
    li r7, 0x0
    stw r0, 0x8(r1)
    li r8, 0x0
    li r9, 0x0
    stw r0, 0xc(r1)
    li r10, 0x0
    bl fn_8005E4A4
    lwz r0, 0x1c(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

ASM void fn_8005E924(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    clrlwi. r0, r6, 24
    stwu r1, -0x20(r1)
    opword  0x4182000C  // beq .L_8005E940
    li r6, 0x6
    opword  0x48000008  // b .L_8005E944
L_8005E940:
    li r6, 0x0
L_8005E944:
    clrlwi. r0, r5, 24
    addi r8, r6, 0x0
    opword  0x4182000C  // beq .L_8005E958
    li r6, 0x7
    opword  0x48000008  // b .L_8005E95C
L_8005E958:
    li r6, 0x0
L_8005E95C:
    li r0, 0x0
    stw r0, 0x8(r1)
    addi r9, r8, 0x0
    li r5, 0x0
    stw r0, 0xc(r1)
    li r10, 0x0
    bl fn_8005E4A4
    lwz r0, 0x24(r1)
    addi r1, r1, 0x20
    mtlr r0
    blr
}

ASM void fn_8005E988(void)
{
    nofralloc
    blr
}

ASM void __GXSetIndirectMask(void)
{
    nofralloc
    opword  0x80E283A8  // lwz r7, __GXData@sda21(r0)
    li r5, 0x61
    lis r4, 0xcc01
    lwz r6, 0x124(r7)
    rlwimi r6, r3, 0, 24, 31
    li r0, 0x0
    stw r6, 0x124(r7)
    stb r5, -0x8000(r4)
    lwz r3, 0x124(r7)
    stw r3, -0x8000(r4)
    sth r0, 0x2(r7)
    blr
}

ASM void __GXFlushTextureState(void)
{
    nofralloc
    li r0, 0x61
    opword  0x808283A8  // lwz r4, __GXData@sda21(r0)
    lis r5, 0xcc01
    stb r0, -0x8000(r5)
    li r0, 0x0
    lwz r3, 0x124(r4)
    stw r3, -0x8000(r5)
    sth r0, 0x2(r4)
    blr
}

ASM void fn_8005E9E0(void)
{
    nofralloc
    cmpwi r3, 0x0
    lis r5, lbl_804974B0@ha
    addi r0, r5, lbl_804974B0@l
    opword  0x40820014  // bne .L_8005EA00
    slwi r4, r4, 2
    add r5, r0, r4
    addi r9, r5, 0x28
    opword  0x48000018  // b .L_8005EA14
L_8005EA00:
    slwi r4, r4, 2
    add r5, r0, r4
    add r9, r0, r4
    addi r5, r5, 0x14
    addi r9, r9, 0x3c
L_8005EA14:
    opword  0x80E283A8  // lwz r7, __GXData@sda21(r0)
    slwi r3, r3, 2
    lwz r0, 0x0(r5)
    li r5, 0x61
    add r6, r7, r3
    lwz r3, 0x130(r6)
    lis r4, 0xcc01
    stb r5, -0x8000(r4)
    clrrwi r3, r3, 24
    rlwimi r3, r0, 0, 8, 31
    stw r3, -0x8000(r4)
    li r0, 0x0
    stw r3, 0x130(r6)
    lwz r8, 0x170(r6)
    lwz r3, 0x0(r9)
    rlwinm r8, r8, 0, 28, 7
    stb r5, -0x8000(r4)
    rlwimi r8, r3, 0, 8, 27
    stw r8, -0x8000(r4)
    stw r8, 0x170(r6)
    sth r0, 0x2(r7)
    blr
}

ASM void fn_8005EA6C(void)
{
    nofralloc
    opword  0x812283A8  // lwz r9, __GXData@sda21(r0)
    slwi r3, r3, 2
    li r0, 0x61
    add r8, r9, r3
    lwz r10, 0x130(r8)
    lis r3, 0xcc01
    rlwimi r10, r4, 12, 16, 19
    stb r0, -0x8000(r3)
    addi r4, r10, 0x0
    rlwimi r4, r5, 8, 20, 23
    rlwimi r4, r6, 4, 24, 27
    rlwimi r4, r7, 0, 28, 31
    stw r4, -0x8000(r3)
    li r0, 0x0
    stw r4, 0x130(r8)
    sth r0, 0x2(r9)
    blr
}

ASM void fn_8005EAB0(void)
{
    nofralloc
    opword  0x812283A8  // lwz r9, __GXData@sda21(r0)
    slwi r3, r3, 2
    li r0, 0x61
    add r8, r9, r3
    lwz r10, 0x170(r8)
    lis r3, 0xcc01
    rlwimi r10, r4, 13, 16, 18
    stb r0, -0x8000(r3)
    addi r4, r10, 0x0
    rlwimi r4, r5, 10, 19, 21
    rlwimi r4, r6, 7, 22, 24
    rlwimi r4, r7, 4, 25, 27
    stw r4, -0x8000(r3)
    li r0, 0x0
    stw r4, 0x170(r8)
    sth r0, 0x2(r9)
    blr
}

ASM void fn_8005EAF4(void)
{
    nofralloc
    opword  0x800283A8  // lwz r0, __GXData@sda21(r0)
    slwi r9, r3, 2
    cmpwi r4, 0x1
    add r3, r0, r9
    lwz r3, 0x130(r3)
    rlwimi r3, r4, 18, 13, 13
    addi r10, r3, 0x0
    opword  0x41810010  // bgt .L_8005EB20
    rlwimi r10, r6, 20, 10, 11
    rlwimi r10, r5, 16, 14, 15
    opword  0x48000010  // b .L_8005EB2C
L_8005EB20:
    li r0, 0x3
    rlwimi r10, r4, 19, 10, 11
    rlwimi r10, r0, 16, 14, 15
L_8005EB2C:
    li r0, 0x61
    opword  0x808283A8  // lwz r4, __GXData@sda21(r0)
    lis r5, 0xcc01
    stb r0, -0x8000(r5)
    rlwimi r10, r7, 19, 12, 12
    rlwimi r10, r8, 22, 8, 9
    stw r10, -0x8000(r5)
    add r3, r4, r9
    li r0, 0x0
    stw r10, 0x130(r3)
    sth r0, 0x2(r4)
    blr
}

ASM void fn_8005EB5C(void)
{
    nofralloc
    opword  0x800283A8  // lwz r0, __GXData@sda21(r0)
    slwi r9, r3, 2
    cmpwi r4, 0x1
    add r3, r0, r9
    lwz r3, 0x170(r3)
    rlwimi r3, r4, 18, 13, 13
    addi r10, r3, 0x0
    opword  0x41810010  // bgt .L_8005EB88
    rlwimi r10, r6, 20, 10, 11
    rlwimi r10, r5, 16, 14, 15
    opword  0x48000010  // b .L_8005EB94
L_8005EB88:
    li r0, 0x3
    rlwimi r10, r4, 19, 10, 11
    rlwimi r10, r0, 16, 14, 15
L_8005EB94:
    li r0, 0x61
    opword  0x808283A8  // lwz r4, __GXData@sda21(r0)
    lis r5, 0xcc01
    stb r0, -0x8000(r5)
    rlwimi r10, r7, 19, 12, 12
    rlwimi r10, r8, 22, 8, 9
    stw r10, -0x8000(r5)
    add r3, r4, r9
    li r0, 0x0
    stw r10, 0x170(r3)
    sth r0, 0x2(r4)
    blr
}

ASM void fn_8005EBC4(void)
{
    nofralloc
    lbz r5, 0x0(r4)
    slwi r7, r3, 1
    lbz r0, 0x3(r4)
    li r3, 0x0
    rlwimi r3, r5, 0, 21, 31
    addi r8, r3, 0x0
    lbz r6, 0x2(r4)
    rlwimi r8, r0, 12, 9, 19
    lbz r0, 0x1(r4)
    li r9, 0x0
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    rlwimi r9, r6, 0, 21, 31
    addi r6, r9, 0x0
    rlwimi r6, r0, 12, 9, 19
    addi r0, r7, 0xe0
    rlwimi r8, r0, 24, 0, 7
    addi r0, r7, 0xe1
    rlwimi r6, r0, 24, 0, 7
    li r5, 0x61
    lis r4, 0xcc01
    stb r5, -0x8000(r4)
    li r0, 0x0
    stw r8, -0x8000(r4)
    stb r5, -0x8000(r4)
    stw r6, -0x8000(r4)
    stb r5, -0x8000(r4)
    stw r6, -0x8000(r4)
    stb r5, -0x8000(r4)
    stw r6, -0x8000(r4)
    sth r0, 0x2(r3)
    blr
}

ASM void fn_8005EC40(void)
{
    nofralloc
    lha r0, 0x0(r4)
    slwi r8, r3, 1
    li r5, 0x0
    lha r3, 0x6(r4)
    rlwimi r5, r0, 0, 21, 31
    addi r9, r5, 0x0
    lha r6, 0x4(r4)
    lha r0, 0x2(r4)
    li r5, 0x61
    lis r4, 0xcc01
    rlwimi r9, r3, 12, 9, 19
    stb r5, -0x8000(r4)
    addi r7, r8, 0xe0
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    rlwimi r9, r7, 24, 0, 7
    stw r9, -0x8000(r4)
    li r7, 0x0
    rlwimi r7, r6, 0, 21, 31
    addi r6, r7, 0x0
    stb r5, -0x8000(r4)
    rlwimi r6, r0, 12, 9, 19
    addi r0, r8, 0xe1
    rlwimi r6, r0, 24, 0, 7
    stw r6, -0x8000(r4)
    li r0, 0x0
    stb r5, -0x8000(r4)
    stw r6, -0x8000(r4)
    stb r5, -0x8000(r4)
    stw r6, -0x8000(r4)
    sth r0, 0x2(r3)
    blr
}

ASM void fn_8005ECBC(void)
{
    nofralloc
    lbz r5, 0x0(r4)
    slwi r6, r3, 1
    lbz r0, 0x3(r4)
    li r3, 0x0
    rlwimi r3, r5, 0, 24, 31
    addi r7, r3, 0x0
    lbz r5, 0x2(r4)
    rlwimi r7, r0, 12, 12, 19
    lbz r0, 0x1(r4)
    li r4, 0x8
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    li r8, 0x0
    rlwimi r8, r5, 0, 24, 31
    rlwimi r8, r0, 12, 12, 19
    rlwimi r7, r4, 20, 8, 11
    rlwimi r8, r4, 20, 8, 11
    addi r5, r6, 0xe0
    rlwimi r7, r5, 24, 0, 7
    addi r5, r6, 0xe1
    li r0, 0x61
    lis r4, 0xcc01
    stb r0, -0x8000(r4)
    rlwimi r8, r5, 24, 0, 7
    stw r7, -0x8000(r4)
    stb r0, -0x8000(r4)
    li r0, 0x0
    stw r8, -0x8000(r4)
    sth r0, 0x2(r3)
    blr
}

ASM void fn_8005ED30(void)
{
    nofralloc
    srawi r5, r3, 1
    opword  0x80C283A8  // lwz r6, __GXData@sda21(r0)
    clrlwi. r0, r3, 31
    slwi r3, r5, 2
    addi r7, r3, 0x1b0
    add r7, r6, r7
    opword  0x41820014  // beq .L_8005ED5C
    lwz r0, 0x0(r7)
    rlwimi r0, r4, 14, 13, 17
    stw r0, 0x0(r7)
    opword  0x48000010  // b .L_8005ED68
L_8005ED5C:
    lwz r0, 0x0(r7)
    rlwimi r0, r4, 4, 23, 27
    stw r0, 0x0(r7)
L_8005ED68:
    li r0, 0x61
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    lis r5, 0xcc01
    stb r0, -0x8000(r5)
    li r0, 0x0
    lwz r4, 0x0(r7)
    stw r4, -0x8000(r5)
    sth r0, 0x2(r3)
    blr
}

ASM void fn_8005ED8C(void)
{
    nofralloc
    srawi r5, r3, 1
    opword  0x80C283A8  // lwz r6, __GXData@sda21(r0)
    clrlwi. r0, r3, 31
    slwi r3, r5, 2
    addi r7, r3, 0x1b0
    add r7, r6, r7
    opword  0x41820014  // beq .L_8005EDB8
    lwz r0, 0x0(r7)
    rlwimi r0, r4, 19, 8, 12
    stw r0, 0x0(r7)
    opword  0x48000010  // b .L_8005EDC4
L_8005EDB8:
    lwz r0, 0x0(r7)
    rlwimi r0, r4, 9, 18, 22
    stw r0, 0x0(r7)
L_8005EDC4:
    li r0, 0x61
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    lis r5, 0xcc01
    stb r0, -0x8000(r5)
    li r0, 0x0
    lwz r4, 0x0(r7)
    stw r4, -0x8000(r5)
    sth r0, 0x2(r3)
    blr
}

ASM void fn_8005EDE8(void)
{
    nofralloc
    slwi r3, r3, 2
    opword  0x80E283A8  // lwz r7, __GXData@sda21(r0)
    addi r8, r3, 0x170
    add r8, r7, r8
    lwz r0, 0x0(r8)
    rlwimi r0, r4, 0, 30, 31
    li r3, 0x61
    stw r0, 0x0(r8)
    lis r4, 0xcc01
    li r0, 0x0
    lwz r6, 0x0(r8)
    rlwimi r6, r5, 2, 28, 29
    stw r6, 0x0(r8)
    stb r3, -0x8000(r4)
    lwz r3, 0x0(r8)
    stw r3, -0x8000(r4)
    sth r0, 0x2(r7)
    blr
}

ASM void fn_8005EE30(void)
{
    nofralloc
    slwi r9, r3, 1
    opword  0x810283A8  // lwz r8, __GXData@sda21(r0)
    slwi r3, r3, 3
    addi r10, r3, 0x1b0
    add r10, r8, r10
    lwz r3, 0x0(r10)
    rlwimi r3, r4, 0, 30, 31
    addi r0, r9, 0x1
    stw r3, 0x0(r10)
    slwi r3, r0, 2
    addi r9, r3, 0x1b0
    lwz r0, 0x0(r10)
    rlwimi r0, r5, 2, 28, 29
    li r5, 0x61
    stw r0, 0x0(r10)
    lis r4, 0xcc01
    add r9, r8, r9
    stb r5, -0x8000(r4)
    li r0, 0x0
    lwz r3, 0x0(r10)
    stw r3, -0x8000(r4)
    lwz r3, 0x0(r9)
    rlwimi r3, r6, 0, 30, 31
    stw r3, 0x0(r9)
    lwz r3, 0x0(r9)
    rlwimi r3, r7, 2, 28, 29
    stw r3, 0x0(r9)
    stb r5, -0x8000(r4)
    lwz r3, 0x0(r9)
    stw r3, -0x8000(r4)
    sth r0, 0x2(r8)
    blr
}

ASM void fn_8005EEB0(void)
{
    nofralloc
    clrlwi r0, r4, 24
    opword  0x808283A8  // lwz r4, __GXData@sda21(r0)
    lis r8, 0xf300
    rlwimi r8, r0, 0, 24, 31
    clrlwi r0, r7, 24
    addi r7, r8, 0x0
    rlwimi r7, r0, 8, 16, 23
    rlwimi r7, r3, 16, 13, 15
    rlwimi r7, r6, 19, 10, 12
    li r0, 0x61
    lis r3, 0xcc01
    stb r0, -0x8000(r3)
    rlwimi r7, r5, 22, 8, 9
    li r0, 0x0
    stw r7, -0x8000(r3)
    sth r0, 0x2(r4)
    blr
}

ASM void fn_8005EEF4(void)
{
    nofralloc
    cmpwi r4, 0x13
    li r0, 0xf4
    li r6, 0x0
    rlwimi r6, r5, 0, 8, 31
    rlwimi r6, r0, 24, 0, 7
    li r7, 0x0
    opword  0x41820028  // beq .L_8005EF34
    opword  0x40800010  // bge .L_8005EF20
    cmpwi r4, 0x11
    opword  0x41820014  // beq .L_8005EF2C
    opword  0x48000028  // b .L_8005EF44
L_8005EF20:
    cmpwi r4, 0x16
    opword  0x41820018  // beq .L_8005EF3C
    opword  0x4800001C  // b .L_8005EF44
L_8005EF2C:
    li r8, 0x0
    opword  0x48000018  // b .L_8005EF48
L_8005EF34:
    li r8, 0x1
    opword  0x48000010  // b .L_8005EF48
L_8005EF3C:
    li r8, 0x2
    opword  0x48000008  // b .L_8005EF48
L_8005EF44:
    li r8, 0x2
L_8005EF48:
    li r0, 0x61
    opword  0x808283A8  // lwz r4, __GXData@sda21(r0)
    lis r5, 0xcc01
    stb r0, -0x8000(r5)
    rlwimi r7, r8, 0, 30, 31
    rlwimi r7, r3, 2, 28, 29
    stw r6, -0x8000(r5)
    li r3, 0xf5
    rlwimi r7, r3, 24, 0, 7
    stb r0, -0x8000(r5)
    li r0, 0x0
    stw r7, -0x8000(r5)
    sth r0, 0x2(r4)
    blr
}

ASM void fn_8005EF80(void)
{
    nofralloc
    srawi r7, r3, 1
    opword  0x812283A8  // lwz r9, __GXData@sda21(r0)
    rlwinm r10, r5, 0, 24, 22
    addze r7, r7
    slwi r0, r3, 2
    add r8, r9, r0
    slwi r7, r7, 2
    stw r5, 0x554(r8)
    addi r7, r7, 0x100
    cmplwi r10, 0x8
    addi r0, r10, 0x0
    add r7, r9, r7
    opword  0x4180000C  // blt .L_8005EFBC
    li r9, 0x0
    opword  0x48000008  // b .L_8005EFC0
L_8005EFBC:
    mr r9, r0
L_8005EFC0:
    cmpwi r4, 0x8
    opword  0x41800028  // blt .L_8005EFEC
    opword  0x808283A8  // lwz r4, __GXData@sda21(r0)
    li r0, 0x1
    slw r0, r0, r3
    lwz r8, 0x598(r4)
    addi r10, r4, 0x598
    li r4, 0x0
    andc r0, r8, r0
    stw r0, 0x0(r10)
    opword  0x48000020  // b .L_8005F008
L_8005EFEC:
    opword  0x810283A8  // lwz r8, __GXData@sda21(r0)
    li r0, 0x1
    slw r0, r0, r3
    addi r10, r8, 0x598
    lwz r8, 0x598(r8)
    or r0, r8, r0
    stw r0, 0x0(r10)
L_8005F008:
    clrlwi. r0, r3, 31
    opword  0x41820074  // beq .L_8005F080
    lwz r0, 0x0(r7)
    rlwimi r0, r9, 12, 17, 19
    cmpwi r6, 0xff
    stw r0, 0x0(r7)
    lwz r0, 0x0(r7)
    rlwimi r0, r4, 15, 14, 16
    stw r0, 0x0(r7)
    opword  0x4082000C  // bne .L_8005F038
    li r3, 0x7
    opword  0x48000018  // b .L_8005F04C
L_8005F038:
    lis r3, lbl_80497500@ha
    slwi r4, r6, 2
    addi r0, r3, lbl_80497500@l
    add r3, r0, r4
    lwz r3, 0x0(r3)
L_8005F04C:
    lwz r0, 0x0(r7)
    rlwimi r0, r3, 19, 10, 12
    cmpwi r5, 0xff
    stw r0, 0x0(r7)
    li r3, 0x0
    opword  0x41820010  // beq .L_8005F070
    rlwinm. r0, r5, 0, 23, 23
    opword  0x40820008  // bne .L_8005F070
    li r3, 0x1
L_8005F070:
    lwz r0, 0x0(r7)
    rlwimi r0, r3, 18, 13, 13
    stw r0, 0x0(r7)
    opword  0x48000070  // b .L_8005F0EC
L_8005F080:
    lwz r0, 0x0(r7)
    rlwimi r0, r9, 0, 29, 31
    cmpwi r6, 0xff
    stw r0, 0x0(r7)
    lwz r0, 0x0(r7)
    rlwimi r0, r4, 3, 26, 28
    stw r0, 0x0(r7)
    opword  0x4082000C  // bne .L_8005F0A8
    li r3, 0x7
    opword  0x48000018  // b .L_8005F0BC
L_8005F0A8:
    lis r3, lbl_80497500@ha
    slwi r4, r6, 2
    addi r0, r3, lbl_80497500@l
    add r3, r0, r4
    lwz r3, 0x0(r3)
L_8005F0BC:
    lwz r0, 0x0(r7)
    rlwimi r0, r3, 7, 22, 24
    cmpwi r5, 0xff
    stw r0, 0x0(r7)
    li r3, 0x0
    opword  0x41820010  // beq .L_8005F0E0
    rlwinm. r0, r5, 0, 23, 23
    opword  0x40820008  // bne .L_8005F0E0
    li r3, 0x1
L_8005F0E0:
    lwz r0, 0x0(r7)
    rlwimi r0, r3, 6, 25, 25
    stw r0, 0x0(r7)
L_8005F0EC:
    li r0, 0x61
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    lis r5, 0xcc01
    stb r0, -0x8000(r5)
    li r0, 0x0
    lwz r4, 0x0(r7)
    stw r4, -0x8000(r5)
    sth r0, 0x2(r3)
    lwz r0, 0x5ac(r3)
    ori r0, r0, 0x1
    stw r0, 0x5ac(r3)
    blr
}

// IDENTIFIED as the real GX SDK's `GXSetNumTevStages(u8 nStages)` -
// `r3`=nStages. Packs `nStages-1` (`subi r0,r3,0x1`) into `__GXData->0x204`
// (genMode) bits 10-13 (`rlwimi ...,10,18,21`, MSB-numbered 18-21 = LSB
// bits 10-13) - matches the real Flipper GPU GenMode hardware register's
// documented "number of TEV stages minus one" field, the same convention
// used elsewhere for hardware count fields. Unlike `GXSetNumChans`/
// `GXSetNumTexGens` above, this does NOT immediately flush via
// `GX_LOAD_XF_REG` - it only sets `dirtyState |= GX_DIRTY_GEN_MODE`
// (0x5ac |= 4), deferring the actual combined genMode register write to
// `__GXSetGenMode()` (called from `fn_8005C24C`=GXBegin's dirty-state
// flush, see [[project_fsa_gxbegin_identified]]) - consistent with TEV
// stage count having no individually-addressable hardware register of its
// own, only mattering as part of the combined genMode word. NOTE: kept the
// `fn_8005F11C` symbol name - renaming to `GXSetNumTevStages` collides at
// link time with an unrelated, currently-dead same-named definition
// elsewhere in `src/Dolphin/gx/` (unwired, but the linker still trips on
// the duplicate).
ASM void fn_8005F11C(void)
{
    nofralloc
    opword  0x808283A8  // lwz r4, __GXData@sda21(r0)
    clrlwi r3, r3, 24
    subi r0, r3, 0x1
    lwz r3, 0x204(r4)
    rlwimi r3, r0, 10, 18, 21
    stw r3, 0x204(r4)
    lwz r0, 0x5ac(r4)
    ori r0, r0, 0x4
    stw r0, 0x5ac(r4)
    blr
}

ASM void fn_8005F144(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x60(r1)
    stfd fp31, 0x58(r1)
    stmw r23, 0x34(r1)
    li r30, 0x0
    extrwi. r31, r3, 1, 28
    addi r24, r4, 0x0
    addi r29, r30, 0x0
    clrlwi r25, r3, 29
    li r28, 0x0
    li r27, 0x0
    li r26, 0x0
    opword  0x4182004C  // beq .L_8005F1C4
    fcmpu cr0, fp4, fp3
    opword  0x4182000C  // beq .L_8005F18C
    fcmpu cr0, fp2, fp1
    opword  0x40820014  // bne .L_8005F19C
L_8005F18C:
    opword  0xC0028410  // lfs f0, lbl_8053B3B0@sda21(r0)
    stfs fp0, 0x24(r1)
    stfs fp0, 0x20(r1)
    opword  0x48000118  // b .L_8005F2B0
L_8005F19C:
    fsubs fp5, fp2, fp1
    opword  0xC0C28414  // lfs f6, lbl_8053B3B4@sda21(r0)
    fsubs fp2, fp4, fp3
    fsubs fp0, fp1, fp3
    fdivs fp3, fp6, fp5
    fmuls fp1, fp3, fp2
    fmuls fp0, fp3, fp0
    stfs fp1, 0x24(r1)
    stfs fp0, 0x20(r1)
    opword  0x480000F0  // b .L_8005F2B0
L_8005F1C4:
    fcmpu cr0, fp4, fp3
    opword  0x4182000C  // beq .L_8005F1D4
    fcmpu cr0, fp2, fp1
    opword  0x40820014  // bne .L_8005F1E4
L_8005F1D4:
    opword  0xC0628410  // lfs f3, lbl_8053B3B0@sda21(r0)
    opword  0xC0828418  // lfs f4, lbl_8053B3B8@sda21(r0)
    fmr fp31, fp3
    opword  0x48000020  // b .L_8005F200
L_8005F1E4:
    fsubs fp0, fp4, fp3
    fsubs fp5, fp2, fp1
    fmuls fp2, fp4, fp3
    fdivs fp4, fp4, fp0
    fmuls fp0, fp0, fp5
    fdivs fp31, fp1, fp5
    fdivs fp3, fp2, fp0
L_8005F200:
    opword  0xC0228418  // lfs f1, lbl_8053B3B8@sda21(r0)
    li r3, 0x0
    opword  0xC8028420  // lfd f0, lbl_8053B3C0@sda21(r0)
    opword  0x4800000C  // b .L_8005F218
L_8005F210:
    fmuls fp4, fp4, fp1
    addi r3, r3, 0x1
L_8005F218:
    fcmpo cr0, fp4, fp0
    opword  0x4181FFF4  // bgt .L_8005F210
    opword  0xC8028430  // lfd f0, lbl_8053B3D0@sda21(r0)
    opword  0xC0428428  // lfs f2, lbl_8053B3C8@sda21(r0)
    opword  0xC0228410  // lfs f1, lbl_8053B3B0@sda21(r0)
    opword  0x4800000C  // b .L_8005F238
L_8005F230:
    fmuls fp4, fp4, fp2
    subi r3, r3, 0x1
L_8005F238:
    fcmpo cr0, fp4, fp1
    opword  0x4081000C  // ble .L_8005F248
    fcmpo cr0, fp4, fp0
    opword  0x4180FFEC  // blt .L_8005F230
L_8005F248:
    addi r23, r3, 0x1
    opword  0xC0028438  // lfs f0, lbl_8053B3D8@sda21(r0)
    li r0, 0x1
    opword  0xC8428440  // lfd f2, lbl_8053B3E0@sda21(r0)
    slw r0, r0, r23
    fmuls fp1, fp0, fp4
    xoris r0, r0, 0x8000
    stw r0, 0x2c(r1)
    lis r0, 0x4330
    stw r0, 0x28(r1)
    lfd fp0, 0x28(r1)
    fsubs fp0, fp0, fp2
    fdivs fp0, fp3, fp0
    stfs fp0, 0x24(r1)
    bl __cvt_fp2unsigned
    rlwimi r30, r3, 0, 8, 31
    stfs fp31, 0x20(r1)
    rlwimi r29, r23, 0, 27, 31
    li r0, 0xef
    addi r3, r30, 0x0
    rlwimi r3, r0, 24, 0, 7
    li r0, 0xf0
    addi r4, r29, 0x0
    rlwimi r4, r0, 24, 0, 7
    addi r30, r3, 0x0
    addi r29, r4, 0x0
L_8005F2B0:
    lwz r8, 0x24(r1)
    li r0, 0x61
    lbz r7, 0x2(r24)
    lis r4, 0xcc01
    rlwimi r27, r8, 20, 21, 31
    addi r9, r27, 0x0
    lbz r6, 0x1(r24)
    lbz r5, 0x0(r24)
    rlwimi r9, r8, 20, 13, 20
    rlwimi r9, r8, 20, 12, 12
    lwz r10, 0x20(r1)
    li r8, 0xee
    stb r0, -0x8000(r4)
    rlwimi r9, r8, 24, 0, 7
    rlwimi r28, r7, 0, 24, 31
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    stw r9, -0x8000(r4)
    rlwimi r26, r10, 20, 21, 31
    stb r0, -0x8000(r4)
    addi r7, r28, 0x0
    rlwimi r7, r6, 8, 16, 23
    stw r30, -0x8000(r4)
    rlwimi r7, r5, 16, 8, 15
    mr r9, r26
    stb r0, -0x8000(r4)
    li r5, 0xf1
    rlwimi r9, r10, 20, 13, 20
    stw r29, -0x8000(r4)
    rlwimi r9, r10, 20, 12, 12
    rlwimi r9, r31, 20, 11, 11
    rlwimi r9, r25, 21, 8, 10
    stb r0, -0x8000(r4)
    rlwimi r9, r5, 24, 0, 7
    stw r9, -0x8000(r4)
    li r5, 0xf2
    rlwimi r7, r5, 24, 0, 7
    stb r0, -0x8000(r4)
    li r0, 0x0
    stw r7, -0x8000(r4)
    sth r0, 0x2(r3)
    lmw r23, 0x34(r1)
    lwz r0, 0x64(r1)
    lfd fp31, 0x58(r1)
    addi r1, r1, 0x60
    mtlr r0
    blr
}

ASM void fn_8005F368(void)
{
    nofralloc
    clrlwi. r0, r3, 24
    opword  0x418200E4  // beq .L_8005F450
    li r6, 0x0
    slwi r0, r6, 1
    add r9, r5, r0
    lhz r8, 0x0(r9)
    srwi r10, r6, 1
    lhz r7, 0x2(r9)
    li r0, 0x61
    lis r5, 0xcc01
    li r11, 0x0
    stb r0, -0x8000(r5)
    rlwimi r11, r8, 0, 20, 31
    addi r8, r11, 0x0
    addi r6, r10, 0xe9
    rlwimi r8, r7, 12, 8, 19
    rlwimi r8, r6, 24, 0, 7
    stw r8, -0x8000(r5)
    addi r6, r10, 0xea
    li r11, 0x0
    lhz r8, 0x4(r9)
    lhz r7, 0x6(r9)
    rlwimi r11, r8, 0, 20, 31
    addi r8, r11, 0x0
    stb r0, -0x8000(r5)
    rlwimi r8, r7, 12, 8, 19
    rlwimi r8, r6, 24, 0, 7
    stw r8, -0x8000(r5)
    addi r6, r10, 0xeb
    li r11, 0x0
    lhz r8, 0x8(r9)
    lhz r7, 0xa(r9)
    rlwimi r11, r8, 0, 20, 31
    addi r8, r11, 0x0
    stb r0, -0x8000(r5)
    rlwimi r8, r7, 12, 8, 19
    rlwimi r8, r6, 24, 0, 7
    stw r8, -0x8000(r5)
    addi r6, r10, 0xec
    li r11, 0x0
    lhz r8, 0xc(r9)
    lhz r7, 0xe(r9)
    rlwimi r11, r8, 0, 20, 31
    addi r8, r11, 0x0
    stb r0, -0x8000(r5)
    rlwimi r8, r7, 12, 8, 19
    rlwimi r8, r6, 24, 0, 7
    stw r8, -0x8000(r5)
    addi r6, r10, 0xed
    li r11, 0x0
    lhz r8, 0x10(r9)
    lhz r7, 0x12(r9)
    rlwimi r11, r8, 0, 20, 31
    addi r8, r11, 0x0
    stb r0, -0x8000(r5)
    rlwimi r8, r7, 12, 8, 19
    rlwimi r8, r6, 24, 0, 7
    stw r8, -0x8000(r5)
L_8005F450:
    clrlwi r5, r4, 16
    opword  0x808283A8  // lwz r4, __GXData@sda21(r0)
    addi r0, r5, 0x156
    li r5, 0x0
    rlwimi r5, r0, 0, 22, 31
    rlwimi r5, r3, 10, 21, 21
    li r0, 0x61
    lis r3, 0xcc01
    stb r0, -0x8000(r3)
    li r0, 0xe8
    rlwimi r5, r0, 24, 0, 7
    stw r5, -0x8000(r3)
    li r0, 0x0
    sth r0, 0x2(r4)
    blr
}

ASM void fn_8005F48C(void)
{
    nofralloc
    opword  0x810283A8  // lwz r8, __GXData@sda21(r0)
    subfic r0, r3, 0x3
    cntlzw r7, r0
    subfic r0, r3, 0x2
    lwz r9, 0x1d0(r8)
    rlwimi r9, r7, 6, 20, 20
    addi r7, r9, 0x0
    rlwimi r7, r3, 0, 31, 31
    cntlzw r0, r0
    rlwimi r7, r0, 28, 30, 30
    rlwimi r7, r6, 12, 16, 19
    rlwimi r7, r4, 8, 21, 23
    li r0, 0x61
    lis r3, 0xcc01
    stb r0, -0x8000(r3)
    rlwimi r7, r5, 5, 24, 26
    li r0, 0x0
    stw r7, -0x8000(r3)
    stw r7, 0x1d0(r8)
    sth r0, 0x2(r8)
    blr
}

ASM void fn_8005F4E0(void)
{
    nofralloc
    opword  0x80A283A8  // lwz r5, __GXData@sda21(r0)
    li r0, 0x61
    lis r4, 0xcc01
    lwz r6, 0x1d0(r5)
    rlwimi r6, r3, 3, 28, 28
    stb r0, -0x8000(r4)
    li r0, 0x0
    stw r6, -0x8000(r4)
    stw r6, 0x1d0(r5)
    sth r0, 0x2(r5)
    blr
}

ASM void fn_8005F50C(void)
{
    nofralloc
    opword  0x80A283A8  // lwz r5, __GXData@sda21(r0)
    li r0, 0x61
    lis r4, 0xcc01
    lwz r6, 0x1d0(r5)
    rlwimi r6, r3, 4, 27, 27
    stb r0, -0x8000(r4)
    li r0, 0x0
    stw r6, -0x8000(r4)
    stw r6, 0x1d0(r5)
    sth r0, 0x2(r5)
    blr
}

ASM void fn_8005F538(void)
{
    nofralloc
    opword  0x80C283A8  // lwz r6, __GXData@sda21(r0)
    li r0, 0x61
    lwz r7, 0x1d8(r6)
    rlwimi r7, r3, 0, 31, 31
    lis r3, 0xcc01
    stb r0, -0x8000(r3)
    rlwimi r7, r4, 1, 28, 30
    rlwimi r7, r5, 4, 27, 27
    stw r7, -0x8000(r3)
    li r0, 0x0
    stw r7, 0x1d8(r6)
    sth r0, 0x2(r6)
    blr
}

ASM void fn_8005F56C(void)
{
    nofralloc
    opword  0x80C283A8  // lwz r6, __GXData@sda21(r0)
    clrlwi r0, r3, 24
    li r3, 0x61
    lwz r5, 0x1dc(r6)
    rlwimi r5, r0, 6, 25, 25
    lis r4, 0xcc01
    stw r5, 0x1dc(r6)
    li r0, 0x0
    stb r3, -0x8000(r4)
    lwz r3, 0x1dc(r6)
    stw r3, -0x8000(r4)
    sth r0, 0x2(r6)
    blr
}

ASM void fn_8005F5A0(void)
{
    nofralloc
    lis r5, lbl_80497528@ha
    opword  0x80E283A8  // lwz r7, __GXData@sda21(r0)
    slwi r6, r3, 2
    addi r0, r5, lbl_80497528@l
    lwz r5, 0x1dc(r7)
    add r6, r0, r6
    lwz r0, 0x0(r6)
    addi r8, r5, 0x0
    rlwimi r5, r0, 0, 29, 31
    stw r5, 0x1dc(r7)
    lwz r0, 0x1dc(r7)
    rlwimi r0, r4, 3, 26, 28
    stw r0, 0x1dc(r7)
    lwz r5, 0x1dc(r7)
    cmplw r8, r5
    opword  0x41820044  // beq .L_8005F620
    li r0, 0x61
    lis r4, 0xcc01
    stb r0, -0x8000(r4)
    cmpwi r3, 0x2
    stw r5, -0x8000(r4)
    opword  0x4082000C  // bne .L_8005F600
    li r0, 0x1
    opword  0x48000008  // b .L_8005F604
L_8005F600:
    li r0, 0x0
L_8005F604:
    opword  0x80A283A8  // lwz r5, __GXData@sda21(r0)
    lwz r4, 0x204(r5)
    rlwimi r4, r0, 9, 22, 22
    stw r4, 0x204(r5)
    lwz r0, 0x5ac(r5)
    ori r0, r0, 0x4
    stw r0, 0x5ac(r5)
L_8005F620:
    lwz r0, 0x0(r6)
    cmplwi r0, 0x4
    opword  0x4082003C  // bne .L_8005F664
    opword  0x80C283A8  // lwz r6, __GXData@sda21(r0)
    subi r0, r3, 0x4
    li r4, 0x42
    lwz r3, 0x1d4(r6)
    rlwimi r3, r0, 9, 21, 22
    li r0, 0x61
    stw r3, 0x1d4(r6)
    lis r3, 0xcc01
    lwz r5, 0x1d4(r6)
    rlwimi r5, r4, 24, 0, 7
    stw r5, 0x1d4(r6)
    stb r0, -0x8000(r3)
    lwz r0, 0x1d4(r6)
    stw r0, -0x8000(r3)
L_8005F664:
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    li r0, 0x0
    sth r0, 0x2(r3)
    blr
}

ASM void fn_8005F674(void)
{
    nofralloc
    opword  0x80A283A8  // lwz r5, __GXData@sda21(r0)
    li r0, 0x61
    lis r4, 0xcc01
    lwz r6, 0x1d0(r5)
    rlwimi r6, r3, 2, 29, 29
    stb r0, -0x8000(r4)
    li r0, 0x0
    stw r6, -0x8000(r4)
    stw r6, 0x1d0(r5)
    sth r0, 0x2(r5)
    blr
}

ASM void fn_8005F6A0(void)
{
    nofralloc
    opword  0x80C283A8  // lwz r6, __GXData@sda21(r0)
    clrlwi r5, r4, 24
    li r0, 0x61
    lwz r7, 0x1d4(r6)
    lis r4, 0xcc01
    rlwimi r7, r5, 0, 24, 31
    stb r0, -0x8000(r4)
    clrlwi r0, r3, 24
    addi r3, r7, 0x0
    rlwimi r3, r0, 8, 23, 23
    stw r3, -0x8000(r4)
    li r0, 0x0
    stw r3, 0x1d4(r6)
    sth r0, 0x2(r6)
    blr
}

ASM void fn_8005F6DC(void)
{
    nofralloc
    clrlwi r0, r4, 24
    opword  0x808283A8  // lwz r4, __GXData@sda21(r0)
    li r5, 0x0
    rlwimi r5, r0, 0, 31, 31
    rlwimi r5, r3, 1, 30, 30
    li r0, 0x61
    lis r3, 0xcc01
    stb r0, -0x8000(r3)
    li r0, 0x44
    rlwimi r5, r0, 24, 0, 7
    stw r5, -0x8000(r3)
    li r0, 0x0
    sth r0, 0x2(r4)
    blr
}

ASM void fn_8005F714(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    clrlwi r0, r4, 24
    stwu r1, -0x20(r1)
    stw r31, 0x1c(r1)
    lis r31, 0xcc01
    stw r30, 0x18(r1)
    li r30, 0x61
    stw r29, 0x14(r1)
    mr r29, r3
    opword  0x80A283A8  // lwz r5, __GXData@sda21(r0)
    lwz r4, 0x7c(r5)
    rlwimi r4, r0, 22, 9, 9
    stw r4, 0x7c(r5)
    stb r30, -0x8000(r31)
    lwz r0, 0x7c(r5)
    stw r0, -0x8000(r31)
    bl __GXFlushTextureState
    clrlwi r0, r29, 24
    stb r30, -0x8000(r31)
    oris r0, r0, 0x6800
    stw r0, -0x8000(r31)
    bl __GXFlushTextureState
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    addi r1, r1, 0x20
    mtlr r0
    blr
}

ASM void fn_8005F78C(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    clrlwi. r0, r3, 24
    stwu r1, -0x88(r1)
    stw r31, 0x84(r1)
    stw r30, 0x80(r1)
    addi r30, r6, 0x0
    stw r29, 0x7c(r1)
    addi r29, r5, 0x0
    stw r28, 0x78(r1)
    addi r28, r4, 0x0
    opword  0x40820088  // bne .L_8005F840
    li r3, 0x90
    li r4, 0x3
    li r5, 0x3
    bl fn_8005C24C
    lfs fp2, 0x8(r28)
    lis r3, 0xcc01
    lfs fp1, 0x4(r28)
    lfs fp0, 0x0(r28)
    stfs fp0, -0x8000(r3)
    stfs fp1, -0x8000(r3)
    stfs fp2, -0x8000(r3)
    stfs fp0, -0x8000(r3)
    stfs fp1, -0x8000(r3)
    stfs fp2, -0x8000(r3)
    lfs fp2, 0x8(r29)
    lfs fp1, 0x4(r29)
    lfs fp0, 0x0(r29)
    stfs fp0, -0x8000(r3)
    stfs fp1, -0x8000(r3)
    stfs fp2, -0x8000(r3)
    stfs fp0, -0x8000(r3)
    stfs fp1, -0x8000(r3)
    stfs fp2, -0x8000(r3)
    lfs fp2, 0x8(r30)
    lfs fp1, 0x4(r30)
    lfs fp0, 0x0(r30)
    stfs fp0, -0x8000(r3)
    stfs fp1, -0x8000(r3)
    stfs fp2, -0x8000(r3)
    stfs fp0, -0x8000(r3)
    stfs fp1, -0x8000(r3)
    stfs fp2, -0x8000(r3)
    opword  0x480002E4  // b .L_8005FB20
L_8005F840:
    lfs fp2, 0x0(r28)
    lfs fp1, 0x0(r29)
    opword  0xC0028448  // lfs f0, lbl_8053B3E8@sda21(r0)
    fadds fp1, fp2, fp1
    stfs fp1, 0x6c(r1)
    lfs fp2, 0x0(r29)
    lfs fp1, 0x0(r30)
    fadds fp1, fp2, fp1
    stfs fp1, 0x60(r1)
    lfs fp2, 0x0(r30)
    lfs fp1, 0x0(r28)
    fadds fp1, fp2, fp1
    stfs fp1, 0x54(r1)
    lfs fp2, 0x4(r28)
    lfs fp1, 0x4(r29)
    fadds fp1, fp2, fp1
    stfs fp1, 0x70(r1)
    lfs fp2, 0x4(r29)
    lfs fp1, 0x4(r30)
    fadds fp1, fp2, fp1
    stfs fp1, 0x64(r1)
    lfs fp2, 0x4(r30)
    lfs fp1, 0x4(r28)
    fadds fp1, fp2, fp1
    stfs fp1, 0x58(r1)
    lfs fp2, 0x8(r28)
    lfs fp1, 0x8(r29)
    fadds fp1, fp2, fp1
    stfs fp1, 0x74(r1)
    lfs fp2, 0x8(r29)
    lfs fp1, 0x8(r30)
    lfs fp3, 0x6c(r1)
    fadds fp1, fp2, fp1
    fmuls fp2, fp3, fp3
    stfs fp1, 0x68(r1)
    lfs fp3, 0x8(r30)
    lfs fp1, 0x8(r28)
    fadds fp1, fp3, fp1
    stfs fp1, 0x5c(r1)
    lfs fp1, 0x70(r1)
    lfs fp3, 0x74(r1)
    fmuls fp1, fp1, fp1
    fmuls fp3, fp3, fp3
    fadds fp1, fp2, fp1
    fadds fp4, fp3, fp1
    fcmpo cr0, fp4, fp0
    opword  0x4081005C  // ble .L_8005F954
    frsqrte fp1, fp4
    opword  0xC8628450  // lfd f3, lbl_8053B3F0@sda21(r0)
    opword  0xC8428458  // lfd f2, lbl_8053B3F8@sda21(r0)
    fmul fp0, fp1, fp1
    fmul fp1, fp3, fp1
    fmul fp0, fp4, fp0
    fsub fp0, fp2, fp0
    fmul fp1, fp1, fp0
    fmul fp0, fp1, fp1
    fmul fp1, fp3, fp1
    fmul fp0, fp4, fp0
    fsub fp0, fp2, fp0
    fmul fp1, fp1, fp0
    fmul fp0, fp1, fp1
    fmul fp1, fp3, fp1
    fmul fp0, fp4, fp0
    fsub fp0, fp2, fp0
    fmul fp0, fp1, fp0
    fmul fp0, fp4, fp0
    frsp fp0, fp0
    stfs fp0, 0x40(r1)
    lfs fp4, 0x40(r1)
L_8005F954:
    lfs fp0, 0x6c(r1)
    fdivs fp0, fp0, fp4
    stfs fp0, 0x6c(r1)
    lfs fp0, 0x70(r1)
    fdivs fp0, fp0, fp4
    stfs fp0, 0x70(r1)
    lfs fp0, 0x74(r1)
    fdivs fp0, fp0, fp4
    stfs fp0, 0x74(r1)
    lfs fp1, 0x60(r1)
    lfs fp0, 0x64(r1)
    fmuls fp2, fp1, fp1
    lfs fp3, 0x68(r1)
    fmuls fp1, fp0, fp0
    opword  0xC0028448  // lfs f0, lbl_8053B3E8@sda21(r0)
    fmuls fp3, fp3, fp3
    fadds fp1, fp2, fp1
    fadds fp4, fp3, fp1
    fcmpo cr0, fp4, fp0
    opword  0x4081005C  // ble .L_8005F9FC
    frsqrte fp1, fp4
    opword  0xC8628450  // lfd f3, lbl_8053B3F0@sda21(r0)
    opword  0xC8428458  // lfd f2, lbl_8053B3F8@sda21(r0)
    fmul fp0, fp1, fp1
    fmul fp1, fp3, fp1
    fmul fp0, fp4, fp0
    fsub fp0, fp2, fp0
    fmul fp1, fp1, fp0
    fmul fp0, fp1, fp1
    fmul fp1, fp3, fp1
    fmul fp0, fp4, fp0
    fsub fp0, fp2, fp0
    fmul fp1, fp1, fp0
    fmul fp0, fp1, fp1
    fmul fp1, fp3, fp1
    fmul fp0, fp4, fp0
    fsub fp0, fp2, fp0
    fmul fp0, fp1, fp0
    fmul fp0, fp4, fp0
    frsp fp0, fp0
    stfs fp0, 0x3c(r1)
    lfs fp4, 0x3c(r1)
L_8005F9FC:
    lfs fp0, 0x60(r1)
    fdivs fp0, fp0, fp4
    stfs fp0, 0x60(r1)
    lfs fp0, 0x64(r1)
    fdivs fp0, fp0, fp4
    stfs fp0, 0x64(r1)
    lfs fp0, 0x68(r1)
    fdivs fp0, fp0, fp4
    stfs fp0, 0x68(r1)
    lfs fp1, 0x54(r1)
    lfs fp0, 0x58(r1)
    fmuls fp2, fp1, fp1
    lfs fp3, 0x5c(r1)
    fmuls fp1, fp0, fp0
    opword  0xC0028448  // lfs f0, lbl_8053B3E8@sda21(r0)
    fmuls fp3, fp3, fp3
    fadds fp1, fp2, fp1
    fadds fp4, fp3, fp1
    fcmpo cr0, fp4, fp0
    opword  0x4081005C  // ble .L_8005FAA4
    frsqrte fp1, fp4
    opword  0xC8628450  // lfd f3, lbl_8053B3F0@sda21(r0)
    opword  0xC8428458  // lfd f2, lbl_8053B3F8@sda21(r0)
    fmul fp0, fp1, fp1
    fmul fp1, fp3, fp1
    fmul fp0, fp4, fp0
    fsub fp0, fp2, fp0
    fmul fp1, fp1, fp0
    fmul fp0, fp1, fp1
    fmul fp1, fp3, fp1
    fmul fp0, fp4, fp0
    fsub fp0, fp2, fp0
    fmul fp1, fp1, fp0
    fmul fp0, fp1, fp1
    fmul fp1, fp3, fp1
    fmul fp0, fp4, fp0
    fsub fp0, fp2, fp0
    fmul fp0, fp1, fp0
    fmul fp0, fp4, fp0
    frsp fp0, fp0
    stfs fp0, 0x38(r1)
    lfs fp4, 0x38(r1)
L_8005FAA4:
    lfs fp0, 0x54(r1)
    clrlwi r3, r3, 24
    subi r31, r3, 0x1
    fdivs fp0, fp0, fp4
    addi r4, r28, 0x0
    clrlwi r3, r31, 24
    addi r5, r1, 0x6c
    addi r6, r1, 0x54
    stfs fp0, 0x54(r1)
    lfs fp0, 0x58(r1)
    fdivs fp0, fp0, fp4
    stfs fp0, 0x58(r1)
    lfs fp0, 0x5c(r1)
    fdivs fp0, fp0, fp4
    stfs fp0, 0x5c(r1)
    bl fn_8005F78C
    addi r4, r29, 0x0
    clrlwi r3, r31, 24
    addi r5, r1, 0x60
    addi r6, r1, 0x6c
    bl fn_8005F78C
    addi r4, r30, 0x0
    clrlwi r3, r31, 24
    addi r5, r1, 0x54
    addi r6, r1, 0x60
    bl fn_8005F78C
    clrlwi r3, r31, 24
    addi r4, r1, 0x6c
    addi r5, r1, 0x60
    addi r6, r1, 0x54
    bl fn_8005F78C
L_8005FB20:
    lwz r0, 0x8c(r1)
    lwz r31, 0x84(r1)
    lwz r30, 0x80(r1)
    lwz r29, 0x7c(r1)
    lwz r28, 0x78(r1)
    addi r1, r1, 0x88
    mtlr r0
    blr
}

ASM void fn_8005FB40(void)
{
    nofralloc
    mflr r0
    lis r4, lbl_804B6410@ha
    stw r0, 0x4(r1)
    stwu r1, -0x20(r1)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    addi r30, r4, lbl_804B6410@l
    lis r4, lbl_80497548@ha
    stw r29, 0x14(r1)
    addi r31, r4, lbl_80497548@l
    stw r28, 0x10(r1)
    addi r28, r3, 0x0
    addi r3, r30, 0x0
    bl fn_8005ACEC
    li r3, 0x3
    addi r4, r30, 0xd8
    bl fn_8005B5AC
    bl fn_8005AD7C
    li r3, 0x9
    li r4, 0x1
    bl fn_8005A464
    li r3, 0xa
    li r4, 0x1
    bl fn_8005A464
    li r3, 0x3
    li r4, 0x9
    li r5, 0x1
    li r6, 0x4
    li r7, 0x0
    bl fn_8005ADB4
    li r3, 0x3
    li r4, 0xa
    li r5, 0x0
    li r6, 0x4
    li r7, 0x0
    bl fn_8005ADB4
    li r29, 0x13
L_8005FBD4:
    clrlwi r0, r29, 24
    mulli r0, r0, 0x3
    add r6, r31, r0
    lbz r0, 0x2d2(r6)
    mr r3, r28
    lbz r5, 0x2d0(r6)
    lbz r4, 0x2d1(r6)
    mulli r0, r0, 0xc
    mulli r6, r5, 0xc
    mulli r5, r4, 0xc
    add r4, r31, r6
    add r5, r31, r5
    add r6, r31, r0
    addi r4, r4, 0x240
    addi r5, r5, 0x240
    addi r6, r6, 0x240
    bl fn_8005F78C
    subic. r29, r29, 0x1
    opword  0x4080FFB8  // bge .L_8005FBD4
    mr r3, r30
    bl fn_8005A6D0
    li r3, 0x3
    addi r4, r30, 0xd8
    bl fn_8005B010
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    lwz r28, 0x10(r1)
    addi r1, r1, 0x20
    mtlr r0
    blr
}

ASM void fn_8005FC54(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    addi r31, r4, 0x0
    stw r30, 0x10(r1)
    addi r30, r3, 0x0
    opword  0x80A283A8  // lwz r5, __GXData@sda21(r0)
    lwz r0, 0x5ac(r5)
    cmplwi r0, 0x0
    opword  0x41820008  // beq .L_8005FC84
    bl fn_8005C1CC
L_8005FC84:
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    lwz r0, 0x0(r3)
    cmplwi r0, 0x0
    opword  0x40820008  // bne .L_8005FC98
    bl fn_8005C31C
L_8005FC98:
    li r0, 0x40
    lis r3, 0xcc01
    stb r0, -0x8000(r3)
    stw r30, -0x8000(r3)
    stw r31, -0x8000(r3)
    lwz r0, 0x1c(r1)
    lwz r31, 0x14(r1)
    lwz r30, 0x10(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

ASM void fn_8005FCC4(void)
{
    nofralloc
    opword  0x80A283A8  // lwz r5, __GXData@sda21(r0)
    cmpwi r4, 0x1
    stw r4, 0x4d8(r5)
    lfs fp0, 0x0(r3)
    stfs fp0, 0x4dc(r5)
    lfs fp0, 0x14(r3)
    stfs fp0, 0x4e4(r5)
    lfs fp0, 0x28(r3)
    stfs fp0, 0x4ec(r5)
    lfs fp0, 0x2c(r3)
    stfs fp0, 0x4f0(r5)
    opword  0x40820018  // bne .L_8005FD08
    lfs fp0, 0xc(r3)
    stfs fp0, 0x4e0(r5)
    lfs fp0, 0x1c(r3)
    stfs fp0, 0x4e8(r5)
    opword  0x48000014  // b .L_8005FD18
L_8005FD08:
    lfs fp0, 0x8(r3)
    stfs fp0, 0x4e0(r5)
    lfs fp0, 0x18(r3)
    stfs fp0, 0x4e8(r5)
L_8005FD18:
    lis r5, 0xcc01
    opword  0x808283A8  // lwz r4, __GXData@sda21(r0)
    li r0, 0x10
    lis r3, 0x6
    stb r0, -0x8000(r5)
    addi r0, r3, 0x1020
    stw r0, -0x8000(r5)
    addi r6, r5, -0x8000
    addi r3, r4, 0x4dc
    psq_l fp2, 0x0(r3), 0, 0
    psq_l fp1, 0x8(r3), 0, 0
    psq_l fp0, 0x10(r3), 0, 0
    psq_st fp2, 0x0(r6), 0, 0
    psq_st fp1, 0x0(r6), 0, 0
    psq_st fp0, 0x0(r6), 0, 0
    lwz r3, 0x4d8(r4)
    li r0, 0x1
    stw r3, -0x8000(r5)
    sth r0, 0x2(r4)
    blr
}

ASM void fn_8005FD68(void)
{
    nofralloc
    opword  0xC0228460  // lfs f1, lbl_8053B400@sda21(r0)
    lfs fp0, 0x0(r3)
    fcmpu cr0, fp1, fp0
    opword  0x4082000C  // bne .L_8005FD80
    li r0, 0x0
    opword  0x48000008  // b .L_8005FD84
L_8005FD80:
    li r0, 0x1
L_8005FD84:
    opword  0x80A283A8  // lwz r5, __GXData@sda21(r0)
    addi r3, r3, 0x4
    stw r0, 0x4d8(r5)
    addi r6, r5, 0x4dc
    psq_l fp2, 0x0(r3), 0, 0
    psq_l fp1, 0x8(r3), 0, 0
    psq_l fp0, 0x10(r3), 0, 0
    psq_st fp2, 0x0(r6), 0, 0
    psq_st fp1, 0x8(r6), 0, 0
    psq_st fp0, 0x10(r6), 0, 0
    lis r4, 0xcc01
    li r0, 0x10
    lis r3, 0x6
    stb r0, -0x8000(r4)
    addi r0, r3, 0x1020
    stw r0, -0x8000(r4)
    addi r3, r4, -0x8000
    psq_l fp2, 0x0(r6), 0, 0
    psq_l fp1, 0x8(r6), 0, 0
    psq_l fp0, 0x10(r6), 0, 0
    psq_st fp2, 0x0(r3), 0, 0
    psq_st fp1, 0x0(r3), 0, 0
    psq_st fp0, 0x0(r3), 0, 0
    lwz r3, 0x4d8(r5)
    li r0, 0x1
    stw r3, -0x8000(r4)
    sth r0, 0x2(r5)
    blr
}

ASM void fn_8005FDF4(void)
{
    nofralloc
    lis r5, 0xcc01
    li r0, 0x10
    slwi r4, r4, 2
    stb r0, -0x8000(r5)
    oris r0, r4, 0xb
    stw r0, -0x8000(r5)
    addi r4, r5, -0x8000
    psq_l fp5, 0x0(r3), 0, 0
    psq_l fp4, 0x8(r3), 0, 0
    psq_l fp3, 0x10(r3), 0, 0
    psq_l fp2, 0x18(r3), 0, 0
    psq_l fp1, 0x20(r3), 0, 0
    psq_l fp0, 0x28(r3), 0, 0
    psq_st fp5, 0x0(r4), 0, 0
    psq_st fp4, 0x0(r4), 0, 0
    psq_st fp3, 0x0(r4), 0, 0
    psq_st fp2, 0x0(r4), 0, 0
    psq_st fp1, 0x0(r4), 0, 0
    psq_st fp0, 0x0(r4), 0, 0
    blr
}

ASM void fn_8005FE44(void)
{
    nofralloc
    mulli r5, r4, 0x3
    lis r4, 0xcc01
    li r0, 0x10
    addi r5, r5, 0x400
    stb r0, -0x8000(r4)
    oris r0, r5, 0x8
    stwu r0, -0x8000(r4)
    psq_l fp5, 0x0(r3), 0, 0
    lfs fp4, 0x8(r3)
    psq_l fp3, 0x10(r3), 0, 0
    lfs fp2, 0x18(r3)
    psq_l fp1, 0x20(r3), 0, 0
    lfs fp0, 0x28(r3)
    psq_st fp5, 0x0(r4), 0, 0
    stfs fp4, 0x0(r4)
    psq_st fp3, 0x0(r4), 0, 0
    stfs fp2, 0x0(r4)
    psq_st fp1, 0x0(r4), 0, 0
    stfs fp0, 0x0(r4)
    blr
}

ASM void fn_8005FE94(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x8(r1)
    opword  0x808283A8  // lwz r4, __GXData@sda21(r0)
    lwz r0, 0x80(r4)
    rlwimi r0, r3, 0, 26, 31
    li r3, 0x0
    stw r0, 0x80(r4)
    bl fn_800601E8
    lwz r0, 0xc(r1)
    addi r1, r1, 0x8
    mtlr r0
    blr
}

ASM void fn_8005FEC8(void)
{
    nofralloc
    cmplwi r4, 0x40
    opword  0x41800014  // blt .L_8005FEE0
    subi r0, r4, 0x40
    slwi r4, r0, 2
    addi r7, r4, 0x500
    opword  0x48000008  // b .L_8005FEE4
L_8005FEE0:
    slwi r7, r4, 2
L_8005FEE4:
    cmpwi r5, 0x1
    opword  0x4082000C  // bne .L_8005FEF4
    li r4, 0x8
    opword  0x48000008  // b .L_8005FEF8
L_8005FEF4:
    li r4, 0xc
L_8005FEF8:
    subi r0, r4, 0x1
    slwi r6, r0, 16
    li r0, 0x10
    lis r4, 0xcc01
    stb r0, -0x8000(r4)
    or r0, r7, r6
    cmpwi r5, 0x0
    stw r0, -0x8000(r4)
    opword  0x4082003C  // bne .L_8005FF54
    addi r4, r4, -0x8000
    psq_l fp5, 0x0(r3), 0, 0
    psq_l fp4, 0x8(r3), 0, 0
    psq_l fp3, 0x10(r3), 0, 0
    psq_l fp2, 0x18(r3), 0, 0
    psq_l fp1, 0x20(r3), 0, 0
    psq_l fp0, 0x28(r3), 0, 0
    psq_st fp5, 0x0(r4), 0, 0
    psq_st fp4, 0x0(r4), 0, 0
    psq_st fp3, 0x0(r4), 0, 0
    psq_st fp2, 0x0(r4), 0, 0
    psq_st fp1, 0x0(r4), 0, 0
    psq_st fp0, 0x0(r4), 0, 0
    blr
L_8005FF54:
    addi r4, r4, -0x8000
    psq_l fp3, 0x0(r3), 0, 0
    psq_l fp2, 0x8(r3), 0, 0
    psq_l fp1, 0x10(r3), 0, 0
    psq_l fp0, 0x18(r3), 0, 0
    psq_st fp3, 0x0(r4), 0, 0
    psq_st fp2, 0x0(r4), 0, 0
    psq_st fp1, 0x0(r4), 0, 0
    psq_st fp0, 0x0(r4), 0, 0
    blr
}

ASM void fn_8005FF7C(void)
{
    nofralloc
    opword  0x80C283A8  // lwz r6, __GXData@sda21(r0)
    lis r3, 0x5
    opword  0xC0228468  // lfs f1, lbl_8053B408@sda21(r0)
    li r5, 0x10
    lfs fp3, 0x500(r6)
    lfs fp2, 0x4fc(r6)
    lis r4, 0xcc01
    fneg fp0, fp3
    lfs fp5, 0x4f4(r6)
    fmuls fp7, fp2, fp1
    lfs fp4, 0x4f8(r6)
    addi r0, r3, 0x101a
    fmuls fp3, fp3, fp1
    lfs fp2, 0x508(r6)
    lfs fp6, 0x510(r6)
    fmuls fp8, fp0, fp1
    lfs fp1, 0x504(r6)
    lfs fp0, 0x50c(r6)
    fmuls fp9, fp2, fp6
    fmuls fp1, fp1, fp6
    opword  0xC0C2846C  // lfs f6, lbl_8053B40C@sda21(r0)
    stb r5, -0x8000(r4)
    fadds fp5, fp5, fp7
    stw r0, -0x8000(r4)
    fadds fp2, fp4, fp3
    stfs fp7, -0x8000(r4)
    fsubs fp1, fp9, fp1
    fadds fp3, fp6, fp5
    stfs fp8, -0x8000(r4)
    fadds fp2, fp6, fp2
    stfs fp1, -0x8000(r4)
    fadds fp0, fp9, fp0
    stfs fp3, -0x8000(r4)
    stfs fp2, -0x8000(r4)
    stfs fp0, -0x8000(r4)
    blr
}

ASM void fn_8006000C(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x8(r1)
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    stfs fp1, 0x4f4(r3)
    stfs fp2, 0x4f8(r3)
    stfs fp3, 0x4fc(r3)
    stfs fp4, 0x500(r3)
    stfs fp5, 0x504(r3)
    stfs fp6, 0x508(r3)
    bl fn_8005FF7C
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    li r0, 0x1
    sth r0, 0x2(r3)
    lwz r0, 0xc(r1)
    addi r1, r1, 0x8
    mtlr r0
    blr
}

ASM void fn_80060054(void)
{
    nofralloc
    opword  0xC0028470  // lfs f0, lbl_8053B410@sda21(r0)
    li r6, 0x10
    opword  0x80E283A8  // lwz r7, __GXData@sda21(r0)
    lis r5, 0xcc01
    fmuls fp3, fp0, fp2
    fmuls fp0, fp0, fp1
    li r4, 0x101c
    li r3, 0x101f
    stfs fp3, 0x50c(r7)
    li r0, 0x1
    opword  0xC0228464  // lfs f1, lbl_8053B404@sda21(r0)
    fadds fp2, fp1, fp0
    stfs fp2, 0x510(r7)
    lfs fp1, 0x508(r7)
    lfs fp0, 0x504(r7)
    fmuls fp1, fp1, fp2
    fmuls fp0, fp0, fp2
    stb r6, -0x8000(r5)
    stw r4, -0x8000(r5)
    fadds fp3, fp3, fp1
    fsubs fp0, fp1, fp0
    stfs fp0, -0x8000(r5)
    stb r6, -0x8000(r5)
    stw r3, -0x8000(r5)
    stfs fp3, -0x8000(r5)
    sth r0, 0x2(r7)
    blr
}

ASM void fn_800600C0(void)
{
    nofralloc
    opword  0x80E283A8  // lwz r7, __GXData@sda21(r0)
    addi r4, r4, 0x156
    subi r6, r6, 0x1
    lwz r0, 0xf8(r7)
    rlwimi r0, r4, 0, 21, 31
    addi r3, r3, 0x156
    stw r0, 0xf8(r7)
    subi r8, r5, 0x1
    add r6, r4, r6
    lwz r0, 0xf8(r7)
    rlwimi r0, r3, 12, 9, 19
    add r8, r3, r8
    stw r0, 0xf8(r7)
    li r5, 0x61
    lis r4, 0xcc01
    lwz r3, 0xfc(r7)
    rlwimi r3, r6, 0, 21, 31
    li r0, 0x0
    stw r3, 0xfc(r7)
    lwz r3, 0xfc(r7)
    rlwimi r3, r8, 12, 9, 19
    stw r3, 0xfc(r7)
    stb r5, -0x8000(r4)
    lwz r3, 0xf8(r7)
    stw r3, -0x8000(r4)
    stb r5, -0x8000(r4)
    lwz r3, 0xfc(r7)
    stw r3, -0x8000(r4)
    sth r0, 0x2(r7)
    blr
}

ASM void fn_80060138(void)
{
    nofralloc
    opword  0x810283A8  // lwz r8, __GXData@sda21(r0)
    lwz r7, 0xf8(r8)
    lwz r8, 0xfc(r8)
    extrwi r9, r7, 11, 9
    subi r0, r9, 0x156
    stw r0, 0x0(r3)
    clrlwi r7, r7, 21
    subi r3, r7, 0x156
    stw r3, 0x0(r4)
    extrwi r0, r8, 11, 9
    subf r3, r9, r0
    addi r0, r3, 0x1
    clrlwi r4, r8, 21
    stw r0, 0x0(r5)
    subf r3, r7, r4
    addi r0, r3, 0x1
    stw r0, 0x0(r6)
    blr
}

ASM void fn_80060180(void)
{
    nofralloc
    addi r5, r3, 0x156
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    addi r0, r4, 0x156
    li r4, 0x0
    rlwimi r4, r5, 31, 22, 31
    addi r5, r4, 0x0
    rlwimi r5, r0, 9, 12, 21
    li r0, 0x61
    lis r4, 0xcc01
    stb r0, -0x8000(r4)
    li r0, 0x59
    rlwimi r5, r0, 24, 0, 7
    stw r5, -0x8000(r4)
    li r0, 0x0
    sth r0, 0x2(r3)
    blr
}

ASM void fn_800601C0(void)
{
    nofralloc
    li r0, 0x10
    opword  0x808283A8  // lwz r4, __GXData@sda21(r0)
    lis r6, 0xcc01
    stb r0, -0x8000(r6)
    li r5, 0x1005
    li r0, 0x1
    stw r5, -0x8000(r6)
    stw r3, -0x8000(r6)
    sth r0, 0x2(r4)
    blr
}

ASM void fn_800601E8(void)
{
    nofralloc
    cmpwi r3, 0x5
    opword  0x4080003C  // bge .L_80060228
    li r0, 0x8
    opword  0x808283A8  // lwz r4, __GXData@sda21(r0)
    lis r5, 0xcc01
    stb r0, -0x8000(r5)
    li r0, 0x30
    li r3, 0x10
    stb r0, -0x8000(r5)
    li r0, 0x1018
    lwz r4, 0x80(r4)
    stw r4, -0x8000(r5)
    stb r3, -0x8000(r5)
    stw r0, -0x8000(r5)
    stw r4, -0x8000(r5)
    opword  0x48000038  // b .L_8006025C
L_80060228:
    li r0, 0x8
    opword  0x808283A8  // lwz r4, __GXData@sda21(r0)
    lis r5, 0xcc01
    stb r0, -0x8000(r5)
    li r0, 0x40
    li r3, 0x10
    stb r0, -0x8000(r5)
    li r0, 0x1019
    lwz r4, 0x84(r4)
    stw r4, -0x8000(r5)
    stb r3, -0x8000(r5)
    stw r0, -0x8000(r5)
    stw r4, -0x8000(r5)
L_8006025C:
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    li r0, 0x1
    sth r0, 0x2(r3)
    blr
}

ASM void fn_8006026C(void)
{
    nofralloc
    opword  0x80A283A8  // lwz r5, __GXData@sda21(r0)
    lwz r0, 0x59c(r5)
    cmpwi r0, 0x22
    opword  0x4182002C  // beq .L_800602A4
    opword  0x40800074  // bge .L_800602F0
    cmpwi r0, 0xb
    opword  0x40800010  // bge .L_80060294
    cmpwi r0, 0x0
    opword  0x40800018  // bge .L_800602A4
    opword  0x48000060  // b .L_800602F0
L_80060294:
    cmpwi r0, 0x1b
    opword  0x40800044  // bge .L_800602DC
    opword  0x48000028  // b .L_800602C4
    opword  0x48000050  // b .L_800602F0
L_800602A4:
    li r0, 0x10
    lis r6, 0xcc01
    stb r0, -0x8000(r6)
    li r5, 0x1006
    li r0, 0x0
    stw r5, -0x8000(r6)
    stw r0, -0x8000(r6)
    opword  0x48000030  // b .L_800602F0
L_800602C4:
    li r0, 0x61
    lis r5, 0xcc01
    stb r0, -0x8000(r5)
    lis r0, 0x2300
    stw r0, -0x8000(r5)
    opword  0x48000018  // b .L_800602F0
L_800602DC:
    li r0, 0x61
    lis r5, 0xcc01
    stb r0, -0x8000(r5)
    lis r0, 0x2400
    stw r0, -0x8000(r5)
L_800602F0:
    opword  0x80C283A8  // lwz r6, __GXData@sda21(r0)
    lwz r0, 0x5a0(r6)
    cmpwi r0, 0x15
    opword  0x4182002C  // beq .L_80060328
    opword  0x4080007C  // bge .L_8006037C
    cmpwi r0, 0x9
    opword  0x40800010  // bge .L_80060318
    cmpwi r0, 0x0
    opword  0x40800018  // bge .L_80060328
    opword  0x48000068  // b .L_8006037C
L_80060318:
    cmpwi r0, 0x11
    opword  0x40800054  // bge .L_80060370
    opword  0x48000020  // b .L_80060340
    opword  0x48000058  // b .L_8006037C
L_80060328:
    li r0, 0x61
    lis r5, 0xcc01
    stb r0, -0x8000(r5)
    lis r0, 0x6700
    stw r0, -0x8000(r5)
    opword  0x48000040  // b .L_8006037C
L_80060340:
    lwz r5, 0x5a4(r6)
    li r0, 0x0
    rlwimi r5, r0, 4, 24, 27
    stw r5, 0x5a4(r6)
    li r0, 0x8
    lis r5, 0xcc01
    stb r0, -0x8000(r5)
    li r0, 0x20
    stb r0, -0x8000(r5)
    lwz r0, 0x5a4(r6)
    stw r0, -0x8000(r5)
    opword  0x48000010  // b .L_8006037C
L_80060370:
    opword  0x80AD8AE4  // lwz r5, __cpReg@sda21(r0)
    li r0, 0x0
    sth r0, 0x6(r5)
L_8006037C:
    opword  0x80A283A8  // lwz r5, __GXData@sda21(r0)
    stw r3, 0x59c(r5)
    lwz r0, 0x59c(r5)
    cmplwi r0, 0x23
    opword  0x4181041C  // bgt .L_800607A8
    lis r3, jumptable_804978B4@ha
    addi r3, r3, jumptable_804978B4@l
    slwi r0, r0, 2
    lwzx r0, r3, r0
    mtctr r0
    bctr
    li r0, 0x10
    lis r5, 0xcc01
    stb r0, -0x8000(r5)
    li r3, 0x1006
    li r0, 0x273
    stw r3, -0x8000(r5)
    stw r0, -0x8000(r5)
    opword  0x480003E4  // b .L_800607A8
    li r0, 0x10
    lis r5, 0xcc01
    stb r0, -0x8000(r5)
    li r3, 0x1006
    li r0, 0x14a
    stw r3, -0x8000(r5)
    stw r0, -0x8000(r5)
    opword  0x480003C4  // b .L_800607A8
    li r0, 0x10
    lis r5, 0xcc01
    stb r0, -0x8000(r5)
    li r3, 0x1006
    li r0, 0x16b
    stw r3, -0x8000(r5)
    stw r0, -0x8000(r5)
    opword  0x480003A4  // b .L_800607A8
    li r0, 0x10
    lis r5, 0xcc01
    stb r0, -0x8000(r5)
    li r3, 0x1006
    li r0, 0x84
    stw r3, -0x8000(r5)
    stw r0, -0x8000(r5)
    opword  0x48000384  // b .L_800607A8
    li r0, 0x10
    lis r5, 0xcc01
    stb r0, -0x8000(r5)
    li r3, 0x1006
    li r0, 0xc6
    stw r3, -0x8000(r5)
    stw r0, -0x8000(r5)
    opword  0x48000364  // b .L_800607A8
    li r0, 0x10
    lis r5, 0xcc01
    stb r0, -0x8000(r5)
    li r3, 0x1006
    li r0, 0x210
    stw r3, -0x8000(r5)
    stw r0, -0x8000(r5)
    opword  0x48000344  // b .L_800607A8
    li r0, 0x10
    lis r5, 0xcc01
    stb r0, -0x8000(r5)
    li r3, 0x1006
    li r0, 0x252
    stw r3, -0x8000(r5)
    stw r0, -0x8000(r5)
    opword  0x48000324  // b .L_800607A8
    li r0, 0x10
    lis r5, 0xcc01
    stb r0, -0x8000(r5)
    li r3, 0x1006
    li r0, 0x231
    stw r3, -0x8000(r5)
    stw r0, -0x8000(r5)
    opword  0x48000304  // b .L_800607A8
    li r0, 0x10
    lis r5, 0xcc01
    stb r0, -0x8000(r5)
    li r3, 0x1006
    li r0, 0x1ad
    stw r3, -0x8000(r5)
    stw r0, -0x8000(r5)
    opword  0x480002E4  // b .L_800607A8
    li r0, 0x10
    lis r5, 0xcc01
    stb r0, -0x8000(r5)
    li r3, 0x1006
    li r0, 0x1ce
    stw r3, -0x8000(r5)
    stw r0, -0x8000(r5)
    opword  0x480002C4  // b .L_800607A8
    li r0, 0x10
    lis r5, 0xcc01
    stb r0, -0x8000(r5)
    li r3, 0x1006
    li r0, 0x21
    stw r3, -0x8000(r5)
    stw r0, -0x8000(r5)
    opword  0x480002A4  // b .L_800607A8
    li r0, 0x10
    lis r5, 0xcc01
    stb r0, -0x8000(r5)
    li r3, 0x1006
    li r0, 0x153
    stw r3, -0x8000(r5)
    stw r0, -0x8000(r5)
    opword  0x48000284  // b .L_800607A8
    li r0, 0x61
    lis r5, 0xcc01
    lis r3, 0x2301
    stb r0, -0x8000(r5)
    subi r0, r3, 0x5181
    stw r0, -0x8000(r5)
    opword  0x48000268  // b .L_800607A8
    li r0, 0x61
    lis r5, 0xcc01
    lis r3, 0x2301
    stb r0, -0x8000(r5)
    subi r0, r3, 0x7181
    stw r0, -0x8000(r5)
    opword  0x4800024C  // b .L_800607A8
    li r0, 0x61
    lis r5, 0xcc01
    lis r3, 0x2301
    stb r0, -0x8000(r5)
    subi r0, r3, 0x6181
    stw r0, -0x8000(r5)
    opword  0x48000230  // b .L_800607A8
    li r0, 0x61
    lis r5, 0xcc01
    lis r3, 0x2300
    stb r0, -0x8000(r5)
    addi r0, r3, 0x1e7f
    stw r0, -0x8000(r5)
    opword  0x48000214  // b .L_800607A8
    li r0, 0x61
    lis r5, 0xcc01
    lis r3, 0x2301
    stb r0, -0x8000(r5)
    subi r0, r3, 0x53c1
    stw r0, -0x8000(r5)
    opword  0x480001F8  // b .L_800607A8
    li r0, 0x61
    lis r5, 0xcc01
    lis r3, 0x2301
    stb r0, -0x8000(r5)
    subi r0, r3, 0x5381
    stw r0, -0x8000(r5)
    opword  0x480001DC  // b .L_800607A8
    li r0, 0x61
    lis r5, 0xcc01
    lis r3, 0x2301
    stb r0, -0x8000(r5)
    subi r0, r3, 0x5341
    stw r0, -0x8000(r5)
    opword  0x480001C0  // b .L_800607A8
    li r0, 0x61
    lis r5, 0xcc01
    lis r3, 0x2301
    stb r0, -0x8000(r5)
    subi r0, r3, 0x5301
    stw r0, -0x8000(r5)
    opword  0x480001A4  // b .L_800607A8
    li r0, 0x61
    lis r5, 0xcc01
    lis r3, 0x2301
    stb r0, -0x8000(r5)
    subi r0, r3, 0x52c1
    stw r0, -0x8000(r5)
    opword  0x48000188  // b .L_800607A8
    li r0, 0x61
    lis r5, 0xcc01
    lis r3, 0x2301
    stb r0, -0x8000(r5)
    subi r0, r3, 0x5281
    stw r0, -0x8000(r5)
    opword  0x4800016C  // b .L_800607A8
    li r0, 0x61
    lis r5, 0xcc01
    lis r3, 0x2301
    stb r0, -0x8000(r5)
    subi r0, r3, 0x5241
    stw r0, -0x8000(r5)
    opword  0x48000150  // b .L_800607A8
    li r0, 0x61
    lis r5, 0xcc01
    lis r3, 0x2301
    stb r0, -0x8000(r5)
    subi r0, r3, 0x5201
    stw r0, -0x8000(r5)
    opword  0x48000134  // b .L_800607A8
    li r0, 0x61
    lis r5, 0xcc01
    lis r3, 0x2301
    stb r0, -0x8000(r5)
    subi r0, r3, 0x51c1
    stw r0, -0x8000(r5)
    opword  0x48000118  // b .L_800607A8
    li r0, 0x61
    lis r5, 0xcc01
    lis r3, 0x2301
    stb r0, -0x8000(r5)
    subi r0, r3, 0x5d81
    stw r0, -0x8000(r5)
    opword  0x480000FC  // b .L_800607A8
    li r0, 0x61
    lis r5, 0xcc01
    lis r3, 0x2301
    stb r0, -0x8000(r5)
    subi r0, r3, 0x5981
    stw r0, -0x8000(r5)
    opword  0x480000E0  // b .L_800607A8
    li r0, 0x61
    lis r5, 0xcc01
    lis r3, 0x2301
    stb r0, -0x8000(r5)
    subi r0, r3, 0x5581
    stw r0, -0x8000(r5)
    opword  0x480000C4  // b .L_800607A8
    li r0, 0x61
    lis r5, 0xcc01
    lis r3, 0x2403
    stb r0, -0x8000(r5)
    subi r0, r3, 0x3f3a
    stw r0, -0x8000(r5)
    opword  0x480000A8  // b .L_800607A8
    li r0, 0x61
    lis r5, 0xcc01
    lis r3, 0x2403
    stb r0, -0x8000(r5)
    subi r0, r3, 0x3e95
    stw r0, -0x8000(r5)
    opword  0x4800008C  // b .L_800607A8
    li r0, 0x61
    lis r5, 0xcc01
    lis r3, 0x2403
    stb r0, -0x8000(r5)
    subi r0, r3, 0x3f19
    stw r0, -0x8000(r5)
    opword  0x48000070  // b .L_800607A8
    li r0, 0x61
    lis r5, 0xcc01
    lis r3, 0x2403
    stb r0, -0x8000(r5)
    subi r0, r3, 0x3ef8
    stw r0, -0x8000(r5)
    opword  0x48000054  // b .L_800607A8
    li r0, 0x61
    lis r5, 0xcc01
    lis r3, 0x2403
    stb r0, -0x8000(r5)
    subi r0, r3, 0x3ed7
    stw r0, -0x8000(r5)
    opword  0x48000038  // b .L_800607A8
    li r0, 0x61
    lis r5, 0xcc01
    lis r3, 0x2403
    stb r0, -0x8000(r5)
    subi r0, r3, 0x3eb6
    stw r0, -0x8000(r5)
    opword  0x4800001C  // b .L_800607A8
    li r0, 0x61
    lis r5, 0xcc01
    lis r3, 0x2403
    stb r0, -0x8000(r5)
    subi r0, r3, 0x3e53
    stw r0, -0x8000(r5)
L_800607A8:
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    stw r4, 0x5a0(r3)
    lwz r0, 0x5a0(r3)
    cmplwi r0, 0x16
    opword  0x418102EC  // bgt .L_80060AA4
    lis r4, jumptable_80497858@ha
    addi r4, r4, jumptable_80497858@l
    slwi r0, r0, 2
    lwzx r0, r4, r0
    mtctr r0
    bctr
    li r0, 0x61
    lis r4, 0xcc01
    lis r3, 0x6700
    stb r0, -0x8000(r4)
    addi r0, r3, 0x42
    stw r0, -0x8000(r4)
    opword  0x480002B8  // b .L_80060AA4
    li r0, 0x61
    lis r4, 0xcc01
    lis r3, 0x6700
    stb r0, -0x8000(r4)
    addi r0, r3, 0x84
    stw r0, -0x8000(r4)
    opword  0x4800029C  // b .L_80060AA4
    li r0, 0x61
    lis r4, 0xcc01
    lis r3, 0x6700
    stb r0, -0x8000(r4)
    addi r0, r3, 0x63
    stw r0, -0x8000(r4)
    opword  0x48000280  // b .L_80060AA4
    li r0, 0x61
    lis r4, 0xcc01
    lis r3, 0x6700
    stb r0, -0x8000(r4)
    addi r0, r3, 0x129
    stw r0, -0x8000(r4)
    opword  0x48000264  // b .L_80060AA4
    li r0, 0x61
    lis r4, 0xcc01
    lis r3, 0x6700
    stb r0, -0x8000(r4)
    addi r0, r3, 0x252
    stw r0, -0x8000(r4)
    opword  0x48000248  // b .L_80060AA4
    li r0, 0x61
    lis r4, 0xcc01
    lis r3, 0x6700
    stb r0, -0x8000(r4)
    addi r0, r3, 0x21
    stw r0, -0x8000(r4)
    opword  0x4800022C  // b .L_80060AA4
    li r0, 0x61
    lis r4, 0xcc01
    lis r3, 0x6700
    stb r0, -0x8000(r4)
    addi r0, r3, 0x14b
    stw r0, -0x8000(r4)
    opword  0x48000210  // b .L_80060AA4
    li r0, 0x61
    lis r4, 0xcc01
    lis r3, 0x6700
    stb r0, -0x8000(r4)
    addi r0, r3, 0x18d
    stw r0, -0x8000(r4)
    opword  0x480001F4  // b .L_80060AA4
    li r0, 0x61
    lis r4, 0xcc01
    lis r3, 0x6700
    stb r0, -0x8000(r4)
    addi r0, r3, 0x1cf
    stw r0, -0x8000(r4)
    opword  0x480001D8  // b .L_80060AA4
    li r0, 0x61
    lis r4, 0xcc01
    lis r3, 0x6700
    stb r0, -0x8000(r4)
    addi r0, r3, 0x211
    stw r0, -0x8000(r4)
    opword  0x480001BC  // b .L_80060AA4
    lwz r4, 0x5a4(r3)
    li r0, 0x2
    rlwimi r4, r0, 4, 24, 27
    stw r4, 0x5a4(r3)
    li r0, 0x8
    lis r4, 0xcc01
    stb r0, -0x8000(r4)
    li r0, 0x20
    stb r0, -0x8000(r4)
    lwz r0, 0x5a4(r3)
    stw r0, -0x8000(r4)
    opword  0x4800018C  // b .L_80060AA4
    lwz r4, 0x5a4(r3)
    li r0, 0x3
    rlwimi r4, r0, 4, 24, 27
    stw r4, 0x5a4(r3)
    li r0, 0x8
    lis r4, 0xcc01
    stb r0, -0x8000(r4)
    li r0, 0x20
    stb r0, -0x8000(r4)
    lwz r0, 0x5a4(r3)
    stw r0, -0x8000(r4)
    opword  0x4800015C  // b .L_80060AA4
    lwz r4, 0x5a4(r3)
    li r0, 0x4
    rlwimi r4, r0, 4, 24, 27
    stw r4, 0x5a4(r3)
    li r0, 0x8
    lis r4, 0xcc01
    stb r0, -0x8000(r4)
    li r0, 0x20
    stb r0, -0x8000(r4)
    lwz r0, 0x5a4(r3)
    stw r0, -0x8000(r4)
    opword  0x4800012C  // b .L_80060AA4
    lwz r4, 0x5a4(r3)
    li r0, 0x5
    rlwimi r4, r0, 4, 24, 27
    stw r4, 0x5a4(r3)
    li r0, 0x8
    lis r4, 0xcc01
    stb r0, -0x8000(r4)
    li r0, 0x20
    stb r0, -0x8000(r4)
    lwz r0, 0x5a4(r3)
    stw r0, -0x8000(r4)
    opword  0x480000FC  // b .L_80060AA4
    lwz r4, 0x5a4(r3)
    li r0, 0x6
    rlwimi r4, r0, 4, 24, 27
    stw r4, 0x5a4(r3)
    li r0, 0x8
    lis r4, 0xcc01
    stb r0, -0x8000(r4)
    li r0, 0x20
    stb r0, -0x8000(r4)
    lwz r0, 0x5a4(r3)
    stw r0, -0x8000(r4)
    opword  0x480000CC  // b .L_80060AA4
    lwz r4, 0x5a4(r3)
    li r0, 0x7
    rlwimi r4, r0, 4, 24, 27
    stw r4, 0x5a4(r3)
    li r0, 0x8
    lis r4, 0xcc01
    stb r0, -0x8000(r4)
    li r0, 0x20
    stb r0, -0x8000(r4)
    lwz r0, 0x5a4(r3)
    stw r0, -0x8000(r4)
    opword  0x4800009C  // b .L_80060AA4
    lwz r4, 0x5a4(r3)
    li r0, 0x9
    rlwimi r4, r0, 4, 24, 27
    stw r4, 0x5a4(r3)
    li r0, 0x8
    lis r4, 0xcc01
    stb r0, -0x8000(r4)
    li r0, 0x20
    stb r0, -0x8000(r4)
    lwz r0, 0x5a4(r3)
    stw r0, -0x8000(r4)
    opword  0x4800006C  // b .L_80060AA4
    lwz r0, 0x5a4(r3)
    li r5, 0x8
    rlwimi r0, r5, 4, 24, 27
    stw r0, 0x5a4(r3)
    lis r4, 0xcc01
    li r0, 0x20
    stb r5, -0x8000(r4)
    stb r0, -0x8000(r4)
    lwz r0, 0x5a4(r3)
    stw r0, -0x8000(r4)
    opword  0x48000040  // b .L_80060AA4
    opword  0x806D8AE4  // lwz r3, __cpReg@sda21(r0)
    li r0, 0x2
    sth r0, 0x6(r3)
    opword  0x48000030  // b .L_80060AA4
    opword  0x806D8AE4  // lwz r3, __cpReg@sda21(r0)
    li r0, 0x3
    sth r0, 0x6(r3)
    opword  0x48000020  // b .L_80060AA4
    opword  0x806D8AE4  // lwz r3, __cpReg@sda21(r0)
    li r0, 0x4
    sth r0, 0x6(r3)
    opword  0x48000010  // b .L_80060AA4
    opword  0x806D8AE4  // lwz r3, __cpReg@sda21(r0)
    li r0, 0x5
    sth r0, 0x6(r3)
L_80060AA4:
    opword  0x806283A8  // lwz r3, __GXData@sda21(r0)
    li r0, 0x0
    sth r0, 0x2(r3)
    blr
}

ASM void fn_80060AB4(void)
{
    nofralloc
    opword  0x806D8AE4  // lwz r3, __cpReg@sda21(r0)
    li r0, 0x4
    sth r0, 0x4(r3)
    blr
}

ASM void fn_80060AC4(void)
{
    nofralloc
    opword  0x80ED8AE4  // lwz r7, __cpReg@sda21(r0)
    addi r10, r7, 0x42
    lhz r8, 0x42(r7)
    addi r9, r7, 0x40
L_80060AD4:
    mr r0, r8
    lhz r7, 0x0(r9)
    lhz r8, 0x0(r10)
    cmplw r8, r0
    opword  0x4082FFF0  // bne .L_80060AD4
    slwi r0, r8, 16
    or r0, r0, r7
    stw r0, 0x0(r5)
    opword  0x80AD8AE4  // lwz r5, __cpReg@sda21(r0)
    addi r9, r5, 0x46
    lhz r7, 0x46(r5)
    addi r8, r5, 0x44
L_80060B04:
    mr r0, r7
    lhz r5, 0x0(r8)
    lhz r7, 0x0(r9)
    cmplw r7, r0
    opword  0x4082FFF0  // bne .L_80060B04
    slwi r0, r7, 16
    or r0, r0, r5
    stw r0, 0x0(r6)
    opword  0x80AD8AE4  // lwz r5, __cpReg@sda21(r0)
    addi r8, r5, 0x4a
    lhz r6, 0x4a(r5)
    addi r7, r5, 0x48
L_80060B34:
    mr r0, r6
    lhz r5, 0x0(r7)
    lhz r6, 0x0(r8)
    cmplw r6, r0
    opword  0x4082FFF0  // bne .L_80060B34
    slwi r0, r6, 16
    or r0, r0, r5
    stw r0, 0x0(r3)
    opword  0x806D8AE4  // lwz r3, __cpReg@sda21(r0)
    addi r7, r3, 0x4e
    lhz r5, 0x4e(r3)
    addi r6, r3, 0x4c
L_80060B64:
    mr r0, r5
    lhz r3, 0x0(r6)
    lhz r5, 0x0(r7)
    cmplw r5, r0
    opword  0x4082FFF0  // bne .L_80060B64
    slwi r0, r5, 16
    or r0, r0, r3
    stw r0, 0x0(r4)
    blr
}

ASM void TRKNubMainLoop(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    li r31, 0x0
    stw r30, 0x18(r1)
    li r30, 0x0
    opword  0x480000BC  // b .L_80060C60
L_80060BA8:
    addi r3, r1, 0x8
    bl TRKGetNextEvent
    cmpwi r3, 0x0
    opword  0x4182006C  // beq .L_80060C20
    lwz r0, 0x8(r1)
    li r30, 0x0
    cmpwi r0, 0x2
    opword  0x41820028  // beq .L_80060BEC
    opword  0x40800014  // bge .L_80060BDC
    cmpwi r0, 0x0
    opword  0x41820044  // beq .L_80060C14
    opword  0x40800028  // bge .L_80060BFC
    opword  0x4800003C  // b .L_80060C14
L_80060BDC:
    cmpwi r0, 0x5
    opword  0x41820030  // beq .L_80060C10
    opword  0x40800030  // bge .L_80060C14
    opword  0x4800001C  // b .L_80060C04
L_80060BEC:
    lwz r3, 0x10(r1)
    bl TRKGetBuffer
    bl TRKDispatchMessage
    opword  0x4800001C  // b .L_80060C14
L_80060BFC:
    li r31, 0x1
    opword  0x48000014  // b .L_80060C14
L_80060C04:
    addi r3, r1, 0x8
    bl TRKTargetInterrupt
    opword  0x48000008  // b .L_80060C14
L_80060C10:
    bl TRKTargetSupportRequest
L_80060C14:
    addi r3, r1, 0x8
    bl TRKDestructEvent
    opword  0x48000044  // b .L_80060C60
L_80060C20:
    cmpwi r30, 0x0
    opword  0x4182001C  // beq .L_80060C40
    lis r3, gTRKInputPendingPtr@ha
    addi r3, r3, gTRKInputPendingPtr@l
    lwz r3, 0x0(r3)
    lbz r0, 0x0(r3)
    cmplwi r0, 0x0
    opword  0x41820010  // beq .L_80060C4C
L_80060C40:
    li r30, 0x1
    bl TRKGetInput
    opword  0x48000018  // b .L_80060C60
L_80060C4C:
    bl TRKTargetStopped
    cmpwi r3, 0x0
    opword  0x40820008  // bne .L_80060C5C
    bl TRKTargetContinue
L_80060C5C:
    li r30, 0x0
L_80060C60:
    cmpwi r31, 0x0
    opword  0x4182FF44  // beq .L_80060BA8
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void TRKDestructEvent(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    lwz r3, 0x8(r3)
    bl fn_800616F4
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80060CA4(void)
{
    nofralloc
    stw r4, 0x0(r3)
    li r4, 0x0
    li r0, -0x1
    stw r4, 0x4(r3)
    stw r0, 0x8(r3)
    blr
}

ASM void fn_80060CBC(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    lis r4, lbl_804B6698@ha
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    li r31, 0x0
    stw r30, 0x18(r1)
    stw r29, 0x14(r1)
    mr r29, r3
    addi r3, r4, lbl_804B6698@l
    bl fn_80063508
    lis r3, lbl_804B6698@ha
    addi r30, r3, lbl_804B6698@l
    lwz r3, 0x4(r30)
    cmpwi r3, 0x2
    opword  0x4082000C  // bne .L_80060D04
    li r31, 0x100
    opword  0x48000070  // b .L_80060D70
L_80060D04:
    lwz r0, 0x8(r30)
    mr r4, r29
    li r5, 0xc
    add r0, r0, r3
    srwi r3, r0, 31
    clrlwi r0, r0, 31
    xor r0, r0, r3
    subf r0, r3, r0
    mulli r29, r0, 0xc
    add r3, r30, r29
    addi r3, r3, 0xc
    bl fn_80003488
    lis r3, lbl_804B6698@ha
    addi r4, r3, lbl_804B6698@l
    lwz r0, 0x24(r4)
    add r3, r4, r29
    stw r0, 0x10(r3)
    lwz r3, 0x24(r4)
    addi r0, r3, 0x1
    cmplwi r0, 0x100
    stw r0, 0x24(r4)
    opword  0x4080000C  // bge .L_80060D64
    li r0, 0x100
    stw r0, 0x24(r4)
L_80060D64:
    lwz r3, 0x4(r30)
    addi r0, r3, 0x1
    stw r0, 0x4(r30)
L_80060D70:
    lis r3, lbl_804B6698@ha
    addi r3, r3, lbl_804B6698@l
    bl fn_80063500
    lwz r0, 0x24(r1)
    mr r3, r31
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void TRKGetNextEvent(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    lis r4, lbl_804B6698@ha
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    li r30, 0x0
    stw r29, 0x14(r1)
    mr r29, r3
    addi r3, r4, lbl_804B6698@l
    bl fn_80063508
    lis r3, lbl_804B6698@ha
    addi r31, r3, lbl_804B6698@l
    lwz r0, 0x4(r31)
    cmpwi r0, 0x0
    opword  0x4081004C  // ble .L_80060E24
    lwz r0, 0x8(r31)
    mr r3, r29
    li r5, 0xc
    mulli r0, r0, 0xc
    add r4, r31, r0
    addi r4, r4, 0xc
    bl fn_80003488
    lwz r3, 0x8(r31)
    lwz r4, 0x4(r31)
    addi r0, r3, 0x1
    subi r3, r4, 0x1
    stw r0, 0x8(r31)
    cmpwi r0, 0x2
    stw r3, 0x4(r31)
    opword  0x4082000C  // bne .L_80060E20
    li r0, 0x0
    stw r0, 0x8(r31)
L_80060E20:
    li r30, 0x1
L_80060E24:
    lis r3, lbl_804B6698@ha
    addi r3, r3, lbl_804B6698@l
    bl fn_80063500
    lwz r0, 0x24(r1)
    mr r3, r30
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void TRKInitializeEventQueue(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    lis r3, lbl_804B6698@ha
    stw r0, 0x14(r1)
    addi r3, r3, lbl_804B6698@l
    bl fn_80063510
    lis r3, lbl_804B6698@ha
    addi r3, r3, lbl_804B6698@l
    bl fn_80063508
    lis r3, lbl_804B6698@ha
    li r4, 0x0
    addi r3, r3, lbl_804B6698@l
    li r0, 0x100
    stw r4, 0x4(r3)
    stw r4, 0x8(r3)
    stw r0, 0x24(r3)
    bl fn_80063500
    lwz r0, 0x14(r1)
    li r3, 0x0
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void TRKNubWelcome(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    opword  0x3C608046  // lis r3, "@62_8045D450"@ha
    stw r0, 0x14(r1)
    opword  0x3863D450  // addi r3, r3, "@62_8045D450"@l
    bl TRK_board_display
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void TRKTerminateNub(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    bl fn_800618C0
    lwz r0, 0x14(r1)
    li r3, 0x0
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void TRKInitializeNub(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    li r5, 0x12
    li r4, 0x34
    stw r0, 0x24(r1)
    li r3, 0x56
    li r0, 0x78
    li r6, 0x1
    stb r5, 0x8(r1)
    lis r5, gTRKBigEndian@ha
    stw r31, 0x1c(r1)
    li r31, 0x0
    stw r30, 0x18(r1)
    stb r4, 0x9(r1)
    stb r3, 0xa(r1)
    stb r0, 0xb(r1)
    lwz r3, 0x8(r1)
    stwu r6, gTRKBigEndian@l(r5)
    subis r0, r3, 0x1234
    cmplwi r0, 0x5678
    opword  0x4082000C  // bne .L_80060F50
    stw r6, 0x0(r5)
    opword  0x4800001C  // b .L_80060F68
L_80060F50:
    subis r0, r3, 0x7856
    cmplwi r0, 0x3412
    opword  0x4082000C  // bne .L_80060F64
    stw r31, 0x0(r5)
    opword  0x48000008  // b .L_80060F68
L_80060F64:
    mr r31, r6
L_80060F68:
    opword  0x3C608046  // lis r3, "@154_8045D46C"@ha
    opword  0x3883D46C  // addi r4, r3, "@154_8045D46C"@l
    li r3, 0x1
    crclr 6
    bl MWTRACE
    cmpwi r31, 0x0
    opword  0x40820008  // bne .L_80060F88
    bl usr_put_initialize
L_80060F88:
    cmpwi r31, 0x0
    opword  0x4082000C  // bne .L_80060F98
    bl TRKInitializeEventQueue
    mr r31, r3
L_80060F98:
    cmpwi r31, 0x0
    opword  0x4082000C  // bne .L_80060FA8
    bl TRKInitializeMessageBuffers
    mr r31, r3
L_80060FA8:
    cmpwi r31, 0x0
    opword  0x4082000C  // bne .L_80060FB8
    bl TRKInitializeDispatcher
    mr r31, r3
L_80060FB8:
    bl InitializeProgramEndTrap
    cmpwi r31, 0x0
    opword  0x4082000C  // bne .L_80060FCC
    bl TRKInitializeSerialHandler
    mr r31, r3
L_80060FCC:
    cmpwi r31, 0x0
    opword  0x4082000C  // bne .L_80060FDC
    bl TRKInitializeTarget
    mr r31, r3
L_80060FDC:
    cmpwi r31, 0x0
    opword  0x40820044  // bne .L_80061024
    lis r3, gTRKInputPendingPtr@ha
    lis r5, 0x1
    addi r6, r3, gTRKInputPendingPtr@l
    li r4, 0x1
    subi r3, r5, 0x1f00
    li r5, 0x0
    bl TRKInitializeIntDrivenUART
    lis r4, gTRKInputPendingPtr@ha
    mr r0, r3
    addi r3, r4, gTRKInputPendingPtr@l
    lwz r3, 0x0(r3)
    mr r30, r0
    bl TRKTargetSetInputPendingPtr
    cmpwi r30, 0x0
    opword  0x41820008  // beq .L_80061024
    mr r31, r30
L_80061024:
    lwz r0, 0x24(r1)
    mr r3, r31
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_80061040(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    lwz r4, 0x8(r3)
    addi r3, r3, 0x10
    bl fn_80065DC8
    lis r4, lbl_8045D480@ha
    mr r5, r3
    li r3, 0x1
    addi r4, r4, lbl_8045D480@l
    crclr 6
    bl MWTRACE
    lwz r0, 0x14(r1)
    li r3, 0x0
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80061084(void)
{
    nofralloc
    stwu r1, -0x30(r1)
    mflr r0
    lis r6, gTRKBigEndian@ha
    stw r0, 0x34(r1)
    stmw r24, 0x10(r1)
    mr r28, r3
    mr r29, r5
    mr r31, r4
    addi r27, r6, gTRKBigEndian@l
    li r30, 0x0
    li r3, 0x0
    opword  0x480000A0  // b .L_80061150
L_800610B4:
    lwz r0, 0x0(r27)
    cmpwi r0, 0x0
    opword  0x4182000C  // beq .L_800610C8
    mr r25, r31
    opword  0x48000008  // b .L_800610CC
L_800610C8:
    addi r25, r1, 0x8
L_800610CC:
    lwz r3, 0xc(r28)
    li r24, 0x4
    lwz r0, 0x8(r28)
    li r26, 0x0
    subf r0, r3, r0
    cmplw r24, r0
    opword  0x4081000C  // ble .L_800610F0
    li r26, 0x302
    mr r24, r0
L_800610F0:
    addi r4, r3, 0x10
    mr r3, r25
    mr r5, r24
    add r4, r28, r4
    bl fn_80003488
    lwz r0, 0xc(r28)
    add r0, r0, r24
    stw r0, 0xc(r28)
    lwz r0, 0x0(r27)
    cmpwi r0, 0x0
    opword  0x4082002C  // bne .L_80061144
    cmpwi r26, 0x0
    opword  0x40820024  // bne .L_80061144
    lbz r0, 0x3(r25)
    stb r0, 0x0(r31)
    lbz r0, 0x2(r25)
    stb r0, 0x1(r31)
    lbz r0, 0x1(r25)
    stb r0, 0x2(r31)
    lbz r0, 0x0(r25)
    stb r0, 0x3(r31)
L_80061144:
    mr r3, r26
    addi r31, r31, 0x4
    addi r30, r30, 0x1
L_80061150:
    cmpwi r3, 0x0
    opword  0x4082000C  // bne .L_80061160
    cmpw r30, r29
    opword  0x4180FF58  // blt .L_800610B4
L_80061160:
    lmw r24, 0x10(r1)
    lwz r0, 0x34(r1)
    mtlr r0
    addi r1, r1, 0x30
    blr
}

ASM void fn_80061174(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stmw r26, 0x8(r1)
    mr r26, r3
    mr r27, r4
    mr r28, r5
    li r29, 0x0
    li r3, 0x0
    opword  0x48000050  // b .L_800611E8
L_8006119C:
    lwz r3, 0xc(r26)
    li r30, 0x1
    lwz r0, 0x8(r26)
    li r31, 0x0
    subf r0, r3, r0
    cmplw r30, r0
    opword  0x4081000C  // ble .L_800611C0
    li r31, 0x302
    mr r30, r0
L_800611C0:
    addi r4, r3, 0x10
    mr r5, r30
    add r3, r27, r29
    add r4, r26, r4
    bl fn_80003488
    lwz r0, 0xc(r26)
    mr r3, r31
    addi r29, r29, 0x1
    add r0, r0, r30
    stw r0, 0xc(r26)
L_800611E8:
    cmpwi r3, 0x0
    opword  0x4082000C  // bne .L_800611F8
    cmpw r29, r28
    opword  0x4180FFA8  // blt .L_8006119C
L_800611F8:
    lmw r26, 0x8(r1)
    lwz r0, 0x24(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_8006120C(void)
{
    nofralloc
    stwu r1, -0x30(r1)
    mflr r0
    lis r5, gTRKBigEndian@ha
    stw r0, 0x34(r1)
    stmw r27, 0x1c(r1)
    mr r27, r3
    mr r30, r4
    lwz r0, gTRKBigEndian@l(r5)
    cmpwi r0, 0x0
    opword  0x4182000C  // beq .L_8006123C
    mr r31, r30
    opword  0x48000008  // b .L_80061240
L_8006123C:
    addi r31, r1, 0x8
L_80061240:
    lwz r3, 0xc(r27)
    li r28, 0x8
    lwz r0, 0x8(r27)
    li r29, 0x0
    subf r0, r3, r0
    cmplw r28, r0
    opword  0x4081000C  // ble .L_80061264
    li r29, 0x302
    mr r28, r0
L_80061264:
    addi r4, r3, 0x10
    mr r3, r31
    mr r5, r28
    add r4, r27, r4
    bl fn_80003488
    lwz r0, 0xc(r27)
    lis r3, gTRKBigEndian@ha
    add r0, r0, r28
    stw r0, 0xc(r27)
    lwz r0, gTRKBigEndian@l(r3)
    cmpwi r0, 0x0
    opword  0x4082004C  // bne .L_800612DC
    cmpwi r29, 0x0
    opword  0x40820044  // bne .L_800612DC
    lbz r0, 0x7(r31)
    stb r0, 0x0(r30)
    lbz r0, 0x6(r31)
    stb r0, 0x1(r30)
    lbz r0, 0x5(r31)
    stb r0, 0x2(r30)
    lbz r0, 0x4(r31)
    stb r0, 0x3(r30)
    lbz r0, 0x3(r31)
    stb r0, 0x4(r30)
    lbz r0, 0x2(r31)
    stb r0, 0x5(r30)
    lbz r0, 0x1(r31)
    stb r0, 0x6(r30)
    lbz r0, 0x0(r31)
    stb r0, 0x7(r30)
L_800612DC:
    mr r3, r29
    lmw r27, 0x1c(r1)
    lwz r0, 0x34(r1)
    mtlr r0
    addi r1, r1, 0x30
    blr
}

ASM void fn_800612F4(void)
{
    nofralloc
    stwu r1, -0x30(r1)
    mflr r0
    lis r6, gTRKBigEndian@ha
    stw r0, 0x34(r1)
    stmw r25, 0x14(r1)
    mr r27, r3
    mr r28, r5
    mr r30, r4
    addi r31, r6, gTRKBigEndian@l
    li r29, 0x0
    li r3, 0x0
    opword  0x480000AC  // b .L_800613CC
L_80061324:
    lwz r0, 0x0(r31)
    lwz r3, 0x0(r30)
    cmpwi r0, 0x0
    stw r3, 0x8(r1)
    opword  0x4182000C  // beq .L_80061340
    addi r4, r1, 0x8
    opword  0x48000028  // b .L_80061364
L_80061340:
    lbz r6, 0xb(r1)
    addi r4, r1, 0xc
    lbz r5, 0xa(r1)
    lbz r3, 0x9(r1)
    lbz r0, 0x8(r1)
    stb r6, 0xc(r1)
    stb r5, 0xd(r1)
    stb r3, 0xe(r1)
    stb r0, 0xf(r1)
L_80061364:
    lwz r5, 0xc(r27)
    li r25, 0x4
    li r26, 0x0
    subfic r0, r5, 0x880
    cmplwi r0, 0x4
    opword  0x4080000C  // bge .L_80061384
    li r26, 0x301
    mr r25, r0
L_80061384:
    cmplwi r25, 0x1
    opword  0x40820014  // bne .L_8006139C
    lbz r3, 0x0(r4)
    addi r0, r5, 0x10
    stbx r3, r27, r0
    opword  0x48000014  // b .L_800613AC
L_8006139C:
    addi r3, r5, 0x10
    mr r5, r25
    add r3, r27, r3
    bl fn_80003488
L_800613AC:
    lwz r0, 0xc(r27)
    mr r3, r26
    addi r30, r30, 0x4
    addi r29, r29, 0x1
    add r0, r0, r25
    stw r0, 0xc(r27)
    lwz r0, 0xc(r27)
    stw r0, 0x8(r27)
L_800613CC:
    cmpwi r3, 0x0
    opword  0x4082000C  // bne .L_800613DC
    cmpw r29, r28
    opword  0x4180FF4C  // blt .L_80061324
L_800613DC:
    lmw r25, 0x14(r1)
    lwz r0, 0x34(r1)
    mtlr r0
    addi r1, r1, 0x30
    blr
}

ASM void fn_800613F0(void)
{
    nofralloc
    li r9, 0x0
    li r0, 0x0
    opword  0x48000048  // b .L_80061440
L_800613FC:
    lwz r7, 0xc(r3)
    lbz r8, 0x0(r4)
    cmplwi r7, 0x880
    opword  0x4180000C  // blt .L_80061414
    li r7, 0x301
    opword  0x48000024  // b .L_80061434
L_80061414:
    addi r6, r7, 0x1
    addi r0, r7, 0x10
    stw r6, 0xc(r3)
    li r7, 0x0
    stbx r8, r3, r0
    lwz r6, 0x8(r3)
    addi r0, r6, 0x1
    stw r0, 0x8(r3)
L_80061434:
    mr r0, r7
    addi r9, r9, 0x1
    addi r4, r4, 0x1
L_80061440:
    cmpwi r0, 0x0
    opword  0x4082000C  // bne .L_80061450
    cmpw r9, r5
    opword  0x4180FFB0  // blt .L_800613FC
L_80061450:
    mr r3, r0
    blr
}

ASM void fn_80061458(void)
{
    nofralloc
    stwu r1, -0x30(r1)
    mflr r0
    lis r4, gTRKBigEndian@ha
    stw r0, 0x34(r1)
    stw r31, 0x2c(r1)
    mr r31, r3
    stw r30, 0x28(r1)
    stw r29, 0x24(r1)
    lwz r0, gTRKBigEndian@l(r4)
    stw r5, 0x8(r1)
    cmpwi r0, 0x0
    stw r6, 0xc(r1)
    opword  0x4182000C  // beq .L_80061494
    addi r4, r1, 0x8
    opword  0x48000048  // b .L_800614D8
L_80061494:
    lbz r10, 0xf(r1)
    addi r4, r1, 0x10
    lbz r9, 0xe(r1)
    lbz r8, 0xd(r1)
    lbz r7, 0xc(r1)
    lbz r6, 0xb(r1)
    lbz r5, 0xa(r1)
    lbz r3, 0x9(r1)
    lbz r0, 0x8(r1)
    stb r10, 0x10(r1)
    stb r9, 0x11(r1)
    stb r8, 0x12(r1)
    stb r7, 0x13(r1)
    stb r6, 0x14(r1)
    stb r5, 0x15(r1)
    stb r3, 0x16(r1)
    stb r0, 0x17(r1)
L_800614D8:
    lwz r3, 0xc(r31)
    li r29, 0x8
    li r30, 0x0
    subfic r0, r3, 0x880
    cmplwi r0, 0x8
    opword  0x4080000C  // bge .L_800614F8
    li r30, 0x301
    mr r29, r0
L_800614F8:
    cmplwi r29, 0x1
    opword  0x40820014  // bne .L_80061510
    lbz r0, 0x0(r4)
    add r3, r31, r3
    stb r0, 0x10(r3)
    opword  0x48000014  // b .L_80061520
L_80061510:
    addi r3, r3, 0x10
    mr r5, r29
    add r3, r31, r3
    bl fn_80003488
L_80061520:
    lwz r0, 0xc(r31)
    mr r3, r30
    add r0, r0, r29
    stw r0, 0xc(r31)
    lwz r0, 0xc(r31)
    stw r0, 0x8(r31)
    lwz r31, 0x2c(r1)
    lwz r30, 0x28(r1)
    lwz r29, 0x24(r1)
    lwz r0, 0x34(r1)
    mtlr r0
    addi r1, r1, 0x30
    blr
}

ASM void fn_80061554(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    li r31, 0x0
    stw r30, 0x18(r1)
    mr. r30, r5
    stw r29, 0x14(r1)
    mr r29, r3
    mr r3, r4
    opword  0x4082000C  // bne .L_80061588
    li r3, 0x0
    opword  0x48000040  // b .L_800615C4
L_80061588:
    lwz r4, 0xc(r29)
    lwz r0, 0x8(r29)
    subf r0, r4, r0
    cmplw r30, r0
    opword  0x4081000C  // ble .L_800615A4
    li r31, 0x302
    mr r30, r0
L_800615A4:
    addi r4, r4, 0x10
    mr r5, r30
    add r4, r29, r4
    bl fn_80003488
    lwz r0, 0xc(r29)
    mr r3, r31
    add r0, r0, r30
    stw r0, 0xc(r29)
L_800615C4:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800615E0(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    li r31, 0x0
    stw r30, 0x18(r1)
    mr. r30, r5
    stw r29, 0x14(r1)
    mr r29, r3
    opword  0x4082000C  // bne .L_80061610
    li r3, 0x0
    opword  0x4800005C  // b .L_80061668
L_80061610:
    lwz r3, 0xc(r29)
    subfic r0, r3, 0x880
    cmplw r0, r30
    opword  0x4080000C  // bge .L_80061628
    li r31, 0x301
    mr r30, r0
L_80061628:
    cmplwi r30, 0x1
    opword  0x40820014  // bne .L_80061640
    lbz r0, 0x0(r4)
    add r3, r29, r3
    stb r0, 0x10(r3)
    opword  0x48000014  // b .L_80061650
L_80061640:
    addi r3, r3, 0x10
    mr r5, r30
    add r3, r29, r3
    bl fn_80003488
L_80061650:
    lwz r0, 0xc(r29)
    mr r3, r31
    add r0, r0, r30
    stw r0, 0xc(r29)
    lwz r0, 0xc(r29)
    stw r0, 0x8(r29)
L_80061668:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_80061684(void)
{
    nofralloc
    cmplwi r4, 0x880
    li r5, 0x0
    opword  0x4081000C  // ble .L_80061698
    li r5, 0x301
    opword  0x48000018  // b .L_800616AC
L_80061698:
    stw r4, 0xc(r3)
    lwz r0, 0x8(r3)
    cmplw r4, r0
    opword  0x40810008  // ble .L_800616AC
    stw r4, 0x8(r3)
L_800616AC:
    mr r3, r5
    blr
}

ASM void fn_800616B4(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    cmpwi r4, 0x0
    stw r0, 0x14(r1)
    li r0, 0x0
    stw r0, 0x8(r3)
    stw r0, 0xc(r3)
    opword  0x40820014  // bne .L_800616E4
    addi r3, r3, 0x10
    li r4, 0x0
    li r5, 0x880
    bl fn_80003458
L_800616E4:
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800616F4(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    cmpwi r3, -0x1
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    opword  0x4182003C  // beq .L_80061744
    cmpwi r3, 0x0
    opword  0x41800034  // blt .L_80061744
    cmpwi r3, 0x3
    opword  0x4080002C  // bge .L_80061744
    mulli r4, r3, 0x890
    lis r3, lbl_804B66C8@ha
    addi r0, r3, lbl_804B66C8@l
    add r31, r0, r4
    mr r3, r31
    bl fn_80063508
    li r0, 0x0
    mr r3, r31
    stw r0, 0x4(r31)
    bl fn_80063500
L_80061744:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void TRKGetBuffer(void)
{
    nofralloc
    cmpwi r3, 0x0
    li r0, 0x0
    opword  0x4180001C  // blt .L_8006177C
    cmpwi r3, 0x3
    opword  0x40800014  // bge .L_8006177C
    mulli r4, r3, 0x890
    lis r3, lbl_804B66C8@ha
    addi r0, r3, lbl_804B66C8@l
    add r0, r0, r4
L_8006177C:
    mr r3, r0
    blr
}

ASM void fn_80061784(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    li r0, 0x0
    stmw r27, 0xc(r1)
    mr r28, r4
    mr r27, r3
    li r30, 0x300
    li r29, 0x0
    stw r0, 0x0(r4)
    opword  0x4800006C  // b .L_80061818
L_800617B0:
    cmpwi r29, 0x0
    li r31, 0x0
    opword  0x4180001C  // blt .L_800617D4
    cmpwi r29, 0x3
    opword  0x40800014  // bge .L_800617D4
    mulli r4, r29, 0x890
    lis r3, lbl_804B66C8@ha
    addi r0, r3, lbl_804B66C8@l
    add r31, r0, r4
L_800617D4:
    mr r3, r31
    bl fn_80063508
    lwz r0, 0x4(r31)
    cmpwi r0, 0x0
    opword  0x40820028  // bne .L_8006180C
    li r3, 0x0
    li r0, 0x1
    stw r3, 0x8(r31)
    li r30, 0x0
    stw r3, 0xc(r31)
    stw r0, 0x4(r31)
    stw r31, 0x0(r28)
    stw r29, 0x0(r27)
    li r29, 0x3
L_8006180C:
    mr r3, r31
    bl fn_80063500
    addi r29, r29, 0x1
L_80061818:
    cmpwi r29, 0x3
    opword  0x4180FF94  // blt .L_800617B0
    cmpwi r30, 0x300
    opword  0x40820010  // bne .L_80061834
    lis r3, lbl_8045D4A8@ha
    addi r3, r3, lbl_8045D4A8@l
    bl fn_80061B7C
L_80061834:
    mr r3, r30
    lmw r27, 0xc(r1)
    lwz r0, 0x24(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void TRKInitializeMessageBuffers(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    lis r3, lbl_804B66C8@ha
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    li r31, 0x0
    stw r30, 0x18(r1)
    addi r30, r3, lbl_804B66C8@l
    stw r29, 0x14(r1)
    li r29, 0x0
L_80061874:
    mr r3, r30
    bl fn_80063510
    mr r3, r30
    bl fn_80063508
    stw r31, 0x4(r30)
    mr r3, r30
    bl fn_80063500
    addi r29, r29, 0x1
    addi r30, r30, 0x890
    cmpwi r29, 0x3
    opword  0x4180FFD8  // blt .L_80061874
    lwz r0, 0x24(r1)
    li r3, 0x0
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800618C0(void)
{
    nofralloc
    li r3, 0x0
    blr
}

ASM void TRKInitializeSerialHandler(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    lis r3, lbl_804B8078@ha
    lis r4, lbl_8045D4C8@ha
    stw r0, 0x14(r1)
    addi r6, r3, lbl_804B8078@l
    li r0, 0x0
    li r3, -0x1
    stw r31, 0xc(r1)
    addi r31, r4, lbl_8045D4C8@l
    addi r4, r31, 0x0
    li r5, 0x40
    stw r3, 0x0(r6)
    li r3, 0x1
    stw r0, 0x8(r6)
    stw r0, 0xc(r6)
    crclr 6
    bl MWTRACE
    addi r4, r31, 0x24
    li r3, 0x1
    li r5, 0x40
    crclr 6
    bl MWTRACE
    addi r4, r31, 0x48
    li r3, 0x1
    li r5, 0x40
    crclr 6
    bl MWTRACE
    addi r4, r31, 0x6c
    li r3, 0x1
    li r5, 0x40
    crclr 6
    bl MWTRACE
    addi r4, r31, 0x8c
    li r3, 0x1
    li r5, 0x40
    crclr 6
    bl MWTRACE
    addi r4, r31, 0xac
    li r3, 0x1
    li r5, 0x40
    crclr 6
    bl MWTRACE
    lwz r0, 0x14(r1)
    li r3, 0x0
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8006198C(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    li r4, 0x2
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    mr r31, r3
    addi r3, r1, 0x8
    bl fn_80060CA4
    lis r3, lbl_804B8078@ha
    li r0, -0x1
    addi r4, r3, lbl_804B8078@l
    stw r31, 0x10(r1)
    addi r3, r1, 0x8
    stw r0, 0x0(r4)
    bl fn_80060CBC
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void TRKGetInput(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    bl fn_80061A3C
    mr r31, r3
    cmpwi r31, -0x1
    opword  0x41820030  // beq .L_80061A28
    bl TRKGetBuffer
    addi r3, r1, 0x8
    li r4, 0x2
    bl fn_80060CA4
    lis r3, lbl_804B8078@ha
    li r0, -0x1
    addi r4, r3, lbl_804B8078@l
    stw r31, 0x10(r1)
    addi r3, r1, 0x8
    stw r0, 0x0(r4)
    bl fn_80060CBC
L_80061A28:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_80061A3C(void)
{
    nofralloc
    stwu r1, -0x8e0(r1)
    mflr r0
    lis r3, lbl_8045D4C8@ha
    stw r0, 0x8e4(r1)
    stw r31, 0x8dc(r1)
    addi r31, r3, lbl_8045D4C8@l
    stw r30, 0x8d8(r1)
    bl fn_80065E40
    cmpwi r3, 0x0
    opword  0x4181000C  // bgt .L_80061A6C
    li r3, -0x1
    opword  0x480000F8  // b .L_80061B60
L_80061A6C:
    addi r3, r1, 0xc
    addi r4, r1, 0x8
    bl fn_80061784
    mr r30, r3
    addi r4, r31, 0xd0
    li r3, 0x4
    mr r5, r30
    crclr 6
    bl MWTRACE
    lwz r3, 0x8(r1)
    li r4, 0x0
    bl fn_80061684
    addi r3, r1, 0x10
    li r4, 0x40
    bl fn_80065E04
    cmpwi r3, 0x0
    opword  0x40820080  // bne .L_80061B2C
    lwz r3, 0x8(r1)
    addi r4, r1, 0x10
    li r5, 0x40
    bl fn_800613F0
    lwz r3, 0x10(r1)
    lwz r30, 0xc(r1)
    subic. r5, r3, 0x40
    opword  0x4081007C  // ble .L_80061B48
    addi r4, r31, 0xf4
    li r3, 0x1
    crclr 6
    bl MWTRACE
    lwz r4, 0x10(r1)
    addi r3, r1, 0x50
    subi r4, r4, 0x40
    bl fn_80065E04
    cmpwi r3, 0x0
    opword  0x40820018  // bne .L_80061B0C
    lwz r3, 0x8(r1)
    addi r4, r1, 0x50
    lwz r5, 0x10(r1)
    bl fn_800613F0
    opword  0x48000040  // b .L_80061B48
L_80061B0C:
    addi r4, r31, 0x110
    li r3, 0x8
    crclr 6
    bl MWTRACE
    mr r3, r30
    bl fn_800616F4
    li r30, -0x1
    opword  0x48000020  // b .L_80061B48
L_80061B2C:
    addi r4, r31, 0x144
    li r3, 0x8
    crclr 6
    bl MWTRACE
    mr r3, r30
    bl fn_800616F4
    li r30, -0x1
L_80061B48:
    mr r5, r30
    addi r4, r31, 0x16c
    li r3, 0x1
    crclr 6
    bl MWTRACE
    mr r3, r30
L_80061B60:
    lwz r0, 0x8e4(r1)
    lwz r31, 0x8dc(r1)
    lwz r30, 0x8d8(r1)
    mtlr r0
    addi r1, r1, 0x8e0
    blr
}

ASM void usr_put_initialize(void)
{
    nofralloc
    blr
}

ASM void fn_80061B7C(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    li r31, 0x0
    stw r30, 0x18(r1)
    stw r29, 0x14(r1)
    mr r29, r3
    li r3, 0x0
    opword  0x48000030  // b .L_80061BD0
L_80061BA4:
    bl fn_80062D34
    stb r30, 0x8(r1)
    mr r30, r3
    li r3, 0x0
    stb r31, 0x9(r1)
    bl fn_80062D28
    addi r3, r1, 0x8
    bl OSReport
    mr r3, r30
    bl fn_80062D28
    li r3, 0x0
L_80061BD0:
    cmpwi r3, 0x0
    opword  0x40820014  // bne .L_80061BE8
    lbz r0, 0x0(r29)
    addi r29, r29, 0x1
    extsb. r30, r0
    opword  0x4082FFC0  // bne .L_80061BA4
L_80061BE8:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void TRKDispatchMessage(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    li r4, 0x0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    li r31, 0x500
    stw r30, 0x8(r1)
    mr r30, r3
    bl fn_80061684
    lis r3, lbl_8045D658@ha
    lbz r5, 0x14(r30)
    addi r4, r3, lbl_8045D658@l
    li r3, 0x1
    crclr 6
    bl MWTRACE
    lbz r0, 0x14(r30)
    cmplwi r0, 0x1a
    opword  0x418100F8  // bgt .L_80061D40
    lis r3, jumptable_80497948@ha
    slwi r0, r0, 2
    addi r3, r3, jumptable_80497948@l
    lwzx r0, r3, r0
    mtctr r0
    bctr
    mr r3, r30
    bl fn_80062CC4
    mr r31, r3
    opword  0x480000D0  // b .L_80061D40
    mr r3, r30
    bl fn_80062C4C
    mr r31, r3
    opword  0x480000C0  // b .L_80061D40
    mr r3, r30
    bl fn_80062BF4
    mr r31, r3
    opword  0x480000B0  // b .L_80061D40
    mr r3, r30
    bl fn_80062B9C
    mr r31, r3
    opword  0x480000A0  // b .L_80061D40
    mr r3, r30
    bl fn_80062B94
    mr r31, r3
    opword  0x48000090  // b .L_80061D40
    mr r3, r30
    bl fn_80062B8C
    mr r31, r3
    opword  0x48000080  // b .L_80061D40
    mr r3, r30
    bl fn_80062948
    mr r31, r3
    opword  0x48000070  // b .L_80061D40
    mr r3, r30
    bl fn_8006270C
    mr r31, r3
    opword  0x48000060  // b .L_80061D40
    mr r3, r30
    bl fn_8006242C
    mr r31, r3
    opword  0x48000050  // b .L_80061D40
    mr r3, r30
    bl fn_8006219C
    mr r31, r3
    opword  0x48000040  // b .L_80061D40
    mr r3, r30
    bl fn_800620EC
    mr r31, r3
    opword  0x48000030  // b .L_80061D40
    mr r3, r30
    bl fn_80061ECC
    mr r31, r3
    opword  0x48000020  // b .L_80061D40
    mr r3, r30
    bl fn_80061E24
    mr r31, r3
    opword  0x48000010  // b .L_80061D40
    mr r3, r30
    bl fn_80061D7C
    mr r31, r3
L_80061D40:
    lis r3, lbl_8045D674@ha
    mr r5, r31
    addi r4, r3, lbl_8045D674@l
    li r3, 0x1
    crclr 6
    bl MWTRACE
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void TRKInitializeDispatcher(void)
{
    nofralloc
    li r3, 0x0
    blr
}

ASM void fn_80061D7C(void)
{
    nofralloc
    stwu r1, -0x50(r1)
    mflr r0
    lis r4, lbl_8045D698@ha
    stw r0, 0x54(r1)
    stw r31, 0x4c(r1)
    addi r31, r4, lbl_8045D698@l
    stw r30, 0x48(r1)
    lbz r0, 0x18(r3)
    lbz r30, 0x1c(r3)
    cmplwi r0, 0x1
    opword  0x40820030  // bne .L_80061DD4
    addi r3, r31, 0x0
    bl fn_80061B7C
    cmplwi r30, 0x0
    opword  0x41820010  // beq .L_80061DC4
    addi r3, r31, 0x20
    bl fn_80061B7C
    opword  0x4800000C  // b .L_80061DCC
L_80061DC4:
    addi r3, r31, 0x28
    bl fn_80061B7C
L_80061DCC:
    mr r3, r30
    bl fn_800661F0
L_80061DD4:
    addi r3, r1, 0x8
    li r4, 0x0
    li r5, 0x40
    bl memset
    li r3, 0x80
    li r5, 0x40
    li r0, 0x0
    stb r3, 0xc(r1)
    addi r3, r1, 0x8
    li r4, 0x40
    stw r5, 0x8(r1)
    stb r0, 0x10(r1)
    bl fn_80065DC8
    lwz r0, 0x54(r1)
    li r3, 0x0
    lwz r31, 0x4c(r1)
    lwz r30, 0x48(r1)
    mtlr r0
    addi r1, r1, 0x50
    blr
}

ASM void fn_80061E24(void)
{
    nofralloc
    stwu r1, -0x50(r1)
    mflr r0
    stw r0, 0x54(r1)
    stw r31, 0x4c(r1)
    bl fn_80063B50
    cmpwi r3, 0x704
    opword  0x4182002C  // beq .L_80061E68
    opword  0x40800010  // bge .L_80061E50
    cmpwi r3, 0x0
    opword  0x41820018  // beq .L_80061E60
    opword  0x48000034  // b .L_80061E80
L_80061E50:
    cmpwi r3, 0x706
    opword  0x41820024  // beq .L_80061E78
    opword  0x40800028  // bge .L_80061E80
    opword  0x48000014  // b .L_80061E70
L_80061E60:
    li r31, 0x0
    opword  0x48000020  // b .L_80061E84
L_80061E68:
    li r31, 0x21
    opword  0x48000018  // b .L_80061E84
L_80061E70:
    li r31, 0x22
    opword  0x48000010  // b .L_80061E84
L_80061E78:
    li r31, 0x20
    opword  0x48000008  // b .L_80061E84
L_80061E80:
    li r31, 0x1
L_80061E84:
    addi r3, r1, 0x8
    li r4, 0x0
    li r5, 0x40
    bl memset
    li r3, 0x80
    li r0, 0x40
    stb r3, 0xc(r1)
    addi r3, r1, 0x8
    li r4, 0x40
    stw r0, 0x8(r1)
    stb r31, 0x10(r1)
    bl fn_80065DC8
    lwz r0, 0x54(r1)
    li r3, 0x0
    lwz r31, 0x4c(r1)
    mtlr r0
    addi r1, r1, 0x50
    blr
}

ASM void fn_80061ECC(void)
{
    nofralloc
    stwu r1, -0x160(r1)
    mflr r0
    li r4, 0x0
    stw r0, 0x164(r1)
    stmw r27, 0x14c(r1)
    mr r27, r3
    bl fn_80061684
    lbz r31, 0x18(r27)
    lwz r29, 0x20(r27)
    cmpwi r31, 0x10
    lwz r28, 0x24(r27)
    opword  0x4182002C  // beq .L_80061F24
    opword  0x4080001C  // bge .L_80061F18
    cmpwi r31, 0x1
    opword  0x41820068  // beq .L_80061F6C
    opword  0x408000B4  // bge .L_80061FBC
    cmpwi r31, 0x0
    opword  0x40800014  // bge .L_80061F24
    opword  0x480000A8  // b .L_80061FBC
L_80061F18:
    cmpwi r31, 0x12
    opword  0x408000A0  // bge .L_80061FBC
    opword  0x4800004C  // b .L_80061F6C
L_80061F24:
    lbz r30, 0x1c(r27)
    cmplwi r30, 0x1
    opword  0x408000CC  // bge .L_80061FF8
    addi r3, r1, 0x108
    li r4, 0x0
    li r5, 0x40
    bl memset
    li r3, 0x80
    li r5, 0x40
    li r0, 0x11
    stb r3, 0x10c(r1)
    addi r3, r1, 0x108
    li r4, 0x40
    stw r5, 0x108(r1)
    stb r0, 0x110(r1)
    bl fn_80065DC8
    li r3, 0x0
    opword  0x48000170  // b .L_800620D8
L_80061F6C:
    bl fn_80063D88
    cmplw r3, r29
    opword  0x4180000C  // blt .L_80061F80
    cmplw r3, r28
    opword  0x4081007C  // ble .L_80061FF8
L_80061F80:
    addi r3, r1, 0xc8
    li r4, 0x0
    li r5, 0x40
    bl memset
    li r3, 0x80
    li r5, 0x40
    li r0, 0x11
    stb r3, 0xcc(r1)
    addi r3, r1, 0xc8
    li r4, 0x40
    stw r5, 0xc8(r1)
    stb r0, 0xd0(r1)
    bl fn_80065DC8
    li r3, 0x0
    opword  0x48000120  // b .L_800620D8
L_80061FBC:
    addi r3, r1, 0x88
    li r4, 0x0
    li r5, 0x40
    bl memset
    li r3, 0x80
    li r5, 0x40
    li r0, 0x12
    stb r3, 0x8c(r1)
    addi r3, r1, 0x88
    li r4, 0x40
    stw r5, 0x88(r1)
    stb r0, 0x90(r1)
    bl fn_80065DC8
    li r3, 0x0
    opword  0x480000E4  // b .L_800620D8
L_80061FF8:
    bl TRKTargetStopped
    cmpwi r3, 0x0
    opword  0x40820040  // bne .L_80062040
    addi r3, r1, 0x48
    li r4, 0x0
    li r5, 0x40
    bl memset
    li r3, 0x80
    li r5, 0x40
    li r0, 0x16
    stb r3, 0x4c(r1)
    addi r3, r1, 0x48
    li r4, 0x40
    stw r5, 0x48(r1)
    stb r0, 0x50(r1)
    bl fn_80065DC8
    li r3, 0x0
    opword  0x4800009C  // b .L_800620D8
L_80062040:
    addi r3, r1, 0x8
    li r4, 0x0
    li r5, 0x40
    bl memset
    li r3, 0x80
    li r5, 0x40
    li r0, 0x0
    stb r3, 0xc(r1)
    addi r3, r1, 0x8
    li r4, 0x40
    stw r5, 0x8(r1)
    stb r0, 0x10(r1)
    bl fn_80065DC8
    cmpwi r31, 0x10
    li r3, 0x0
    opword  0x4182002C  // beq .L_800620A8
    opword  0x4080001C  // bge .L_8006209C
    cmpwi r31, 0x1
    opword  0x41820038  // beq .L_800620C0
    opword  0x4080004C  // bge .L_800620D8
    cmpwi r31, 0x0
    opword  0x40800014  // bge .L_800620A8
    opword  0x48000040  // b .L_800620D8
L_8006209C:
    cmpwi r31, 0x12
    opword  0x40800038  // bge .L_800620D8
    opword  0x4800001C  // b .L_800620C0
L_800620A8:
    subfic r0, r31, 0x10
    mr r3, r30
    cntlzw r0, r0
    srwi r4, r0, 5
    bl fn_80063E50
    opword  0x4800001C  // b .L_800620D8
L_800620C0:
    subfic r0, r31, 0x11
    mr r3, r29
    cntlzw r0, r0
    mr r4, r28
    srwi r5, r0, 5
    bl fn_80063D98
L_800620D8:
    lmw r27, 0x14c(r1)
    lwz r0, 0x164(r1)
    mtlr r0
    addi r1, r1, 0x160
    blr
}

ASM void fn_800620EC(void)
{
    nofralloc
    stwu r1, -0x90(r1)
    mflr r0
    lis r4, lbl_8045D6CC@ha
    li r3, 0x1
    stw r0, 0x94(r1)
    addi r4, r4, lbl_8045D6CC@l
    crclr 6
    bl MWTRACE
    bl TRKTargetStopped
    cmpwi r3, 0x0
    opword  0x40820040  // bne .L_80062154
    addi r3, r1, 0x48
    li r4, 0x0
    li r5, 0x40
    bl memset
    li r3, 0x80
    li r5, 0x40
    li r0, 0x16
    stb r3, 0x4c(r1)
    addi r3, r1, 0x48
    li r4, 0x40
    stw r5, 0x48(r1)
    stb r0, 0x50(r1)
    bl fn_80065DC8
    li r3, 0x0
    opword  0x4800003C  // b .L_8006218C
L_80062154:
    addi r3, r1, 0x8
    li r4, 0x0
    li r5, 0x40
    bl memset
    li r3, 0x80
    li r5, 0x40
    li r0, 0x0
    stb r3, 0xc(r1)
    addi r3, r1, 0x8
    li r4, 0x40
    stw r5, 0x8(r1)
    stb r0, 0x10(r1)
    bl fn_80065DC8
    bl TRKTargetContinue
L_8006218C:
    lwz r0, 0x94(r1)
    mtlr r0
    addi r1, r1, 0x90
    blr
}

ASM void fn_8006219C(void)
{
    nofralloc
    stwu r1, -0xe0(r1)
    mflr r0
    li r4, 0x0
    stw r0, 0xe4(r1)
    stw r31, 0xdc(r1)
    stw r30, 0xd8(r1)
    stw r29, 0xd4(r1)
    stw r28, 0xd0(r1)
    mr r28, r3
    lbz r31, 0x18(r3)
    lhz r30, 0x1c(r3)
    lhz r29, 0x20(r3)
    bl fn_80061684
    cmplw r30, r29
    opword  0x40810040  // ble .L_80062214
    addi r3, r1, 0x4c
    li r4, 0x0
    li r5, 0x40
    bl memset
    li r3, 0x80
    li r5, 0x40
    li r0, 0x14
    stb r3, 0x50(r1)
    addi r3, r1, 0x4c
    li r4, 0x40
    stw r5, 0x4c(r1)
    stb r0, 0x54(r1)
    bl fn_80065DC8
    li r3, 0x0
    opword  0x480001FC  // b .L_8006240C
L_80062214:
    mr r3, r28
    li r4, 0x40
    bl fn_80061684
    cmpwi r31, 0x2
    opword  0x41820064  // beq .L_80062288
    opword  0x40800014  // bge .L_8006223C
    cmpwi r31, 0x0
    opword  0x41820018  // beq .L_80062248
    opword  0x40800034  // bge .L_80062268
    opword  0x48000090  // b .L_800622C8
L_8006223C:
    cmpwi r31, 0x4
    opword  0x40800088  // bge .L_800622C8
    opword  0x48000064  // b .L_800622A8
L_80062248:
    mr r3, r30
    mr r4, r29
    mr r5, r28
    addi r6, r1, 0x8
    li r7, 0x0
    bl fn_80064CFC
    mr r31, r3
    opword  0x48000068  // b .L_800622CC
L_80062268:
    mr r3, r30
    mr r4, r29
    mr r5, r28
    addi r6, r1, 0x8
    li r7, 0x0
    bl fn_800647F0
    mr r31, r3
    opword  0x48000048  // b .L_800622CC
L_80062288:
    mr r3, r30
    mr r4, r29
    mr r5, r28
    addi r6, r1, 0x8
    li r7, 0x0
    bl fn_80064680
    mr r31, r3
    opword  0x48000028  // b .L_800622CC
L_800622A8:
    mr r3, r30
    mr r4, r29
    mr r5, r28
    addi r6, r1, 0x8
    li r7, 0x0
    bl fn_80064248
    mr r31, r3
    opword  0x48000008  // b .L_800622CC
L_800622C8:
    li r31, 0x703
L_800622CC:
    mr r3, r28
    li r4, 0x0
    bl fn_800616B4
    cmpwi r31, 0x0
    opword  0x4082003C  // bne .L_80062318
    addi r3, r1, 0x8c
    li r4, 0x0
    li r5, 0x40
    bl memset
    li r3, 0x40
    li r0, 0x80
    stw r3, 0x8c(r1)
    mr r3, r28
    addi r4, r1, 0x8c
    li r5, 0x40
    stb r0, 0x90(r1)
    stb r31, 0x94(r1)
    bl fn_800615E0
    mr r31, r3
L_80062318:
    cmpwi r31, 0x0
    opword  0x418200B4  // beq .L_800623D0
    cmpwi r31, 0x703
    opword  0x41820038  // beq .L_8006235C
    opword  0x4080001C  // bge .L_80062344
    cmpwi r31, 0x701
    opword  0x41820034  // beq .L_80062364
    opword  0x40800040  // bge .L_80062374
    cmpwi r31, 0x302
    opword  0x41820030  // beq .L_8006236C
    opword  0x48000054  // b .L_80062394
L_80062344:
    cmpwi r31, 0x706
    opword  0x41820044  // beq .L_8006238C
    opword  0x40800048  // bge .L_80062394
    cmpwi r31, 0x705
    opword  0x40800030  // bge .L_80062384
    opword  0x48000024  // b .L_8006237C
L_8006235C:
    li r31, 0x12
    opword  0x48000038  // b .L_80062398
L_80062364:
    li r31, 0x14
    opword  0x48000030  // b .L_80062398
L_8006236C:
    li r31, 0x2
    opword  0x48000028  // b .L_80062398
L_80062374:
    li r31, 0x15
    opword  0x48000020  // b .L_80062398
L_8006237C:
    li r31, 0x21
    opword  0x48000018  // b .L_80062398
L_80062384:
    li r31, 0x22
    opword  0x48000010  // b .L_80062398
L_8006238C:
    li r31, 0x20
    opword  0x48000008  // b .L_80062398
L_80062394:
    li r31, 0x3
L_80062398:
    addi r3, r1, 0xc
    li r4, 0x0
    li r5, 0x40
    bl memset
    li r3, 0x80
    li r0, 0x40
    stb r3, 0x10(r1)
    addi r3, r1, 0xc
    li r4, 0x40
    stw r0, 0xc(r1)
    stb r31, 0x14(r1)
    bl fn_80065DC8
    li r3, 0x0
    opword  0x48000040  // b .L_8006240C
L_800623D0:
    lis r4, lbl_8045D6F8@ha
    li r3, 0x1
    addi r4, r4, lbl_8045D6F8@l
    crclr 6
    bl MWTRACE
    mr r3, r28
    bl fn_80061040
    mr r31, r3
    lis r4, lbl_8045D718@ha
    li r3, 0x1
    addi r4, r4, lbl_8045D718@l
    mr r5, r31
    crclr 6
    bl MWTRACE
    mr r3, r31
L_8006240C:
    lwz r0, 0xe4(r1)
    lwz r31, 0xdc(r1)
    lwz r30, 0xd8(r1)
    lwz r29, 0xd4(r1)
    lwz r28, 0xd0(r1)
    mtlr r0
    addi r1, r1, 0xe0
    blr
}

ASM void fn_8006242C(void)
{
    nofralloc
    stwu r1, -0xe0(r1)
    mflr r0
    lis r5, lbl_8045D698@ha
    stw r0, 0xe4(r1)
    stw r31, 0xdc(r1)
    addi r31, r5, lbl_8045D698@l
    stw r30, 0xd8(r1)
    stw r29, 0xd4(r1)
    mr r29, r3
    lhz r4, 0x1c(r3)
    lhz r0, 0x20(r3)
    cmplw r4, r0
    opword  0x40810040  // ble .L_8006249C
    addi r3, r1, 0x4c
    li r4, 0x0
    li r5, 0x40
    bl memset
    li r3, 0x80
    li r5, 0x40
    li r0, 0x14
    stb r3, 0x50(r1)
    addi r3, r1, 0x4c
    li r4, 0x40
    stw r5, 0x4c(r1)
    stb r0, 0x54(r1)
    bl fn_80065DC8
    li r3, 0x0
    opword  0x48000258  // b .L_800626F0
L_8006249C:
    li r4, 0x80
    li r0, 0x468
    stb r4, 0x90(r1)
    li r4, 0x0
    stw r0, 0x8c(r1)
    bl fn_800616B4
    lwz r5, 0x8(r29)
    addi r4, r31, 0x98
    li r3, 0x4
    crclr 6
    bl MWTRACE
    mr r3, r29
    addi r4, r1, 0x8c
    li r5, 0x40
    bl fn_800613F0
    lwz r5, 0x8(r29)
    addi r4, r31, 0x98
    li r3, 0x4
    crclr 6
    bl MWTRACE
    mr r5, r29
    addi r6, r1, 0x8
    li r3, 0x0
    li r4, 0x24
    li r7, 0x1
    bl fn_80064CFC
    mr r30, r3
    addi r4, r31, 0xc0
    li r3, 0x4
    mr r5, r30
    crclr 6
    bl MWTRACE
    lwz r5, 0x8(r29)
    addi r4, r31, 0x98
    li r3, 0x4
    crclr 6
    bl MWTRACE
    cmpwi r30, 0x0
    opword  0x40820020  // bne .L_80062554
    mr r5, r29
    addi r6, r1, 0x8
    li r3, 0x0
    li r4, 0x21
    li r7, 0x1
    bl fn_800647F0
    mr r30, r3
L_80062554:
    mr r5, r30
    addi r4, r31, 0xf8
    li r3, 0x4
    crclr 6
    bl MWTRACE
    lwz r5, 0x8(r29)
    addi r4, r31, 0x98
    li r3, 0x4
    crclr 6
    bl MWTRACE
    cmpwi r30, 0x0
    opword  0x40820020  // bne .L_800625A0
    mr r5, r29
    addi r6, r1, 0x8
    li r3, 0x0
    li r4, 0x60
    li r7, 0x1
    bl fn_80064680
    mr r30, r3
L_800625A0:
    mr r5, r30
    addi r4, r31, 0x120
    li r3, 0x4
    crclr 6
    bl MWTRACE
    lwz r5, 0x8(r29)
    addi r4, r31, 0x98
    li r3, 0x4
    crclr 6
    bl MWTRACE
    cmpwi r30, 0x0
    opword  0x40820020  // bne .L_800625EC
    mr r5, r29
    addi r6, r1, 0x8
    li r3, 0x0
    li r4, 0x1f
    li r7, 0x1
    bl fn_80064248
    mr r30, r3
L_800625EC:
    mr r5, r30
    addi r4, r31, 0x150
    li r3, 0x4
    crclr 6
    bl MWTRACE
    lwz r5, 0x8(r29)
    addi r4, r31, 0x98
    li r3, 0x4
    crclr 6
    bl MWTRACE
    cmpwi r30, 0x0
    opword  0x418200A4  // beq .L_800626BC
    cmpwi r30, 0x704
    opword  0x41820048  // beq .L_80062668
    opword  0x4080001C  // bge .L_80062640
    cmpwi r30, 0x702
    opword  0x41820034  // beq .L_80062660
    opword  0x40800020  // bge .L_80062650
    cmpwi r30, 0x701
    opword  0x40800020  // bge .L_80062658
    opword  0x48000044  // b .L_80062680
L_80062640:
    cmpwi r30, 0x706
    opword  0x41820034  // beq .L_80062678
    opword  0x40800038  // bge .L_80062680
    opword  0x48000024  // b .L_80062670
L_80062650:
    li r30, 0x12
    opword  0x48000030  // b .L_80062684
L_80062658:
    li r30, 0x14
    opword  0x48000028  // b .L_80062684
L_80062660:
    li r30, 0x15
    opword  0x48000020  // b .L_80062684
L_80062668:
    li r30, 0x21
    opword  0x48000018  // b .L_80062684
L_80062670:
    li r30, 0x22
    opword  0x48000010  // b .L_80062684
L_80062678:
    li r30, 0x20
    opword  0x48000008  // b .L_80062684
L_80062680:
    li r30, 0x3
L_80062684:
    addi r3, r1, 0xc
    li r4, 0x0
    li r5, 0x40
    bl memset
    li r3, 0x80
    li r0, 0x40
    stb r3, 0x10(r1)
    addi r3, r1, 0xc
    li r4, 0x40
    stw r0, 0xc(r1)
    stb r30, 0x14(r1)
    bl fn_80065DC8
    li r3, 0x0
    opword  0x48000038  // b .L_800626F0
L_800626BC:
    addi r4, r31, 0x60
    li r3, 0x1
    crclr 6
    bl MWTRACE
    mr r3, r29
    bl fn_80061040
    addi r4, r31, 0x80
    mr r31, r3
    li r3, 0x1
    mr r5, r31
    crclr 6
    bl MWTRACE
    mr r3, r31
L_800626F0:
    lwz r0, 0xe4(r1)
    lwz r31, 0xdc(r1)
    lwz r30, 0xd8(r1)
    lwz r29, 0xd4(r1)
    mtlr r0
    addi r1, r1, 0xe0
    blr
}

ASM void fn_8006270C(void)
{
    nofralloc
    clrlwi r11, r1, 27
    mr r12, r1
    subfic r11, r11, -0x940
    stwux r1, r1, r11
    mflr r0
    stw r0, 0x4(r12)
    stmw r27, -0x14(r12)
    mr r27, r3
    lis r3, lbl_8045D698@ha
    addi r31, r3, lbl_8045D698@l
    addi r4, r31, 0x180
    li r3, 0x1
    lwz r28, 0x20(r27)
    lhz r29, 0x1c(r27)
    lbz r30, 0x18(r27)
    mr r6, r28
    lbz r5, 0x14(r27)
    mr r7, r29
    mr r8, r30
    crclr 6
    bl MWTRACE
    rlwinm. r0, r30, 0, 30, 30
    opword  0x41820040  // beq .L_800627A4
    addi r3, r1, 0x64
    li r4, 0x0
    li r5, 0x40
    bl memset
    li r3, 0x80
    li r5, 0x40
    li r0, 0x12
    stb r3, 0x68(r1)
    addi r3, r1, 0x64
    li r4, 0x40
    stw r5, 0x64(r1)
    stb r0, 0x6c(r1)
    bl fn_80065DC8
    li r3, 0x0
    opword  0x48000190  // b .L_80062930
L_800627A4:
    stw r29, 0x20(r1)
    mr r3, r27
    li r4, 0x40
    bl fn_80061684
    rlwinm. r0, r30, 0, 25, 25
    opword  0x41820038  // beq .L_800627F0
    clrlwi r0, r28, 27
    addi r4, r1, 0x100
    lwz r5, 0x20(r1)
    mr r3, r27
    add r4, r4, r0
    bl fn_80061554
    mr r4, r28
    addi r3, r1, 0x100
    addi r5, r1, 0x20
    li r6, 0x0
    bl fn_80063A7C
    mr r30, r3
    opword  0x48000034  // b .L_80062820
L_800627F0:
    lwz r5, 0x20(r1)
    mr r3, r27
    addi r4, r1, 0x100
    bl fn_80061554
    extrwi r0, r30, 1, 28
    mr r4, r28
    addi r3, r1, 0x100
    addi r5, r1, 0x20
    xori r6, r0, 0x1
    li r7, 0x0
    bl fn_80064E3C
    mr r30, r3
L_80062820:
    mr r3, r27
    li r4, 0x0
    bl fn_800616B4
    cmpwi r30, 0x0
    opword  0x4082003C  // bne .L_8006286C
    addi r3, r1, 0xa4
    li r4, 0x0
    li r5, 0x40
    bl memset
    li r3, 0x40
    li r0, 0x80
    stw r3, 0xa4(r1)
    mr r3, r27
    addi r4, r1, 0xa4
    li r5, 0x40
    stb r0, 0xa8(r1)
    stb r30, 0xac(r1)
    bl fn_800615E0
    mr r30, r3
L_8006286C:
    cmpwi r30, 0x0
    opword  0x4182008C  // beq .L_800628FC
    subi r0, r30, 0x700
    cmplwi r0, 0x6
    opword  0x41810044  // bgt .L_800628C0
    lis r3, jumptable_804979B8@ha
    slwi r0, r0, 2
    addi r3, r3, jumptable_804979B8@l
    lwzx r0, r3, r0
    mtctr r0
    bctr
    li r30, 0x15
    opword  0x48000028  // b .L_800628C4
    li r30, 0x13
    opword  0x48000020  // b .L_800628C4
    li r30, 0x21
    opword  0x48000018  // b .L_800628C4
    li r30, 0x22
    opword  0x48000010  // b .L_800628C4
    li r30, 0x20
    opword  0x48000008  // b .L_800628C4
L_800628C0:
    li r30, 0x3
L_800628C4:
    addi r3, r1, 0x24
    li r4, 0x0
    li r5, 0x40
    bl memset
    li r3, 0x80
    li r0, 0x40
    stb r3, 0x28(r1)
    addi r3, r1, 0x24
    li r4, 0x40
    stw r0, 0x24(r1)
    stb r30, 0x2c(r1)
    bl fn_80065DC8
    li r3, 0x0
    opword  0x48000038  // b .L_80062930
L_800628FC:
    addi r4, r31, 0x60
    li r3, 0x1
    crclr 6
    bl MWTRACE
    mr r3, r27
    bl fn_80061040
    addi r4, r31, 0x80
    mr r31, r3
    li r3, 0x1
    mr r5, r31
    crclr 6
    bl MWTRACE
    mr r3, r31
L_80062930:
    lwz r10, 0x0(r1)
    lmw r27, -0x14(r10)
    lwz r0, 0x4(r10)
    mtlr r0
    mr r1, r10
    blr
}

ASM void fn_80062948(void)
{
    nofralloc
    clrlwi r11, r1, 27
    mr r12, r1
    subfic r11, r11, -0x940
    stwux r1, r1, r11
    mflr r0
    stw r0, 0x4(r12)
    stmw r26, -0x18(r12)
    mr r31, r3
    lis r3, lbl_8045D698@ha
    addi r29, r3, lbl_8045D698@l
    addi r4, r29, 0x1b0
    li r3, 0x1
    lwz r26, 0x20(r31)
    lhz r27, 0x1c(r31)
    lbz r30, 0x18(r31)
    mr r6, r26
    lbz r5, 0x14(r31)
    mr r7, r27
    mr r8, r30
    crclr 6
    bl MWTRACE
    rlwinm. r0, r30, 0, 30, 30
    opword  0x41820040  // beq .L_800629E0
    addi r3, r1, 0x64
    li r4, 0x0
    li r5, 0x40
    bl memset
    li r3, 0x80
    li r5, 0x40
    li r0, 0x12
    stb r3, 0x68(r1)
    addi r3, r1, 0x64
    li r4, 0x40
    stw r5, 0x64(r1)
    stb r0, 0x6c(r1)
    bl fn_80065DC8
    li r3, 0x0
    opword  0x48000198  // b .L_80062B74
L_800629E0:
    rlwinm. r28, r30, 0, 25, 25
    stw r27, 0x20(r1)
    opword  0x41820020  // beq .L_80062A08
    mr r4, r26
    addi r3, r1, 0x100
    addi r5, r1, 0x20
    li r6, 0x1
    bl fn_80063A7C
    mr r30, r3
    opword  0x48000024  // b .L_80062A28
L_80062A08:
    extrwi r0, r30, 1, 28
    mr r4, r26
    addi r3, r1, 0x100
    addi r5, r1, 0x20
    xori r6, r0, 0x1
    li r7, 0x1
    bl fn_80064E3C
    mr r30, r3
L_80062A28:
    mr r3, r31
    li r4, 0x0
    bl fn_800616B4
    cmpwi r30, 0x0
    opword  0x40820078  // bne .L_80062AB0
    addi r3, r1, 0xa4
    li r4, 0x0
    li r5, 0x40
    bl memset
    lwz r4, 0x20(r1)
    li r0, 0x80
    stb r30, 0xac(r1)
    mr r3, r31
    addi r4, r4, 0x40
    li r5, 0x40
    stw r4, 0xa4(r1)
    addi r4, r1, 0xa4
    stb r0, 0xa8(r1)
    bl fn_800615E0
    cmpwi r28, 0x0
    opword  0x41820024  // beq .L_80062A9C
    clrlwi r0, r26, 27
    addi r4, r1, 0x100
    lwz r5, 0x20(r1)
    mr r3, r31
    add r4, r4, r0
    bl fn_800615E0
    mr r30, r3
    opword  0x48000018  // b .L_80062AB0
L_80062A9C:
    lwz r5, 0x20(r1)
    mr r3, r31
    addi r4, r1, 0x100
    bl fn_800615E0
    mr r30, r3
L_80062AB0:
    cmpwi r30, 0x0
    opword  0x4182008C  // beq .L_80062B40
    subi r0, r30, 0x700
    cmplwi r0, 0x6
    opword  0x41810044  // bgt .L_80062B04
    lis r3, jumptable_804979D4@ha
    slwi r0, r0, 2
    addi r3, r3, jumptable_804979D4@l
    lwzx r0, r3, r0
    mtctr r0
    bctr
    li r28, 0x15
    opword  0x48000028  // b .L_80062B08
    li r28, 0x13
    opword  0x48000020  // b .L_80062B08
    li r28, 0x21
    opword  0x48000018  // b .L_80062B08
    li r28, 0x22
    opword  0x48000010  // b .L_80062B08
    li r28, 0x20
    opword  0x48000008  // b .L_80062B08
L_80062B04:
    li r28, 0x3
L_80062B08:
    addi r3, r1, 0x24
    li r4, 0x0
    li r5, 0x40
    bl memset
    li r3, 0x80
    li r0, 0x40
    stb r3, 0x28(r1)
    addi r3, r1, 0x24
    li r4, 0x40
    stw r0, 0x24(r1)
    stb r28, 0x2c(r1)
    bl fn_80065DC8
    li r3, 0x0
    opword  0x48000038  // b .L_80062B74
L_80062B40:
    addi r4, r29, 0x60
    li r3, 0x1
    crclr 6
    bl MWTRACE
    mr r3, r31
    bl fn_80061040
    addi r4, r29, 0x80
    mr r29, r3
    li r3, 0x1
    mr r5, r29
    crclr 6
    bl MWTRACE
    mr r3, r29
L_80062B74:
    lwz r10, 0x0(r1)
    lmw r26, -0x18(r10)
    lwz r0, 0x4(r10)
    mtlr r0
    mr r1, r10
    blr
}

ASM void fn_80062B8C(void)
{
    nofralloc
    li r3, 0x0
    blr
}

ASM void fn_80062B94(void)
{
    nofralloc
    li r3, 0x0
    blr
}

ASM void fn_80062B9C(void)
{
    nofralloc
    stwu r1, -0x50(r1)
    mflr r0
    li r4, 0x0
    li r5, 0x40
    stw r0, 0x54(r1)
    addi r3, r1, 0x8
    bl memset
    li r3, 0x80
    li r5, 0x40
    li r0, 0x0
    stb r3, 0xc(r1)
    addi r3, r1, 0x8
    li r4, 0x40
    stw r5, 0x8(r1)
    stb r0, 0x10(r1)
    bl fn_80065DC8
    bl fn_80065A58
    lwz r0, 0x54(r1)
    li r3, 0x0
    mtlr r0
    addi r1, r1, 0x50
    blr
}

ASM void fn_80062BF4(void)
{
    nofralloc
    stwu r1, -0x50(r1)
    mflr r0
    li r4, 0x0
    li r5, 0x40
    stw r0, 0x54(r1)
    addi r3, r1, 0x8
    bl memset
    li r3, 0x80
    li r5, 0x40
    li r0, 0x0
    stb r3, 0xc(r1)
    addi r3, r1, 0x8
    li r4, 0x40
    stw r5, 0x8(r1)
    stb r0, 0x10(r1)
    bl fn_80065DC8
    bl fn_800053E0
    lwz r0, 0x54(r1)
    li r3, 0x0
    mtlr r0
    addi r1, r1, 0x50
    blr
}

ASM void fn_80062C4C(void)
{
    nofralloc
    stwu r1, -0x60(r1)
    mflr r0
    lis r3, lbl_804B8090@ha
    li r5, 0x40
    stw r0, 0x64(r1)
    addi r4, r3, lbl_804B8090@l
    li r0, 0x0
    addi r3, r1, 0x14
    stw r0, 0x0(r4)
    li r4, 0x0
    bl memset
    li r3, 0x80
    li r5, 0x40
    li r0, 0x0
    stb r3, 0x18(r1)
    addi r3, r1, 0x14
    li r4, 0x40
    stw r5, 0x14(r1)
    stb r0, 0x1c(r1)
    bl fn_80065DC8
    addi r3, r1, 0x8
    li r4, 0x1
    bl fn_80060CA4
    addi r3, r1, 0x8
    bl fn_80060CBC
    lwz r0, 0x64(r1)
    li r3, 0x0
    mtlr r0
    addi r1, r1, 0x60
    blr
}

ASM void fn_80062CC4(void)
{
    nofralloc
    stwu r1, -0x50(r1)
    mflr r0
    lis r3, lbl_804B8090@ha
    li r5, 0x40
    stw r0, 0x54(r1)
    addi r4, r3, lbl_804B8090@l
    li r0, 0x1
    addi r3, r1, 0x8
    stw r0, 0x0(r4)
    li r4, 0x0
    bl memset
    li r3, 0x80
    li r5, 0x40
    li r0, 0x0
    stb r3, 0xc(r1)
    addi r3, r1, 0x8
    li r4, 0x40
    stw r5, 0x8(r1)
    stb r0, 0x10(r1)
    bl fn_80065DC8
    lwz r0, 0x54(r1)
    li r3, 0x0
    mtlr r0
    addi r1, r1, 0x50
    blr
}

ASM void fn_80062D28(void)
{
    nofralloc
    lis r4, lbl_804B8090@ha
    stw r3, lbl_804B8090@l(r4)
    blr
}

ASM void fn_80062D34(void)
{
    nofralloc
    lis r3, lbl_804B8090@ha
    addi r3, r3, lbl_804B8090@l
    lwz r3, 0x0(r3)
    blr
}

ASM void fn_80062D44(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    lis r6, lbl_8045D874@ha
    lis r5, lbl_8045D87C@ha
    stw r0, 0x24(r1)
    stmw r27, 0xc(r1)
    mr r27, r4
    mr r31, r3
    addi r29, r6, lbl_8045D874@l
    addi r30, r5, lbl_8045D87C@l
    li r28, 0x0
    opword  0x4800004C  // b .L_80062DBC
L_80062D74:
    lbz r5, 0x0(r31)
    mr r4, r29
    li r3, 0x8
    crclr 6
    bl MWTRACE
    slwi r0, r28, 28
    srwi r3, r28, 31
    subf r0, r3, r0
    rotlwi r0, r0, 4
    add r0, r0, r3
    cmpwi r0, 0xf
    opword  0x40820014  // bne .L_80062DB4
    mr r4, r30
    li r3, 0x8
    crclr 6
    bl MWTRACE
L_80062DB4:
    addi r28, r28, 0x1
    addi r31, r31, 0x1
L_80062DBC:
    cmpw r28, r27
    opword  0x4180FFB4  // blt .L_80062D74
    lis r4, lbl_8045D87C@ha
    li r3, 0x8
    addi r4, r4, lbl_8045D87C@l
    crclr 6
    bl MWTRACE
    lmw r27, 0xc(r1)
    lwz r0, 0x24(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_80062DEC(void)
{
    nofralloc
    stwu r1, -0x70(r1)
    mflr r0
    stw r0, 0x74(r1)
    stw r31, 0x6c(r1)
    mr r31, r5
    li r5, 0x40
    stw r30, 0x68(r1)
    mr r30, r6
    stw r29, 0x64(r1)
    mr r29, r4
    li r4, 0x0
    stw r28, 0x60(r1)
    mr r28, r3
    addi r3, r1, 0x14
    bl memset
    li r3, 0xd4
    li r0, 0x40
    stb r3, 0x18(r1)
    addi r3, r1, 0xc
    addi r4, r1, 0x8
    stw r0, 0x14(r1)
    stw r28, 0x1c(r1)
    lwz r0, 0x0(r29)
    stw r0, 0x20(r1)
    stb r31, 0x24(r1)
    bl fn_80061784
    mr. r31, r3
    opword  0x40820018  // bne .L_80062E70
    lwz r3, 0x8(r1)
    addi r4, r1, 0x14
    li r5, 0x40
    bl fn_800613F0
    mr r31, r3
L_80062E70:
    cmpwi r31, 0x0
    opword  0x4082005C  // bne .L_80062ED0
    li r3, 0x0
    li r0, -0x1
    stw r3, 0x0(r30)
    addi r4, r1, 0x10
    li r5, 0x3
    li r6, 0x3
    stw r0, 0x0(r29)
    li r7, 0x0
    lwz r3, 0x8(r1)
    bl fn_80063100
    mr. r31, r3
    opword  0x40820024  // bne .L_80062EC8
    lwz r3, 0x10(r1)
    bl TRKGetBuffer
    cmplwi r3, 0x0
    opword  0x41820014  // beq .L_80062EC8
    lwz r0, 0x20(r3)
    stw r0, 0x0(r30)
    lwz r0, 0x28(r3)
    stw r0, 0x0(r29)
L_80062EC8:
    lwz r3, 0x10(r1)
    bl fn_800616F4
L_80062ED0:
    lwz r3, 0xc(r1)
    bl fn_800616F4
    lwz r0, 0x74(r1)
    mr r3, r31
    lwz r31, 0x6c(r1)
    lwz r30, 0x68(r1)
    lwz r29, 0x64(r1)
    lwz r28, 0x60(r1)
    mtlr r0
    addi r1, r1, 0x70
    blr
}

ASM void fn_80062EFC(void)
{
    nofralloc
    stwu r1, -0x70(r1)
    mflr r0
    li r5, 0x40
    stw r0, 0x74(r1)
    stw r31, 0x6c(r1)
    mr r31, r3
    addi r3, r1, 0x14
    stw r30, 0x68(r1)
    stw r29, 0x64(r1)
    mr r29, r4
    li r4, 0x0
    bl memset
    li r3, 0xd3
    li r0, 0x40
    stb r3, 0x18(r1)
    addi r3, r1, 0xc
    addi r4, r1, 0x8
    stw r0, 0x14(r1)
    stw r31, 0x1c(r1)
    bl fn_80061784
    mr. r31, r3
    opword  0x40820018  // bne .L_80062F68
    lwz r3, 0x8(r1)
    addi r4, r1, 0x14
    li r5, 0x40
    bl fn_800613F0
    mr r31, r3
L_80062F68:
    cmpwi r31, 0x0
    opword  0x40820050  // bne .L_80062FBC
    li r0, 0x0
    addi r4, r1, 0x10
    stw r0, 0x0(r29)
    li r5, 0x3
    li r6, 0x3
    li r7, 0x0
    lwz r3, 0x8(r1)
    bl fn_80063100
    mr. r31, r3
    opword  0x40820010  // bne .L_80062FA4
    lwz r3, 0x10(r1)
    bl TRKGetBuffer
    mr r30, r3
L_80062FA4:
    cmpwi r31, 0x0
    opword  0x4082000C  // bne .L_80062FB4
    lwz r0, 0x20(r30)
    stw r0, 0x0(r29)
L_80062FB4:
    lwz r3, 0x10(r1)
    bl fn_800616F4
L_80062FBC:
    lwz r3, 0xc(r1)
    bl fn_800616F4
    lwz r0, 0x74(r1)
    mr r3, r31
    lwz r31, 0x6c(r1)
    lwz r30, 0x68(r1)
    lwz r29, 0x64(r1)
    mtlr r0
    addi r1, r1, 0x70
    blr
}

ASM void fn_80062FE4(void)
{
    nofralloc
    stwu r1, -0x70(r1)
    mflr r0
    stw r0, 0x74(r1)
    stmw r27, 0x5c(r1)
    mr r27, r3
    mr r31, r4
    mr r28, r5
    mr r29, r6
    addi r3, r1, 0x14
    li r4, 0x0
    li r5, 0x40
    bl memset
    li r3, 0x0
    li r0, 0xd2
    stw r3, 0x0(r28)
    mr r3, r27
    stb r0, 0x18(r1)
    bl strlen
    addi r0, r3, 0x41
    stb r31, 0x1c(r1)
    mr r3, r27
    stw r0, 0x14(r1)
    bl strlen
    addi r0, r3, 0x1
    addi r3, r1, 0xc
    sth r0, 0x20(r1)
    addi r4, r1, 0x8
    bl fn_80061784
    lwz r3, 0x8(r1)
    addi r4, r1, 0x14
    li r5, 0x40
    bl fn_800613F0
    mr. r31, r3
    opword  0x40820024  // bne .L_8006308C
    mr r3, r27
    bl strlen
    mr r5, r3
    lwz r3, 0x8(r1)
    mr r4, r27
    addi r5, r5, 0x1
    bl fn_800613F0
    mr r31, r3
L_8006308C:
    cmpwi r31, 0x0
    opword  0x40820050  // bne .L_800630E0
    li r0, 0x0
    addi r4, r1, 0x10
    stw r0, 0x0(r29)
    li r5, 0x7
    li r6, 0x3
    li r7, 0x0
    lwz r3, 0x8(r1)
    bl fn_80063100
    mr. r31, r3
    opword  0x40820010  // bne .L_800630C8
    lwz r3, 0x10(r1)
    bl TRKGetBuffer
    mr r30, r3
L_800630C8:
    lwz r0, 0x20(r30)
    stw r0, 0x0(r29)
    lwz r0, 0x18(r30)
    stw r0, 0x0(r28)
    lwz r3, 0x10(r1)
    bl fn_800616F4
L_800630E0:
    lwz r3, 0xc(r1)
    bl fn_800616F4
    mr r3, r31
    lmw r27, 0x5c(r1)
    lwz r0, 0x74(r1)
    mtlr r0
    addi r1, r1, 0x70
    blr
}

ASM void fn_80063100(void)
{
    nofralloc
    stwu r1, -0x40(r1)
    mflr r0
    stw r0, 0x44(r1)
    li r0, -0x1
    stmw r21, 0x14(r1)
    mr r22, r4
    lis r4, lbl_8045D880@ha
    mr r21, r3
    mr r23, r7
    addi r27, r6, 0x1
    addi r31, r4, lbl_8045D880@l
    li r30, 0x0
    li r24, 0x1
    stw r0, 0x0(r22)
    opword  0x48000164  // b .L_8006329C
L_8006313C:
    addi r4, r31, 0x0
    li r3, 0x1
    crclr 6
    bl MWTRACE
    mr r3, r21
    bl fn_80061040
    mr. r30, r3
    opword  0x40820140  // bne .L_80063298
    cmpwi r23, 0x0
    opword  0x41820008  // beq .L_80063168
    li r28, 0x0
L_80063168:
    bl fn_80061A3C
    stw r3, 0x0(r22)
    lwz r3, 0x0(r22)
    cmpwi r3, -0x1
    opword  0x40820020  // bne .L_80063198
    cmpwi r23, 0x0
    opword  0x4182FFE8  // beq .L_80063168
    lis r4, 0x4c5
    addi r28, r28, 0x1
    subi r0, r4, 0x4c14
    cmplw r28, r0
    opword  0x4180FFD4  // blt .L_80063168
L_80063198:
    cmpwi r3, -0x1
    opword  0x4182005C  // beq .L_800631F8
    li r24, 0x0
    bl TRKGetBuffer
    li r4, 0x0
    mr r29, r3
    bl fn_80061684
    lwz r4, 0x8(r29)
    addi r3, r29, 0x10
    bl fn_80062D44
    lbz r26, 0x14(r29)
    addi r4, r31, 0x18
    li r3, 0x1
    mr r5, r26
    mr r6, r26
    crclr 6
    bl MWTRACE
    cmplwi r26, 0x80
    opword  0x40800018  // bge .L_800631F8
    lwz r3, 0x0(r22)
    bl fn_8006198C
    li r0, -0x1
    stw r0, 0x0(r22)
    opword  0x4BFFFF74  // b .L_80063168
L_800631F8:
    lwz r0, 0x0(r22)
    cmpwi r0, -0x1
    opword  0x41820098  // beq .L_80063298
    lwz r0, 0x8(r29)
    cmplwi r0, 0x40
    opword  0x40800008  // bge .L_80063214
    li r24, 0x1
L_80063214:
    cmpwi r30, 0x0
    opword  0x40820024  // bne .L_8006323C
    cmpwi r24, 0x0
    opword  0x4082001C  // bne .L_8006323C
    lbz r25, 0x18(r29)
    addi r4, r31, 0x40
    li r3, 0x1
    mr r5, r25
    crclr 6
    bl MWTRACE
L_8006323C:
    cmpwi r30, 0x0
    opword  0x40820038  // bne .L_80063278
    cmpwi r24, 0x0
    opword  0x40820030  // bne .L_80063278
    cmpwi r26, 0x80
    mr r5, r26
    opword  0x4082000C  // bne .L_80063260
    cmpwi r25, 0x0
    opword  0x4182001C  // beq .L_80063278
L_80063260:
    mr r6, r25
    addi r4, r31, 0x54
    li r3, 0x8
    crclr 6
    bl MWTRACE
    li r24, 0x1
L_80063278:
    cmpwi r30, 0x0
    opword  0x4082000C  // bne .L_80063288
    cmpwi r24, 0x0
    opword  0x41820014  // beq .L_80063298
L_80063288:
    lwz r3, 0x0(r22)
    bl fn_800616F4
    li r0, -0x1
    stw r0, 0x0(r22)
L_80063298:
    subi r27, r27, 0x1
L_8006329C:
    cmpwi r27, 0x0
    opword  0x41820018  // beq .L_800632B8
    lwz r0, 0x0(r22)
    cmpwi r0, -0x1
    opword  0x4082000C  // bne .L_800632B8
    cmpwi r30, 0x0
    opword  0x4182FE88  // beq .L_8006313C
L_800632B8:
    lwz r0, 0x0(r22)
    cmpwi r0, -0x1
    opword  0x40820008  // bne .L_800632C8
    li r30, 0x800
L_800632C8:
    mr r3, r30
    lmw r21, 0x14(r1)
    lwz r0, 0x44(r1)
    mtlr r0
    addi r1, r1, 0x40
    blr
}

ASM void fn_800632E0(void)
{
    nofralloc
    stwu r1, -0x90(r1)
    mflr r0
    stw r0, 0x94(r1)
    stmw r19, 0x5c(r1)
    mr. r24, r4
    mr r23, r3
    mr r25, r5
    mr r26, r6
    mr r27, r7
    mr r28, r8
    opword  0x41820010  // beq .L_80063318
    lwz r0, 0x0(r25)
    cmplwi r0, 0x0
    opword  0x4082000C  // bne .L_80063320
L_80063318:
    li r3, 0x2
    opword  0x480001D0  // b .L_800634EC
L_80063320:
    li r0, 0x0
    li r29, 0x0
    stw r0, 0x0(r26)
    li r30, 0x0
    li r21, 0x0
    opword  0x48000188  // b .L_800634BC
L_80063338:
    addi r3, r1, 0x14
    li r4, 0x0
    li r5, 0x40
    bl memset
    lwz r0, 0x0(r25)
    li r3, 0x800
    subf r0, r30, r0
    cmplwi r0, 0x800
    opword  0x41810008  // bgt .L_80063360
    mr r3, r0
L_80063360:
    cmpwi r28, 0x0
    mr r31, r3
    li r0, 0xd0
    opword  0x41820008  // beq .L_80063374
    li r0, 0xd1
L_80063374:
    cmpwi r28, 0x0
    stb r0, 0x18(r1)
    li r0, 0x40
    opword  0x40820008  // bne .L_80063388
    addi r0, r31, 0x40
L_80063388:
    stw r0, 0x14(r1)
    addi r3, r1, 0xc
    addi r4, r1, 0x8
    stw r23, 0x1c(r1)
    sth r31, 0x20(r1)
    bl fn_80061784
    lwz r3, 0x8(r1)
    addi r4, r1, 0x14
    li r5, 0x40
    bl fn_800613F0
    cmpwi r28, 0x0
    mr r21, r3
    opword  0x40820020  // bne .L_800633D8
    cmpwi r21, 0x0
    opword  0x40820018  // bne .L_800633D8
    lwz r3, 0x8(r1)
    mr r5, r31
    add r4, r24, r30
    bl fn_800613F0
    mr r21, r3
L_800633D8:
    cmpwi r21, 0x0
    opword  0x408200D4  // bne .L_800634B0
    cmpwi r27, 0x0
    opword  0x418200C0  // beq .L_800634A4
    cmpwi r28, 0x0
    li r0, 0x0
    opword  0x41820010  // beq .L_80063400
    cmplwi r23, 0x0
    opword  0x40820008  // bne .L_80063400
    li r0, 0x1
L_80063400:
    cmpwi r28, 0x0
    lwz r3, 0x8(r1)
    addi r4, r1, 0x10
    li r5, 0x5
    cntlzw r0, r0
    li r6, 0x3
    srwi r7, r0, 5
    bl fn_80063100
    mr. r21, r3
    opword  0x40820010  // bne .L_80063434
    lwz r3, 0x10(r1)
    bl TRKGetBuffer
    mr r22, r3
L_80063434:
    lwz r0, 0x20(r22)
    cmpwi r28, 0x0
    lhz r19, 0x24(r22)
    clrlwi r20, r0, 24
    opword  0x41820040  // beq .L_80063484
    cmpwi r21, 0x0
    opword  0x40820038  // bne .L_80063484
    cmplw r19, r31
    opword  0x41810030  // bgt .L_80063484
    mr r3, r22
    li r4, 0x40
    bl fn_80061684
    mr r3, r22
    mr r5, r19
    add r4, r24, r30
    bl fn_80061174
    mr r21, r3
    cmpwi r21, 0x302
    opword  0x40820008  // bne .L_80063484
    li r21, 0x0
L_80063484:
    cmplw r19, r31
    opword  0x4182000C  // beq .L_80063494
    mr r31, r19
    li r29, 0x1
L_80063494:
    stw r20, 0x0(r26)
    lwz r3, 0x10(r1)
    bl fn_800616F4
    opword  0x48000010  // b .L_800634B0
L_800634A4:
    lwz r3, 0x8(r1)
    bl fn_80061040
    mr r21, r3
L_800634B0:
    lwz r3, 0xc(r1)
    bl fn_800616F4
    add r30, r30, r31
L_800634BC:
    cmpwi r29, 0x0
    opword  0x40820024  // bne .L_800634E4
    lwz r0, 0x0(r25)
    cmplw r30, r0
    opword  0x40800018  // bge .L_800634E4
    cmpwi r21, 0x0
    opword  0x40820010  // bne .L_800634E4
    lwz r0, 0x0(r26)
    cmpwi r0, 0x0
    opword  0x4182FE58  // beq .L_80063338
L_800634E4:
    stw r30, 0x0(r25)
    mr r3, r21
L_800634EC:
    lmw r19, 0x5c(r1)
    lwz r0, 0x94(r1)
    mtlr r0
    addi r1, r1, 0x90
    blr
}

ASM void fn_80063500(void)
{
    nofralloc
    li r3, 0x0
    blr
}

ASM void fn_80063508(void)
{
    nofralloc
    li r3, 0x0
    blr
}

ASM void fn_80063510(void)
{
    nofralloc
    li r3, 0x0
    blr
}

ASM void fn_80063518(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    addi r4, r1, 0x8
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    mr r30, r3
    addi r3, r1, 0xc
    bl fn_80061784
    mr. r31, r3
    opword  0x40820054  // bne .L_80063594
    opword  0x40820020  // bne .L_80063564
    cmpwi r30, 0x90
    opword  0x40820010  // bne .L_8006355C
    lwz r3, 0x8(r1)
    bl fn_80063F80
    opword  0x4800000C  // b .L_80063564
L_8006355C:
    lwz r3, 0x8(r1)
    bl fn_80063EFC
L_80063564:
    lwz r3, 0x8(r1)
    addi r4, r1, 0x10
    li r5, 0x2
    li r6, 0x3
    li r7, 0x1
    bl fn_80063100
    mr. r31, r3
    opword  0x4082000C  // bne .L_8006358C
    lwz r3, 0x10(r1)
    bl fn_800616F4
L_8006358C:
    lwz r3, 0xc(r1)
    bl fn_800616F4
L_80063594:
    lwz r0, 0x24(r1)
    mr r3, r31
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800635B0(void)
{
    nofralloc
    lis r5, 0xffff
    ori r5, r5, 0xfff1
    and r5, r5, r3
    subf r3, r5, r3
    add r4, r4, r3
L_800635C4:
    dcbst r0, r5
    dcbf r0, r5
    sync
    icbi r0, r5
    addic r5, r5, 0x8
    subic. r4, r4, 0x8
    opword  0x4080FFE8  // bge .L_800635C4
    isync
    blr
}

ASM void fn_800635E8(void)
{
    nofralloc
    cmplwi r5, 0x20
    clrlwi r4, r4, 24
    subi r6, r3, 0x1
    mr r7, r4
    opword  0x41800090  // blt .L_80063688
    nor r0, r6, r6
    clrlwi. r3, r0, 30
    opword  0x41820014  // beq .L_80063618
    subf r5, r3, r5
L_8006360C:
    subic. r3, r3, 0x1
    stbu r7, 0x1(r6)
    opword  0x4082FFF8  // bne .L_8006360C
L_80063618:
    cmplwi r7, 0x0
    opword  0x4182001C  // beq .L_80063638
    slwi r3, r7, 24
    slwi r0, r7, 16
    slwi r4, r7, 8
    or r0, r3, r0
    or r0, r4, r0
    or r7, r7, r0
L_80063638:
    srwi. r4, r5, 5
    subi r3, r6, 0x3
    opword  0x4182002C  // beq .L_8006366C
L_80063644:
    stw r7, 0x4(r3)
    subic. r4, r4, 0x1
    stw r7, 0x8(r3)
    stw r7, 0xc(r3)
    stw r7, 0x10(r3)
    stw r7, 0x14(r3)
    stw r7, 0x18(r3)
    stw r7, 0x1c(r3)
    stwu r7, 0x20(r3)
    opword  0x4082FFDC  // bne .L_80063644
L_8006366C:
    extrwi. r4, r5, 3, 27
    opword  0x41820010  // beq .L_80063680
L_80063674:
    subic. r4, r4, 0x1
    stwu r7, 0x4(r3)
    opword  0x4082FFF8  // bne .L_80063674
L_80063680:
    addi r6, r3, 0x3
    clrlwi r5, r5, 30
L_80063688:
    cmplwi r5, 0x0
    beqlr
L_80063690:
    subic. r5, r5, 0x1
    stbu r7, 0x1(r6)
    opword  0x4082FFF8  // bne .L_80063690
    blr
}

ASM void fn_800636A0(void)
{
    nofralloc
    mfmsr r3
    blr
}

ASM void fn_800636A8(void)
{
    nofralloc
    mtmsr r3
    blr
}

ASM void fn_800636B0(void)
{
    nofralloc
    mfmsr r8
    li r10, 0x0
L_800636B8:
    cmpw r10, r5
    opword  0x41820024  // beq .L_800636E0
    mtmsr r7
    sync
    lbzx r9, r10, r4
    mtmsr r6
    sync
    stbx r9, r10, r3
    addi r10, r10, 0x1
    opword  0x4BFFFFDC  // b .L_800636B8
L_800636E0:
    mtmsr r8
    sync
    blr
}

ASM void TRKInterruptHandler(void)
{
    nofralloc
    mtsrr0 r2
    mtsrr1 r4
    opword  0x7C9342A6  // mfsprg r4, 3
    mfcr r2
    opword  0x7C5343A6  // mtsprg 3, r2
    lis r2, gTRKState@h
    ori r2, r2, gTRKState@l
    lwz r2, 0x8c(r2)
    ori r2, r2, 0x8002
    xori r2, r2, 0x8002
    sync
    mtmsr r2
    sync
    lis r2, TRK_saved_exceptionID@h
    ori r2, r2, TRK_saved_exceptionID@l
    sth r3, 0x0(r2)
    cmpwi r3, 0x500
    opword  0x40820084  // bne .L_800637B4
    lis r2, gTRKCPUState@h
    ori r2, r2, gTRKCPUState@l
    mflr r3
    stw r3, 0x42c(r2)
    bl TRKUARTInterruptHandler
    lis r2, gTRKCPUState@h
    ori r2, r2, gTRKCPUState@l
    lwz r3, 0x42c(r2)
    mtlr r3
    lis r2, gTRKState@h
    ori r2, r2, gTRKState@l
    lwz r2, 0xa0(r2)
    lbz r2, 0x0(r2)
    cmpwi r2, 0x0
    opword  0x4182002C  // beq .L_80063798
    lis r2, gTRKExceptionStatus@h
    ori r2, r2, gTRKExceptionStatus@l
    lbz r2, 0xc(r2)
    cmpwi r2, 0x1
    opword  0x41820018  // beq .L_80063798
    lis r2, gTRKState@h
    ori r2, r2, gTRKState@l
    li r3, 0x1
    stb r3, 0x9c(r2)
    opword  0x48000020  // b .L_800637B4
L_80063798:
    lis r2, gTRKSaveState@h
    ori r2, r2, gTRKSaveState@l
    lwz r3, 0x88(r2)
    mtcrf 255, r3
    lwz r3, 0xc(r2)
    lwz r2, 0x8(r2)
    opword  0x4C000064  // rfi
L_800637B4:
    lis r2, TRK_saved_exceptionID@h
    ori r2, r2, TRK_saved_exceptionID@l
    lhz r3, 0x0(r2)
    lis r2, gTRKExceptionStatus@h
    ori r2, r2, gTRKExceptionStatus@l
    lbz r2, 0xc(r2)
    cmpwi r2, 0x0
    bne TRKExceptionHandler
    lis r2, gTRKCPUState@h
    ori r2, r2, gTRKCPUState@l
    stw r0, 0x0(r2)
    stw r1, 0x4(r2)
    opword  0x7C1142A6  // mfsprg r0, 1
    stw r0, 0x8(r2)
    sth r3, 0x2f8(r2)
    sth r3, 0x2fa(r2)
    opword  0x7C1242A6  // mfsprg r0, 2
    stw r0, 0xc(r2)
    stmw r4, 0x10(r2)
    mfsrr0 r27
    mflr r28
    opword  0x7FB342A6  // mfsprg r29, 3
    mfctr r30
    mfxer r31
    stmw r27, 0x80(r2)
    bl TRKSaveExtended1Block
    lis r2, gTRKExceptionStatus@h
    ori r2, r2, gTRKExceptionStatus@l
    li r3, 0x1
    stb r3, 0xc(r2)
    lis r2, gTRKState@h
    ori r2, r2, gTRKState@l
    lwz r0, 0x8c(r2)
    sync
    mtmsr r0
    sync
    lwz r0, 0x80(r2)
    mtlr r0
    lwz r0, 0x84(r2)
    mtctr r0
    lwz r0, 0x88(r2)
    mtxer r0
    lwz r0, 0x94(r2)
    mtdsisr r0
    lwz r0, 0x90(r2)
    mtdar r0
    lmw r3, 0xc(r2)
    lwz r0, 0x0(r2)
    lwz r1, 0x4(r2)
    lwz r2, 0x8(r2)
    b TRKPostInterruptEvent
}

ASM void TRKExceptionHandler(void)
{
    nofralloc
    lis r2, gTRKExceptionStatus@h
    ori r2, r2, gTRKExceptionStatus@l
    sth r3, 0x8(r2)
    mfsrr0 r3
    stw r3, 0x0(r2)
    lhz r3, 0x8(r2)
    cmpwi r3, 0x200
    opword  0x41820050  // beq .L_800638EC
    cmpwi r3, 0x300
    opword  0x41820048  // beq .L_800638EC
    cmpwi r3, 0x400
    opword  0x41820040  // beq .L_800638EC
    cmpwi r3, 0x600
    opword  0x41820038  // beq .L_800638EC
    cmpwi r3, 0x700
    opword  0x41820030  // beq .L_800638EC
    cmpwi r3, 0x800
    opword  0x41820028  // beq .L_800638EC
    cmpwi r3, 0x1000
    opword  0x41820020  // beq .L_800638EC
    cmpwi r3, 0x1100
    opword  0x41820018  // beq .L_800638EC
    cmpwi r3, 0x1200
    opword  0x41820010  // beq .L_800638EC
    cmpwi r3, 0x1300
    opword  0x41820008  // beq .L_800638EC
    opword  0x48000010  // b .L_800638F8
L_800638EC:
    mfsrr0 r3
    addi r3, r3, 0x4
    mtsrr0 r3
L_800638F8:
    lis r2, gTRKExceptionStatus@h
    ori r2, r2, gTRKExceptionStatus@l
    li r3, 0x1
    stb r3, 0xd(r2)
    opword  0x7C7342A6  // mfsprg r3, 3
    mtcrf 255, r3
    opword  0x7C5142A6  // mfsprg r2, 1
    opword  0x7C7242A6  // mfsprg r3, 2
    opword  0x4C000064  // rfi
}

ASM void TRKSwapAndGo(void)
{
    nofralloc
    lis r3, gTRKState@h
    ori r3, r3, gTRKState@l
    stmw r0, 0x0(r3)
    mfmsr r0
    stw r0, 0x8c(r3)
    mflr r0
    stw r0, 0x80(r3)
    mfctr r0
    stw r0, 0x84(r3)
    mfxer r0
    stw r0, 0x88(r3)
    mfdsisr r0
    stw r0, 0x94(r3)
    mfdar r0
    stw r0, 0x90(r3)
    li r1, -0x7ffe
    nor r1, r1, r1
    mfmsr r3
    and r3, r3, r1
    mtmsr r3
    lis r2, gTRKState@h
    ori r2, r2, gTRKState@l
    lwz r2, 0xa0(r2)
    lbz r2, 0x0(r2)
    cmpwi r2, 0x0
    opword  0x41820018  // beq .L_80063998
    lis r2, gTRKState@h
    ori r2, r2, gTRKState@l
    li r3, 0x1
    stb r3, 0x9c(r2)
    b TRKInterruptHandlerEnableInterrupts
L_80063998:
    lis r2, gTRKExceptionStatus@h
    ori r2, r2, gTRKExceptionStatus@l
    li r3, 0x0
    stb r3, 0xc(r2)
    bl TRKRestoreExtended1Block
    lis r2, gTRKCPUState@h
    ori r2, r2, gTRKCPUState@l
    lmw r27, 0x80(r2)
    mtsrr0 r27
    mtlr r28
    mtcrf 255, r29
    mtctr r30
    mtxer r31
    lmw r3, 0xc(r2)
    lwz r0, 0x0(r2)
    lwz r1, 0x4(r2)
    lwz r2, 0x8(r2)
    opword  0x4C000064  // rfi
}

ASM void TRKInterruptHandlerEnableInterrupts(void)
{
    nofralloc
    lis r2, gTRKState@h
    ori r2, r2, gTRKState@l
    lwz r0, 0x8c(r2)
    sync
    mtmsr r0
    sync
    lwz r0, 0x80(r2)
    mtlr r0
    lwz r0, 0x84(r2)
    mtctr r0
    lwz r0, 0x88(r2)
    mtxer r0
    lwz r0, 0x94(r2)
    mtdsisr r0
    lwz r0, 0x90(r2)
    mtdar r0
    lmw r3, 0xc(r2)
    lwz r0, 0x0(r2)
    lwz r1, 0x4(r2)
    lwz r2, 0x8(r2)
    b TRKPostInterruptEvent
}

ASM void fn_80063A34(void)
{
    nofralloc
    stwu r1, -0x40(r1)
    stfd fp31, 0x10(r1)
    psq_st fp31, 0x20(r1), 0, 0
    mffs fp31
    stfd fp31, 0x0(r3)
    psq_l fp31, 0x20(r1), 0, 0
    lfd fp31, 0x10(r1)
    addi r1, r1, 0x40
    blr
}

ASM void fn_80063A58(void)
{
    nofralloc
    stwu r1, -0x40(r1)
    stfd fp31, 0x10(r1)
    psq_st fp31, 0x20(r1), 0, 0
    lfd fp31, 0x0(r3)
    mtfsf 255, fp31
    psq_l fp31, 0x20(r1), 0, 0
    lfd fp31, 0x10(r1)
    addi r1, r1, 0x40
    blr
}

ASM void fn_80063A7C(void)
{
    nofralloc
    stwu r1, -0x30(r1)
    mflr r0
    lis r7, gTRKExceptionStatus@ha
    cmpwi r6, 0x0
    stw r0, 0x34(r1)
    li r0, 0x0
    stw r31, 0x2c(r1)
    addi r31, r7, gTRKExceptionStatus@l
    stw r30, 0x28(r1)
    li r30, 0x0
    stw r29, 0x24(r1)
    mr r29, r5
    lwz r6, 0xc(r31)
    lwz r9, 0x0(r31)
    lwz r8, 0x4(r31)
    lwz r7, 0x8(r31)
    stw r9, 0x8(r1)
    stw r8, 0xc(r1)
    stw r7, 0x10(r1)
    stw r6, 0x14(r1)
    stb r0, 0xd(r31)
    opword  0x4182000C  // beq .L_80063ADC
    bl fn_800658D8
    opword  0x48000008  // b .L_80063AE0
L_80063ADC:
    bl fn_800656EC
L_80063AE0:
    lbz r0, 0xd(r31)
    cmplwi r0, 0x0
    opword  0x41820010  // beq .L_80063AF8
    li r0, 0x0
    li r30, 0x702
    stw r0, 0x0(r29)
L_80063AF8:
    lis r3, gTRKExceptionStatus@ha
    lwz r6, 0x8(r1)
    addi r7, r3, gTRKExceptionStatus@l
    lwz r5, 0xc(r1)
    lwz r4, 0x10(r1)
    mr r3, r30
    lwz r0, 0x14(r1)
    stw r6, 0x0(r7)
    stw r5, 0x4(r7)
    stw r4, 0x8(r7)
    stw r0, 0xc(r7)
    lwz r31, 0x2c(r1)
    lwz r30, 0x28(r1)
    lwz r29, 0x24(r1)
    lwz r0, 0x34(r1)
    mtlr r0
    addi r1, r1, 0x30
    blr
}

ASM void TRKTargetSetInputPendingPtr(void)
{
    nofralloc
    lis r4, gTRKState@ha
    addi r4, r4, gTRKState@l
    stw r3, 0xa0(r4)
    blr
}

ASM void fn_80063B50(void)
{
    nofralloc
    lis r3, gTRKState@ha
    li r0, 0x1
    addi r4, r3, gTRKState@l
    li r3, 0x0
    stw r0, 0x98(r4)
    blr
}

ASM void TRKTargetSetStopped(void)
{
    nofralloc
    lis r4, gTRKState@ha
    addi r4, r4, gTRKState@l
    stw r3, 0x98(r4)
    blr
}

ASM void TRKTargetStopped(void)
{
    nofralloc
    lis r3, gTRKState@ha
    addi r3, r3, gTRKState@l
    lwz r3, 0x98(r3)
    blr
}

ASM void TRKTargetSupportRequest(void)
{
    nofralloc
    stwu r1, -0x40(r1)
    mflr r0
    lis r3, gTRKCPUState@ha
    stw r0, 0x44(r1)
    stmw r27, 0x2c(r1)
    addi r31, r3, gTRKCPUState@l
    lwz r27, 0xc(r31)
    cmpwi r27, 0xd1
    opword  0x41820040  // beq .L_80063BE8
    cmpwi r27, 0xd0
    opword  0x41820038  // beq .L_80063BE8
    cmpwi r27, 0xd2
    opword  0x41820030  // beq .L_80063BE8
    cmpwi r27, 0xd3
    opword  0x41820028  // beq .L_80063BE8
    cmpwi r27, 0xd4
    opword  0x41820020  // beq .L_80063BE8
    addi r3, r1, 0x10
    li r4, 0x4
    bl fn_80060CA4
    addi r3, r1, 0x10
    bl fn_80060CBC
    li r3, 0x0
    opword  0x48000190  // b .L_80063D74
L_80063BE8:
    cmpwi r27, 0xd2
    opword  0x40820050  // bne .L_80063C3C
    lis r3, gTRKCPUState@ha
    addi r6, r1, 0xc
    addi r4, r3, gTRKCPUState@l
    lwz r0, 0x14(r4)
    lwz r3, 0x10(r4)
    lwz r5, 0x18(r4)
    clrlwi r4, r0, 24
    bl fn_80062FE4
    lwz r0, 0xc(r1)
    mr r30, r3
    cmpwi r0, 0x0
    opword  0x40820014  // bne .L_80063C30
    cmpwi r30, 0x0
    opword  0x4182000C  // beq .L_80063C30
    li r0, 0x1
    stw r0, 0xc(r1)
L_80063C30:
    lwz r0, 0xc(r1)
    stw r0, 0xc(r31)
    opword  0x48000124  // b .L_80063D5C
L_80063C3C:
    cmpwi r27, 0xd3
    opword  0x40820044  // bne .L_80063C84
    lis r3, gTRKCPUState@ha
    addi r4, r1, 0xc
    addi r3, r3, gTRKCPUState@l
    lwz r3, 0x10(r3)
    bl fn_80062EFC
    lwz r0, 0xc(r1)
    mr r30, r3
    cmpwi r0, 0x0
    opword  0x40820014  // bne .L_80063C78
    cmpwi r30, 0x0
    opword  0x4182000C  // beq .L_80063C78
    li r0, 0x1
    stw r0, 0xc(r1)
L_80063C78:
    lwz r0, 0xc(r1)
    stw r0, 0xc(r31)
    opword  0x480000DC  // b .L_80063D5C
L_80063C84:
    cmpwi r27, 0xd4
    opword  0x40820068  // bne .L_80063CF0
    lis r3, gTRKCPUState@ha
    addi r4, r1, 0x8
    addi r29, r3, gTRKCPUState@l
    addi r6, r1, 0xc
    lwz r3, 0x14(r29)
    lwz r0, 0x18(r29)
    lwz r7, 0x0(r3)
    lwz r3, 0x10(r29)
    clrlwi r5, r0, 24
    stw r7, 0x8(r1)
    bl fn_80062DEC
    lwz r0, 0xc(r1)
    mr r30, r3
    cmpwi r0, 0x0
    opword  0x40820014  // bne .L_80063CD8
    cmpwi r30, 0x0
    opword  0x4182000C  // beq .L_80063CD8
    li r0, 0x1
    stw r0, 0xc(r1)
L_80063CD8:
    lwz r3, 0xc(r1)
    lwz r0, 0x8(r1)
    stw r3, 0xc(r31)
    lwz r3, 0x14(r29)
    stw r0, 0x0(r3)
    opword  0x48000070  // b .L_80063D5C
L_80063CF0:
    lis r3, gTRKCPUState@ha
    subfic r0, r27, 0xd1
    addi r29, r3, gTRKCPUState@l
    addi r6, r1, 0xc
    lwz r28, 0x14(r29)
    cntlzw r0, r0
    lwz r3, 0x10(r29)
    srwi r8, r0, 5
    lwz r4, 0x18(r29)
    mr r5, r28
    li r7, 0x1
    bl fn_800632E0
    lwz r0, 0xc(r1)
    mr r30, r3
    cmpwi r0, 0x0
    opword  0x40820014  // bne .L_80063D40
    cmpwi r30, 0x0
    opword  0x4182000C  // beq .L_80063D40
    li r0, 0x1
    stw r0, 0xc(r1)
L_80063D40:
    lwz r0, 0xc(r1)
    cmpwi r27, 0xd1
    stw r0, 0xc(r31)
    opword  0x40820010  // bne .L_80063D5C
    lwz r3, 0x18(r29)
    lwz r4, 0x0(r28)
    bl fn_800635B0
L_80063D5C:
    lis r4, gTRKCPUState@ha
    mr r3, r30
    addi r5, r4, gTRKCPUState@l
    lwz r4, 0x80(r5)
    addi r0, r4, 0x4
    stw r0, 0x80(r5)
L_80063D74:
    lmw r27, 0x2c(r1)
    lwz r0, 0x44(r1)
    mtlr r0
    addi r1, r1, 0x40
    blr
}

ASM void fn_80063D88(void)
{
    nofralloc
    lis r3, gTRKCPUState@ha
    addi r3, r3, gTRKCPUState@l
    lwz r3, 0x80(r3)
    blr
}

ASM void fn_80063D98(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    cmpwi r5, 0x0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    opword  0x4182000C  // beq .L_80063DB8
    li r3, 0x703
    opword  0x48000088  // b .L_80063E3C
L_80063DB8:
    lis r6, lbl_80497A0C@ha
    lis r5, lbl_8045D9B0@ha
    addi r31, r6, lbl_80497A0C@l
    li r6, 0x1
    stw r3, 0xc(r31)
    addi r0, r5, lbl_8045D9B0@l
    li r3, 0x1
    stw r4, 0x10(r31)
    mr r4, r0
    stw r6, 0x4(r31)
    stw r6, 0x0(r31)
    crclr 6
    bl MWTRACE
    lis r3, gTRKCPUState@ha
    lwz r4, 0x4(r31)
    addi r3, r3, gTRKCPUState@l
    lwz r0, 0x1f8(r3)
    cmpwi r4, 0x0
    ori r0, r0, 0x400
    stw r0, 0x1f8(r3)
    opword  0x4182000C  // beq .L_80063E14
    cmpwi r4, 0x10
    opword  0x40820018  // bne .L_80063E28
L_80063E14:
    lis r3, lbl_80497A0C@ha
    addi r4, r3, lbl_80497A0C@l
    lwz r3, 0x8(r4)
    subi r0, r3, 0x1
    stw r0, 0x8(r4)
L_80063E28:
    lis r3, gTRKState@ha
    li r0, 0x0
    addi r4, r3, gTRKState@l
    li r3, 0x0
    stw r0, 0x98(r4)
L_80063E3C:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80063E50(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    cmpwi r4, 0x0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    opword  0x4182000C  // beq .L_80063E70
    li r3, 0x703
    opword  0x4800007C  // b .L_80063EE8
L_80063E70:
    lis r5, lbl_80497A0C@ha
    lis r4, lbl_8045D9B0@ha
    addi r31, r5, lbl_80497A0C@l
    li r0, 0x1
    li r5, 0x0
    stw r3, 0x8(r31)
    addi r4, r4, lbl_8045D9B0@l
    li r3, 0x1
    stw r5, 0x4(r31)
    stw r0, 0x0(r31)
    crclr 6
    bl MWTRACE
    lis r3, gTRKCPUState@ha
    lwz r4, 0x4(r31)
    addi r3, r3, gTRKCPUState@l
    lwz r0, 0x1f8(r3)
    cmpwi r4, 0x0
    ori r0, r0, 0x400
    stw r0, 0x1f8(r3)
    opword  0x4182000C  // beq .L_80063EC8
    cmpwi r4, 0x10
    opword  0x40820010  // bne .L_80063ED4
L_80063EC8:
    lwz r3, 0x8(r31)
    subi r0, r3, 0x1
    stw r0, 0x8(r31)
L_80063ED4:
    lis r3, gTRKState@ha
    li r0, 0x0
    addi r4, r3, gTRKState@l
    li r3, 0x0
    stw r0, 0x98(r4)
L_80063EE8:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80063EFC(void)
{
    nofralloc
    stwu r1, -0x60(r1)
    mflr r0
    li r4, 0x0
    li r5, 0x40
    stw r0, 0x64(r1)
    stw r31, 0x5c(r1)
    mr r31, r3
    addi r3, r1, 0xc
    bl memset
    lis r3, gTRKExceptionStatus@ha
    li r5, 0x40
    lwz r4, gTRKExceptionStatus@l(r3)
    li r0, 0x91
    stw r5, 0xc(r1)
    addi r3, r1, 0x8
    stb r0, 0x10(r1)
    stw r4, 0x14(r1)
    bl fn_80064DF0
    lis r3, gTRKExceptionStatus@ha
    lwz r5, 0x8(r1)
    addi r4, r3, gTRKExceptionStatus@l
    mr r3, r31
    lhz r0, 0x8(r4)
    addi r4, r1, 0xc
    stw r5, 0x18(r1)
    li r5, 0x40
    stw r0, 0x1c(r1)
    bl fn_800613F0
    lwz r0, 0x64(r1)
    lwz r31, 0x5c(r1)
    mtlr r0
    addi r1, r1, 0x60
    blr
}

ASM void fn_80063F80(void)
{
    nofralloc
    stwu r1, -0x60(r1)
    mflr r0
    li r4, 0x0
    li r5, 0x40
    stw r0, 0x64(r1)
    stw r31, 0x5c(r1)
    mr r31, r3
    addi r3, r1, 0xc
    bl memset
    lis r3, gTRKCPUState@ha
    li r5, 0x40
    addi r3, r3, gTRKCPUState@l
    li r0, 0x90
    lwz r4, 0x80(r3)
    addi r3, r1, 0x8
    stw r5, 0xc(r1)
    stb r0, 0x10(r1)
    stw r4, 0x14(r1)
    bl fn_80064DF0
    lis r3, gTRKCPUState@ha
    lwz r5, 0x8(r1)
    addi r4, r3, gTRKCPUState@l
    mr r3, r31
    lwz r0, 0x2f8(r4)
    addi r4, r1, 0xc
    stw r5, 0x18(r1)
    li r5, 0x40
    clrlwi r0, r0, 16
    stw r0, 0x1c(r1)
    bl fn_800613F0
    lwz r0, 0x64(r1)
    lwz r31, 0x5c(r1)
    mtlr r0
    addi r1, r1, 0x60
    blr
}

ASM void TRKTargetInterrupt(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    stw r30, 0x8(r1)
    li r30, 0x0
    lwz r0, 0x0(r3)
    cmpwi r0, 0x5
    opword  0x40800154  // bge .L_80064180
    cmpwi r0, 0x3
    opword  0x40800008  // bge .L_8006403C
    opword  0x48000148  // b .L_80064180
L_8006403C:
    lis r3, lbl_80497A0C@ha
    addi r4, r3, lbl_80497A0C@l
    lwz r0, 0x0(r4)
    cmpwi r0, 0x0
    opword  0x41820108  // beq .L_80064154
    lis r3, gTRKCPUState@ha
    li r5, 0x1
    addi r31, r3, gTRKCPUState@l
    lwz r0, 0x1f8(r31)
    rlwinm r0, r0, 0, 22, 20
    stw r0, 0x1f8(r31)
    opword  0x41820064  // beq .L_800640CC
    lwz r0, 0x2f8(r31)
    clrlwi r0, r0, 16
    cmplwi r0, 0xd00
    opword  0x40820054  // bne .L_800640CC
    lwz r0, 0x4(r4)
    cmpwi r0, 0x1
    opword  0x41820028  // beq .L_800640AC
    opword  0x40800044  // bge .L_800640CC
    cmpwi r0, 0x0
    opword  0x40800008  // bge .L_80064098
    opword  0x48000038  // b .L_800640CC
L_80064098:
    lwz r0, 0x8(r4)
    cmplwi r0, 0x0
    opword  0x4182002C  // beq .L_800640CC
    li r5, 0x0
    opword  0x48000024  // b .L_800640CC
L_800640AC:
    lwz r3, 0x80(r31)
    lwz r0, 0xc(r4)
    cmplw r3, r0
    opword  0x41800014  // blt .L_800640CC
    lwz r0, 0x10(r4)
    cmplw r3, r0
    opword  0x41810008  // bgt .L_800640CC
    li r5, 0x0
L_800640CC:
    cmpwi r5, 0x0
    opword  0x41820014  // beq .L_800640E4
    lis r3, lbl_80497A0C@ha
    li r0, 0x0
    stw r0, lbl_80497A0C@l(r3)
    opword  0x48000074  // b .L_80064154
L_800640E4:
    lis r4, lbl_80497A0C@ha
    li r0, 0x1
    addi r5, r4, lbl_80497A0C@l
    lis r3, lbl_8045D9B0@ha
    stw r0, 0x0(r5)
    addi r4, r3, lbl_8045D9B0@l
    li r3, 0x1
    crclr 6
    bl MWTRACE
    lis r3, lbl_80497A0C@ha
    lwz r0, 0x1f8(r31)
    addi r3, r3, lbl_80497A0C@l
    lwz r3, 0x4(r3)
    ori r0, r0, 0x400
    stw r0, 0x1f8(r31)
    cmpwi r3, 0x0
    opword  0x4182000C  // beq .L_80064130
    cmpwi r3, 0x10
    opword  0x40820018  // bne .L_80064144
L_80064130:
    lis r3, lbl_80497A0C@ha
    addi r4, r3, lbl_80497A0C@l
    lwz r3, 0x8(r4)
    subi r0, r3, 0x1
    stw r0, 0x8(r4)
L_80064144:
    lis r3, gTRKState@ha
    li r0, 0x0
    addi r3, r3, gTRKState@l
    stw r0, 0x98(r3)
L_80064154:
    lis r3, lbl_80497A0C@ha
    lwz r0, lbl_80497A0C@l(r3)
    cmpwi r0, 0x0
    opword  0x40820020  // bne .L_80064180
    lis r3, gTRKState@ha
    li r0, 0x1
    addi r4, r3, gTRKState@l
    li r3, 0x90
    stw r0, 0x98(r4)
    bl fn_80063518
    mr r30, r3
L_80064180:
    lwz r0, 0x14(r1)
    mr r3, r30
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void TRKPostInterruptEvent(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    lis r3, gTRKState@ha
    stw r0, 0x24(r1)
    addi r3, r3, gTRKState@l
    lwz r0, 0x9c(r3)
    cmpwi r0, 0x0
    opword  0x41820010  // beq .L_800641C8
    li r0, 0x0
    stw r0, 0x9c(r3)
    opword  0x48000074  // b .L_80064238
L_800641C8:
    lis r3, gTRKCPUState@ha
    addi r3, r3, gTRKCPUState@l
    lwz r0, 0x2f8(r3)
    clrlwi r0, r0, 16
    cmpwi r0, 0xd00
    opword  0x41820014  // beq .L_800641F0
    opword  0x40800044  // bge .L_80064224
    cmpwi r0, 0x700
    opword  0x41820008  // beq .L_800641F0
    opword  0x48000038  // b .L_80064224
L_800641F0:
    lis r4, gTRKCPUState@ha
    addi r3, r1, 0x8
    addi r4, r4, gTRKCPUState@l
    lwz r4, 0x80(r4)
    bl fn_80064DF0
    lwz r3, 0x8(r1)
    subis r0, r3, 0xfe0
    cmplwi r0, 0x0
    opword  0x4082000C  // bne .L_8006421C
    li r4, 0x5
    opword  0x48000010  // b .L_80064228
L_8006421C:
    li r4, 0x3
    opword  0x48000008  // b .L_80064228
L_80064224:
    li r4, 0x4
L_80064228:
    addi r3, r1, 0xc
    bl fn_80060CA4
    addi r3, r1, 0xc
    bl fn_80060CBC
L_80064238:
    lwz r0, 0x24(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_80064248(void)
{
    nofralloc
    stwu r1, -0x130(r1)
    mflr r0
    stw r0, 0x134(r1)
    stmw r19, 0xfc(r1)
    mr r23, r4
    cmplwi r23, 0x1f
    mr r27, r3
    mr r24, r5
    mr r25, r6
    mr r26, r7
    opword  0x4081000C  // ble .L_8006427C
    li r3, 0x701
    opword  0x480003F4  // b .L_8006466C
L_8006427C:
    lis r3, lbl_8045D938@ha
    lis r5, gTRKExceptionStatus@ha
    addi r29, r3, lbl_8045D938@l
    lis r4, 0x7c99
    lwz r0, 0x0(r29)
    addi r31, r5, gTRKExceptionStatus@l
    lwz r8, 0x4(r29)
    lis r3, 0x4e80
    lwz r7, 0x24(r29)
    subi r6, r4, 0x1d5a
    stw r0, 0xc4(r1)
    addi r0, r3, 0x20
    lwz r19, 0x0(r31)
    li r30, 0x0
    lwz r22, 0xc(r31)
    lis r5, 0x9083
    stw r8, 0xc8(r1)
    addi r3, r1, 0xc4
    lwz r20, 0x4(r31)
    li r4, 0x28
    stw r7, 0xe8(r1)
    lwz r21, 0x8(r31)
    lwz r28, 0x8(r29)
    lwz r12, 0xc(r29)
    lwz r11, 0x10(r29)
    lwz r10, 0x14(r29)
    lwz r9, 0x18(r29)
    lwz r8, 0x1c(r29)
    lwz r7, 0x20(r29)
    stw r19, 0x14(r1)
    stw r20, 0x18(r1)
    stw r21, 0x1c(r1)
    stw r22, 0x20(r1)
    stb r30, 0xd(r31)
    stw r28, 0xcc(r1)
    stw r12, 0xd0(r1)
    stw r11, 0xd4(r1)
    stw r10, 0xd8(r1)
    stw r9, 0xdc(r1)
    stw r8, 0xe0(r1)
    stw r7, 0xe4(r1)
    stw r6, 0xc4(r1)
    stw r5, 0xc8(r1)
    stw r0, 0xe8(r1)
    bl fn_800635B0
    lis r3, lbl_804B8604@ha
    addi r12, r1, 0xc4
    addi r4, r3, lbl_804B8604@l
    addi r3, r1, 0x8
    mtctr r12
    bctrl
    lis r3, lbl_8045D938@ha
    lwz r5, 0x8(r1)
    addi r29, r3, lbl_8045D938@l
    lis r4, 0x7c99
    lwz r8, 0x0(r29)
    lis r3, 0x4e80
    lwz r0, 0x4(r29)
    oris r30, r5, 0xa000
    lwz r7, 0x24(r29)
    subi r5, r4, 0x1c5a
    stw r0, 0xa0(r1)
    addi r0, r3, 0x20
    lwz r28, 0x8(r29)
    lis r6, 0x8083
    stw r8, 0x9c(r1)
    addi r3, r1, 0x9c
    lwz r12, 0xc(r29)
    li r4, 0x28
    stw r7, 0xc0(r1)
    lwz r11, 0x10(r29)
    lwz r10, 0x14(r29)
    lwz r9, 0x18(r29)
    lwz r8, 0x1c(r29)
    lwz r7, 0x20(r29)
    stw r30, 0x8(r1)
    stw r28, 0xa4(r1)
    stw r12, 0xa8(r1)
    stw r11, 0xac(r1)
    stw r10, 0xb0(r1)
    stw r9, 0xb4(r1)
    stw r8, 0xb8(r1)
    stw r7, 0xbc(r1)
    stw r6, 0x9c(r1)
    stw r5, 0xa0(r1)
    stw r0, 0xc0(r1)
    bl fn_800635B0
    lis r3, lbl_804B8604@ha
    addi r12, r1, 0x9c
    addi r4, r3, lbl_804B8604@l
    addi r3, r1, 0x8
    mtctr r12
    bctrl
    lis r3, lbl_8045D938@ha
    lis r4, 0x7c91
    addi r29, r3, lbl_8045D938@l
    lis r3, 0x4e80
    lwz r8, 0x0(r29)
    li r30, 0x0
    lwz r6, 0x4(r29)
    subi r5, r4, 0x1c5a
    lwz r7, 0x24(r29)
    addi r0, r3, 0x20
    stw r6, 0x78(r1)
    lis r6, 0x8083
    lwz r28, 0x8(r29)
    addi r3, r1, 0x74
    stw r8, 0x74(r1)
    li r4, 0x28
    lwz r12, 0xc(r29)
    stw r7, 0x98(r1)
    lwz r11, 0x10(r29)
    lwz r10, 0x14(r29)
    lwz r9, 0x18(r29)
    lwz r8, 0x1c(r29)
    lwz r7, 0x20(r29)
    stw r30, 0x8(r1)
    stw r28, 0x7c(r1)
    stw r12, 0x80(r1)
    stw r11, 0x84(r1)
    stw r10, 0x88(r1)
    stw r9, 0x8c(r1)
    stw r8, 0x90(r1)
    stw r7, 0x94(r1)
    stw r6, 0x74(r1)
    stw r5, 0x78(r1)
    stw r0, 0x98(r1)
    bl fn_800635B0
    lis r3, lbl_804B8604@ha
    addi r12, r1, 0x74
    addi r4, r3, lbl_804B8604@l
    addi r3, r1, 0x8
    mtctr r12
    bctrl
    li r0, 0x0
    slwi r30, r27, 21
    stw r0, 0x0(r25)
    addi r29, r1, 0x4c
    addi r28, r1, 0x24
    li r3, 0x0
    opword  0x48000170  // b .L_8006461C
L_800644B0:
    cmpwi r26, 0x0
    opword  0x418200AC  // beq .L_80064560
    lis r3, lbl_8045D960@ha
    lwzu r12, lbl_8045D960@l(r3)
    oris r0, r30, 0xe003
    lwz r11, 0x4(r3)
    lwz r10, 0x8(r3)
    lwz r9, 0xc(r3)
    lwz r8, 0x10(r3)
    lwz r7, 0x14(r3)
    lwz r6, 0x18(r3)
    lwz r5, 0x1c(r3)
    lwz r4, 0x20(r3)
    lwz r3, 0x24(r3)
    stw r12, 0x4c(r1)
    stw r11, 0x50(r1)
    stw r10, 0x54(r1)
    stw r9, 0x58(r1)
    stw r8, 0x5c(r1)
    stw r7, 0x60(r1)
    stw r6, 0x64(r1)
    stw r5, 0x68(r1)
    stw r4, 0x6c(r1)
    stw r3, 0x70(r1)
    opword  0x41820008  // beq .L_80064518
    oris r0, r30, 0xf003
L_80064518:
    lis r3, 0x4e80
    stw r0, 0x4c(r1)
    addi r0, r3, 0x20
    mr r3, r29
    stw r0, 0x70(r1)
    li r4, 0x28
    bl fn_800635B0
    lis r3, lbl_804B8604@ha
    addi r12, r1, 0x4c
    addi r4, r3, lbl_804B8604@l
    addi r3, r1, 0xc
    mtctr r12
    bctrl
    lwz r5, 0xc(r1)
    mr r3, r24
    lwz r6, 0x10(r1)
    bl fn_80061458
    opword  0x480000AC  // b .L_80064608
L_80064560:
    mr r3, r24
    addi r4, r1, 0xc
    bl fn_8006120C
    lis r3, lbl_8045D960@ha
    lwzu r12, lbl_8045D960@l(r3)
    cmpwi r26, 0x0
    oris r0, r30, 0xe003
    lwz r11, 0x4(r3)
    lwz r10, 0x8(r3)
    lwz r9, 0xc(r3)
    lwz r8, 0x10(r3)
    lwz r7, 0x14(r3)
    lwz r6, 0x18(r3)
    lwz r5, 0x1c(r3)
    lwz r4, 0x20(r3)
    lwz r3, 0x24(r3)
    stw r12, 0x24(r1)
    stw r11, 0x28(r1)
    stw r10, 0x2c(r1)
    stw r9, 0x30(r1)
    stw r8, 0x34(r1)
    stw r7, 0x38(r1)
    stw r6, 0x3c(r1)
    stw r5, 0x40(r1)
    stw r4, 0x44(r1)
    stw r3, 0x48(r1)
    opword  0x41820008  // beq .L_800645D0
    oris r0, r30, 0xf003
L_800645D0:
    lis r3, 0x4e80
    stw r0, 0x24(r1)
    addi r0, r3, 0x20
    mr r3, r28
    stw r0, 0x48(r1)
    li r4, 0x28
    bl fn_800635B0
    lis r3, lbl_804B8604@ha
    addi r12, r1, 0x24
    addi r4, r3, lbl_804B8604@l
    addi r3, r1, 0xc
    mtctr r12
    bctrl
    li r3, 0x0
L_80064608:
    lwz r4, 0x0(r25)
    addis r30, r30, 0x20
    addi r27, r27, 0x1
    addi r0, r4, 0x8
    stw r0, 0x0(r25)
L_8006461C:
    cmplw r27, r23
    opword  0x4181000C  // bgt .L_8006462C
    cmpwi r3, 0x0
    opword  0x4182FE88  // beq .L_800644B0
L_8006462C:
    lbz r0, 0xd(r31)
    cmplwi r0, 0x0
    opword  0x41820010  // beq .L_80064644
    li r0, 0x0
    li r3, 0x702
    stw r0, 0x0(r25)
L_80064644:
    lis r4, gTRKExceptionStatus@ha
    lwz r6, 0x14(r1)
    addi r7, r4, gTRKExceptionStatus@l
    lwz r5, 0x18(r1)
    lwz r4, 0x1c(r1)
    lwz r0, 0x20(r1)
    stw r6, 0x0(r7)
    stw r5, 0x4(r7)
    stw r4, 0x8(r7)
    stw r0, 0xc(r7)
L_8006466C:
    lmw r19, 0xfc(r1)
    lwz r0, 0x134(r1)
    mtlr r0
    addi r1, r1, 0x130
    blr
}

ASM void fn_80064680(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    cmplwi r4, 0x60
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    mr r30, r6
    opword  0x4081000C  // ble .L_800646A8
    li r3, 0x701
    opword  0x48000134  // b .L_800647D8
L_800646A8:
    lis r6, gTRKExceptionStatus@ha
    li r0, 0x0
    addi r31, r6, gTRKExceptionStatus@l
    cmplw r3, r4
    lwz r6, 0xc(r31)
    lwz r10, 0x0(r31)
    lwz r9, 0x4(r31)
    lwz r8, 0x8(r31)
    stb r0, 0xd(r31)
    stw r10, 0x8(r1)
    stw r9, 0xc(r1)
    stw r8, 0x10(r1)
    stw r6, 0x14(r1)
    stw r0, 0x0(r30)
    opword  0x418100B8  // bgt .L_80064798
    subf r4, r3, r4
    lis r8, gTRKCPUState@ha
    addi r0, r4, 0x1
    lwz r4, 0x0(r30)
    slwi r6, r0, 2
    cmpwi r7, 0x0
    add r4, r4, r6
    addi r7, r8, gTRKCPUState@l
    slwi r3, r3, 2
    stw r4, 0x0(r30)
    add r4, r7, r3
    addi r4, r4, 0x1a8
    opword  0x41820014  // beq .L_80064728
    mr r3, r5
    mr r5, r0
    bl fn_800612F4
    opword  0x48000074  // b .L_80064798
L_80064728:
    addi r3, r7, 0x1ec
    cmplw r4, r3
    opword  0x41810024  // bgt .L_80064754
    subi r6, r6, 0x4
    addi r3, r7, 0x1e8
    add r6, r4, r6
    cmplw r6, r3
    opword  0x41800010  // blt .L_80064754
    lis r3, gTRKRestoreFlags@ha
    li r6, 0x1
    stb r6, gTRKRestoreFlags@l(r3)
L_80064754:
    lis r3, gTRKCPUState@ha
    addi r3, r3, gTRKCPUState@l
    addi r6, r3, 0x278
    cmplw r4, r6
    opword  0x41810028  // bgt .L_8006478C
    slwi r3, r0, 2
    subi r3, r3, 0x4
    add r3, r4, r3
    cmplw r3, r6
    opword  0x41800014  // blt .L_8006478C
    lis r3, gTRKRestoreFlags@ha
    li r6, 0x1
    addi r3, r3, gTRKRestoreFlags@l
    stb r6, 0x1(r3)
L_8006478C:
    mr r3, r5
    mr r5, r0
    bl fn_80061084
L_80064798:
    lbz r0, 0xd(r31)
    cmplwi r0, 0x0
    opword  0x41820010  // beq .L_800647B0
    li r0, 0x0
    li r3, 0x702
    stw r0, 0x0(r30)
L_800647B0:
    lis r4, gTRKExceptionStatus@ha
    lwz r6, 0x8(r1)
    addi r7, r4, gTRKExceptionStatus@l
    lwz r5, 0xc(r1)
    lwz r4, 0x10(r1)
    lwz r0, 0x14(r1)
    stw r6, 0x0(r7)
    stw r5, 0x4(r7)
    stw r4, 0x8(r7)
    stw r0, 0xc(r7)
L_800647D8:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800647F0(void)
{
    nofralloc
    stwu r1, -0xf0(r1)
    mflr r0
    stw r0, 0xf4(r1)
    stmw r20, 0xc0(r1)
    mr r28, r4
    cmplwi r28, 0x21
    mr r20, r3
    mr r29, r5
    mr r30, r6
    mr r31, r7
    opword  0x4081000C  // ble .L_80064824
    li r3, 0x701
    opword  0x480004C8  // b .L_80064CE8
L_80064824:
    lis r3, gTRKExceptionStatus@ha
    li r0, 0x0
    addi r27, r3, gTRKExceptionStatus@l
    lwz r3, 0xc(r27)
    lwz r6, 0x0(r27)
    lwz r5, 0x4(r27)
    lwz r4, 0x8(r27)
    stw r6, 0x10(r1)
    stw r5, 0x14(r1)
    stw r4, 0x18(r1)
    stw r3, 0x1c(r1)
    stb r0, 0xd(r27)
    bl fn_800636A0
    ori r3, r3, 0x2000
    bl fn_800636A8
    li r0, 0x0
    mr r21, r20
    stw r0, 0x0(r30)
    slwi r26, r20, 21
    addi r25, r1, 0x98
    addi r24, r1, 0x48
    addi r23, r1, 0x70
    addi r22, r1, 0x20
    li r3, 0x0
    opword  0x48000414  // b .L_80064C98
L_80064888:
    cmpwi r31, 0x0
    opword  0x418201FC  // beq .L_80064A88
    lis r3, lbl_8045D988@ha
    cmplwi r21, 0x20
    addi r12, r3, lbl_8045D988@l
    lwz r11, 0x0(r12)
    lwz r10, 0x4(r12)
    lwz r9, 0x8(r12)
    lwz r8, 0xc(r12)
    lwz r7, 0x10(r12)
    lwz r6, 0x14(r12)
    lwz r5, 0x18(r12)
    lwz r4, 0x1c(r12)
    lwz r3, 0x20(r12)
    lwz r0, 0x24(r12)
    stw r11, 0x98(r1)
    stw r10, 0x9c(r1)
    stw r9, 0xa0(r1)
    stw r8, 0xa4(r1)
    stw r7, 0xa8(r1)
    stw r6, 0xac(r1)
    stw r5, 0xb0(r1)
    stw r4, 0xb4(r1)
    stw r3, 0xb8(r1)
    stw r0, 0xbc(r1)
    opword  0x4080004C  // bge .L_80064938
    cmpwi r31, 0x0
    oris r0, r26, 0xc803
    opword  0x41820008  // beq .L_80064900
    oris r0, r26, 0xd803
L_80064900:
    lis r3, 0x4e80
    stw r0, 0x98(r1)
    addi r0, r3, 0x20
    mr r3, r25
    stw r0, 0xbc(r1)
    li r4, 0x28
    bl fn_800635B0
    lis r3, lbl_804B8604@ha
    addi r12, r1, 0x98
    addi r4, r3, lbl_804B8604@l
    addi r3, r1, 0x8
    mtctr r12
    bctrl
    opword  0x48000140  // b .L_80064A74
L_80064938:
    opword  0x40820044  // bne .L_8006497C
    cmpwi r31, 0x0
    opword  0x41820010  // beq .L_80064950
    addi r3, r1, 0x8
    bl fn_80063A34
    opword  0x4800000C  // b .L_80064958
L_80064950:
    addi r3, r1, 0x8
    bl fn_80063A58
L_80064958:
    lwz r4, 0x8(r1)
    li r0, 0x0
    lwz r5, 0xc(r1)
    li r3, -0x1
    and r0, r4, r0
    and r3, r5, r3
    stw r0, 0x8(r1)
    stw r3, 0xc(r1)
    opword  0x480000FC  // b .L_80064A74
L_8006497C:
    cmplwi r21, 0x21
    opword  0x408200F4  // bne .L_80064A74
    cmpwi r31, 0x0
    opword  0x4082000C  // bne .L_80064994
    lwz r0, 0xc(r1)
    stw r0, 0x8(r1)
L_80064994:
    lis r3, lbl_8045D938@ha
    cmpwi r31, 0x0
    addi r12, r3, lbl_8045D938@l
    lwz r11, 0x0(r12)
    lwz r10, 0x4(r12)
    lwz r9, 0x8(r12)
    lwz r8, 0xc(r12)
    lwz r7, 0x10(r12)
    lwz r6, 0x14(r12)
    lwz r5, 0x18(r12)
    lwz r4, 0x1c(r12)
    lwz r3, 0x20(r12)
    lwz r0, 0x24(r12)
    stw r11, 0x48(r1)
    stw r10, 0x4c(r1)
    stw r9, 0x50(r1)
    stw r8, 0x54(r1)
    stw r7, 0x58(r1)
    stw r6, 0x5c(r1)
    stw r5, 0x60(r1)
    stw r4, 0x64(r1)
    stw r3, 0x68(r1)
    stw r0, 0x6c(r1)
    opword  0x4182001C  // beq .L_80064A0C
    lis r3, 0x7c9f
    lis r0, 0x9083
    subi r3, r3, 0x55a
    stw r0, 0x4c(r1)
    stw r3, 0x48(r1)
    opword  0x48000018  // b .L_80064A20
L_80064A0C:
    lis r3, 0x7c9f
    lis r4, 0x8083
    subi r0, r3, 0x45a
    stw r4, 0x48(r1)
    stw r0, 0x4c(r1)
L_80064A20:
    lis r4, 0x4e80
    mr r3, r24
    addi r0, r4, 0x20
    li r4, 0x28
    stw r0, 0x6c(r1)
    bl fn_800635B0
    lis r3, lbl_804B8604@ha
    addi r12, r1, 0x48
    addi r4, r3, lbl_804B8604@l
    addi r3, r1, 0x8
    mtctr r12
    bctrl
    cmpwi r31, 0x0
    opword  0x41820020  // beq .L_80064A74
    lwz r3, 0x8(r1)
    li r4, 0x0
    li r0, -0x1
    and r3, r3, r0
    and r0, r4, r4
    stw r3, 0xc(r1)
    stw r0, 0x8(r1)
L_80064A74:
    lwz r5, 0x8(r1)
    mr r3, r29
    lwz r6, 0xc(r1)
    bl fn_80061458
    opword  0x48000200  // b .L_80064C84
L_80064A88:
    mr r3, r29
    addi r4, r1, 0x8
    bl fn_8006120C
    lis r3, lbl_8045D988@ha
    cmplwi r21, 0x20
    addi r12, r3, lbl_8045D988@l
    li r20, 0x0
    lwz r11, 0x0(r12)
    lwz r10, 0x4(r12)
    lwz r9, 0x8(r12)
    lwz r8, 0xc(r12)
    lwz r7, 0x10(r12)
    lwz r6, 0x14(r12)
    lwz r5, 0x18(r12)
    lwz r4, 0x1c(r12)
    lwz r3, 0x20(r12)
    lwz r0, 0x24(r12)
    stw r11, 0x70(r1)
    stw r10, 0x74(r1)
    stw r9, 0x78(r1)
    stw r8, 0x7c(r1)
    stw r7, 0x80(r1)
    stw r6, 0x84(r1)
    stw r5, 0x88(r1)
    stw r4, 0x8c(r1)
    stw r3, 0x90(r1)
    stw r0, 0x94(r1)
    opword  0x40800050  // bge .L_80064B44
    cmpwi r31, 0x0
    oris r0, r26, 0xc803
    opword  0x41820008  // beq .L_80064B08
    oris r0, r26, 0xd803
L_80064B08:
    lis r3, 0x4e80
    stw r0, 0x70(r1)
    addi r0, r3, 0x20
    mr r3, r23
    stw r0, 0x94(r1)
    li r4, 0x28
    bl fn_800635B0
    lis r3, lbl_804B8604@ha
    addi r12, r1, 0x70
    addi r4, r3, lbl_804B8604@l
    addi r3, r1, 0x8
    mtctr r12
    bctrl
    li r20, 0x0
    opword  0x48000140  // b .L_80064C80
L_80064B44:
    opword  0x40820044  // bne .L_80064B88
    cmpwi r31, 0x0
    opword  0x41820010  // beq .L_80064B5C
    addi r3, r1, 0x8
    bl fn_80063A34
    opword  0x4800000C  // b .L_80064B64
L_80064B5C:
    addi r3, r1, 0x8
    bl fn_80063A58
L_80064B64:
    lwz r4, 0x8(r1)
    li r0, 0x0
    lwz r5, 0xc(r1)
    li r3, -0x1
    and r0, r4, r0
    and r3, r5, r3
    stw r0, 0x8(r1)
    stw r3, 0xc(r1)
    opword  0x480000FC  // b .L_80064C80
L_80064B88:
    cmplwi r21, 0x21
    opword  0x408200F4  // bne .L_80064C80
    cmpwi r31, 0x0
    opword  0x4082000C  // bne .L_80064BA0
    lwz r0, 0xc(r1)
    stw r0, 0x8(r1)
L_80064BA0:
    lis r3, lbl_8045D938@ha
    cmpwi r31, 0x0
    addi r12, r3, lbl_8045D938@l
    lwz r11, 0x0(r12)
    lwz r10, 0x4(r12)
    lwz r9, 0x8(r12)
    lwz r8, 0xc(r12)
    lwz r7, 0x10(r12)
    lwz r6, 0x14(r12)
    lwz r5, 0x18(r12)
    lwz r4, 0x1c(r12)
    lwz r3, 0x20(r12)
    lwz r0, 0x24(r12)
    stw r11, 0x20(r1)
    stw r10, 0x24(r1)
    stw r9, 0x28(r1)
    stw r8, 0x2c(r1)
    stw r7, 0x30(r1)
    stw r6, 0x34(r1)
    stw r5, 0x38(r1)
    stw r4, 0x3c(r1)
    stw r3, 0x40(r1)
    stw r0, 0x44(r1)
    opword  0x4182001C  // beq .L_80064C18
    lis r3, 0x7c9f
    lis r0, 0x9083
    subi r3, r3, 0x55a
    stw r0, 0x24(r1)
    stw r3, 0x20(r1)
    opword  0x48000018  // b .L_80064C2C
L_80064C18:
    lis r3, 0x7c9f
    lis r4, 0x8083
    subi r0, r3, 0x45a
    stw r4, 0x20(r1)
    stw r0, 0x24(r1)
L_80064C2C:
    lis r4, 0x4e80
    mr r3, r22
    addi r0, r4, 0x20
    li r4, 0x28
    stw r0, 0x44(r1)
    bl fn_800635B0
    lis r3, lbl_804B8604@ha
    addi r12, r1, 0x20
    addi r4, r3, lbl_804B8604@l
    addi r3, r1, 0x8
    mtctr r12
    bctrl
    cmpwi r31, 0x0
    li r20, 0x0
    opword  0x4182001C  // beq .L_80064C80
    lwz r4, 0x8(r1)
    li r3, -0x1
    and r0, r20, r20
    and r3, r4, r3
    stw r0, 0x8(r1)
    stw r3, 0xc(r1)
L_80064C80:
    mr r3, r20
L_80064C84:
    lwz r4, 0x0(r30)
    addis r26, r26, 0x20
    addi r21, r21, 0x1
    addi r0, r4, 0x8
    stw r0, 0x0(r30)
L_80064C98:
    cmplw r21, r28
    opword  0x4181000C  // bgt .L_80064CA8
    cmpwi r3, 0x0
    opword  0x4182FBE4  // beq .L_80064888
L_80064CA8:
    lbz r0, 0xd(r27)
    cmplwi r0, 0x0
    opword  0x41820010  // beq .L_80064CC0
    li r0, 0x0
    li r3, 0x702
    stw r0, 0x0(r30)
L_80064CC0:
    lis r4, gTRKExceptionStatus@ha
    lwz r6, 0x10(r1)
    addi r7, r4, gTRKExceptionStatus@l
    lwz r5, 0x14(r1)
    lwz r4, 0x18(r1)
    lwz r0, 0x1c(r1)
    stw r6, 0x0(r7)
    stw r5, 0x4(r7)
    stw r4, 0x8(r7)
    stw r0, 0xc(r7)
L_80064CE8:
    lmw r20, 0xc0(r1)
    lwz r0, 0xf4(r1)
    mtlr r0
    addi r1, r1, 0xf0
    blr
}

ASM void fn_80064CFC(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    cmplwi r4, 0x24
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    mr r31, r6
    stw r30, 0x18(r1)
    opword  0x4081000C  // ble .L_80064D24
    li r3, 0x701
    opword  0x480000B8  // b .L_80064DD8
L_80064D24:
    lis r6, gTRKExceptionStatus@ha
    subf r4, r3, r4
    addi r30, r6, gTRKExceptionStatus@l
    lis r6, gTRKCPUState@ha
    lwz r9, 0xc(r30)
    li r8, 0x0
    addi r12, r4, 0x1
    lwz r11, 0x0(r30)
    lwz r10, 0x4(r30)
    cmpwi r7, 0x0
    lwz r7, 0x8(r30)
    slwi r0, r12, 2
    stb r8, 0xd(r30)
    slwi r4, r3, 2
    addi r3, r6, gTRKCPUState@l
    stw r11, 0x8(r1)
    add r4, r3, r4
    stw r10, 0xc(r1)
    stw r7, 0x10(r1)
    stw r9, 0x14(r1)
    stw r0, 0x0(r31)
    opword  0x41820014  // beq .L_80064D8C
    mr r3, r5
    mr r5, r12
    bl fn_800612F4
    opword  0x48000010  // b .L_80064D98
L_80064D8C:
    mr r3, r5
    mr r5, r12
    bl fn_80061084
L_80064D98:
    lbz r0, 0xd(r30)
    cmplwi r0, 0x0
    opword  0x41820010  // beq .L_80064DB0
    li r0, 0x0
    li r3, 0x702
    stw r0, 0x0(r31)
L_80064DB0:
    lis r4, gTRKExceptionStatus@ha
    lwz r6, 0x8(r1)
    addi r7, r4, gTRKExceptionStatus@l
    lwz r5, 0xc(r1)
    lwz r4, 0x10(r1)
    lwz r0, 0x14(r1)
    stw r6, 0x0(r7)
    stw r5, 0x4(r7)
    stw r4, 0x8(r7)
    stw r0, 0xc(r7)
L_80064DD8:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_80064DF0(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    li r6, 0x0
    li r7, 0x1
    stw r0, 0x14(r1)
    li r0, 0x4
    addi r5, r1, 0x8
    stw r0, 0x8(r1)
    bl fn_80064E3C
    cmpwi r3, 0x0
    opword  0x40820014  // bne .L_80064E2C
    lwz r0, 0x8(r1)
    cmplwi r0, 0x4
    opword  0x41820008  // beq .L_80064E2C
    li r3, 0x700
L_80064E2C:
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80064E3C(void)
{
    nofralloc
    stwu r1, -0x40(r1)
    mflr r0
    lis r6, gTRKExceptionStatus@ha
    stw r0, 0x44(r1)
    li r0, 0x0
    stmw r25, 0x24(r1)
    addi r31, r6, gTRKExceptionStatus@l
    mr r27, r4
    mr r28, r5
    mr r26, r3
    mr r29, r7
    mr r3, r27
    lwz r4, 0xc(r31)
    lwz r8, 0x0(r31)
    lwz r6, 0x4(r31)
    lwz r5, 0x8(r31)
    stw r8, 0x8(r1)
    stw r6, 0xc(r1)
    stw r5, 0x10(r1)
    stw r4, 0x14(r1)
    stb r0, 0xd(r31)
    bl fn_80065B84
    cntlzw r0, r29
    lwz r4, 0x0(r28)
    mr r25, r3
    srwi r5, r0, 5
    bl fn_80064F88
    mr. r30, r3
    opword  0x41820010  // beq .L_80064EBC
    li r0, 0x0
    stw r0, 0x0(r28)
    opword  0x48000078  // b .L_80064F30
L_80064EBC:
    bl fn_800636A0
    lis r4, gTRKCPUState@ha
    cmpwi r29, 0x0
    addi r4, r4, gTRKCPUState@l
    mr r8, r3
    lwz r0, 0x1f8(r4)
    rlwinm r0, r0, 0, 27, 27
    or r7, r8, r0
    opword  0x4182001C  // beq .L_80064EF8
    lwz r5, 0x0(r28)
    mr r3, r26
    mr r4, r25
    mr r6, r8
    bl fn_800636B0
    opword  0x4800003C  // b .L_80064F30
L_80064EF8:
    lwz r5, 0x0(r28)
    mr r3, r25
    mr r4, r26
    mr r6, r7
    mr r7, r8
    bl fn_800636B0
    lwz r4, 0x0(r28)
    mr r3, r25
    bl fn_800635B0
    cmplw r27, r25
    opword  0x41820010  // beq .L_80064F30
    lwz r4, 0x0(r28)
    mr r3, r27
    bl fn_800635B0
L_80064F30:
    lbz r0, 0xd(r31)
    cmplwi r0, 0x0
    opword  0x41820010  // beq .L_80064F48
    li r0, 0x0
    li r30, 0x702
    stw r0, 0x0(r28)
L_80064F48:
    lis r3, gTRKExceptionStatus@ha
    lwz r6, 0x8(r1)
    addi r7, r3, gTRKExceptionStatus@l
    lwz r5, 0xc(r1)
    lwz r4, 0x10(r1)
    mr r3, r30
    lwz r0, 0x14(r1)
    stw r6, 0x0(r7)
    stw r5, 0x4(r7)
    stw r4, 0x8(r7)
    stw r0, 0xc(r7)
    lmw r25, 0x24(r1)
    lwz r0, 0x44(r1)
    mtlr r0
    addi r1, r1, 0x40
    blr
}

ASM void fn_80064F88(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stmw r26, 0x8(r1)
    add r27, r4, r3
    subi r27, r27, 0x1
    mr r26, r5
    cmplw r27, r3
    li r5, 0x700
    opword  0x4080000C  // bge .L_80064FB8
    li r3, 0x700
    opword  0x48000264  // b .L_80065218
L_80064FB8:
    lis r4, lbl_8045D928@ha
    li r6, 0x0
    addi r31, r4, lbl_8045D928@l
    lwz r0, 0x4(r31)
    cmplw r3, r0
    opword  0x41810248  // bgt .L_80065214
    lwz r0, 0x0(r31)
    cmplw r27, r0
    opword  0x4180023C  // blt .L_80065214
    cmpwi r26, 0x0
    opword  0x40820018  // bne .L_80064FF8
    slwi r0, r6, 4
    add r4, r31, r0
    lwz r0, 0x8(r4)
    cmpwi r0, 0x0
    opword  0x41820028  // beq .L_8006501C
L_80064FF8:
    cmpwi r26, 0x1
    opword  0x40820028  // bne .L_80065024
    lis r4, lbl_8045D928@ha
    slwi r0, r6, 4
    addi r4, r4, lbl_8045D928@l
    add r4, r4, r0
    lwz r0, 0xc(r4)
    cmpwi r0, 0x0
    opword  0x4082000C  // bne .L_80065024
L_8006501C:
    li r5, 0x700
    opword  0x480001F4  // b .L_80065214
L_80065024:
    lis r4, lbl_8045D928@ha
    slwi r29, r6, 4
    addi r4, r4, lbl_8045D928@l
    li r5, 0x0
    lwzx r0, r4, r29
    cmplw r3, r0
    opword  0x408000E4  // bge .L_80065120
    subf r0, r3, r0
    li r6, 0x700
    add r30, r0, r3
    subi r30, r30, 0x1
    cmplw r30, r3
    opword  0x40800008  // bge .L_8006505C
    opword  0x480000C4  // b .L_8006511C
L_8006505C:
    lwz r0, 0x4(r31)
    li r5, 0x0
    cmplw r3, r0
    opword  0x418100B4  // bgt .L_8006511C
    lwz r0, 0x0(r31)
    cmplw r30, r0
    opword  0x418000A8  // blt .L_8006511C
    cmpwi r26, 0x0
    opword  0x40820018  // bne .L_80065094
    slwi r0, r5, 4
    add r4, r4, r0
    lwz r0, 0x8(r4)
    cmpwi r0, 0x0
    opword  0x41820028  // beq .L_800650B8
L_80065094:
    cmpwi r26, 0x1
    opword  0x40820028  // bne .L_800650C0
    lis r4, lbl_8045D928@ha
    slwi r0, r5, 4
    addi r4, r4, lbl_8045D928@l
    add r4, r4, r0
    lwz r0, 0xc(r4)
    cmpwi r0, 0x0
    opword  0x4082000C  // bne .L_800650C0
L_800650B8:
    li r6, 0x700
    opword  0x48000060  // b .L_8006511C
L_800650C0:
    lis r4, lbl_8045D928@ha
    slwi r28, r5, 4
    addi r4, r4, lbl_8045D928@l
    li r6, 0x0
    lwzx r0, r4, r28
    cmplw r3, r0
    opword  0x40800014  // bge .L_800650EC
    mr r5, r26
    subf r4, r3, r0
    bl fn_80064F88
    mr r6, r3
L_800650EC:
    cmpwi r6, 0x0
    opword  0x4082002C  // bne .L_8006511C
    lis r3, lbl_8045D928@ha
    addi r0, r3, lbl_8045D928@l
    add r3, r0, r28
    lwz r3, 0x4(r3)
    cmplw r30, r3
    opword  0x40810014  // ble .L_8006511C
    mr r5, r26
    subf r4, r3, r30
    bl fn_80064F88
    mr r6, r3
L_8006511C:
    mr r5, r6
L_80065120:
    cmpwi r5, 0x0
    opword  0x408200F0  // bne .L_80065214
    lis r3, lbl_8045D928@ha
    addi r4, r3, lbl_8045D928@l
    addi r28, r4, 0x4
    lwzx r3, r28, r29
    cmplw r27, r3
    opword  0x408100D8  // ble .L_80065214
    subf r0, r3, r27
    li r6, 0x700
    add r30, r0, r3
    subi r30, r30, 0x1
    cmplw r30, r3
    opword  0x40800008  // bge .L_8006515C
    opword  0x480000B8  // b .L_80065210
L_8006515C:
    lwz r0, 0x4(r31)
    li r5, 0x0
    cmplw r3, r0
    opword  0x418100A8  // bgt .L_80065210
    lwz r0, 0x0(r31)
    cmplw r30, r0
    opword  0x4180009C  // blt .L_80065210
    cmpwi r26, 0x0
    opword  0x40820018  // bne .L_80065194
    slwi r0, r5, 4
    add r4, r4, r0
    lwz r0, 0x8(r4)
    cmpwi r0, 0x0
    opword  0x41820028  // beq .L_800651B8
L_80065194:
    cmpwi r26, 0x1
    opword  0x40820028  // bne .L_800651C0
    lis r4, lbl_8045D928@ha
    slwi r0, r5, 4
    addi r4, r4, lbl_8045D928@l
    add r4, r4, r0
    lwz r0, 0xc(r4)
    cmpwi r0, 0x0
    opword  0x4082000C  // bne .L_800651C0
L_800651B8:
    li r6, 0x700
    opword  0x48000054  // b .L_80065210
L_800651C0:
    lis r4, lbl_8045D928@ha
    slwi r27, r5, 4
    addi r4, r4, lbl_8045D928@l
    li r6, 0x0
    lwzx r0, r4, r27
    cmplw r3, r0
    opword  0x40800014  // bge .L_800651EC
    mr r5, r26
    subf r4, r3, r0
    bl fn_80064F88
    mr r6, r3
L_800651EC:
    cmpwi r6, 0x0
    opword  0x40820020  // bne .L_80065210
    lwzx r3, r28, r27
    cmplw r30, r3
    opword  0x40810014  // ble .L_80065210
    mr r5, r26
    subf r4, r3, r30
    bl fn_80064F88
    mr r6, r3
L_80065210:
    mr r5, r6
L_80065214:
    mr r3, r5
L_80065218:
    lmw r26, 0x8(r1)
    lwz r0, 0x24(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
    opword  0x00000000  // .4byte 0x00000000 /* invalid */
}

ASM void fn_80065230(void)
{
    nofralloc
    opword  0x0FE00000  // twui r0, 0x0
    blr
    opword  0x0FE00000  // twui r0, 0x0
    blr
}

ASM void fn_80065240(void)
{
    nofralloc
    opword  0x0FE00000  // twui r0, 0x0
    blr
    opword  0x0FE00000  // twui r0, 0x0
    blr
}

ASM void TRKSaveExtended1Block(void)
{
    nofralloc
    lis r2, gTRKCPUState@h
    ori r2, r2, gTRKCPUState@l
    mfsr r16, 0
    mfsr r17, 1
    mfsr r18, 2
    mfsr r19, 3
    mfsr r20, 4
    mfsr r21, 5
    mfsr r22, 6
    mfsr r23, 7
    mfsr r24, 8
    mfsr r25, 9
    mfsr r26, 10
    mfsr r27, 11
    mfsr r28, 12
    mfsr r29, 13
    mfsr r30, 14
    mfsr r31, 15
    stmw r16, 0x1a8(r2)
    mftb r10, 268
    mftb r11, 269
    opword  0x7D90FAA6  // mfspr r12, HID0
    opword  0x7DB1FAA6  // mfspr r13, HID1
    mfsrr1 r14
    opword  0x7DFF42A6  // mfspr r15, PVR
    mfibatu r16, 0
    mfibatl r17, 0
    mfibatu r18, 1
    mfibatl r19, 1
    mfibatu r20, 2
    mfibatl r21, 2
    mfibatu r22, 3
    mfibatl r23, 3
    mfdbatu r24, 0
    mfdbatl r25, 0
    mfdbatu r26, 1
    mfdbatl r27, 1
    mfdbatu r28, 2
    mfdbatl r29, 2
    mfdbatu r30, 3
    mfdbatl r31, 3
    stmw r10, 0x1e8(r2)
    mfsdr1 r22
    mfdar r23
    mfdsisr r24
    opword  0x7F3042A6  // mfsprg r25, 0
    opword  0x7F5142A6  // mfsprg r26, 1
    opword  0x7F7242A6  // mfsprg r27, 2
    opword  0x7F9342A6  // mfsprg r28, 3
    li r29, 0x0
    opword  0x7FD2FAA6  // mfspr r30, IABR
    mfear r31
    stmw r22, 0x25c(r2)
    opword  0x7E90E2A6  // mfspr r20, GQR0
    opword  0x7EB1E2A6  // mfspr r21, GQR1
    opword  0x7ED2E2A6  // mfspr r22, GQR2
    opword  0x7EF3E2A6  // mfspr r23, GQR3
    opword  0x7F14E2A6  // mfspr r24, GQR4
    opword  0x7F35E2A6  // mfspr r25, GQR5
    opword  0x7F56E2A6  // mfspr r26, GQR6
    opword  0x7F77E2A6  // mfspr r27, GQR7
    opword  0x7F98E2A6  // mfspr r28, HID2
    opword  0x7FB9E2A6  // mfspr r29, WPAR
    opword  0x7FDAE2A6  // mfspr r30, DMA_U
    opword  0x7FFBE2A6  // mfspr r31, DMA_L
    stmw r20, 0x2fc(r2)
    opword  0x48000048  // b .L_800653A0
    opword  0x7E00EAA6  // mfspr r16, 928
    opword  0x7E27EAA6  // mfspr r17, 935
    opword  0x7E48EAA6  // mfspr r18, UMMCR0
    opword  0x7E69EAA6  // mfspr r19, UPMC1
    opword  0x7E8AEAA6  // mfspr r20, UPMC2
    opword  0x7EABEAA6  // mfspr r21, USIA
    opword  0x7ECCEAA6  // mfspr r22, UMMCR1
    opword  0x7EEDEAA6  // mfspr r23, UPMC3
    opword  0x7F0EEAA6  // mfspr r24, UPMC4
    opword  0x7F2FEAA6  // mfspr r25, USDA
    opword  0x7F50EAA6  // mfspr r26, 944
    opword  0x7F77EAA6  // mfspr r27, 951
    opword  0x7F9FEAA6  // mfspr r28, SDA
    opword  0x7FB6FAA6  // mfspr r29, 1014
    opword  0x7FD7FAA6  // mfspr r30, 1015
    opword  0x7FFFFAA6  // mfspr r31, 1023
    stmw r16, 0x2b8(r2)
L_800653A0:
    opword  0x7E75FAA6  // mfspr r19, DABR
    opword  0x7E99EAA6  // mfspr r20, PMC1
    opword  0x7EBAEAA6  // mfspr r21, PMC2
    opword  0x7EDDEAA6  // mfspr r22, PMC3
    opword  0x7EFEEAA6  // mfspr r23, PMC4
    opword  0x7F1BEAA6  // mfspr r24, SIA
    opword  0x7F38EAA6  // mfspr r25, MMCR0
    opword  0x7F5CEAA6  // mfspr r26, MMCR1
    opword  0x7F7CFAA6  // mfspr r27, THRM1
    opword  0x7F9DFAA6  // mfspr r28, THRM2
    opword  0x7FBEFAA6  // mfspr r29, THRM3
    opword  0x7FDBFAA6  // mfspr r30, ICTC
    opword  0x7FF9FAA6  // mfspr r31, L2CR
    stmw r19, 0x284(r2)
    blr
    opword  0x7F30F2A6  // mfspr r25, 976
    opword  0x7F51F2A6  // mfspr r26, 977
    opword  0x7F72F2A6  // mfspr r27, 978
    opword  0x7F93F2A6  // mfspr r28, 979
    opword  0x7FB4F2A6  // mfspr r29, 980
    opword  0x7FD5F2A6  // mfspr r30, 981
    opword  0x7FF6F2A6  // mfspr r31, 982
    stmw r25, 0x240(r2)
    mfdec r31
    stw r31, 0x278(r2)
    blr
}

ASM void TRKRestoreExtended1Block(void)
{
    nofralloc
    lis r2, gTRKCPUState@h
    ori r2, r2, gTRKCPUState@l
    lis r5, gTRKRestoreFlags@h
    ori r5, r5, gTRKRestoreFlags@l
    lbz r3, 0x0(r5)
    lbz r6, 0x1(r5)
    li r0, 0x0
    stb r0, 0x0(r5)
    stb r0, 0x1(r5)
    cmpwi r3, 0x0
    opword  0x41820014  // beq .L_80065444
    lwz r24, 0x1e8(r2)
    lwz r25, 0x1ec(r2)
    mttbl r24
    mttbu r25
L_80065444:
    lmw r20, 0x2fc(r2)
    opword  0x7E90E3A6  // mtspr GQR0, r20
    opword  0x7EB1E3A6  // mtspr GQR1, r21
    opword  0x7ED2E3A6  // mtspr GQR2, r22
    opword  0x7EF3E3A6  // mtspr GQR3, r23
    opword  0x7F14E3A6  // mtspr GQR4, r24
    opword  0x7F35E3A6  // mtspr GQR5, r25
    opword  0x7F56E3A6  // mtspr GQR6, r26
    opword  0x7F77E3A6  // mtspr GQR7, r27
    opword  0x7F98E3A6  // mtspr HID2, r28
    opword  0x7FDAE3A6  // mtspr DMA_U, r30
    opword  0x7FFBE3A6  // mtspr DMA_L, r31
    opword  0x4800001C  // b .L_80065490
    lmw r26, 0x2e0(r2)
    opword  0x7F50EBA6  // mtspr 944, r26
    opword  0x7F77EBA6  // mtspr 951, r27
    opword  0x7FB6FBA6  // mtspr 1014, r29
    opword  0x7FD7FBA6  // mtspr 1015, r30
    opword  0x7FFFFBA6  // mtspr 1023, r31
L_80065490:
    lmw r19, 0x284(r2)
    opword  0x7E75FBA6  // mtspr DABR, r19
    opword  0x7E99EBA6  // mtspr PMC1, r20
    opword  0x7EBAEBA6  // mtspr PMC2, r21
    opword  0x7EDDEBA6  // mtspr PMC3, r22
    opword  0x7EFEEBA6  // mtspr PMC4, r23
    opword  0x7F1BEBA6  // mtspr SIA, r24
    opword  0x7F38EBA6  // mtspr MMCR0, r25
    opword  0x7F5CEBA6  // mtspr MMCR1, r26
    opword  0x7F7CFBA6  // mtspr THRM1, r27
    opword  0x7F9DFBA6  // mtspr THRM2, r28
    opword  0x7FBEFBA6  // mtspr THRM3, r29
    opword  0x7FDBFBA6  // mtspr ICTC, r30
    opword  0x7FF9FBA6  // mtspr L2CR, r31
    opword  0x48000034  // b .L_800654FC
    cmpwi r6, 0x0
    opword  0x4182000C  // beq .L_800654DC
    lwz r26, 0x278(r2)
    mtdec r26
L_800654DC:
    lmw r25, 0x240(r2)
    opword  0x7F30F3A6  // mtspr 976, r25
    opword  0x7F51F3A6  // mtspr 977, r26
    opword  0x7F72F3A6  // mtspr 978, r27
    opword  0x7F93F3A6  // mtspr 979, r28
    opword  0x7FB4F3A6  // mtspr 980, r29
    opword  0x7FD5F3A6  // mtspr 981, r30
    opword  0x7FF6F3A6  // mtspr 982, r31
L_800654FC:
    lmw r16, 0x1a8(r2)
    mtsr 0, r16
    mtsr 1, r17
    mtsr 2, r18
    mtsr 3, r19
    mtsr 4, r20
    mtsr 5, r21
    mtsr 6, r22
    mtsr 7, r23
    mtsr 8, r24
    mtsr 9, r25
    mtsr 10, r26
    mtsr 11, r27
    mtsr 12, r28
    mtsr 13, r29
    mtsr 14, r30
    mtsr 15, r31
    lmw r12, 0x1f0(r2)
    opword  0x7D90FBA6  // mtspr HID0, r12
    opword  0x7DB1FBA6  // mtspr HID1, r13
    mtsrr1 r14
    opword  0x7DFF43A6  // mtspr PVR, r15
    mtibatu 0, r16
    mtibatl 0, r17
    mtibatu 1, r18
    mtibatl 1, r19
    mtibatu 2, r20
    mtibatl 2, r21
    mtibatu 3, r22
    mtibatl 3, r23
    mtdbatu 0, r24
    mtdbatl 0, r25
    mtdbatu 1, r26
    mtdbatl 1, r27
    mtdbatu 2, r28
    mtdbatl 2, r29
    mtdbatu 3, r30
    mtdbatl 3, r31
    lmw r22, 0x25c(r2)
    mtsdr1 r22
    mtdar r23
    mtdsisr r24
    opword  0x7F3043A6  // mtsprg 0, r25
    opword  0x7F5143A6  // mtsprg 1, r26
    opword  0x7F7243A6  // mtsprg 2, r27
    opword  0x7F9343A6  // mtsprg 3, r28
    opword  0x7FD2FBA6  // mtspr IABR, r30
    mtear r31
    blr
}

ASM void InitMetroTRK(void)
{
    nofralloc
    subi r1, r1, 0x4
    stw r3, 0x0(r1)
    lis r3, gTRKCPUState@h
    ori r3, r3, gTRKCPUState@l
    stmw r0, 0x0(r3)
    lwz r4, 0x0(r1)
    addi r1, r1, 0x4
    stw r1, 0x4(r3)
    stw r4, 0xc(r3)
    mflr r4
    stw r4, 0x84(r3)
    stw r4, 0x80(r3)
    mfcr r4
    stw r4, 0x88(r3)
    mfmsr r4
    ori r3, r4, 0x8000
    xori r3, r3, 0x8000
    mtmsr r3
    mtsrr1 r4
    bl TRKSaveExtended1Block
    lis r3, gTRKCPUState@h
    ori r3, r3, gTRKCPUState@l
    opword  0xB8030000  // .4byte 0xB8030000 /* illegal: lmw r0, 0x0(r3) */
    li r0, 0x0
    opword  0x7C12FBA6  // mtspr IABR, r0
    opword  0x7C15FBA6  // mtspr DABR, r0
    opword  0x3C208055  // lis r1, _db_stack_addr@h
    opword  0x60215F70  // ori r1, r1, _db_stack_addr@l
    mr r3, r5
    bl InitMetroTRKCommTable
    cmpwi r3, 0x1
    opword  0x40820014  // bne .L_80065650
    lwz r4, 0x84(r3)
    mtlr r4
    opword  0xB8030000  // .4byte 0xB8030000 /* illegal: lmw r0, 0x0(r3) */
    blr
L_80065650:
    b TRK_main
    blr
}

ASM void InitMetroTRK_BBA(void)
{
    nofralloc
    subi r1, r1, 0x4
    stw r3, 0x0(r1)
    lis r3, gTRKCPUState@h
    ori r3, r3, gTRKCPUState@l
    stmw r0, 0x0(r3)
    lwz r4, 0x0(r1)
    addi r1, r1, 0x4
    stw r1, 0x4(r3)
    stw r4, 0xc(r3)
    mflr r4
    stw r4, 0x84(r3)
    stw r4, 0x80(r3)
    mfcr r4
    stw r4, 0x88(r3)
    mfmsr r4
    ori r3, r4, 0x8000
    mtmsr r3
    mtsrr1 r4
    bl TRKSaveExtended1Block
    lis r3, gTRKCPUState@h
    ori r3, r3, gTRKCPUState@l
    opword  0xB8030000  // .4byte 0xB8030000 /* illegal: lmw r0, 0x0(r3) */
    li r0, 0x0
    opword  0x7C12FBA6  // mtspr IABR, r0
    opword  0x7C15FBA6  // mtspr DABR, r0
    opword  0x3C208055  // lis r1, _db_stack_addr@h
    opword  0x60215F70  // ori r1, r1, _db_stack_addr@l
    li r3, 0x2
    bl InitMetroTRKCommTable
    cmpwi r3, 0x1
    opword  0x40820014  // bne .L_800656E4
    lwz r4, 0x84(r3)
    mtlr r4
    opword  0xB8030000  // .4byte 0xB8030000 /* illegal: lmw r0, 0x0(r3) */
    blr
L_800656E4:
    b TRK_main
    blr
}

ASM void fn_800656EC(void)
{
    nofralloc
    clrlwi r11, r1, 27
    mr r12, r1
    subfic r11, r11, -0x80
    stwux r1, r1, r11
    mflr r0
    stw r0, 0x4(r12)
    stmw r23, -0x24(r12)
    mr r31, r4
    cmplwi r31, 0x4000
    mr r30, r3
    mr r23, r5
    opword  0x418001A8  // blt .L_800658C0
    lwz r4, 0x0(r23)
    lis r0, 0x800
    add r3, r31, r4
    cmplw r3, r0
    opword  0x40810008  // ble .L_80065734
    opword  0x48000190  // b .L_800658C0
L_80065734:
    clrlwi r0, r31, 27
    clrrwi r27, r31, 5
    add r26, r4, r0
    li r24, 0x0
    addi r0, r26, 0x1f
    clrrwi r26, r0, 5
    cmplwi r26, 0x0
    addi r3, r26, 0x1f
    srwi r3, r3, 5
    opword  0x4081006C  // ble .L_800657C4
    srwi. r0, r3, 3
    mtctr r0
    opword  0x41820050  // beq .L_800657B4
L_80065768:
    dcbf r24, r30
    addi r24, r24, 0x20
    dcbf r24, r30
    addi r24, r24, 0x20
    dcbf r24, r30
    addi r24, r24, 0x20
    dcbf r24, r30
    addi r24, r24, 0x20
    dcbf r24, r30
    addi r24, r24, 0x20
    dcbf r24, r30
    addi r24, r24, 0x20
    dcbf r24, r30
    addi r24, r24, 0x20
    dcbf r24, r30
    addi r24, r24, 0x20
    opword  0x4200FFC0  // bdnz .L_80065768
    andi. r3, r3, 0x7
    opword  0x41820014  // beq .L_800657C4
L_800657B4:
    mtctr r3
L_800657B8:
    dcbf r24, r30
    addi r24, r24, 0x20
    opword  0x4200FFF8  // bdnz .L_800657B8
L_800657C4:
    bl fn_8004FE1C
    cmplwi r3, 0x0
    opword  0x4082FFF8  // bne .L_800657C4
    bl fn_80050114
    clrlwi. r24, r31, 27
    mr r29, r3
    lis r25, 0x800
    opword  0x41820048  // beq .L_80065828
    addi r28, r1, 0x20
    mr r25, r27
    dcbi r0, r28
    bl fn_800500F4
    mr r4, r28
    mr r5, r27
    li r3, 0x1
    li r6, 0x20
    bl fn_8004FE58
L_80065808:
    bl fn_80050114
    clrlwi. r0, r3, 16
    opword  0x4182FFF8  // beq .L_80065808
    mr r3, r30
    mr r5, r24
    addi r4, r1, 0x20
    bl fn_80003488
    dcbf r0, r30
L_80065828:
    lwz r0, 0x0(r23)
    add r31, r31, r0
    clrlwi. r24, r31, 27
    opword  0x41820058  // beq .L_8006588C
    clrrwi r23, r31, 5
    cmplw r23, r25
    opword  0x41820030  // beq .L_80065870
    addi r28, r1, 0x20
    dcbi r0, r28
    bl fn_800500F4
    mr r4, r28
    mr r5, r23
    li r3, 0x1
    li r6, 0x20
    bl fn_8004FE58
L_80065864:
    bl fn_80050114
    clrlwi. r0, r3, 16
    opword  0x4182FFF8  // beq .L_80065864
L_80065870:
    add r25, r30, r31
    addi r4, r1, 0x20
    mr r3, r25
    subfic r5, r24, 0x20
    add r4, r4, r24
    bl fn_80003488
    dcbf r0, r25
L_8006588C:
    sync
    bl fn_800500F4
    mr r4, r30
    mr r5, r27
    mr r6, r26
    li r3, 0x0
    bl fn_8004FE58
    clrlwi. r0, r29, 16
    opword  0x40820014  // bne .L_800658C0
L_800658B0:
    bl fn_80050114
    clrlwi. r0, r3, 16
    opword  0x4182FFF8  // beq .L_800658B0
    bl fn_800500F4
L_800658C0:
    lwz r10, 0x0(r1)
    lmw r23, -0x24(r10)
    lwz r0, 0x4(r10)
    mtlr r0
    mr r1, r10
    blr
}

ASM void fn_800658D8(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    cmplwi r4, 0x4000
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    stw r29, 0x14(r1)
    stw r28, 0x10(r1)
    mr r28, r3
    opword  0x418000F0  // blt .L_800659EC
    lwz r5, 0x0(r5)
    lis r0, 0x800
    add r3, r4, r5
    cmplw r3, r0
    opword  0x40810008  // ble .L_80065918
    opword  0x480000D8  // b .L_800659EC
L_80065918:
    clrlwi r0, r4, 27
    clrrwi r30, r4, 5
    add r29, r5, r0
    li r4, 0x0
    addi r0, r29, 0x1f
    clrrwi r29, r0, 5
    cmplwi r29, 0x0
    addi r3, r29, 0x1f
    srwi r3, r3, 5
    opword  0x4081006C  // ble .L_800659A8
    srwi. r0, r3, 3
    mtctr r0
    opword  0x41820050  // beq .L_80065998
L_8006594C:
    dcbi r4, r28
    addi r4, r4, 0x20
    dcbi r4, r28
    addi r4, r4, 0x20
    dcbi r4, r28
    addi r4, r4, 0x20
    dcbi r4, r28
    addi r4, r4, 0x20
    dcbi r4, r28
    addi r4, r4, 0x20
    dcbi r4, r28
    addi r4, r4, 0x20
    dcbi r4, r28
    addi r4, r4, 0x20
    dcbi r4, r28
    addi r4, r4, 0x20
    opword  0x4200FFC0  // bdnz .L_8006594C
    andi. r3, r3, 0x7
    opword  0x41820014  // beq .L_800659A8
L_80065998:
    mtctr r3
L_8006599C:
    dcbi r4, r28
    addi r4, r4, 0x20
    opword  0x4200FFF8  // bdnz .L_8006599C
L_800659A8:
    bl fn_8004FE1C
    cmplwi r3, 0x0
    opword  0x4082FFF8  // bne .L_800659A8
    bl fn_80050114
    mr r31, r3
    bl fn_800500F4
    mr r4, r28
    mr r5, r30
    mr r6, r29
    li r3, 0x1
    bl fn_8004FE58
L_800659D4:
    bl fn_80050114
    clrlwi. r0, r3, 16
    opword  0x4182FFF8  // beq .L_800659D4
    clrlwi. r0, r31, 16
    opword  0x40820008  // bne .L_800659EC
    bl fn_800500F4
L_800659EC:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    lwz r28, 0x10(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void TRKInitializeTarget(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    lis r3, gTRKState@ha
    stw r0, 0x14(r1)
    li r0, 0x1
    addi r3, r3, gTRKState@l
    stw r0, 0x98(r3)
    bl fn_800636A0
    lis r5, gTRKState@ha
    lis r4, lbl_804B8618@ha
    addi r5, r5, gTRKState@l
    lis r0, 0xe000
    stw r3, 0x8c(r5)
    li r3, 0x0
    stw r0, lbl_804B8618@l(r4)
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80065A58(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    lis r3, lbl_804B8618@ha
    stw r0, 0x24(r1)
    addi r3, r3, lbl_804B8618@l
    stmw r27, 0xc(r1)
    lwz r3, 0x0(r3)
    cmplwi r3, 0x44
    opword  0x4181002C  // bgt .L_80065AA4
    addi r0, r3, 0x4000
    cmplwi r0, 0x44
    opword  0x40810020  // ble .L_80065AA4
    lis r3, gTRKCPUState@ha
    addi r3, r3, gTRKCPUState@l
    lwz r0, 0x238(r3)
    clrlwi. r0, r0, 30
    opword  0x4182000C  // beq .L_80065AA4
    li r5, 0x44
    opword  0x4800000C  // b .L_80065AAC
L_80065AA4:
    lis r3, 0x8000
    addi r5, r3, 0x44
L_80065AAC:
    lis r4, lbl_80497A20@ha
    lis r3, gTRKCPUState@ha
    lwz r29, 0x0(r5)
    addi r31, r4, lbl_80497A20@l
    addi r28, r3, gTRKCPUState@l
    li r30, 0x0
L_80065AC4:
    li r0, 0x1
    slw r0, r0, r30
    and. r0, r29, r0
    opword  0x41820090  // beq .L_80065B60
    cmpwi r30, 0x4
    opword  0x41820088  // beq .L_80065B60
    lis r3, lbl_804B8618@ha
    lwz r6, 0x0(r31)
    addi r3, r3, lbl_804B8618@l
    lwz r3, 0x0(r3)
    cmplw r6, r3
    opword  0x41800024  // blt .L_80065B14
    addi r0, r3, 0x4000
    cmplw r6, r0
    opword  0x40800018  // bge .L_80065B14
    lwz r0, 0x238(r28)
    clrlwi. r0, r0, 30
    opword  0x4182000C  // beq .L_80065B14
    mr r27, r6
    opword  0x4800002C  // b .L_80065B3C
L_80065B14:
    lis r0, 0x7e00
    cmplw r6, r0
    opword  0x41800018  // blt .L_80065B34
    lis r0, 0x8000
    cmplw r6, r0
    opword  0x4181000C  // bgt .L_80065B34
    mr r27, r6
    opword  0x4800000C  // b .L_80065B3C
L_80065B34:
    clrlwi r0, r6, 2
    oris r27, r0, 0x8000
L_80065B3C:
    lis r4, gTRKInterruptVectorTable@ha
    mr r3, r27
    addi r0, r4, gTRKInterruptVectorTable@l
    li r5, 0x100
    add r4, r0, r6
    bl fn_80003488
    mr r3, r27
    li r4, 0x100
    bl fn_800635B0
L_80065B60:
    addi r30, r30, 0x1
    addi r31, r31, 0x4
    cmpwi r30, 0xe
    opword  0x4081FF58  // ble .L_80065AC4
    lmw r27, 0xc(r1)
    lwz r0, 0x24(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_80065B84(void)
{
    nofralloc
    lis r4, lbl_804B8618@ha
    addi r4, r4, lbl_804B8618@l
    lwz r4, 0x0(r4)
    cmplw r3, r4
    opword  0x41800024  // blt .L_80065BB8
    addi r0, r4, 0x4000
    cmplw r3, r0
    opword  0x40800018  // bge .L_80065BB8
    lis r4, gTRKCPUState@ha
    addi r4, r4, gTRKCPUState@l
    lwz r0, 0x238(r4)
    clrlwi. r0, r0, 30
    bnelr
L_80065BB8:
    lis r0, 0x7e00
    cmplw r3, r0
    opword  0x41800010  // blt .L_80065BD0
    lis r0, 0x8000
    cmplw r3, r0
    blelr
L_80065BD0:
    clrlwi r0, r3, 2
    oris r3, r0, 0x8000
    blr
}

ASM void EnableMetroTRKInterrupts(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    bl fn_80065E70
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void TRK_main(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    opword  0x3C808046  // lis r4, "@80_8045D9C0"@ha
    li r3, 0x1
    stw r0, 0x14(r1)
    opword  0x3884D9C0  // addi r4, r4, "@80_8045D9C0"@l
    crclr 6
    bl MWTRACE
    bl TRKInitializeNub
    lis r4, TRK_mainError@ha
    cmpwi r3, 0x0
    stw r3, TRK_mainError@l(r4)
    opword  0x4082000C  // bne .L_80065C38
    bl TRKNubWelcome
    bl TRKNubMainLoop
L_80065C38:
    bl TRKTerminateNub
    lis r4, TRK_mainError@ha
    stw r3, TRK_mainError@l(r4)
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void TRKLoadContext(void)
{
    nofralloc
    lwz r0, 0x0(r3)
    lwz r1, 0x4(r3)
    lwz r2, 0x8(r3)
    lhz r5, 0x1a2(r3)
    rlwinm. r6, r5, 0, 30, 30
    opword  0x41820014  // beq .L_80065C7C
    rlwinm r5, r5, 0, 31, 29
    sth r5, 0x1a2(r3)
    lmw r5, 0x14(r3)
    opword  0x48000008  // b .L_80065C80
L_80065C7C:
    lmw r13, 0x34(r3)
L_80065C80:
    mr r31, r3
    mr r3, r4
    lwz r4, 0x80(r31)
    mtcrf 255, r4
    lwz r4, 0x84(r31)
    mtlr r4
    lwz r4, 0x88(r31)
    mtctr r4
    lwz r4, 0x8c(r31)
    mtxer r4
    mfmsr r4
    rlwinm r4, r4, 0, 17, 15
    rlwinm r4, r4, 0, 31, 29
    mtmsr r4
    opword  0x7C5143A6  // mtsprg 1, r2
    lwz r4, 0xc(r31)
    opword  0x7C9243A6  // mtsprg 2, r4
    lwz r4, 0x10(r31)
    opword  0x7C9343A6  // mtsprg 3, r4
    lwz r2, 0x198(r31)
    lwz r4, 0x19c(r31)
    lwz r31, 0x7c(r31)
    b TRKInterruptHandler
}

ASM void TRKUARTInterruptHandler(void)
{
    nofralloc
    blr
}

ASM void InitializeProgramEndTrap(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    lis r4, PPCHalt@ha
    opword  0x3C608046  // lis r3, EndofProgramInstruction$162_8045D9D0@ha
    stw r0, 0x14(r1)
    li r5, 0x4
    stw r31, 0xc(r1)
    addi r31, r4, PPCHalt@l
    opword  0x3883D9D0  // addi r4, r3, EndofProgramInstruction$162_8045D9D0@l
    addi r3, r31, 0x4
    bl fn_80003488
    addi r3, r31, 0x4
    li r4, 0x4
    bl ICInvalidateRange
    addi r3, r31, 0x4
    li r4, 0x4
    bl DCFlushRange
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void TRK_board_display(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    lis r5, lbl_8045D9D4@ha
    mr r4, r3
    stw r0, 0x14(r1)
    addi r3, r5, lbl_8045D9D4@l
    crclr 6
    bl OSReport
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void UnreserveEXI2Port(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    lis r3, gDBCommTable@ha
    stw r0, 0x14(r1)
    addi r3, r3, gDBCommTable@l
    lwz r12, 0x20(r3)
    mtctr r12
    bctrl
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void ReserveEXI2Port(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    lis r3, gDBCommTable@ha
    stw r0, 0x14(r1)
    addi r3, r3, gDBCommTable@l
    lwz r12, 0x24(r3)
    mtctr r12
    bctrl
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80065DC8(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    lis r5, gDBCommTable@ha
    stw r0, 0x14(r1)
    addi r5, r5, gDBCommTable@l
    lwz r12, 0x14(r5)
    mtctr r12
    bctrl
    neg r0, r3
    or r0, r0, r3
    srawi r3, r0, 31
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80065E04(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    lis r5, gDBCommTable@ha
    stw r0, 0x14(r1)
    addi r5, r5, gDBCommTable@l
    lwz r12, 0x10(r5)
    mtctr r12
    bctrl
    neg r0, r3
    or r0, r0, r3
    srawi r3, r0, 31
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80065E40(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    lis r3, gDBCommTable@ha
    stw r0, 0x14(r1)
    addi r3, r3, gDBCommTable@l
    lwz r12, 0xc(r3)
    mtctr r12
    bctrl
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80065E70(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    lis r3, TRK_Use_BBA@ha
    stw r0, 0x14(r1)
    lbz r0, TRK_Use_BBA@l(r3)
    cmplwi r0, 0x0
    opword  0x40820020  // bne .L_80065EA8
    lis r3, gDBCommTable@ha
    addi r3, r3, gDBCommTable@l
    lwz r12, 0x4(r3)
    cmplwi r12, 0x0
    opword  0x4182000C  // beq .L_80065EA8
    mtctr r12
    bctrl
L_80065EA8:
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void TRKInitializeIntDrivenUART(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    lis r4, TRKEXICallBack@ha
    lis r3, gDBCommTable@ha
    stw r0, 0x14(r1)
    addi r4, r4, TRKEXICallBack@l
    lwz r12, gDBCommTable@l(r3)
    mr r3, r6
    mtctr r12
    bctrl
    lis r3, gDBCommTable@ha
    addi r3, r3, gDBCommTable@l
    lwz r12, 0x18(r3)
    mtctr r12
    bctrl
    lwz r0, 0x14(r1)
    li r3, 0x0
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void InitMetroTRKCommTable(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    opword  0x3C808046  // lis r4, EndofProgramInstruction$162_8045D9D0@ha
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    li r31, 0x1
    stw r30, 0x18(r1)
    mr r30, r3
    stw r29, 0x14(r1)
    opword  0x3BA4D9D0  // addi r29, r4, EndofProgramInstruction$162_8045D9D0@l
    mr r4, r30
    addi r3, r29, 0x8
    crclr 6
    bl OSReport
    lis r3, TRK_Use_BBA@ha
    li r0, 0x0
    cmpwi r30, 0x2
    stb r0, TRK_Use_BBA@l(r3)
    opword  0x408200A4  // bne .L_80065FF4
    addi r3, r29, 0x20
    crclr 6
    bl OSReport
    lis r30, TRK_Use_BBA@ha
    lis r12, udp_cc_initialize@ha
    lis r11, gDBCommTable@ha
    lis r10, udp_cc_open@ha
    lis r9, udp_cc_close@ha
    lis r8, udp_cc_read@ha
    lis r7, udp_cc_write@ha
    lis r6, udp_cc_shutdown@ha
    lis r5, udp_cc_peek@ha
    lis r4, udp_cc_pre_continue@ha
    lis r3, udp_cc_post_stop@ha
    addi r31, r30, TRK_Use_BBA@l
    li r29, 0x1
    addi r30, r12, udp_cc_initialize@l
    addi r12, r11, gDBCommTable@l
    addi r11, r10, udp_cc_open@l
    addi r10, r9, udp_cc_close@l
    addi r9, r8, udp_cc_read@l
    addi r8, r7, udp_cc_write@l
    addi r7, r6, udp_cc_shutdown@l
    addi r6, r5, udp_cc_peek@l
    addi r5, r4, udp_cc_pre_continue@l
    addi r4, r3, udp_cc_post_stop@l
    li r0, 0x0
    stb r29, 0x0(r31)
    li r3, 0x0
    stw r30, 0x0(r12)
    stw r11, 0x18(r12)
    stw r10, 0x1c(r12)
    stw r9, 0x10(r12)
    stw r8, 0x14(r12)
    stw r7, 0x8(r12)
    stw r6, 0xc(r12)
    stw r5, 0x20(r12)
    stw r4, 0x24(r12)
    stw r0, 0x4(r12)
    opword  0x48000168  // b .L_80066158
L_80065FF4:
    cmpwi r30, 0x1
    opword  0x40820098  // bne .L_80066090
    addi r3, r29, 0x38
    crclr 6
    bl OSReport
    bl Hu_IsStub
    lis r31, gdev_cc_initialize@ha
    lis r12, gdev_cc_open@ha
    addi r31, r31, gdev_cc_initialize@l
    lis r30, gDBCommTable@ha
    lis r11, gdev_cc_close@ha
    lis r10, gdev_cc_read@ha
    lis r9, gdev_cc_write@ha
    lis r8, gdev_cc_shutdown@ha
    lis r7, gdev_cc_peek@ha
    lis r6, gdev_cc_pre_continue@ha
    lis r5, gdev_cc_post_stop@ha
    lis r4, gdev_cc_initinterrupts@ha
    stwu r31, gDBCommTable@l(r30)
    addi r12, r12, gdev_cc_open@l
    addi r11, r11, gdev_cc_close@l
    addi r10, r10, gdev_cc_read@l
    addi r9, r9, gdev_cc_write@l
    addi r8, r8, gdev_cc_shutdown@l
    addi r7, r7, gdev_cc_peek@l
    addi r6, r6, gdev_cc_pre_continue@l
    addi r5, r5, gdev_cc_post_stop@l
    addi r0, r4, gdev_cc_initinterrupts@l
    stw r12, 0x18(r30)
    mr r31, r3
    stw r11, 0x1c(r30)
    stw r10, 0x10(r30)
    stw r9, 0x14(r30)
    stw r8, 0x8(r30)
    stw r7, 0xc(r30)
    stw r6, 0x20(r30)
    stw r5, 0x24(r30)
    stw r0, 0x4(r30)
    opword  0x480000C8  // b .L_80066154
L_80066090:
    cmpwi r30, 0x0
    opword  0x40820098  // bne .L_8006612C
    addi r3, r29, 0x5c
    crclr 6
    bl OSReport
    bl AMC_IsStub
    lis r31, ddh_cc_initialize@ha
    lis r12, ddh_cc_open@ha
    addi r31, r31, ddh_cc_initialize@l
    lis r30, gDBCommTable@ha
    lis r11, ddh_cc_close@ha
    lis r10, ddh_cc_read@ha
    lis r9, ddh_cc_write@ha
    lis r8, ddh_cc_shutdown@ha
    lis r7, ddh_cc_peek@ha
    lis r6, ddh_cc_pre_continue@ha
    lis r5, ddh_cc_post_stop@ha
    lis r4, ddh_cc_initinterrupts@ha
    stwu r31, gDBCommTable@l(r30)
    addi r12, r12, ddh_cc_open@l
    addi r11, r11, ddh_cc_close@l
    addi r10, r10, ddh_cc_read@l
    addi r9, r9, ddh_cc_write@l
    addi r8, r8, ddh_cc_shutdown@l
    addi r7, r7, ddh_cc_peek@l
    addi r6, r6, ddh_cc_pre_continue@l
    addi r5, r5, ddh_cc_post_stop@l
    addi r0, r4, ddh_cc_initinterrupts@l
    stw r12, 0x18(r30)
    mr r31, r3
    stw r11, 0x1c(r30)
    stw r10, 0x10(r30)
    stw r9, 0x14(r30)
    stw r8, 0x8(r30)
    stw r7, 0xc(r30)
    stw r6, 0x20(r30)
    stw r5, 0x24(r30)
    stw r0, 0x4(r30)
    opword  0x4800002C  // b .L_80066154
L_8006612C:
    mr r4, r30
    addi r3, r29, 0x80
    crclr 6
    bl OSReport
    addi r3, r29, 0xac
    crclr 6
    bl OSReport
    addi r3, r29, 0xdc
    crclr 6
    bl OSReport
L_80066154:
    mr r3, r31
L_80066158:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void TRKEXICallBack(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    bl OSEnableScheduler
    mr r3, r31
    li r4, 0x500
    bl TRKLoadContext
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void TRKTargetContinue(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    li r3, 0x0
    stw r0, 0x14(r1)
    bl TRKTargetSetStopped
    bl UnreserveEXI2Port
    bl TRKSwapAndGo
    bl ReserveEXI2Port
    lwz r0, 0x14(r1)
    li r3, 0x0
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800661E0(void)
{
    nofralloc
    lis r3, lbl_804B8630@ha
    addi r3, r3, lbl_804B8630@l
    lbz r3, 0x0(r3)
    blr
}

ASM void fn_800661F0(void)
{
    nofralloc
    lis r4, lbl_804B8630@ha
    stb r3, lbl_804B8630@l(r4)
    blr
}

ASM void fn_800661FC(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r3
    bl fn_80062D34
    cmpwi r3, 0x0
    opword  0x4082000C  // bne .L_80066224
    li r3, 0x1
    opword  0x4800004C  // b .L_8006626C
L_80066224:
    mr r4, r31
    li r3, 0xd3
    bl fn_80065240
    clrlwi r0, r3, 24
    cmpwi r0, 0x1
    opword  0x41820030  // beq .L_80066268
    opword  0x40800010  // bge .L_8006624C
    cmpwi r0, 0x0
    opword  0x40800014  // bge .L_80066258
    opword  0x48000020  // b .L_80066268
L_8006624C:
    cmpwi r0, 0x3
    opword  0x40800018  // bge .L_80066268
    opword  0x4800000C  // b .L_80066260
L_80066258:
    li r3, 0x0
    opword  0x48000010  // b .L_8006626C
L_80066260:
    li r3, 0x2
    opword  0x48000008  // b .L_8006626C
L_80066268:
    li r3, 0x1
L_8006626C:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80066280(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    mr r31, r5
    stw r30, 0x18(r1)
    mr r30, r4
    bl fn_800661E0
    clrlwi. r0, r3, 24
    opword  0x4082000C  // bne .L_800662B0
    li r3, 0x1
    opword  0x48000078  // b .L_80066324
L_800662B0:
    bl fn_80062D34
    cmpwi r3, 0x0
    opword  0x4082000C  // bne .L_800662C4
    li r3, 0x1
    opword  0x48000064  // b .L_80066324
L_800662C4:
    lwz r0, 0x0(r31)
    mr r6, r30
    addi r5, r1, 0x8
    li r3, 0xd0
    stw r0, 0x8(r1)
    li r4, 0x1
    bl fn_80065230
    clrlwi r0, r3, 24
    lwz r3, 0x8(r1)
    cmpwi r0, 0x1
    stw r3, 0x0(r31)
    opword  0x41820030  // beq .L_80066320
    opword  0x40800010  // bge .L_80066304
    cmpwi r0, 0x0
    opword  0x40800014  // bge .L_80066310
    opword  0x48000020  // b .L_80066320
L_80066304:
    cmpwi r0, 0x3
    opword  0x40800018  // bge .L_80066320
    opword  0x4800000C  // b .L_80066318
L_80066310:
    li r3, 0x0
    opword  0x48000010  // b .L_80066324
L_80066318:
    li r3, 0x2
    opword  0x48000008  // b .L_80066324
L_80066320:
    li r3, 0x1
L_80066324:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_8006633C(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    mr r31, r5
    stw r30, 0x18(r1)
    mr r30, r4
    bl fn_800661E0
    clrlwi. r0, r3, 24
    opword  0x4082000C  // bne .L_8006636C
    li r3, 0x1
    opword  0x48000078  // b .L_800663E0
L_8006636C:
    bl fn_80062D34
    cmpwi r3, 0x0
    opword  0x4082000C  // bne .L_80066380
    li r3, 0x1
    opword  0x48000064  // b .L_800663E0
L_80066380:
    lwz r0, 0x0(r31)
    mr r6, r30
    addi r5, r1, 0x8
    li r3, 0xd1
    stw r0, 0x8(r1)
    li r4, 0x0
    bl fn_80065230
    clrlwi r0, r3, 24
    lwz r3, 0x8(r1)
    cmpwi r0, 0x1
    stw r3, 0x0(r31)
    opword  0x41820030  // beq .L_800663DC
    opword  0x40800010  // bge .L_800663C0
    cmpwi r0, 0x0
    opword  0x40800014  // bge .L_800663CC
    opword  0x48000020  // b .L_800663DC
L_800663C0:
    cmpwi r0, 0x3
    opword  0x40800018  // bge .L_800663DC
    opword  0x4800000C  // b .L_800663D4
L_800663CC:
    li r3, 0x0
    opword  0x48000010  // b .L_800663E0
L_800663D4:
    li r3, 0x2
    opword  0x48000008  // b .L_800663E0
L_800663DC:
    li r3, 0x1
L_800663E0:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void udp_cc_post_stop(void)
{
    nofralloc
    li r3, -0x1
    blr
}

ASM void udp_cc_pre_continue(void)
{
    nofralloc
    li r3, -0x1
    blr
}

ASM void udp_cc_peek(void)
{
    nofralloc
    li r3, 0x0
    blr
}

ASM void udp_cc_write(void)
{
    nofralloc
    li r3, 0x0
    blr
}

ASM void udp_cc_read(void)
{
    nofralloc
    li r3, 0x0
    blr
}

ASM void udp_cc_close(void)
{
    nofralloc
    li r3, -0x1
    blr
}

ASM void udp_cc_open(void)
{
    nofralloc
    li r3, -0x1
    blr
}

ASM void udp_cc_shutdown(void)
{
    nofralloc
    li r3, -0x1
    blr
}

ASM void udp_cc_initialize(void)
{
    nofralloc
    li r3, -0x1
    blr
}

ASM void ddh_cc_initinterrupts(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    bl fn_800705E4
    lwz r0, 0x14(r1)
    li r3, 0x0
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void ddh_cc_peek(void)
{
    nofralloc
    stwu r1, -0x810(r1)
    mflr r0
    stw r0, 0x814(r1)
    stw r31, 0x80c(r1)
    bl fn_800705E8
    mr. r31, r3
    opword  0x4181000C  // bgt .L_80066488
    li r3, 0x0
    opword  0x4800003C  // b .L_800664C0
L_80066488:
    mr r4, r31
    addi r3, r1, 0x8
    bl fn_800705F0
    cmpwi r3, 0x0
    opword  0x4082001C  // bne .L_800664B4
    lis r3, lbl_804B8E38@ha
    mr r5, r31
    addi r3, r3, lbl_804B8E38@l
    addi r4, r1, 0x8
    bl fn_8006688C
    opword  0x4800000C  // b .L_800664BC
L_800664B4:
    li r3, -0x2719
    opword  0x48000008  // b .L_800664C0
L_800664BC:
    mr r3, r31
L_800664C0:
    lwz r0, 0x814(r1)
    lwz r31, 0x80c(r1)
    mtlr r0
    addi r1, r1, 0x810
    blr
}

ASM void ddh_cc_post_stop(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    bl fn_80070600
    lwz r0, 0x14(r1)
    li r3, 0x0
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void ddh_cc_pre_continue(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    bl fn_80070604
    lwz r0, 0x14(r1)
    li r3, 0x0
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void ddh_cc_write(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    lis r5, lbl_8045DAD8@ha
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    addi r31, r5, lbl_8045DAD8@l
    stw r30, 0x18(r1)
    mr r30, r4
    stw r29, 0x14(r1)
    mr r29, r3
    opword  0x800D8B48  // lwz r0, lbl_8053A708@sda21(r0)
    cmpwi r0, 0x0
    opword  0x4082001C  // bne .L_80066568
    addi r4, r31, 0x0
    li r3, 0x8
    crclr 6
    bl MWTRACE
    li r3, -0x2711
    opword  0x4800005C  // b .L_800665C0
L_80066568:
    mr r5, r3
    mr r6, r4
    addi r4, r31, 0x14
    li r3, 0x8
    crclr 6
    bl MWTRACE
    opword  0x48000034  // b .L_800665B4
L_80066584:
    mr r5, r30
    addi r4, r31, 0x40
    li r3, 0x1
    crclr 6
    bl MWTRACE
    mr r3, r29
    mr r4, r30
    bl fn_800705F8
    cmpwi r3, 0x0
    opword  0x41820014  // beq .L_800665BC
    add r29, r29, r3
    subf r30, r3, r30
L_800665B4:
    cmpwi r30, 0x0
    opword  0x4181FFCC  // bgt .L_80066584
L_800665BC:
    li r3, 0x0
L_800665C0:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void ddh_cc_read(void)
{
    nofralloc
    stwu r1, -0x820(r1)
    mflr r0
    stw r0, 0x824(r1)
    stmw r27, 0x80c(r1)
    mr r27, r3
    mr r30, r4
    li r29, 0x0
    opword  0x800D8B48  // lwz r0, lbl_8053A708@sda21(r0)
    cmpwi r0, 0x0
    opword  0x4082000C  // bne .L_8006660C
    li r3, -0x2711
    opword  0x480000AC  // b .L_800666B4
L_8006660C:
    lis r3, lbl_8045DB34@ha
    mr r5, r30
    addi r4, r3, lbl_8045DB34@l
    mr r6, r30
    li r3, 0x1
    crclr 6
    bl MWTRACE
    lis r3, lbl_804B8E38@ha
    addi r31, r3, lbl_804B8E38@l
    opword  0x48000038  // b .L_80066668
L_80066634:
    li r29, 0x0
    bl fn_800705E8
    mr. r28, r3
    opword  0x41820028  // beq .L_80066668
    mr r4, r28
    addi r3, r1, 0x8
    bl fn_800705F0
    mr. r29, r3
    opword  0x40820014  // bne .L_80066668
    mr r3, r31
    mr r5, r28
    addi r4, r1, 0x8
    bl fn_8006688C
L_80066668:
    mr r3, r31
    bl fn_800669E4
    cmplw r3, r30
    opword  0x4180FFC0  // blt .L_80066634
    cmplwi r29, 0x0
    opword  0x4082001C  // bne .L_80066698
    lis r3, lbl_804B8E38@ha
    mr r4, r27
    addi r3, r3, lbl_804B8E38@l
    mr r5, r30
    bl fn_80066784
    opword  0x4800001C  // b .L_800666B0
L_80066698:
    lis r3, lbl_8045DB5C@ha
    mr r5, r29
    addi r4, r3, lbl_8045DB5C@l
    li r3, 0x8
    crclr 6
    bl MWTRACE
L_800666B0:
    mr r3, r29
L_800666B4:
    lmw r27, 0x80c(r1)
    lwz r0, 0x824(r1)
    mtlr r0
    addi r1, r1, 0x820
    blr
}

ASM void ddh_cc_close(void)
{
    nofralloc
    li r3, 0x0
    blr
}

ASM void ddh_cc_open(void)
{
    nofralloc
    opword  0x800D8B48  // lwz r0, lbl_8053A708@sda21(r0)
    cmpwi r0, 0x0
    opword  0x4182000C  // beq .L_800666E4
    li r3, -0x2715
    blr
L_800666E4:
    li r0, 0x1
    li r3, 0x0
    opword  0x900D8B48  // stw r0, lbl_8053A708@sda21(r0)
    blr
}

ASM void ddh_cc_shutdown(void)
{
    nofralloc
    li r3, 0x0
    blr
}

ASM void ddh_cc_initialize(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    lis r5, lbl_8045DB8C@ha
    stw r0, 0x14(r1)
    addi r0, r5, lbl_8045DB8C@l
    stw r31, 0xc(r1)
    mr r31, r4
    mr r4, r0
    stw r30, 0x8(r1)
    mr r30, r3
    li r3, 0x1
    crclr 6
    bl MWTRACE
    mr r3, r30
    mr r4, r31
    bl fn_800705E0
    lis r4, lbl_8045DBA0@ha
    li r3, 0x1
    addi r4, r4, lbl_8045DBA0@l
    crclr 6
    bl MWTRACE
    lis r3, lbl_804B8E38@ha
    lis r4, lbl_804B8638@ha
    addi r3, r3, lbl_804B8E38@l
    li r5, 0x800
    addi r4, r4, lbl_804B8638@l
    bl fn_80066994
    lwz r0, 0x14(r1)
    li r3, 0x0
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80066784(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    mr r31, r5
    stw r30, 0x18(r1)
    mr r30, r3
    stw r29, 0x14(r1)
    stw r28, 0x10(r1)
    mr r28, r4
    lwz r0, 0x10(r3)
    cmplw r31, r0
    opword  0x4081000C  // ble .L_800667C0
    li r3, -0x1
    opword  0x480000B0  // b .L_8006686C
L_800667C0:
    addi r3, r30, 0x18
    bl fn_80066DAC
    lwz r3, 0x8(r30)
    lwz r4, 0x0(r30)
    lwz r0, 0xc(r30)
    subf r3, r3, r4
    subf r29, r3, r0
    cmplw r31, r29
    opword  0x40800020  // bge .L_80066800
    mr r3, r28
    mr r5, r31
    bl memcpy
    lwz r0, 0x0(r30)
    add r0, r0, r31
    stw r0, 0x0(r30)
    opword  0x48000030  // b .L_8006682C
L_80066800:
    mr r3, r28
    mr r5, r29
    bl memcpy
    lwz r4, 0x8(r30)
    add r3, r28, r29
    subf r5, r29, r31
    bl memcpy
    lwz r0, 0x8(r30)
    add r0, r0, r31
    subf r0, r29, r0
    stw r0, 0x0(r30)
L_8006682C:
    lwz r4, 0x8(r30)
    lwz r0, 0x0(r30)
    lwz r3, 0xc(r30)
    subf r0, r4, r0
    cmplw r3, r0
    opword  0x40820008  // bne .L_80066848
    stw r4, 0x0(r30)
L_80066848:
    lwz r0, 0x14(r30)
    addi r3, r30, 0x18
    add r0, r0, r31
    stw r0, 0x14(r30)
    lwz r0, 0x10(r30)
    subf r0, r31, r0
    stw r0, 0x10(r30)
    bl fn_80066D88
    li r3, 0x0
L_8006686C:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    lwz r28, 0x10(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_8006688C(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    mr r31, r5
    stw r30, 0x18(r1)
    mr r30, r3
    stw r29, 0x14(r1)
    stw r28, 0x10(r1)
    mr r28, r4
    lwz r0, 0x14(r3)
    cmplw r31, r0
    opword  0x4081000C  // ble .L_800668C8
    li r3, -0x1
    opword  0x480000B0  // b .L_80066974
L_800668C8:
    addi r3, r30, 0x18
    bl fn_80066DAC
    lwz r4, 0x8(r30)
    lwz r3, 0x4(r30)
    lwz r0, 0xc(r30)
    subf r4, r4, r3
    subf r29, r4, r0
    cmplw r29, r31
    opword  0x41800020  // blt .L_80066908
    mr r4, r28
    mr r5, r31
    bl memcpy
    lwz r0, 0x4(r30)
    add r0, r0, r31
    stw r0, 0x4(r30)
    opword  0x48000030  // b .L_80066934
L_80066908:
    mr r4, r28
    mr r5, r29
    bl memcpy
    lwz r3, 0x8(r30)
    add r4, r28, r29
    subf r5, r29, r31
    bl memcpy
    lwz r0, 0x8(r30)
    add r0, r0, r31
    subf r0, r29, r0
    stw r0, 0x4(r30)
L_80066934:
    lwz r4, 0x8(r30)
    lwz r0, 0x4(r30)
    lwz r3, 0xc(r30)
    subf r0, r4, r0
    cmplw r3, r0
    opword  0x40820008  // bne .L_80066950
    stw r4, 0x4(r30)
L_80066950:
    lwz r0, 0x14(r30)
    addi r3, r30, 0x18
    subf r0, r31, r0
    stw r0, 0x14(r30)
    lwz r0, 0x10(r30)
    add r0, r0, r31
    stw r0, 0x10(r30)
    bl fn_80066D88
    li r3, 0x0
L_80066974:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    lwz r28, 0x10(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_80066994(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    mr r6, r3
    stw r0, 0x14(r1)
    li r0, 0x0
    stw r4, 0x8(r3)
    addi r3, r6, 0x18
    stw r5, 0xc(r6)
    lwz r4, 0x8(r6)
    stw r4, 0x0(r6)
    lwz r4, 0x8(r6)
    stw r4, 0x4(r6)
    stw r0, 0x10(r6)
    lwz r0, 0xc(r6)
    stw r0, 0x14(r6)
    bl fn_80066DDC
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800669E4(void)
{
    nofralloc
    lwz r3, 0x10(r3)
    blr
}

ASM void gdev_cc_initinterrupts(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    bl fn_800709A8
    lwz r0, 0x14(r1)
    li r3, 0x0
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void gdev_cc_peek(void)
{
    nofralloc
    stwu r1, -0x510(r1)
    mflr r0
    stw r0, 0x514(r1)
    stw r31, 0x50c(r1)
    bl fn_8007090C
    mr. r31, r3
    opword  0x4181000C  // bgt .L_80066A34
    li r3, 0x0
    opword  0x4800003C  // b .L_80066A6C
L_80066A34:
    mr r4, r31
    addi r3, r1, 0x8
    bl fn_80070880
    cmpwi r3, 0x0
    opword  0x4082001C  // bne .L_80066A60
    lis r3, lbl_804B9358@ha
    mr r5, r31
    addi r3, r3, lbl_804B9358@l
    addi r4, r1, 0x8
    bl fn_8006688C
    opword  0x4800000C  // b .L_80066A68
L_80066A60:
    li r3, -0x2719
    opword  0x48000008  // b .L_80066A6C
L_80066A68:
    mr r3, r31
L_80066A6C:
    lwz r0, 0x514(r1)
    lwz r31, 0x50c(r1)
    mtlr r0
    addi r1, r1, 0x510
    blr
}

ASM void gdev_cc_post_stop(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    bl fn_8007061C
    lwz r0, 0x14(r1)
    li r3, 0x0
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void gdev_cc_pre_continue(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    bl fn_80070618
    lwz r0, 0x14(r1)
    li r3, 0x0
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void gdev_cc_write(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    lis r5, lbl_8045DBB8@ha
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    addi r31, r5, lbl_8045DBB8@l
    stw r30, 0x18(r1)
    mr r30, r4
    stw r29, 0x14(r1)
    mr r29, r3
    opword  0x800D8B50  // lwz r0, lbl_8053A710@sda21(r0)
    cmpwi r0, 0x0
    opword  0x4082001C  // bne .L_80066B14
    addi r4, r31, 0x0
    li r3, 0x8
    crclr 6
    bl MWTRACE
    li r3, -0x2711
    opword  0x4800005C  // b .L_80066B6C
L_80066B14:
    mr r5, r3
    mr r6, r4
    addi r4, r31, 0x14
    li r3, 0x8
    crclr 6
    bl MWTRACE
    opword  0x48000034  // b .L_80066B60
L_80066B30:
    mr r5, r30
    addi r4, r31, 0x40
    li r3, 0x1
    crclr 6
    bl MWTRACE
    mr r3, r29
    mr r4, r30
    bl fn_80070620
    cmpwi r3, 0x0
    opword  0x41820014  // beq .L_80066B68
    add r29, r29, r3
    subf r30, r3, r30
L_80066B60:
    cmpwi r30, 0x0
    opword  0x4181FFCC  // bgt .L_80066B30
L_80066B68:
    li r3, 0x0
L_80066B6C:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void gdev_cc_read(void)
{
    nofralloc
    stwu r1, -0x520(r1)
    mflr r0
    stw r0, 0x524(r1)
    stmw r26, 0x508(r1)
    mr r26, r3
    mr r27, r4
    li r28, 0x0
    opword  0x800D8B50  // lwz r0, lbl_8053A710@sda21(r0)
    cmpwi r0, 0x0
    opword  0x4082000C  // bne .L_80066BB8
    li r3, -0x2711
    opword  0x480000B4  // b .L_80066C68
L_80066BB8:
    lis r3, lbl_8045DC14@ha
    mr r5, r27
    addi r4, r3, lbl_8045DC14@l
    mr r6, r27
    li r3, 0x1
    crclr 6
    bl MWTRACE
    lis r3, lbl_804B9358@ha
    mr r29, r27
    addi r31, r3, lbl_804B9358@l
    mr r30, r27
    opword  0x48000038  // b .L_80066C1C
L_80066BE8:
    li r28, 0x0
    bl fn_8007090C
    mr. r27, r3
    opword  0x41820028  // beq .L_80066C1C
    mr r4, r30
    addi r3, r1, 0x8
    bl fn_80070880
    mr. r28, r3
    opword  0x40820014  // bne .L_80066C1C
    mr r3, r31
    mr r5, r27
    addi r4, r1, 0x8
    bl fn_8006688C
L_80066C1C:
    mr r3, r31
    bl fn_800669E4
    cmplw r3, r30
    opword  0x4180FFC0  // blt .L_80066BE8
    cmplwi r28, 0x0
    opword  0x4082001C  // bne .L_80066C4C
    lis r3, lbl_804B9358@ha
    mr r4, r26
    addi r3, r3, lbl_804B9358@l
    mr r5, r29
    bl fn_80066784
    opword  0x4800001C  // b .L_80066C64
L_80066C4C:
    lis r3, lbl_8045DC3C@ha
    mr r5, r28
    addi r4, r3, lbl_8045DC3C@l
    li r3, 0x8
    crclr 6
    bl MWTRACE
L_80066C64:
    mr r3, r28
L_80066C68:
    lmw r26, 0x508(r1)
    lwz r0, 0x524(r1)
    mtlr r0
    addi r1, r1, 0x520
    blr
}

ASM void gdev_cc_close(void)
{
    nofralloc
    li r3, 0x0
    blr
}

ASM void gdev_cc_open(void)
{
    nofralloc
    opword  0x800D8B50  // lwz r0, lbl_8053A710@sda21(r0)
    cmpwi r0, 0x0
    opword  0x4182000C  // beq .L_80066C98
    li r3, -0x2715
    blr
L_80066C98:
    li r0, 0x1
    li r3, 0x0
    opword  0x900D8B50  // stw r0, lbl_8053A710@sda21(r0)
    blr
}

ASM void gdev_cc_shutdown(void)
{
    nofralloc
    li r3, 0x0
    blr
}

ASM void gdev_cc_initialize(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    lis r5, lbl_8045DC6C@ha
    stw r0, 0x14(r1)
    addi r0, r5, lbl_8045DC6C@l
    stw r31, 0xc(r1)
    mr r31, r4
    mr r4, r0
    stw r30, 0x8(r1)
    mr r30, r3
    li r3, 0x1
    crclr 6
    bl MWTRACE
    mr r3, r30
    mr r4, r31
    bl fn_800709FC
    lis r4, lbl_8045DC80@ha
    li r3, 0x1
    addi r4, r4, lbl_8045DC80@l
    crclr 6
    bl MWTRACE
    lis r3, lbl_804B9358@ha
    lis r4, lbl_804B8E58@ha
    addi r3, r3, lbl_804B9358@l
    li r5, 0x500
    addi r4, r4, lbl_804B8E58@l
    bl fn_80066994
    lwz r0, 0x14(r1)
    li r3, 0x0
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void MWTRACE(void)
{
    nofralloc
    stwu r1, -0x70(r1)
    opword  0x40860024  // bne cr1, .L_80066D60
    stfd fp1, 0x28(r1)
    stfd fp2, 0x30(r1)
    stfd fp3, 0x38(r1)
    stfd fp4, 0x40(r1)
    stfd fp5, 0x48(r1)
    stfd fp6, 0x50(r1)
    stfd fp7, 0x58(r1)
    stfd fp8, 0x60(r1)
L_80066D60:
    stw r3, 0x8(r1)
    stw r4, 0xc(r1)
    stw r5, 0x10(r1)
    stw r6, 0x14(r1)
    stw r7, 0x18(r1)
    stw r8, 0x1c(r1)
    stw r9, 0x20(r1)
    stw r10, 0x24(r1)
    addi r1, r1, 0x70
    blr
}

ASM void fn_80066D88(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    lwz r3, 0x0(r3)
    bl OSRestoreInterrupts
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80066DAC(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r3
    bl OSDisableInterrupts
    stw r3, 0x0(r31)
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80066DDC(void)
{
    nofralloc
    blr
}

ASM void __va_arg(void)
{
    nofralloc
    lbz r7, 0x0(r3)
    cmpwi r4, 0x3
    mr r6, r3
    li r0, 0x8
    li r8, 0x4
    extsb r7, r7
    li r9, 0x1
    li r5, 0x0
    li r10, 0x0
    li r11, 0x4
    opword  0x4082001C  // bne .L_80066E24
    lbz r7, 0x1(r3)
    addi r6, r3, 0x1
    li r8, 0x8
    li r10, 0x20
    extsb r7, r7
    li r11, 0x8
L_80066E24:
    cmpwi r4, 0x2
    opword  0x4082001C  // bne .L_80066E44
    clrlwi. r0, r7, 31
    li r8, 0x8
    li r0, 0x7
    opword  0x41820008  // beq .L_80066E40
    li r5, 0x1
L_80066E40:
    li r9, 0x2
L_80066E44:
    cmpw r7, r0
    opword  0x40800024  // bge .L_80066E6C
    add r7, r7, r5
    lwz r5, 0x8(r3)
    mullw r3, r7, r11
    add r0, r7, r9
    stb r0, 0x0(r6)
    add r6, r10, r3
    add r6, r5, r6
    opword  0x4800002C  // b .L_80066E94
L_80066E6C:
    li r5, 0x8
    subi r0, r8, 0x1
    stb r5, 0x0(r6)
    nor r6, r0, r0
    lwz r0, 0x4(r3)
    add r5, r8, r0
    subi r0, r5, 0x1
    and r6, r6, r0
    add r0, r6, r8
    stw r0, 0x4(r3)
L_80066E94:
    cmpwi r4, 0x0
    opword  0x40820008  // bne .L_80066EA0
    lwz r6, 0x0(r6)
L_80066EA0:
    mr r3, r6
    blr
}

