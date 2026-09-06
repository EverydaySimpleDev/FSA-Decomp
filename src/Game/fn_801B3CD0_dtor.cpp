typedef short s16;
typedef unsigned char u8;

extern "C" void dtor_801F593C(void* this_, int flag);
extern "C" void dtor_80084580(void* this_);
extern void* lbl_804A3698[];
extern u8 lbl_8053ABE8;
extern u8 lbl_8053ABF0;

extern "C" void* fn_801B3CD0(void* this_, s16 freeFlag) {
    if (this_ != 0) {
        *(void**)this_ = lbl_804A3698;
        lbl_8053ABE8 = 0;
        lbl_8053ABF0 = 0;
        dtor_801F593C(this_, 0);
        if (freeFlag > 0) {
            dtor_80084580(this_);
        }
    }
    return this_;
}
