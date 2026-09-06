// fn_801030E0(this) - thin trampoline, passes `this` straight through to
// fn_801F3668 (the unidentified "finish" trigger first seen called from
// fn_80101DF0's outro-timer path).
extern "C" void fn_801F3668(void* this_);

extern "C" void fn_801030E0(void* this_) {
    fn_801F3668(this_);
}
