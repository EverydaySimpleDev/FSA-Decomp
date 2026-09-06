typedef int s32;

extern "C" s32 fn_8026947C(void* subObj);

// fn_8024B2BC(playerObj) - trivial delegate: forwards playerObj's
// sub-object pointer at +0xbf0 into fn_8026947C and returns its result
// directly.
extern "C" s32 fn_8024B2BC(char* playerObj) {
    return fn_8026947C(*(void**)(playerObj + 0xbf0));
}
