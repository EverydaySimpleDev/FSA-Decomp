extern void* lbl_8053AED0;

extern "C" void fn_8043D5F0(void* obj);
extern "C" void fn_8038D4A8(void);

// fn_80139C5C() - parameterless "commit" step: fn_8043D5F0(lbl_8053AED0)
// then fn_8038D4A8() (neither decompiled yet) - the same lbl_8053AED0
// global the Scene Manager's own destructor also touches.
extern "C" void fn_80139C5C(void) {
    fn_8043D5F0(lbl_8053AED0);
    fn_8038D4A8();
}
