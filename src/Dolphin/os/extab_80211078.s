/*
 * RUSA core-update cluster (vtable lbl_804A6270), part 1/7.
 *
 * fn_80211078(this): resets this->0x3c/0x40/0x44 (a facing/look-at vector)
 * to the constant lbl_8053FAF8 (confirmed project-wide as 0.0f), then tail
 * calls fn_802110A8(this) to recompute the real facing/target values.
 * Trivial "clear then recompute" wrapper.
 *
 * Attempted real-C++ promotion (Phase 4): field writes/call fully confirmed
 * correct, but matches the well-established prologue-LR-save-placement
 * wall - retail loads the float constant BEFORE storing LR, MWCC always
 * stores LR first regardless of source phrasing. Deferred immediately per
 * standing discipline for an already-established wall class.
 */
.section extab, "a"
.balign 4
.global etb_8000A058
etb_8000A058:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000A058, 8

.section extabindex, "a"
.balign 4
.global eti_80017BCC
eti_80017BCC:
    .4byte fn_80211078
    .4byte 0x00000030
    .4byte etb_8000A058
.size eti_80017BCC, 12

.text
.balign 4
.global fn_80211078

fn_80211078:
    stwu 1, -0x10(1)
    mflr 0
    .4byte 0xC002CB58 # lfs f0, lbl_8053FAF8@sda21(r0)
    stw 0, 0x14(1)
    stfs 0, 0x3c(3)
    stfs 0, 0x40(3)
    stfs 0, 0x44(3)
    bl fn_802110A8
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
