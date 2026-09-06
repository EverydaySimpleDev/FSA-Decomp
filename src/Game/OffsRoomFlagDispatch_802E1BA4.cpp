#include "types.h"

// fn_802E1BA4 - OFFS: a nested-switch room-flag dispatcher, gated by
// own vtable slot 13 (byte offset 0x34, the shared "am I active"
// check) at each leaf. Outer switch on this->0x230 (0/1); state 0
// further dispatches on this->0x234 (0-4), each variant calling
// GetRoomConfigRecord + fn_802D8050(this->0x238, mode, 0xff) with a
// different mode-selection/state-write pattern per sub-case; state 1
// dispatches on the same field (0 or 2 only) and resets this->0x230
// to 0 on gate failure. See
// [[reference_fsa_virtual_dispatch_codegen_trick]] for why the gate
// calls through a real `virtual` member rather than a manual cast.
extern "C" void* GetRoomConfigRecord(void);
extern "C" void fn_802D8050(void*, s32, s32, s32);

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

extern "C" void fn_802E1BA4(void* this_) {
    s32 state = *(s32*)((char*)this_ + 0x230);
    switch (state) {
    case 0: {
        s32 sub = *(s32*)((char*)this_ + 0x234);
        switch (sub) {
        case 0:
            if (((ActorSlot13*)this_)->slot13() != 0) {
                void* cr = GetRoomConfigRecord();
                fn_802D8050(cr, *(s32*)((char*)this_ + 0x238), 0, 0xff);
                *(s32*)((char*)this_ + 0x230) = 1;
            }
            break;
        case 1:
            if (((ActorSlot13*)this_)->slot13() != 0) {
                void* cr = GetRoomConfigRecord();
                fn_802D8050(cr, *(s32*)((char*)this_ + 0x238), 0, 0xff);
            } else {
                void* cr = GetRoomConfigRecord();
                fn_802D8050(cr, *(s32*)((char*)this_ + 0x238), *(u8*)((char*)this_ + 0x23c), 0xff);
            }
            break;
        case 2:
            if (((ActorSlot13*)this_)->slot13() != 0) {
                if (*(u8*)((char*)this_ + 0x23c) != 0) {
                    void* cr = GetRoomConfigRecord();
                    fn_802D8050(cr, *(s32*)((char*)this_ + 0x238), 0, 0xff);
                    *(u8*)((char*)this_ + 0x23c) = 0;
                } else {
                    void* cr = GetRoomConfigRecord();
                    fn_802D8050(cr, *(s32*)((char*)this_ + 0x238), 1, 0xff);
                    *(u8*)((char*)this_ + 0x23c) = 1;
                }
                *(s32*)((char*)this_ + 0x230) = 1;
            }
            break;
        case 3:
            if (((ActorSlot13*)this_)->slot13() != 0) {
                void* cr = GetRoomConfigRecord();
                fn_802D8050(cr, *(s32*)((char*)this_ + 0x238), 0, 0xff);
            } else {
                void* cr = GetRoomConfigRecord();
                fn_802D8050(cr, *(s32*)((char*)this_ + 0x238), 1, 0xff);
            }
            break;
        case 4:
            if (((ActorSlot13*)this_)->slot13() != 0) {
                void* cr = GetRoomConfigRecord();
                fn_802D8050(cr, *(s32*)((char*)this_ + 0x238), 0, 0xff);
            }
            break;
        default:
            break;
        }
        break;
    }
    case 1: {
        s32 sub = *(s32*)((char*)this_ + 0x234);
        switch (sub) {
        case 0:
        case 2:
            if (((ActorSlot13*)this_)->slot13() == 0) {
                *(s32*)((char*)this_ + 0x230) = 0;
            }
            break;
        case 4:
        default:
            break;
        }
        break;
    }
    case 2:
    default:
        break;
    }
}
