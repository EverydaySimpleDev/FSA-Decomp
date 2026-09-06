typedef unsigned char u8;
typedef short s16;

extern "C" void dtor_801F593C(void* this_, int flag);
extern "C" void dtor_80084580(void* this_);
extern u8 lbl_8053AA81;
extern void* lbl_8049CEE0[];
extern void* lbl_8049CC34[];

extern "C" void* fn_8010AF3C(void* this_, s16 freeFlag) {
    if (this_ != 0) {
        char* p = (char*)this_;
        *(void**)p = lbl_8049CEE0;
        lbl_8053AA81 = 0;
        if (p + 0x33c != 0) {
            if (p + 0x360 != 0) {
                *(void**)(p + 0x360) = lbl_8049CC34;
            }
        }
        dtor_801F593C(this_, 0);
        if (freeFlag > 0) {
            dtor_80084580(this_);
        }
    }
    return this_;
}
