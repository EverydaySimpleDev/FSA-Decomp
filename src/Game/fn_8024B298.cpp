typedef int s32;

extern "C" void fn_8026942C(void* subObj, s32 idx, void* outStruct);

// fn_8024B298(playerObj, idx, outStruct) - trivial trampoline: swaps the
// receiver from playerObj to playerObj->0xbf0 (a sub-object) and
// tail-calls fn_8026942C(subObj, idx, outStruct) with the other two
// args forwarded unchanged.
extern "C" void fn_8024B298(char* playerObj, s32 idx, void* outStruct) {
    fn_8026942C(*(void**)(playerObj + 0xbf0), idx, outStruct);
}
