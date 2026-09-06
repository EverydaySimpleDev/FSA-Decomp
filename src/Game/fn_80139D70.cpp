extern void* lbl_8053AED0;

extern "C" void fn_8043D644(void* obj);
extern "C" void fn_8043D8B4(void* obj);

// fn_80139D70() - parameterless: fn_8043D644(lbl_8053AED0) then
// fn_8043D8B4(lbl_8053AED0) (neither decompiled yet) - a 2nd "begin"
// pair on the same lbl_8053AED0 global as fn_80139C5C/fn_80139C84.
extern "C" void fn_80139D70(void) {
    fn_8043D644(lbl_8053AED0);
    fn_8043D8B4(lbl_8053AED0);
}
