typedef short s16;

extern "C" void dtor_801F593C(void* this_, int flag);
extern "C" void dtor_80084580(void* this_);
extern void* lbl_8049CBE0[];
extern void* lbl_8049CC34[];

extern "C" void* fn_80105368(void* this_, s16 freeFlag) {
    if (this_ != 0) {
        char* p = (char*)this_;
        *(void**)p = lbl_8049CBE0;
        if (p + 0x374 != 0) {
            if (p + 0x398 != 0) {
                *(void**)(p + 0x398) = lbl_8049CC34;
            }
        }
        dtor_801F593C(this_, 0);
        if (freeFlag > 0) {
            dtor_80084580(this_);
        }
    }
    return this_;
}
