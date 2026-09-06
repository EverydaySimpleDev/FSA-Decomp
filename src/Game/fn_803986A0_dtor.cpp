typedef short s16;

typedef int s32;
extern "C" void dtor_800788C0(void* this_, s32 flag);
extern "C" void dtor_80084580(void* this_);
extern void* lbl_804AF6E4[];

extern "C" void* fn_803986A0(void* this_, s16 freeFlag) {
    if (this_ != 0) {
        *(void**)this_ = lbl_804AF6E4;
        dtor_800788C0(this_, 0);
        if (freeFlag > 0) {
            dtor_80084580(this_);
        }
    }
    return this_;
}
