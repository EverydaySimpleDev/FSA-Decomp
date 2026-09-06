# Fresh-gap-hunt batch 25 landing (5 non-ctors, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
#
# fn_802C5284(this) - builds a 2D position from this->0x230/0x234 and
# forwards it, along with this->0x238 (a room index), to
# fn_802D6C10(GetRoomConfigRecord(), &pos, roomIdx).
#
# Attempted real-C++ promotion (Phase 4): a direct Vec2-struct
# translation compiled 0x10 bytes SHORT (0x48 vs retail's 0x58) - MWCC
# emitted plain lfs/stfs directly into the final struct slots, while
# retail's actual bytes round-trip the 2 floats through a pair of
# temporary stack slots (0x10/0x14) and reload them as INTEGERS before
# storing into the real struct at 0x8/0xc - a genuine struct-copy
# register-class choice (GPR vs FPR) not reproduced by a plain field-by-
# field translation. Matches the general "struct copy chooses a
# different register class" hard category. Deferred after 1 attempt -
# too large a gap (4 missing instructions) to be a simple reorder.
.section extab, "a"
.balign 4
.global etb_8000CA8C
etb_8000CA8C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000CA8C, 8

.section extabindex, "a"
.balign 4
.global eti_8001B94C
eti_8001B94C:
    .4byte fn_802C5284
    .4byte 0x00000058
    .4byte etb_8000CA8C
.size eti_8001B94C, 12

.text
.balign 4
.global fn_802C5284

fn_802C5284:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    lfs 1, 0x230(3)
    lfs 0, 0x234(3)
    stfs 1, 0x10(1)
    lwz 31, 0x238(3)
    stfs 0, 0x14(1)
    lwz 3, 0x10(1)
    lwz 0, 0x14(1)
    stw 3, 0x8(1)
    stw 0, 0xc(1)
    bl GetRoomConfigRecord
    mr 5, 31
    addi 4, 1, 0x8
    bl fn_802D6C10
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr
