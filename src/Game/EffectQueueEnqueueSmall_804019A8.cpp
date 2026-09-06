typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;
typedef float f32;

extern "C" s32 fn_8004810C(void* arg1);
extern "C" char* fn_80083868(s32 size, s32 align, void* heap);
extern "C" void OSLockMutex(void* mutex);
extern "C" void OSUnlockMutex(void* mutex);
extern "C" void OSSendMessage(void* queue, void* msg, s32 flags);

extern void* lbl_8053ADF0;
extern void* lbl_804B0FD0[];
extern void* lbl_804B0FA0[];
extern u8 lbl_8053A218;
extern u8 lbl_80529CA0[];

extern "C" void* fn_804019A8(void* p1, u8 p2, void* p3) {
    char* node;
    s32 result = fn_8004810C(p1);
    if (result == -1) {
        node = 0;
    } else {
        node = fn_80083868(0x20, -4, lbl_8053ADF0);
        if (node != 0) {
            *(void**)(node + 0x8) = lbl_804B0FD0;
            *(u8*)(node + 0x4) = 0;
            *(s32*)(node + 0x0) = 0;
            *(void**)(node + 0x8) = lbl_804B0FA0;
            *(u8*)(node + 0xc) = p2;
            if (p2 == 0) {
                *(u8*)(node + 0xc) = lbl_8053A218;
            }
        }

        if (node != 0) {
            *(s32*)(node + 0x10) = result;
            void* mutex = lbl_80529CA0 + 0x24;
            *(void**)(node + 0x1c) = p3;
            OSLockMutex(mutex);

            *(s32*)(node + 0x0) = 0;
            void* tail = *(void**)(lbl_80529CA0 + 0x40);
            if (tail == 0) {
                *(void**)(lbl_80529CA0 + 0x40) = node;
                *(void**)(lbl_80529CA0 + 0x3c) = node;
            } else {
                *(void**)tail = node;
                *(void**)(lbl_80529CA0 + 0x40) = node;
            }

            OSUnlockMutex(mutex);
            OSSendMessage(lbl_80529CA0, 0, 0);
        }
    }
    return node;
}
