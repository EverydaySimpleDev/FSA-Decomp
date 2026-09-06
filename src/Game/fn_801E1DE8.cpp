typedef int s32;

// fn_801E1DE8 (TINK, vtable lbl_804A51E4) - trivial zero-arg trampoline to
// the confirmed fn_801CCF7C(); result discarded by the caller's condition
// elsewhere. Distinct from fn_801E1E08 (the state-0/reset handler), which
// is what jumptable_804A5320's slot 0 actually calls.
extern "C" s32 fn_801CCF7C(void);

extern "C" s32 fn_801E1DE8(void* this_) {
    return fn_801CCF7C();
}
