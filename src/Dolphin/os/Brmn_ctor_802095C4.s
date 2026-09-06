.section extab, "a"
.balign 4
.global etb_80009DB8
etb_80009DB8:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80009DB8, 8

.section extabindex, "a"
.balign 4
.global eti_800177DC
eti_800177DC:
    .4byte fn_802095C4
    .4byte 0x0000007C
    .4byte etb_80009DB8
.size eti_800177DC, 12

# fn_802095C4 - "BRMN" real constructor. Calls the shared base
# fn_80207AC0 (see project_fsa_dispatcher_mass_landing.md), installs
# its own vtable lbl_804A5C88, plus its own direct inline field
# defaults: 0x340=0x0, 0x344=0x0, 0x348=0x0, 0x34c=0x0, 0x350=float from lbl_8053F918, 0x354=float from lbl_8053F918, 0x358=0x0, 0x35c=-0x8000, 0x35e=0x0, 0x360=float from lbl_8053F918, 0x364=float from lbl_8053F918, 0x368=float from lbl_8053F918, 0x36c=float from lbl_8053F918. Identified via the fn_801F9484 dispatcher sweep
# (see reference_fsa_full_dispatch_sweep.md).
.text
.balign 4
.global fn_802095C4

fn_802095C4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_80207AC0
    lis 3, lbl_804A5C88@ha
    li 4, 0x0
    addi 0, 3, lbl_804A5C88@l
    .4byte 0xC002C978 # lfs f0, lbl_8053F918@sda21(r0)
    stw 0, 0x0(31)
    li 0, -0x8000
    mr 3, 31
    stw 4, 0x340(31)
    stw 4, 0x344(31)
    stw 4, 0x348(31)
    stw 4, 0x34c(31)
    stfs 0, 0x350(31)
    stfs 0, 0x354(31)
    stw 4, 0x358(31)
    sth 0, 0x35c(31)
    sth 4, 0x35e(31)
    stfs 0, 0x360(31)
    stfs 0, 0x364(31)
    stfs 0, 0x368(31)
    stfs 0, 0x36c(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

