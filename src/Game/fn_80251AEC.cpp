typedef int s32;
typedef unsigned char u8;

extern "C" u8 fn_80251BFC(void* playerObj);
extern void* lbl_8053AAF8[2];

// fn_80251AEC(playerObj, mode) -> bool - the ACTUAL "set what item-carry
// mode this player is now displaying" setter, called from fn_8025EFFC's
// item-pickup commit sequence with mode = 0x11 or 0x12 there.
//
// 1. Gates on fn_80251BFC(playerObj); fails immediately (return 0) if
//    it doesn't pass.
// 2. Checks the per-player enable bitmask (lbl_8053AAF8->0x82) for this
//    player's bit. If clear AND the co-op link field (playerObj->0xd60)
//    is unlinked (-1) AND mode==0: sets playerObj->0x1244 = 1 directly
//    (the "carry mode" field). Otherwise, if a separate flag (->0x434)
//    is set and mode==0: checks whether ->0x1240 (a distinct "previous/
//    queued mode" field) is already 2 - if so, FAILS (returns 0); else
//    forces ->0x1244=2. All other cases just set ->0x1244=mode directly.
// 3. Always sets ->0x124c=1; ALSO sets ->0x124d=1 unless mode is
//    exactly 0, 2, or 3.
// 4. If unlinked and a "showing empty-hands" indicator byte (->0xcfe)
//    is set and the carry mode is now nonzero, clears that indicator.
extern "C" s32 fn_80251AEC(char* playerObj, s32 mode) {
    if (!fn_80251BFC(playerObj)) {
        return 0;
    }
    u8 bitmask = *(u8*)((char*)lbl_8053AAF8[0] + 0x82);
    s32 idx = *(s32*)(playerObj + 0x4);
    u8 bit = 1 << idx;
    if ((bitmask & bit) == 0 && *(s32*)(playerObj + 0xd60) < 0 && mode == 0) {
        *(s32*)(playerObj + 0x1244) = 1;
    } else {
        if (*(u8*)(playerObj + 0x434) != 0 && mode == 0) {
            if (*(s32*)(playerObj + 0x1240) == 2) {
                return 0;
            }
            *(s32*)(playerObj + 0x1244) = 2;
        } else {
            *(s32*)(playerObj + 0x1244) = mode;
        }
    }
    *(u8*)(playerObj + 0x124c) = 1;
    if (mode != 0 && mode != 2 && mode != 3) {
        *(u8*)(playerObj + 0x124d) = 1;
    }
    if (*(s32*)(playerObj + 0xd60) < 0 && *(u8*)(playerObj + 0xcfe) == 1 &&
        *(s32*)(playerObj + 0x1244) != 0) {
        *(u8*)(playerObj + 0xcfe) = 0;
    }
    return 1;
}
