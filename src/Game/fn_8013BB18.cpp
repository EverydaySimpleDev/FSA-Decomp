typedef unsigned char u8;

extern "C" void fn_802FF3F0(void* subObj);
extern "C" void fn_8030E150(void* subObj);
extern "C" void fn_80158E88(void* subObj);

// fn_8013BB18(this) - gated on the SAME this->0x39 instance flag
// fn_8013B71C uses: if 0 (cutscene/transition NOT active), calls
// fn_802FF3F0(this->0x20) (sibling of fn_802FF0EC/802FF3B0/802FF2D8)
// and fn_8030E150(this->0x24) (sibling of the fog/color object's
// fn_8030DFE8/DD20/DD68/DD8C/DFE8 family). Always calls
// fn_80158E88(this->0x2c).
extern "C" void fn_8013BB18(void* this_) {
    u8 flag = *(u8*)((char*)this_ + 0x39);
    if (flag == 0) {
        fn_802FF3F0(*(void**)((char*)this_ + 0x20));
        fn_8030E150(*(void**)((char*)this_ + 0x24));
    }
    fn_80158E88(*(void**)((char*)this_ + 0x2c));
}
