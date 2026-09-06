typedef int s32;

extern "C" s32 OSTryLockMutex(void* mutex);
extern "C" void OSUnlockMutex(void* mutex);

// fn_803B9BDC - helper: if the mutex at this+0x1fd4 can be acquired
// without blocking, inspects this->0x1fd0 (a state field): if 4, sets
// it to 1 and returns 1; if 1, returns 0; otherwise returns 2. Unlocks
// before returning. If the mutex can't be acquired, returns 0 (init
// value, no lock attempted release).
extern "C" s32 fn_803B9BDC(char* this_) {
    s32 result = 0;
    if (OSTryLockMutex(this_ + 0x1fd4) != 0) {
        s32 state = *(s32*)(this_ + 0x1fd0);
        if (state == 4) {
            *(s32*)(this_ + 0x1fd0) = 1;
            result = 1;
        } else if (state == 1) {
            result = 0;
        } else {
            result = 2;
        }
        OSUnlockMutex(this_ + 0x1fd4);
    }
    return result;
}
