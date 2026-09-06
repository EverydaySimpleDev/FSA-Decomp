typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;
typedef float f32;

extern "C" void fn_801EE434(void* handle);
extern "C" void dtor_801F593C(void* this_, int how);
extern "C" void dtor_80084580(void* this_);
extern "C" void* GetRoomConfigRecord(void);
extern "C" void fn_802D7440(void* unused, u8 flag);
extern void* lbl_804A35AC[];

// ZLD3 cluster, part 5/6 (160B). Destructor - culls 2 handles via the
// confirmed fn_801EE434 (offsets this+0x2b8/this+0x2bc), then
// GetRoomConfigRecord/fn_802D7440(record, 1) (per-room config deregister),
// then the shared base dtor dtor_801F593C plus a conditional second-base
// dtor dtor_80084580.
extern "C" void* Zld3_dtor(void* this_, short how) {
    if (this_) {
        *(void**)this_ = lbl_804A35AC;
        char* p = (char*)this_;
        int i = 0;
        do {
            void* h = *(void**)(p + 0x2b8);
            fn_801EE434(h);
            i++;
            p += 4;
        } while (i < 2);
        fn_802D7440(GetRoomConfigRecord(), 1);
        dtor_801F593C(this_, 0);
        if (how > 0) {
            dtor_80084580(this_);
        }
    }
    return this_;
}
