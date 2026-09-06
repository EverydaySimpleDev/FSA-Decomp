typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;
typedef float f32;

extern "C" void* fn_8013C824(void);
extern "C" void fn_800EC240(void* a, void* b);
extern "C" void dtor_801F593C(void* this_, int how);
extern "C" void dtor_80084580(void* this_);
extern void* lbl_804A38D4[];

// TLWP cluster, part 6/7 (212B). Real destructor - walks two adjoining
// handle arrays: this->0x294 (3 elements, real loop) and this->0x2a0
// (20 elements, real loop). For each nonzero entry, resolves a target
// via the confirmed fn_8013C824()->0xc and tears it down through the
// confirmed fn_800EC240, then zeroes the slot. Finishes with the
// shared base dtor dtor_801F593C plus a conditional second-base dtor
// dtor_80084580.
extern "C" void* Tlwp_dtor(void* this_, short how) {
    if (this_) {
        *(void**)this_ = lbl_804A38D4;
        char* p = (char*)this_;
        int i = 0;
        do {
            if (*(void**)(p + 0x294)) {
                void* base = fn_8013C824();
                void* a = *(void**)((char*)base + 0xc);
                fn_800EC240(a, *(void**)(p + 0x294));
                *(void**)(p + 0x294) = 0;
            }
            i++;
            p += 4;
        } while (i < 3);
        p = (char*)this_;
        int j = 0;
        do {
            if (*(void**)(p + 0x2a0)) {
                void* base = fn_8013C824();
                void* a = *(void**)((char*)base + 0xc);
                fn_800EC240(a, *(void**)(p + 0x2a0));
                *(void**)(p + 0x2a0) = 0;
            }
            j++;
            p += 4;
        } while (j < 0x14);
        dtor_801F593C(this_, 0);
        if (how > 0) {
            dtor_80084580(this_);
        }
    }
    return this_;
}
