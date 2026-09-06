typedef int s32;

extern "C" void* SpatialRegistry_GetBase();
extern "C" void* fn_801F666C(void* base, s32 id);
extern "C" void fn_801F0E34(void* target, s32 soundId, s32 flag);

extern "C" void fn_801DADD0(void* record) {
    s32 id = *(s32*)record;
    if (id >= 0) {
        void* base = SpatialRegistry_GetBase();
        void* found = fn_801F666C(base, id);
        if (found != 0) {
            fn_801F0E34(found, 0x40005, 0);
        }
    }
}
