typedef short s16;
typedef int s32;
typedef unsigned int u32;

extern "C" void dtor_801F593C(void* this_, int flag);
extern "C" void dtor_80084580(void* this_);
extern "C" void fn_8022DD74(s32 id);
extern void* lbl_804A3E44[];
extern void* lbl_804A4808[];
extern void* lbl_8049CC34[];

extern "C" void* fn_801BCC40(void* this_, s16 freeFlag) {
    if (this_ != 0) {
        char* p = (char*)this_;
        *(void**)p = lbl_804A3E44;
        if (*(u32*)(p + 0x230) & 0x8000) {
            s32 id = *(s32*)(p + 0x2c4);
            if (id >= 0) {
                fn_8022DD74(id);
            }
        }
        if (this_ != 0) {
            *(void**)p = lbl_804A4808;
            if (p + 0x270 != 0) {
                if (p + 0x294 != 0) {
                    *(void**)(p + 0x294) = lbl_8049CC34;
                }
            }
            dtor_801F593C(this_, 0);
        }
        if (freeFlag > 0) {
            dtor_80084580(this_);
        }
    }
    return this_;
}
