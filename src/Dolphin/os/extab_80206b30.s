.section extab, "a"
.balign 4
.global etb_80009CA4
etb_80009CA4:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_80009CA4, 8

.section extabindex, "a"
.balign 4
.global eti_8001765C
eti_8001765C:
    .4byte fn_80206B30
    .4byte 0x000000E8
    .4byte etb_80009CA4
.size eti_8001765C, 12

.text
.balign 4
.global fn_80206B30

# fn_80206B30(this, arg2, target) - TZOK's OWN override of vtable slot
# 0x4c (a hook every other actor landed this session inherits
# generically as fn_801F15BC, not yet characterized - first override
# of this slot seen). Reads as an "am I interactable/targetable by
# `target`" eligibility gate:
#  - Returns false immediately unless this->0xc4 (a byte flag) is set
#    OR this->0x248 (draw mode) == 3.
#  - Otherwise checks target's spawn 4CC code (fn_8022461C(target)):
#    code 0x39-tagged -> false; code 0x20-tagged -> checks a tracked-
#    list byte (via fn_80204638, see extab_80206758.s) and a predicate
#    fn_802064E0(this) (new) to decide true/false; any other code
#    falls through to the generic base check.
#  - Also returns false when draw mode==4 and this->0x14 (a height/
#    position field) exceeds a threshold constant.
#  - Otherwise defers to the generic fn_801F15BC(this, arg2, target).
fn_80206B30:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 5
    stw 30, 0x18(1)
    mr 30, 4
    stw 29, 0x14(1)
    mr 29, 3
    lbz 0, 0xc4(3)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_80206B6C
    lwz 0, 0x248(29)
    cmpwi 0, 0x3
    .4byte 0x4082000C # bne .L_80206B74
L_80206B6C:
    li 3, 0x0
    .4byte 0x4800008C # b .L_80206BFC
L_80206B74:
    mr 3, 31
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmpwi 0, 0x39
    .4byte 0x41820014 # beq .L_80206B98
    .4byte 0x40800064 # bge .L_80206BEC
    cmpwi 0, 0x20
    .4byte 0x41820010 # beq .L_80206BA0
    .4byte 0x48000058 # b .L_80206BEC
L_80206B98:
    li 3, 0x0
    .4byte 0x48000060 # b .L_80206BFC
L_80206BA0:
    bl fn_80204638
    lbz 0, 0x0(3)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_80206BC0
    mr 3, 29
    bl fn_802064E0
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80206BC8
L_80206BC0:
    li 3, 0x1
    .4byte 0x48000038 # b .L_80206BFC
L_80206BC8:
    lwz 0, 0x248(29)
    cmpwi 0, 0x4
    .4byte 0x4082001C # bne .L_80206BEC
    lfs 1, 0x14(29)
    .4byte 0xC002C908 # lfs f0, lbl_8053F8A8@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4081000C # ble .L_80206BEC
    li 3, 0x0
    .4byte 0x48000014 # b .L_80206BFC
L_80206BEC:
    mr 3, 29
    mr 4, 30
    mr 5, 31
    bl fn_801F15BC
L_80206BFC:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

