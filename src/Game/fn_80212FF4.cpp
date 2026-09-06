typedef int s32;

extern "C" void* SpatialRegistry_GetBase();
extern "C" void* fn_801F666C(void* base, s32 id);
extern "C" void fn_80210D90(void* companion);
extern "C" void fn_801F4F28(void* this_);

extern "C" void fn_80212FF4(void* this_) {
    s32 id = *(s32*)((char*)this_ + 0x90);
    if (id >= 0) {
        void* base = SpatialRegistry_GetBase();
        void* found = fn_801F666C(base, id);
        if (found != 0) {
            fn_80210D90(found);
        }
    }
    fn_801F4F28(this_);
}
