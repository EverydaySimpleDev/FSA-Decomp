typedef unsigned short u16;
typedef short s16;
typedef int s32;

extern "C" void dtor_801F593C(void* this_, int flag);
extern "C" void dtor_80084580(void* this_);
extern "C" void fn_801EE434(void* handle);
extern "C" void* SpatialRegistry_GetBase(void);
extern "C" void* fn_801F666C(void* table, s32 index);
extern void* lbl_804A0EDC[];

extern "C" void* fn_80178DD0(void* this_, s16 freeFlag) {
    if (this_ != 0) {
        *(void**)this_ = lbl_804A0EDC;
        char* p = (char*)this_;
        fn_801EE434(*(void**)(p + 0x300));
        fn_801EE434(*(void**)(p + 0x304));
        fn_801EE434(*(void**)(p + 0x308));
        u16 state = *(u16*)(p + 0x94);
        if (state == 0 || (u16)(state - 4) <= 1 || (u16)(state - 1) <= 1 || state == 3) {
            s32 idx = *(s32*)(p + 0x268);
            if (idx >= 0) {
                void* table = SpatialRegistry_GetBase();
                void* found = fn_801F666C(table, idx);
                if (found != 0) {
                    *(s32*)(p + 0x268) = -1;
                    *(s32*)((char*)found + 0x108) = 0;
                }
            }
        }
        dtor_801F593C(this_, 0);
        if (freeFlag > 0) {
            dtor_80084580(this_);
        }
    }
    return this_;
}
