#include <types.h>

typedef struct StopInfo_PPC {
    u32 PC;
    u32 PCInstruction;
    u16 exceptionID;
} StopInfo_PPC;

typedef struct TRKExceptionStatus {
    StopInfo_PPC exceptionInfo;
    u8 inTRK;
    u8 exceptionDetected;
} TRKExceptionStatus;

typedef int DSError;

typedef struct RawTRKExceptionStatus {
    u32 w[4];
} RawTRKExceptionStatus;

extern "C" TRKExceptionStatus gTRKExceptionStatus;
extern "C" void TRK__read_aram(int c, u32 p2, void* p3);
extern "C" void TRK__write_aram(int c, u32 p2, void* p3);

extern "C" DSError TRKTargetAccessARAM(u32 p1, u32 p2, u32* p3, int read)
{
    RawTRKExceptionStatus saved = *(RawTRKExceptionStatus*)&gTRKExceptionStatus;
    DSError result = 0;

    gTRKExceptionStatus.exceptionDetected = 0;

    if (read) {
        TRK__read_aram(p1, p2, p3);
    } else {
        TRK__write_aram(p1, p2, p3);
    }

    if (gTRKExceptionStatus.exceptionDetected) {
        *p3 = 0;
        result = 0x702;
    }

    *(RawTRKExceptionStatus*)&gTRKExceptionStatus = saved;
    return result;
}
