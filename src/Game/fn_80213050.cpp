typedef int s32;
typedef unsigned char u8;

extern "C" void fn_80213774(void* this_, s32 state);

// fn_80213050(this) - a 3-condition gate on the same RUSA-repel state
// machine as fn_80212ECC/fn_80212F14: if this->0xd4==1 AND
// this->0x248!=0 AND flag bit 17 of this->0x230 is clear, transitions
// to state 4 via fn_80213774.
extern "C" void fn_80213050(void* this_) {
    u8 flag = *(u8*)((char*)this_ + 0xd4);
    if (flag != 1) {
        return;
    }
    if (*(s32*)((char*)this_ + 0x248) == 0) {
        return;
    }
    s32 flags = *(s32*)((char*)this_ + 0x230);
    if (flags & 0x4000) {
        return;
    }
    fn_80213774(this_, 4);
}
