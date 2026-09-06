#include "types.h"

extern void* lbl_8053AB10;

// fn_802EF104 - AGBW: update(). 2-state machine on this->0x230.
// State 0: if this->0x234==0x1f (31), calls own virtual slot 13
// (byte offset 0x34, room-config gate); on success, transitions to
// state 1 and seeds a countdown at this->0x23c from this->0x238.
// State 1: while the countdown is nonzero, sets a global byte flag
// (lbl_8053AB10->0x20->0x216=1) and decrements the countdown. See
// [[reference_fsa_virtual_dispatch_codegen_trick]] for why this calls
// through a real `virtual` member rather than a manual cast.
struct ActorSlot13 {
    virtual void v0();
    virtual void v1();
    virtual void v2();
    virtual void v3();
    virtual void v4();
    virtual void v5();
    virtual void v6();
    virtual void v7();
    virtual void v8();
    virtual void v9();
    virtual void v10();
    virtual u8 slot13();
};

extern "C" void fn_802EF104(void* this_) {
    s32 state = *(s32*)((char*)this_ + 0x230);
    switch (state) {
    case 0:
        if (*(s32*)((char*)this_ + 0x234) == 0x1f) {
            if (((ActorSlot13*)this_)->slot13() != 0) {
                *(s32*)((char*)this_ + 0x230) = 1;
                *(s32*)((char*)this_ + 0x23c) = *(s32*)((char*)this_ + 0x238);
            }
        }
        break;
    case 1:
        if (*(s32*)((char*)this_ + 0x23c) != 0) {
            void* sub = *(void**)((char*)lbl_8053AB10 + 0x20);
            *(u8*)((char*)sub + 0x216) = 1;
            *(s32*)((char*)this_ + 0x23c) = *(s32*)((char*)this_ + 0x23c) - 1;
        } else {
            *(s32*)((char*)this_ + 0x230) = 0;
        }
        break;
    }
}
