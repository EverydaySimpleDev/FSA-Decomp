#include "types.h"

// fn_800F8A30: the "rupee container" class's main per-frame update
// dispatcher. On the first call (this->0x230==0), looks up an owner
// registry entry via SpatialRegistry_GetBase + fn_801F666C (ID = low
// 16 bits of this->0x90) and caches the pointer in this->0x240.
// If this->0x248==1, dispatches on the phase field this->0x234:
// phase 1 -> fn_800F953C; phase 2 -> fn_800F9170; phase 0 -> waits
// for the cached owner's own phase field (+0x230) to reach 1, via a
// 2-stage counter/threshold wait (this->0x238 against this->0x24c,
// gated by the this->0x246 stage flag) before setting its own phase
// to 1, stashing this->0xb0=0x80004, and playing effect 0x40029.
// If this->0x248!=1, instead calls fn_800F8BAC. Regardless of mode,
// afterward checks the cached owner's +0x2ad byte flag (1 in the
// phase-dispatch path, 2 in the fn_800F8BAC path) and conditionally
// invokes own vtable slot 9 (byte offset 0x24). See
// [[reference_fsa_virtual_dispatch_codegen_trick]] for why this calls
// through a real `virtual` member rather than a manual cast.
extern "C" void* SpatialRegistry_GetBase(void);
extern "C" void* fn_801F666C(void* base, u32 id);
extern "C" void fn_800F953C(void* this_);
extern "C" void fn_800F9170(void* this_);
extern "C" void fn_800F8BAC(void* this_);
extern "C" void fn_801F0E34(void* this_, u32 effectId, u32 unused);

struct ActorVT {
    virtual void v0();
    virtual void v1();
    virtual void v2();
    virtual void v3();
    virtual void v4();
    virtual void v5();
    virtual void v6();
    virtual void slot9();
};

extern "C" void fn_800F8A30(void* this_) {
    if (*(s32*)((char*)this_ + 0x230) == 0) {
        void* base = SpatialRegistry_GetBase();
        u32 id = *(u32*)((char*)this_ + 0x90) & 0xFFFF;
        void* target = fn_801F666C(base, id);
        *(void**)((char*)this_ + 0x240) = target;
    }
    *(s32*)((char*)this_ + 0x230) = *(s32*)((char*)this_ + 0x230) + 1;

    if (*(u8*)((char*)this_ + 0x248) == 1) {
        switch (*(s32*)((char*)this_ + 0x234)) {
        case 0:
            switch ((s32)*(u8*)((char*)this_ + 0x246)) {
            case 0: {
                void* owner = *(void**)((char*)this_ + 0x240);
                if (*(s32*)((char*)owner + 0x230) == 1) {
                    *(s32*)((char*)this_ + 0x238) = 0;
                    *(u8*)((char*)this_ + 0x246) = *(u8*)((char*)this_ + 0x246) + 1;
                }
                break;
            }
            case 1: {
                *(s32*)((char*)this_ + 0x238) = *(s32*)((char*)this_ + 0x238) + 1;
                s32 counter = *(s32*)((char*)this_ + 0x238);
                s32 threshold = *(u16*)((char*)this_ + 0x24c);
                if (counter > threshold) {
                    *(s32*)((char*)this_ + 0x234) = 1;
                    *(u32*)((char*)this_ + 0xb0) = 0x80004;
                    fn_801F0E34(this_, 0x40029, 0);
                }
                break;
            }
            }
            break;
        case 1:
            fn_800F953C(this_);
            break;
        case 2:
            fn_800F9170(this_);
            break;
        }
        void* owner = *(void**)((char*)this_ + 0x240);
        if (*(u8*)((char*)owner + 0x2ad) == 1) {
            ((ActorVT*)this_)->slot9();
        }
    } else {
        fn_800F8BAC(this_);
        void* owner = *(void**)((char*)this_ + 0x240);
        if (*(u8*)((char*)owner + 0x2ad) == 2) {
            ((ActorVT*)this_)->slot9();
        }
    }
}
