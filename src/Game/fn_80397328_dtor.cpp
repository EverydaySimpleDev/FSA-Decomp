typedef short s16;

typedef int s32;
extern "C" void fn_80078050(void* this_, s32 flag);
extern "C" void dtor_80084580(void* this_);
extern void* lbl_804AF774[];

extern "C" void* fn_80397328(void* this_, s16 freeFlag) {
    if (this_ != 0) {
        *(void**)this_ = lbl_804AF774;
        fn_80078050(this_, 0);
        if (freeFlag > 0) {
            dtor_80084580(this_);
        }
    }
    return this_;
}
