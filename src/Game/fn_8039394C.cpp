#include "types.h"

// fn_8039394C - actor@lbl_804AF490: coordinator function. Dispatches
// on this->0x234 (mode): 0/4 -> fn_80393228(this); 1 -> nothing;
// 2 -> fn_80391F58(this); 3/5/6/7 -> if (!fn_80230188(this->0x238))
// fn_80391D44(this).
extern "C" void fn_80393228(void* this_);
extern "C" void fn_80391F58(void* this_);
extern "C" u8 fn_80230188(s32 a);
extern "C" void fn_80391D44(void* this_);

extern "C" void fn_8039394C(void* this_) {
    s32 mode = *(s32*)((char*)this_ + 0x234);
    if (mode == 0 || mode == 4) {
        fn_80393228(this_);
    } else if (mode == 1) {
        // nothing
    } else if (mode == 2) {
        fn_80391F58(this_);
    } else if (mode == 3 || mode == 5 || mode == 6 || mode == 7) {
        if (!fn_80230188(*(s32*)((char*)this_ + 0x238))) {
            fn_80391D44(this_);
        }
    }
}
