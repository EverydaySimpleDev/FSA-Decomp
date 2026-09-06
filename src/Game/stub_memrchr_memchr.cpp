#include "types.h"

extern "C" {

void* __memrchr(const void* str, int c, u32 n) {
    const u8* ptr = (const u8*)str;
    u8 ch = (u8)c;

    ptr += n;
    n += 1;

    while (--n != 0) {
        ptr -= 1;
        u8 val = *ptr;
        if (val == ch) {
            return (void*)ptr;
        }
    }

    return 0;
}

void* memchr(const void* str, int c, u32 n) {
    const u8* ptr = (const u8*)str;
    u8 ch = (u8)c;

    ptr -= 1;
    n += 1;

    while (--n != 0) {
        ptr += 1;
        u8 val = *ptr;
        if (val == ch) {
            return (void*)ptr;
        }
    }

    return 0;
}

}
