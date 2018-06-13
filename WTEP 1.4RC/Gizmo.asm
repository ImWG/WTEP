;EasyCodeName=Gizmo,1
Include	defines.asm

.Const

Gizmo@ DD 007C282FH

; Interfaces
$Gizmo DD O Gizmo
$__PatchGizmoStart DD O __PatchGizmoStart
$__PatchGizmoEnd DD O __PatchGizmoEnd

PatchGizmoAddresses DD O Gizmo_1, O Gizmo_2, O Gizmo_3, O Gizmo_4, 0

PatchGizmoDirectAddresses DD O Gizmo_File_, O Gizmo_File, 1
	DD O Gizmo_File2_, O Gizmo_File, 1
	DD O Gizmo_File3_, O Gizmo_File, 1
	DD O Gizmo_Pattern_, O Gizmo_Pattern, 1
	DD O Gizmo_Pattern2_, O Gizmo_Pattern2, 2
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

.If Zero?
; 3rd: Direct
Gizmo_File3_:
	Push 11111111H
	Call DWord Ptr Ds:[6351E0H]
.EndIf
.EndIf

	Add Esp, 100H
Gizmo_2:
	FakeJmp 007C2834H
Nop

Gizmo_File:
	DB 'Gizmo.dll', 0

Gizmo_Pattern2:
	DB '..\age2_x1\.'
Gizmo_Pattern:
	DB '.\Games\%s\%s%s', 0


Align 4
__PatchGizmoEnd:
