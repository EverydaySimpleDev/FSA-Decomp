typedef int s32;
typedef unsigned int u32;

extern "C" s32 OSTryLockMutex(void* mutex);
extern "C" void OSUnlockMutex(void* mutex);
extern "C" void OSSignalCond(void* cond);
extern "C" void* memcpy(void* dst, const void* src, u32 n);

// fn_803B9D54(this, src1, len1, src2, len2, offset) - sibling of
// fn_803B9CCC with 2 embedded byte-array members instead of 1: if the
// mutex at this+0x1fd4 can be acquired without blocking, copies len1
// bytes from src1 into (this+offset)+0x20 and len2 bytes from src2
// into (this+offset)+0x280, sets this->0x1fcc=3, unlocks, and signals
// the condvar at this+0x1fec.
extern "C" void fn_803B9D54(char* this_, void* src1, u32 len1, void* src2, u32 len2, s32 offset) {
    if (OSTryLockMutex(this_ + 0x1fd4) != 0) {
        char* base = this_ + offset;
        memcpy(base + 0x20, src1, len1);
        memcpy(base + 0x280, src2, len2);
        *(s32*)(this_ + 0x1fcc) = 3;
        OSUnlockMutex(this_ + 0x1fd4);
        OSSignalCond(this_ + 0x1fec);
    }
}
