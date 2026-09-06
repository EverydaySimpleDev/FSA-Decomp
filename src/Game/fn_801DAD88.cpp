typedef int s32;

extern "C" void* SpatialRegistry_GetBase();
extern "C" void* fn_801F666C(void* base, s32 id);
extern "C" void fn_801D8400(void* target);

extern "C" void fn_801DAD88(void* record) {
    s32 id = *(s32*)record;
    if (id >= 0) {
        void* base = SpatialRegistry_GetBase();
        void* found = fn_801F666C(base, id);
        if (found != 0) {
            fn_801D8400(found);
        }
    }
}
