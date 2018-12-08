;EasyCodeName=Gizmo,1
; Gizmo Loader Module
; Gizmo is a DLL file that can load other DLL patches of certain patterns. It would
; write jumps and patches into original memory codes when game is launched.
; Gizmo.dll can be placed at two locations:
; 1 - Games\<GameName>\Data\
; 2 - ..\Games\<GameName>\Data\

Include	defines.asm

.Const

Gizmo@ DD 007C282FH

; Interfaces
$Gizmo DD Offset Gizmo
$__PatchGizmoStart DD Offset __PatchGizmoStart
$__PatchGizmoEnd DD Offset __PatchGizmoEnd

PatchGizmoAddresses DD Offset Gizmo_1, Offset Gizmo_2, Offset Gizmo_3, Offset Gizmo_4, 0

PatchGizmoDirectAddresses DD Offset Gizmo_File_ + 1, Offset Gizmo_File
	DD Offset Gizmo_File2_ + 1, Offset Gizmo_File
	;DD Offset Gizmo_File3_+1, Offset Gizmo_File
	DD Offset Gizmo_Pattern_ + 1, Offset Gizmo_Pattern + 1
	DD Offset Gizmo_Pattern2_ + 1, Offset Gizmo_Pattern
	DD 0


.Data?

.Data

.Code

Align 4
__PatchGizmoStart:

Gizmo:
Gizmo_3:
	FakeCall 007C2970H
	Lea Eax, [Esp + 18H]
	Sub Esp, 100H
	Mov Ecx, Esp

; 1st: .\Games\<Game>\Data\
Gizmo_File_:
	Push 11111111H
	Push 0067B784H ; "Data\"
	Push 007C2E24H ; Pack Name
Gizmo_Pattern_:
	Push 11111111H
	Push Ecx
Gizmo_1:
	FakeCall 0061442BH
	Add Esp, 14H
	Mov Ecx, Esp
	Push Ecx
	Call DWord Ptr Ds:[6351E0H]
	Test Eax, Eax

.If Zero?
; 2nd: ..\Games\<Game>\Data\
Gizmo_File2_:
	Push 11111111H
	Push 0067B784H ; "Data\"
	Push 007C2E24H ; Pack Name
Gizmo_Pattern2_:
	Push 11111111H
	Push Ecx
Gizmo_4:
	FakeCall 0061442BH
	Add Esp, 14H
	Mov Ecx, Esp
	Push Ecx
	Call DWord Ptr Ds:[6351E0H]
	Test Eax, Eax

;.If Zero?
;; 3rd: Direct
;Gizmo_File3_:
;	Push 11111111H
;	Call DWord Ptr Ds:[6351E0H]
;.EndIf

.EndIf
	Add Esp, 100H
Gizmo_2:
	FakeJmp 007C2834H
	Nop

Gizmo_File:
	DB 'Gizmo.dll', 0
Gizmo_Pattern:
	DB '..\Games\%s\%s%s', 0


Align 4
__PatchGizmoEnd:
