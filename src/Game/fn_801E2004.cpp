typedef int s32;
typedef float f32;

extern "C" void* SpatialRegistry_GetBase();
extern "C" void fn_801F7AB8(void* base, s32 a, s32 b);
extern "C" void* GetRoomConfigRecord(void);
extern f32 lbl_8053F4A4;

extern "C" void fn_801E2004(void* this_) {
    char* p = (char*)this_;
    void* base = SpatialRegistry_GetBase();
    fn_801F7AB8(base, *(s32*)(p + 0x1a0), *(s32*)(p + 0x198));
    s32 kind = *(s32*)(p + 0x4);
    char* record = (char*)GetRoomConfigRecord();
    char* field = (kind < 8) ? (record + 0xcc) : (record + 0xdc);
    *(f32*)(p + 0xc) = *(f32*)field - lbl_8053F4A4;
    f32 v1 = *(f32*)(p + 0x10);
    f32 v0 = *(f32*)(p + 0xc);
    *(f32*)(p + 0x2c4) = v0;
    *(f32*)(p + 0x2c8) = v1;
}
