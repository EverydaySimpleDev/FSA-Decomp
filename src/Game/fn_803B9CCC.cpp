typedef int s32;
typedef unsigned int u32;

extern "C" s32 OSTryLockMutex(void* mutex);
extern "C" void OSUnlockMutex(void* mutex);
extern "C" void OSSignalCond(void* cond);
extern "C" void* memcpy(void* dst, const void* src, u32 n);

// fn_803B9CCC(this, src, len, offset) - if the mutex at this+0x1fd4
// can be acquired without blocking, copies `len` bytes from `src` into
// this+offset+0x20 (an embedded byte-array member), sets
// this->0x1fcc=3, unlocks, and signals the condvar at this+0x1fec.
extern "C" void fn_803B9CCC(char* this_, void* src, u32 len, s32 offset) {
    if (OSTryLockMutex(this_ + 0x1fd4) != 0) {
        memcpy(this_ + offset + 0x20, src, len);
        *(s32*)(this_ + 0x1fcc) = 3;
        OSUnlockMutex(this_ + 0x1fd4);
        OSSignalCond(this_ + 0x1fec);
    }
}
