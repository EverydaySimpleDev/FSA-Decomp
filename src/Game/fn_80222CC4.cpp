typedef int s32;

extern "C" void fn_80221184(void* this_);
extern "C" void* SpatialRegistry_GetBase();
extern "C" void* fn_801F666C(void* base, s32 id);

extern "C" void fn_80222CC4(void* this_) {
    fn_80221184(this_);
    char* p = (char*)this_;
    s32 id = *(s32*)(p + 0x2b8);
    if (id >= 0) {
        void* base = SpatialRegistry_GetBase();
        void* found = fn_801F666C(base, id);
        if (found != 0) {
            *(s32*)((char*)found + 0x108) = 0;
        }
        *(s32*)(p + 0x2b8) = -1;
    }
}
