#include "types.h"

// fn_802EECB4 - CHSW: update(). Countdown timer at this->0x230; on
// expiry, dispatches a notify via own virtual slot 10 (byte offset
// 0x30, args 0xff + 1 or 0) depending on the mode byte at
// this->0x23e; then, depending on this->0x23d, notifies the per-room
// config via GetRoomConfigRecord with this->0x240 and args (1 or 0,
// 0xff); finally calls own virtual slot 7 (byte offset 0x24) if
// this->0x23c==1. When the countdown was already at 0 on entry,
// instead gates a possible countdown reset on own virtual slot 13
// (byte offset 0x34) and always refreshes this->0x234 with a second
// call to the same slot. See
// [[reference_fsa_virtual_dispatch_codegen_trick]] for why these
// calls go through real `virtual` members rather than manual casts.
extern "C" void* GetRoomConfigRecord(void);
extern "C" void fn_802D8050(void*, s32, s32, s32);

struct ActorVT {
    virtual void v0();
    virtual void v1();
    virtual void v2();
    virtual void v3();
    virtual void v4();
    virtual void v5();
    virtual void v6();
    virtual void slot7();
    virtual void v8();
    virtual void v9();
    virtual void slot10(s32 a, s32 b);
    virtual u8 slot13();
};

extern "C" void fn_802EECB4(void* this_) {
    s32 countdown = *(s32*)((char*)this_ + 0x230);
    if (countdown != 0) {
        *(s32*)((char*)this_ + 0x230) = countdown - 1;
        if (*(s32*)((char*)this_ + 0x230) == 0) {
            u8 mode1 = *(u8*)((char*)this_ + 0x23e);
            if (mode1 == 1) {
                ((ActorVT*)this_)->slot10(0xff, 1);
            } else if (mode1 == 2) {
                ((ActorVT*)this_)->slot10(0xff, 0);
            }
            u8 mode2 = *(u8*)((char*)this_ + 0x23d);
            if (mode2 == 0) {
                void* configRecord = GetRoomConfigRecord();
                fn_802D8050(configRecord, *(u16*)((char*)this_ + 0x240), 1, 0xff);
            } else if (mode2 == 1) {
                void* configRecord = GetRoomConfigRecord();
                fn_802D8050(configRecord, *(u16*)((char*)this_ + 0x240), 0, 0xff);
            }
            if (*(u8*)((char*)this_ + 0x23c) == 1) {
                ((ActorVT*)this_)->slot7();
            }
        }
    } else {
        if (*(u8*)((char*)this_ + 0x234) == 0) {
            if (((ActorVT*)this_)->slot13() == 1) {
                *(s32*)((char*)this_ + 0x230) = *(s32*)((char*)this_ + 0x238);
            }
        }
        u8 result = ((ActorVT*)this_)->slot13();
        *(u8*)((char*)this_ + 0x234) = result;
    }
}
