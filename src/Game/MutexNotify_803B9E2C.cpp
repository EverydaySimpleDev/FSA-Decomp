typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;
typedef float f32;

extern "C" s32 fn_802B1DCC(void* obj);
extern "C" u32 fn_803B9940(char* this_, s32 arg);
extern "C" s32 fn_80056048(s32 arg);
extern "C" void OSLockMutex(void* mutex);
extern "C" void OSUnlockMutex(void* mutex);
extern "C" void OSSignalCond(void* cond);

extern void* lbl_8053ACA8;

extern "C" void fn_803B9E2C(char* this_) {
    if ((u8)fn_802B1DCC(lbl_8053ACA8) != 0) {
        OSLockMutex(this_ + 0x1fd4);
        *(s32*)(this_ + 0x1fcc) = 6;
        *(u8*)(this_ + 0x1ff5) = 3;
        OSUnlockMutex(this_ + 0x1fd4);
        OSSignalCond(this_ + 0x1fec);
        return;
    }

    if (fn_803B9940(this_, 0) == 0xe) {
        return;
    }

    if (fn_80056048(0) != 0) {
        if (fn_803B9940(this_, 0) == 0) {
            OSLockMutex(this_ + 0x1fd4);
            *(u8*)(this_ + 0x1ff5) = 0;
            *(s32*)(this_ + 0x1fcc) = 5;
            OSUnlockMutex(this_ + 0x1fd4);
            OSSignalCond(this_ + 0x1fec);
            return;
        }
    }

    if (fn_80056048(0) != 0) {
        return;
    }
    if (fn_803B9940(this_, 0) == 0) {
        return;
    }
    OSLockMutex(this_ + 0x1fd4);
    *(u8*)(this_ + 0x1ff5) = 1;
    *(s32*)(this_ + 0x1fcc) = 6;
    OSUnlockMutex(this_ + 0x1fd4);
    OSSignalCond(this_ + 0x1fec);
}
