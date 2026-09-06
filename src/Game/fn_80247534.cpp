#include "types.h"

// fn_80247534(this) / fn_80247564(this) - a pair of tiny forwarding
// wrappers: resolve this->0x11ec via fn_8030AAF4, then forward the
// result (plus the confirmed global manager lbl_8053AD30) to one of
// two different callees (fn_8030A308 / fn_8030A3B0 respectively).
extern "C" void* fn_8030AAF4(void* a);
extern "C" void fn_8030A308(void* mgr, void* x);
extern "C" void fn_8030A3B0(void* mgr, void* x);

extern void* lbl_8053AD30;

extern "C" void fn_80247534(void* this_) {
    fn_8030A308(lbl_8053AD30, fn_8030AAF4(*(void**)((char*)this_ + 0x11ec)));
}

extern "C" void fn_80247564(void* this_) {
    fn_8030A3B0(lbl_8053AD30, fn_8030AAF4(*(void**)((char*)this_ + 0x11ec)));
}
