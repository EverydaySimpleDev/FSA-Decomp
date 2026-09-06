#include "types.h"

extern "C" void fn_801A68DC(void* this_);

// SAYA cluster, part 14/18 (56B). Vtable-slot wrapper directly invoking
// fn_801A68DC (the actor's other big body, landed alongside) when the
// state field is 0 or 1.
extern "C" void Saya_ForceStateRange(void* this_) {
    s32 state = *(s32*)((char*)this_ + 0x260);
    switch (state) {
    case 0:
    case 1:
        fn_801A68DC(this_);
        break;
    }
}
