typedef short s16;

typedef int s32;
extern "C" void fn_800EB208(void* this_, s32 flag);
extern "C" void dtor_80084580(void* this_);
extern void* lbl_8049F140[];

extern "C" void* dtor_8013C5C8(void* this_, s16 freeFlag) {
    if (this_ != 0) {
        *(void**)this_ = lbl_8049F140;
        fn_800EB208(this_, 0);
        if (freeFlag > 0) {
            dtor_80084580(this_);
        }
    }
    return this_;
}
