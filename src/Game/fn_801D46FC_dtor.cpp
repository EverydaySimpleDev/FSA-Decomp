typedef short s16;
typedef int s32;

extern "C" void dtor_801F593C(void* this_, int flag);
extern "C" void dtor_80084580(void* this_);
extern "C" void dtor_801D7730(void* this_, s32 flag);
extern "C" void dtor_801EB8CC(void* this_, s32 flag);
extern "C" void dtor_80217F80(void* this_, s32 flag);
extern void* lbl_804A4958[];
extern void* lbl_804A4808[];
extern void* lbl_8049CC34[];

extern "C" void* fn_801D46FC(void* this_, s16 freeFlag) {
    if (this_ != 0) {
        char* p = (char*)this_;
        *(void**)p = lbl_804A4958;
        if (p + 0x568 != 0) {
            char* q = p + 0x578;
            if (q != 0) {
                if (q + 0x24 != 0) {
                    *(void**)(p + 0x59c) = lbl_8049CC34;
                }
            }
        }
        dtor_801D7730(p + 0x4c4, -1);
        dtor_801EB8CC(p + 0x464, -1);
        dtor_80217F80(p + 0x448, -1);
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
