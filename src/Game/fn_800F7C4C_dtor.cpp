typedef unsigned char u8;
typedef short s16;
typedef int s32;

extern "C" void dtor_801F593C(void* this_, int flag);
extern "C" void dtor_80084580(void* this_);
extern "C" s32 fn_8022DCD8(s32 player);
extern "C" void fn_8022DD74(s32 player);
extern void* lbl_8049C578[];

extern "C" void* fn_800F7C4C(void* this_, s16 freeFlag) {
    if (this_ != 0) {
        *(void**)this_ = lbl_8049C578;
        char* p = (char*)this_;
        s32 player = *(s32*)(p + 0x238);
        if ((u8)fn_8022DCD8(player) != 0) {
            player = *(s32*)(p + 0x238);
            fn_8022DD74(player);
        }
        dtor_801F593C(this_, 0);
        if (freeFlag > 0) {
            dtor_80084580(this_);
        }
    }
    return this_;
}
