.section .sdata, "wa"
.balign 8
.global lbl_80539BC0
.global gap_09_80539BC1_sdata
.hidden gap_09_80539BC1_sdata
.global lbl_80539BC4
.global lbl_80539BC8
.global lbl_80539BCC
.global lbl_80539BD0
.global gap_09_80539BD2_sdata
.hidden gap_09_80539BD2_sdata
.global lbl_80539BD4
.global lbl_80539BD8
.global lbl_80539BE0
.global lbl_80539BE8
.global __OSVersion
.global "@97_80539BF4"
.global gap_09_80539BFA_sdata
.hidden gap_09_80539BFA_sdata
.global lbl_80539BFC
.global __OSCurrHeap
.global __OSArenaLo
.global gap_09_80539C0C_sdata
.hidden gap_09_80539C0C_sdata
.global __OSFpscrEnableBits
.global "@76_80539C14"
.global gap_09_80539C16_sdata
.hidden gap_09_80539C16_sdata
.global lbl_80539C18
.global SwitchThreadCallback
.global gap_09_80539C24_sdata
.hidden gap_09_80539C24_sdata
.global lbl_80539C28
.global lbl_80539C30
.global lbl_80539C38
.global __DVDVersion
.global autoInvalidation_80539C44
.global lbl_80539C48
.global lbl_80539C4C
.global gap_09_80539C52_sdata
.hidden gap_09_80539C52_sdata
.global lbl_80539C54
.global "@35_80539C58"
.global gap_09_80539C5A_sdata
.hidden gap_09_80539C5A_sdata
.global "@40_80539C5C"
.global "@41_80539C60"
.global gap_09_80539C63_sdata
.hidden gap_09_80539C63_sdata
.global lbl_80539C68
.global lbl_80539C6C
.global gap_09_80539C71_sdata
.hidden gap_09_80539C71_sdata
.global lbl_80539C78
.global lbl_80539C7C
.global lbl_80539C80
.global lbl_80539C84
.global lbl_80539C88
.global lbl_80539C8C
.global lbl_80539C90
.global gap_09_80539C92_sdata
.hidden gap_09_80539C92_sdata
.global lbl_80539C94
.global gap_09_80539C96_sdata
.hidden gap_09_80539C96_sdata
.global lbl_80539C98
.global lbl_80539CA0
.global lbl_80539CA8
.global lbl_80539CB0
.global lbl_80539CB8
.global lbl_80539CC0
.global lbl_80539CC8
.global lbl_80539CCA
.global __GXVersion
.global gap_09_80539CD4_sdata
.hidden gap_09_80539CD4_sdata
.global lbl_80539CD8
.global lbl_80539CDC
.global lbl_80539CE0
.global lbl_80539CE8
.global lbl_80539CF0
.global lbl_80539CF8
.global lbl_80539D00
.global lbl_80539D08
.global lbl_80539D10
.global lbl_80539D18
.global lbl_80539D20

lbl_80539BC0:
    .byte 0x03

gap_09_80539BC1_sdata:
    .byte 0x00, 0x00, 0x00

lbl_80539BC4:
    .4byte 0x00000002

lbl_80539BC8:
    .4byte 0x46FA3900 # .float 32028.5

lbl_80539BCC:
    .4byte 0x00000007

lbl_80539BD0:
    .2byte 0x2EE0

gap_09_80539BD2_sdata:
    .2byte 0x0000

lbl_80539BD4:
    .4byte 0x00000001

lbl_80539BD8:
    .4byte 0x00000001
    .4byte 0x00000000

lbl_80539BE0:
    .2byte 0x4000
    .2byte 0x0000
    .2byte 0x0000
    .2byte 0x0000

lbl_80539BE8:
    .4byte 0x00000000
    .4byte 0x00000000

__OSVersion:
    .4byte "@1_804955F8"

"@97_80539BF4":
    .string "%08x\n"

gap_09_80539BFA_sdata:
    .2byte 0x0000

lbl_80539BFC:
    .string "%s\n"

__OSCurrHeap:
    .4byte 0xFFFFFFFF
    .4byte 0x00000000

