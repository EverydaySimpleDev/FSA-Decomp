typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;
typedef float f32;

// dtor_801F593C(this, how) - a shared intermediate-base actor destructor
// (see project_fsa_rusa_actor_progress.md). Installs its own vtable
// Actor_vtable. Handles TWO independently-tracked sound/effect handles
// at this->0x100 and this->0x104: for each (if non-null), fetches the
// current room config record via GetRoomConfigRecord() and compares the
// handle's own position (handle->0xa4/0xa8/0xac) against the config's
// visibility rect (->0xcc/0xd0/0xd4/0xd8) - if the handle is still
// within/near that rect, marks it "kept" (clears bit value 0x40 then
// sets bit 0 of handle->0xf4, and handle->0x24=1); otherwise releases it
// via fn_8013C824()->0xc (a manager accessor) + fn_800EC240 (the release
// primitive). After both handles, calls SpatialRegistry_GetBase() then a
// real teardown step fn_801F8448(regBase, this), then frees the memory
// block via dtor_80084580 if the how flag is positive (the standard
// "> 0 means also deallocate" dtor convention).
extern "C" void* GetRoomConfigRecord(void);
extern "C" void* fn_8013C824(void);
extern "C" void fn_800EC240(void* mgr, void* handle);
extern "C" void* SpatialRegistry_GetBase(void);
extern "C" void fn_801F8448(void* regBase, void* this_);
extern "C" void dtor_80084580(void* this_);
extern void* Actor_vtable[];

static inline void ReleaseOrKeepHandle(void* handle) {
    if (handle) {
        void* cfg = GetRoomConfigRecord();
        f32 x = *(f32*)((char*)handle + 0xa4);
        u8 kept = 0;
        f32 y = *(f32*)((char*)handle + 0xa8);
        f32 z = *(f32*)((char*)handle + 0xac);
        f32 yz = y - z;
        if (x >= *(f32*)((char*)cfg + 0xcc)) {
            if (yz >= *(f32*)((char*)cfg + 0xd0)) {
                if (x < *(f32*)((char*)cfg + 0xd4)) {
                    if (yz < *(f32*)((char*)cfg + 0xd8)) {
                        kept = 1;
                    }
                }
            }
        }
        if (kept) {
            *(u32*)((char*)handle + 0xf4) = *(u32*)((char*)handle + 0xf4) & ~0x40;
            *(u32*)((char*)handle + 0xf4) = *(u32*)((char*)handle + 0xf4) | 1;
            *(s32*)((char*)handle + 0x24) = 1;
        } else {
            void* mgr = fn_8013C824();
            fn_800EC240(*(void**)((char*)mgr + 0xc), handle);
        }
    }
}

extern "C" void* dtor_801F593C(void* this_, short how) {
    if (this_) {
        *(void**)this_ = Actor_vtable;
        ReleaseOrKeepHandle(*(void**)((char*)this_ + 0x100));
        ReleaseOrKeepHandle(*(void**)((char*)this_ + 0x104));
        void* regBase = SpatialRegistry_GetBase();
        fn_801F8448(regBase, this_);
        if (how > 0) {
            dtor_80084580(this_);
        }
    }
    return this_;
}
