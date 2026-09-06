typedef int s32;

extern "C" void fn_8022149C(void* this_, s32 param);

// fn_80221160 - GENERIC default for vtable offset 0x74 (see
// project_fsa_growing_area_extension.md). Thin wrapper: fn_8022149C(this, 0).
extern "C" void fn_80221160(void* this_) {
    fn_8022149C(this_, 0);
}
