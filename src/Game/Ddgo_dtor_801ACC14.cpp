typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;
typedef float f32;

extern "C" void fn_801EE434(void* handle);
extern "C" void* SpatialRegistry_GetBase(void);
extern "C" void* fn_801F666C(void* base, u32 id);
extern "C" void dtor_801F593C(void* this_, int how);
extern "C" void dtor_80084580(void* this_);
extern void* lbl_804A3334[];
extern "C" s32 lbl_8053ABE0;

// DDGO cluster, part 4/8 (220B). Real destructor - culls a 2-element
// handle array (this->0x29c/0x2a0, walked via a real 2-iteration loop)
// via the confirmed fn_801EE434, then if this->0x260 >= 0 looks the
// entry up in the spatial registry (SpatialRegistry_GetBase + confirmed
// fn_801F666C) and clears it (this->0x260 = -1, entry->0x108 = 0),
// decrements the global lbl_8053ABE0 when leaving state 2, then the
// shared base dtor dtor_801F593C plus a conditional second-base dtor
// dtor_80084580.
extern "C" void* Ddgo_dtor(void* this_, short how) {
    if (this_) {
        *(void**)this_ = lbl_804A3334;
        s32 v;
        char* p = (char*)this_;
        int i = 0;
        do {
            fn_801EE434(*(void**)(p + 0x29c));
            i++;
            p += 4;
        } while (i < 2);
        v = *(s32*)((char*)this_ + 0x260);
        if (v >= 0) {
            void* base = SpatialRegistry_GetBase();
            void* entry = fn_801F666C(base, v);
            if (entry) {
                *(s32*)((char*)this_ + 0x260) = -1;
                *(s32*)((char*)entry + 0x108) = 0;
            }
        }
        if (*(s32*)((char*)this_ + 0x234) == 2) {
            lbl_8053ABE0 = lbl_8053ABE0 - 1;
        }
        dtor_801F593C(this_, 0);
        if (how > 0) {
            dtor_80084580(this_);
        }
    }
    return this_;
}
