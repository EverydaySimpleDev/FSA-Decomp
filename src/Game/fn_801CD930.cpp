typedef short s16;
typedef int s32;

// fn_801CD930 - trivial argument-passthrough trampoline for EaseTowardS16,
// the integer "ease toward value" stepper.
extern "C" s32 EaseTowardS16(s16* value, s16 target, s16 step);

extern "C" s32 fn_801CD930(s16* value, s16 target, s16 step) {
    return EaseTowardS16(value, target, step);
}
