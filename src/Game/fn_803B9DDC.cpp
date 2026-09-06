typedef int s32;

extern "C" s32 OSTryLockMutex(void* mutex);
extern "C" void OSUnlockMutex(void* mutex);
extern "C" void OSSignalCond(void* cond);

// fn_803B9DDC - sibling of fn_803B9B3C/fn_803B9B8C: same mutex-try/
// set/unlock/signal shape, sets this->0x1fcc=4.
extern "C" void fn_803B9DDC(char* this_) {
    if (OSTryLockMutex(this_ + 0x1fd4) != 0) {
        *(s32*)(this_ + 0x1fcc) = 4;
        OSUnlockMutex(this_ + 0x1fd4);
        OSSignalCond(this_ + 0x1fec);
    }
}
