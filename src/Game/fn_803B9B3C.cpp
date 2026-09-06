typedef int s32;

extern "C" s32 OSTryLockMutex(void* mutex);
extern "C" void OSUnlockMutex(void* mutex);
extern "C" void OSSignalCond(void* cond);

// fn_803B9B3C - helper: if the mutex at this+0x1fd4 can be acquired
// without blocking, sets this->0x1fcc=2, unlocks, and signals the
// condvar at this+0x1fec.
extern "C" void fn_803B9B3C(char* this_) {
    if (OSTryLockMutex(this_ + 0x1fd4) != 0) {
        *(s32*)(this_ + 0x1fcc) = 2;
        OSUnlockMutex(this_ + 0x1fd4);
        OSSignalCond(this_ + 0x1fec);
    }
}
