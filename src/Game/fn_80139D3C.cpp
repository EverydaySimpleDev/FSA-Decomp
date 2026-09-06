typedef unsigned char u8;

extern void* lbl_8053AB10;

extern "C" void fn_8016DB60(void* subObj);

// fn_80139D3C(this) - if the CONFIRMED cutscene manager's own byte
// +0x39 is 0, calls fn_8016DB60(this->0x24) - the "begin" half of the
// begin/poll pair with fn_80139CC4's fn_8016DA6C on the same field and
// condition.
extern "C" void fn_80139D3C(void* this_) {
    u8 flag = *(u8*)((char*)lbl_8053AB10 + 0x39);
    if (flag == 0) {
        fn_8016DB60(*(void**)((char*)this_ + 0x24));
    }
}
