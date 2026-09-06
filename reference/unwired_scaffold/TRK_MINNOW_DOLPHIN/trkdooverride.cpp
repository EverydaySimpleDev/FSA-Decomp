#include <types.h>

extern "C" void* memset(void* dst, int val, u32 count);
extern "C" int TRKWriteUARTN(const void* bytes, u32 length);
extern "C" void __TRK_copy_vectors(void);

extern "C" int TRKDoOverride(void* buffer)
{
    char msg[0x40];
    memset(msg, 0, 0x40);
    *(u8*)(msg + 0x4) = 0x80;
    *(u32*)(msg + 0x0) = 0x40;
    *(u8*)(msg + 0x8) = 0x0;
    TRKWriteUARTN(msg, 0x40);
    __TRK_copy_vectors();
    return 0;
}
