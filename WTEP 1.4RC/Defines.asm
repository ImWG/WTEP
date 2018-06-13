;EasyCodeName=Defines,1
.Const

.Data?

.Data

.Code

O Equ Offset

FakeJmp Macro _Address
	DB 0E9H
	DD _Address
EndM

FakeCall Macro _Address
	DB 0E8H
	DD _Address
EndM


FakeJb Macro _Address
	DB 0FH, 82H
	DD _Address
EndM

FakeJae Macro _Address
	DB 0FH, 83H
	DD _Address
EndM

FakeJe Macro _Address
	DB 0FH, 84H
	DD _Address
EndM

FakeJne Macro _Address
	DB 0FH, 85H
	DD _Address
EndM

FakeJbe Macro _Address
	DB 0FH, 86H
	DD _Address
EndM

FakeJa Macro _Address
	DB 0FH, 87H
	DD _Address
EndM

FakeJl Macro _Address
	DB 0FH, 8CH
	DD _Address
EndM

FakeJge Macro _Address
	DB 0FH, 8DH
	DD _Address
EndM

FakeJle Macro _Address
	DB 0FH, 8EH
	DD _Address
EndM

FakeJg Macro _Address
	DB 0FH, 8FH
	DD _Address
EndM


SUB_REFRESH_GRAPHIC Equ 005CDC10H

SUB_TRANSFORM Equ 004C1A50H

SUB_DRAWBUTTON Equ 00520620H
SUB_TELEPORT Equ 005CFD90H
SUB_DROPUNIT Equ 00456A40H
SUB_UNIQUEUNIT Equ 004C6400H
SUB_CHECKUNITSPACE Equ 00463370H

SUB_RANDOM Equ 007B2820H

_PageFunction0 Equ 00456D50H
_PageFunction1 Equ 005E7560H
_PageFunction2 Equ 00520140H
_PageFunction3 Equ 00562CE0H
_PageFunction4 Equ 005200F0H
_PageFunction5 Equ 00520360H
_PageFunction7 Equ 00520070H

PageJmp1 Equ 00529424H
PageJmp2 Equ 0052355CH
PageJmp3 Equ 00523566H
PageJmp4 Equ 0051D959H
PageJmp5 Equ 0051D9E4H
PageJmp6 Equ 0051D908H
PageJmp7 Equ 0051D968H

; Constatnt
Plc Equ 007912A0H
Float1 Equ 00635BC8H ; Hero Healing Rate
Float100 Equ 006355D8H
Float05 Equ 00635978H
Float0 Equ 006355C8H
Float0001 Equ 00635970H


PatchBlock Struct
	Head DD ?
	Tail DD ?

PatchBlock EndS