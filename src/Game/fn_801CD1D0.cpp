typedef int s32;
typedef unsigned char u8;

extern "C" u8 fn_8022F514(void* this_);
extern "C" u8 fn_80303750(void* this_);

extern "C" s32 fn_801CD1D0(void* this_) {
    s32 result = 0;
    if (!fn_8022F514(this_)) {
        if (fn_80303750(this_)) {
            result = 1;
        }
    }
    return result;
}