__OSArenaLo:
    .4byte 0xFFFFFFFF

gap_09_80539C0C_sdata:
    .4byte 0x00000000

__OSFpscrEnableBits:
    .4byte 0x000000F8

"@76_80539C14":
    .string "\n"

gap_09_80539C16_sdata:
    .2byte 0x0000

lbl_80539C18:
    .2byte 0xFFFF
    .2byte 0x0000
    .2byte 0x0000
    .2byte 0x0000

SwitchThreadCallback:
    .4byte DefaultSwitchThreadCallback

gap_09_80539C24_sdata:
    .4byte 0x00000000

lbl_80539C28:
    .4byte 0x00000000
    .4byte 0x3F800000

lbl_80539C30:
    .4byte 0x00000001
    .4byte 0x00000000

lbl_80539C38:
    .string "dvdfs.c"

__DVDVersion:
    .4byte lbl_804961B0

autoInvalidation_80539C44:
    .4byte 0x00000001

lbl_80539C48:
    .4byte fn_800489B0

lbl_80539C4C:
    .string "dvd.c"

gap_09_80539C52_sdata:
    .2byte 0x0000

lbl_80539C54:
    .4byte 0xFFFFFFFF

"@35_80539C58":
    .string "\n"

gap_09_80539C5A_sdata:
    .2byte 0x0000

"@40_80539C5C":
    .string "OFF"

"@41_80539C60":
    .string "ON"

gap_09_80539C63_sdata:
    .4byte 0x00000000
    .byte 0x00

lbl_80539C68:
    .4byte lbl_804963E8

lbl_80539C6C:
    .string "vi.c"

gap_09_80539C71_sdata:
    .4byte 0x00000000
    .byte 0x00, 0x00, 0x00

lbl_80539C78:
    .4byte lbl_804967B8

lbl_80539C7C:
    .4byte 0x00000020

lbl_80539C80:
    .4byte 0xF0000000

lbl_80539C84:
    .4byte 0x00000300

lbl_80539C88:
    .4byte 0x00000005

lbl_80539C8C:
    .4byte fn_8004EE24

lbl_80539C90:
    .string "A"

gap_09_80539C92_sdata:
    .2byte 0x0000

lbl_80539C94:
    .string "B"

gap_09_80539C96_sdata:
    .2byte 0x0000

lbl_80539C98:
    .4byte lbl_80496810
    .4byte 0x00000000

lbl_80539CA0:
    .4byte lbl_80496858
    .4byte 0x00000000

lbl_80539CA8:
    .4byte lbl_804968A0
    .4byte 0x00000000

lbl_80539CB0:
    .4byte lbl_804968E8
    .4byte 0x00000000

lbl_80539CB8:
    .4byte lbl_80496AA8
    .4byte 0x00000000

lbl_80539CC0:
    .4byte 0x00000001
    .4byte 0x00000000

lbl_80539CC8:
    .2byte 0xFFFF

lbl_80539CCA:
    .byte 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00

__GXVersion:
    .4byte lbl_80496CA0

gap_09_80539CD4_sdata:
    .4byte 0x00000000

lbl_80539CD8:
    .4byte 0x00040102

lbl_80539CDC:
    .4byte 0x00080102

lbl_80539CE0:
    .4byte 0x000C0102
    .4byte 0x00000000

lbl_80539CE8:
    .4byte 0x80818283
    .4byte 0xA0A1A2A3

lbl_80539CF0:
    .4byte 0x84858687
    .4byte 0xA4A5A6A7

lbl_80539CF8:
    .4byte 0x88898A8B
    .4byte 0xA8A9AAAB

lbl_80539D00:
    .4byte 0x8C8D8E8F
    .4byte 0xACADAEAF

lbl_80539D08:
    .4byte 0x90919293
    .4byte 0xB0B1B2B3

lbl_80539D10:
    .4byte 0x94959697
    .4byte 0xB4B5B6B7

lbl_80539D18:
    .4byte 0x98999A9B
    .4byte 0xB8B9BABB

lbl_80539D20:
    .4byte 0x00040105
    .4byte 0x02060000

