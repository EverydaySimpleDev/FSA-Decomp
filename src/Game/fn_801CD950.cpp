typedef float f32;
typedef int s32;

// fn_801CD950 - trivial argument-passthrough trampoline for fn_801CD9F0,
// the float "ease toward value" stepper (still raw asm - see
// extab_801cd9f0.s for the documented scheduling difficulties).
extern "C" s32 fn_801CD9F0(f32* value, f32 target, f32 step);

extern "C" s32 fn_801CD950(f32* value, f32 target, f32 step) {
    return fn_801CD9F0(value, target, step);
}
