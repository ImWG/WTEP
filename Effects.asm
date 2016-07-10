;EasyCodeName=Effects,1
Include	defines.asm

.Const

IFNDEF CustomColorInfo@
; Combined patches
CustomColorInfo@ 	DD 0051CF28H
EnableInputs@ 		DD 007DD2DDH
TaskObject@ 		DD 0043797FH
KillObject@			DD 004379DDH
MoveSight@			DD 007D8B10H
Tribute@			DD 004377C0H

; Isolated patches
EnableTaskProj@		DD 00437973H ; Enable task object on projectiles

ENDIF


.Data?
.Data

IFNDEF EnableTaskProj
; For isolated patches
EnableTaskProj		DB 000H
EnableTaskProjN		DD 1H

ENDIF


.Code

__PatchEffectsStart:
	DB 'WAIFor effects', 0


EnableInputs:
	; Al = 02020202H, for
	; Cl = 02020202H, for requireds
	Mov DWord Ptr Ds:[Edx + 10H], Eax
	Mov Word Ptr Ds:[Edx + 14H], Ax
	Mov Edx, DWord Ptr Ds:[Esi + 0CH]
	Mov Edx, DWord Ptr Ds:[Edx + 4H]
	Mov Byte Ptr Ds:[Edx + 16H], Al
	Mov Edx, DWord Ptr Ds:[Esi + 0CH]
	Mov Edx, DWord Ptr Ds:[Edx + 0CH]
	Mov Byte Ptr Ds:[Edx + 16H], Al
	Mov Edx, DWord Ptr Ds:[Esi + 0CH]
	Mov Edx, DWord Ptr Ds:[Edx + 10H]
	Mov Byte Ptr Ds:[Edx + 16H], Al
	Mov Edx, DWord Ptr Ds:[Esi + 0CH]
	Mov Edx, DWord Ptr Ds:[Edx + 14H]
	Mov Byte Ptr Ds:[Edx + 16H], Al
	Mov Edx, DWord Ptr Ds:[Esi + 0CH]
	Mov Edx, DWord Ptr Ds:[Edx + 18H]
	Mov Byte Ptr Ds:[Edx + 16H], Al
	Mov Edx, DWord Ptr Ds:[Esi + 0CH]
	Mov Edx, DWord Ptr Ds:[Edx + 1CH]
	Mov Byte Ptr Ds:[Edx + 16H], Al
	Mov Edx, DWord Ptr Ds:[Esi + 0CH]
	Mov Edx, DWord Ptr Ds:[Edx + 20H]
	Mov Byte Ptr Ds:[Edx + 16H], Al
	Mov Edx, DWord Ptr Ds:[Esi + 0CH]
	Mov Edx, DWord Ptr Ds:[Edx + 24H]
	Mov Byte Ptr Ds:[Edx + 16H], Al
	Mov Edx, DWord Ptr Ds:[Esi + 0CH]
	Mov Edx, DWord Ptr Ds:[Edx + 28H]
	Mov Byte Ptr Ds:[Edx + 16H], Al
	Mov Edx, DWord Ptr Ds:[Esi + 0CH]
	Mov Edx, DWord Ptr Ds:[Edx + 30H]
	Mov Byte Ptr Ds:[Edx + 16H], Al
	Mov Edx, DWord Ptr Ds:[Esi + 0CH]
	Mov Edx, DWord Ptr Ds:[Edx + 38H]
	Mov Byte Ptr Ds:[Edx + 16H], Al
	Mov Byte Ptr Ds:[Edx + 1H], Al
	Mov Edx, DWord Ptr Ds:[Esi + 0CH]
	Mov Edx, DWord Ptr Ds:[Edx + 3CH]
	Mov Byte Ptr Ds:[Edx + 16H], Al

	Mov Edx, DWord Ptr Ds:[Esi + 0CH]
	Mov Edx, DWord Ptr Ds:[Edx + 40H]
	Mov Byte Ptr Ds:[Edx + 04H], Al

	Mov Edx, DWord Ptr Ds:[Esi + 0CH]
	Mov Edx, DWord Ptr Ds:[Edx + 44H]
	Mov Byte Ptr Ds:[Edx + 16H], Al
	Mov Edx, DWord Ptr Ds:[Esi + 0CH]
	Mov Edx, DWord Ptr Ds:[Edx + 4CH]
	Mov Byte Ptr Ds:[Edx + 16H], Al
	Mov Edx, DWord Ptr Ds:[Esi + 0CH]
	Mov Edx, DWord Ptr Ds:[Edx + 5CH]
	Mov Byte Ptr Ds:[Edx + 16H], Al
	Mov Edx, DWord Ptr Ds:[Esi + 0CH]
	Mov Edx, DWord Ptr Ds:[Edx + 60H]
	Mov Byte Ptr Ds:[Edx + 16H], Al
	Mov Edx, DWord Ptr Ds:[Esi + 0CH]
	Mov Edx, DWord Ptr Ds:[Edx + 64H]
	Mov Byte Ptr Ds:[Edx + 16H], Al
	Mov Edx, DWord Ptr Ds:[Esi + 0CH]
	Mov Edx, DWord Ptr Ds:[Edx + 68H]
	Mov Byte Ptr Ds:[Edx + 16H], Al

EnableInputs_Back:
	FakeJmp 007DD2E4H


CustomColorInfo:
	Add Esp, 8
	Test Eax, Eax
	Je CustomColorInfo_other

CustomColorInfo_White:
	FakeJmp 0051CF2FH

CustomColorInfo_other:
	Cmp Byte Ptr Ds:[Esi], 03CH
	Jne CustomColorInfo_Normal
	Cmp Byte Ptr Ds:[Esi + 5], 03EH
	Jne CustomColorInfo_Normal
	Lea Edx, [Esp + 20]
	Lea Eax, [Esp + 14]
	Mov Cl, Byte Ptr Ds:[Esi + 1]
	Sub Cl, 041H
	Shl Cl, 4
	Mov Cl, Byte Ptr Ds:[Esi + 2]
	Sub Cl, 041H
	Mov Byte Ptr Ds:[Eax], Cl
	Mov Cl, Byte Ptr Ds:[Esi + 3]
	Sub Cl, 041H
	Shl Cl, 4
	Mov Cl, Byte Ptr Ds:[Esi + 4]
	Sub Cl, 041H
	Mov Byte Ptr Ds:[Edx], Cl
	Add Esi, 6

CustomColorInfo_Normal:
	FakeJmp 0051CF36H


TaskObject:
	Mov Edx, DWord Ptr Ds:[Edi + 64H]
	Cmp Edx, 1H
	Je TaskObject_Teleport
	Cmp Edx, 6H
	Je TaskObject_ToId
	Cmp Edx, 7H
	Je TaskObject_Transform
	Cmp Edx, 8H
	Je TaskObject_Voice
	Cmp Edx, 9H
	Je TaskObject_Immitate
	Fild DWord Ptr Ds:[Edi + 48H]
	Push 0H

TaskObject_Other:
	FakeJmp 00437984H

TaskObject_Immitate:

	;Mov Edx, DWord Ptr Ds:[Ecx + 0CH]
	;Mov Edx, DWord Ptr Ds:[Edx + 74H]
	Mov Ecx, DWord Ptr Ds:[Ecx + 8H]
	;Mov Cx, Word Ptr Ds:[Ecx + 10H]
	;And Ecx, 0FFFFH
	;Mov Ecx, DWord Ptr Ds:[Ecx * 4 + Edx]

	Mov Edx, DWord Ptr Ds:[Esp + 24H]
	Mov Edx, DWord Ptr Ds:[Edx + 8H]
	Mov Edx, DWord Ptr Ds:[Edx + 18H] ;standing
	Mov DWord Ptr Ds:[Ecx + 18H], Edx
	Mov Edx, DWord Ptr Ds:[Esp + 24H]
	Mov Edx, DWord Ptr Ds:[Edx + 8H]
	Mov Edx, DWord Ptr Ds:[Edx + 20H] ;dying
	Mov DWord Ptr Ds:[Ecx + 20H], Edx
	Cmp Byte Ptr Ds:[Ecx + 4H], 46H ;is source eyecandy
	Jl TaskObject_End
	Mov Edx, DWord Ptr Ds:[Esp + 24H]
	Mov Edx, DWord Ptr Ds:[Edx + 8H]
	Cmp Byte Ptr Ds:[Edx + 4H], 46H
	Jl TaskObject_Immitate_EyeCandy
	Mov Edx, DWord Ptr Ds:[Edx + 0CCH] ;walking
	Mov DWord Ptr Ds:[Ecx + 0CCH], Edx
	Mov Edx, DWord Ptr Ds:[Esp + 24H]
	Mov Edx, DWord Ptr Ds:[Edx + 8H]
	Mov Edx, DWord Ptr Ds:[Edx + 120H] ;attacking
	Mov DWord Ptr Ds:[Ecx + 120H], Edx
	Jmp TaskObject_End

TaskObject_Immitate_EyeCandy:
	Mov Edx, DWord Ptr Ds:[Edx + 18H]
	Mov DWord Ptr Ds:[Ecx + 0CCH], Edx
	Mov DWord Ptr Ds:[Ecx + 120H], Edx
	Jmp TaskObject_End

TaskObject_ToId:
	Mov Edx, DWord Ptr Ds:[Esp + 24H]
	Mov Edx, DWord Ptr Ds:[Edx + 4H]
	Mov DWord Ptr Ds:[Ecx + 4H], Edx
	Jmp TaskObject_End

TaskObject_Teleport:
	Mov Edx, DWord Ptr Ds:[Esp + 24H]
	Cmp Edx, 0H
	Jle TaskObject_Teleport_Point
	Fld DWord Ptr Ds:[Edx + 38H]
	Fstp DWord Ptr Ds:[Ecx + 0C0H]
	Fld DWord Ptr Ds:[Edx + 38H]
	Fstp DWord Ptr Ds:[Ecx + 38H]
	Fld DWord Ptr Ds:[Edx + 3CH]
	Fstp DWord Ptr Ds:[Ecx + 0C8H]
	Fld DWord Ptr Ds:[Edx + 3CH]
	Fstp DWord Ptr Ds:[Ecx + 3CH]
	Jmp TaskObject_End

TaskObject_Teleport_Point:
	Fild DWord Ptr Ds:[Edi + 44H]
	Fstp DWord Ptr Ds:[Ecx + 0C0H]
	Fild DWord Ptr Ds:[Edi + 44H]
	Fstp DWord Ptr Ds:[Ecx + 38H]
	Fild DWord Ptr Ds:[Edi + 48H]
	Fstp DWord Ptr Ds:[Ecx + 0C8H]
	Fild DWord Ptr Ds:[Edi + 48H]
	Fstp DWord Ptr Ds:[Ecx + 3CH]
	Jmp TaskObject_End

TaskObject_Transform:
	Mov Edx, DWord Ptr Ds:[Esp + 24H]
	Mov Edx, DWord Ptr Ds:[Edx + 8H]
	Mov DWord Ptr Ds:[Ecx + 8H], Edx
	Jmp TaskObject_End

TaskObject_Voice:
	Mov Ecx, DWord Ptr Ds:[Ecx + 8H]
	Cmp Byte Ptr Ds:[Ecx + 4H], 46H ;is source eyecandy
	Jl TaskObject_End
	Mov Edx, DWord Ptr Ds:[Esp + 24H]
	Mov Edx, DWord Ptr Ds:[Edx + 8H]
	Cmp Byte Ptr Ds:[Edx + 4H], 46H
	Jl TaskObject_End
	Mov Edx, DWord Ptr Ds:[Edx + 40H]
	Mov DWord Ptr Ds:[Ecx + 40H], Edx
	Mov Edx, DWord Ptr Ds:[Esp + 24H]
	Mov Edx, DWord Ptr Ds:[Edx + 8H]
	Mov Edx, DWord Ptr Ds:[Edx + 114H]
	Mov DWord Ptr Ds:[Ecx + 114H], Edx
	Mov Edx, DWord Ptr Ds:[Esp + 24H]
	Mov Edx, DWord Ptr Ds:[Edx + 8H]
	Mov Edx, DWord Ptr Ds:[Edx + 118H]
	Mov DWord Ptr Ds:[Ecx + 118H], Edx

TaskObject_End:
	FakeJmp 0043799CH


KillObject:
	Mov Ax, Word Ptr Ds:[Edi + 10H] ;Quantity
	Shl Eax, 10H
	Mov Ax, Word Ptr Ds:[Edi + 64H] ;eax = Quantity,Number
	Lea Edi, [Esp + 94H]
	Mov Ecx, DWord Ptr Ds:[Edi]
	Cmp Ax, 1H
	Je KillObject_Undead
	Cmp Ax, 2H
	Je KillObject_ToggleId
	Cmp Ax, 3H
	Je KillObject_MinimapMode
	Cmp Ax, 4H
	Je KillObject_VisibilityInFog
	Cmp Ax, 7H
	Je KillObject_Angle
	Cmp Ax, 8H
	Je KillObject_Icon
	Cmp Ax, 9H
	Je KillObject_DeathUnit

KillObject_Other:
	FakeJmp 004379E6H

KillObject_CommonLoop:
	Inc Esi
	Add Edi, 4H
	Mov Ecx, DWord Ptr Ds:[Edi]
	Cmp Esi, DWord Ptr Ss:[Esp + 14H]
	Retn

KillObject_Undead:
	Mov DWord Ptr Ds:[Ecx + 30H], 7F800000H
	Call KillObject_CommonLoop
	Jl KillObject_Undead
	Jmp KillObject_End

KillObject_ToggleId:
	Shr Eax, 10H
	Cmp Eax, 0H
	Jne KillObject_ToggleId_P
	KillObject_ToggleId_N:
		Mov Eax, DWord Ptr Ds:[Ecx + 4H]
		Cmp Eax, 0H
		Jl KillObject_ToggleId_N_Skip
		Not Eax
		Mov DWord Ptr Ds:[Ecx + 4H], Eax
		KillObject_ToggleId_N_Skip:
			Call KillObject_CommonLoop
			Jl KillObject_ToggleId_N
			Jmp KillObject_End
	KillObject_ToggleId_P:
		Mov Eax, DWord Ptr Ds:[Ecx + 4H]
		Cmp Eax, 0H
		Jge KillObject_ToggleId_P_Skip
		Not Eax
		Mov DWord Ptr Ds:[Ecx + 4H], Eax
		KillObject_ToggleId_P_Skip:
			Call KillObject_CommonLoop
			Jl KillObject_ToggleId_P
			Jmp KillObject_End

KillObject_MinimapMode:
	Shr Eax, 10H
KillObject_MinimapMode_:
	Mov Ecx, DWord Ptr Ds:[Ecx + 8H]
	Mov Byte Ptr Ds:[Ecx + 96H], Al
	Call KillObject_CommonLoop
	Jl KillObject_MinimapMode_
	Jmp KillObject_End

KillObject_VisibilityInFog:
	Shr Eax, 10H
KillObject_VisibilityInFog_:
	Mov Ecx, DWord Ptr Ds:[Ecx + 8H]
	Mov Byte Ptr Ds:[Ecx + 6DH], Al
	Call KillObject_CommonLoop
	Jl KillObject_VisibilityInFog_
	Jmp KillObject_End

KillObject_Angle:
	Shr Eax, 10H
KillObject_Angle_:
	Mov Ds:[Ecx + 35H], Al
	Call KillObject_CommonLoop
	Jl KillObject_Angle_
	Jmp KillObject_End

KillObject_DeathUnit:
	Shr Eax, 10H
KillObject_DeathUnit_:
	Mov Ecx, DWord Ptr Ds:[Ecx + 8H]
	Mov Word Ptr Ds:[Ecx + 50H], Ax
	Call KillObject_CommonLoop
	Jl KillObject_DeathUnit_
	Jmp KillObject_End

KillObject_Icon:
	Shr Eax, 10H
KillObject_Icon_:
	Mov Ecx, DWord Ptr Ds:[Ecx + 8H]
	Mov Word Ptr Ds:[Ecx + 54H], Ax
	Call KillObject_CommonLoop
	Jl KillObject_Icon_

KillObject_End:
	FakeJmp 004379F7H


MoveSight:
	Mov Eax, DWord Ptr Ds:[Edi + 64H]
	Cmp Eax, 4
	Jge MoveSight_Point
	Cmp Eax, 1
	Jle MoveSight_Point

	Lea Eax, [Esp + 94H]
	Mov Eax, DWord Ptr Ds:[Eax]
	Fld DWord Ptr Ds:[Eax + 38H]
	Fistp DWord Ptr Ds:[Edi + 44H]
	Fld DWord Ptr Ds:[Eax + 3CH]
	Fistp DWord Ptr Ds:[Edi + 48H]

MoveSight_Point:
	Mov Eax, DWord Ptr Ds:[Edi + 64H]
	Fild DWord Ptr Ds:[Edi + 48H]
	And Eax, 1H
	Jg MoveSight_End

MoveSight_Jle:
	FakeJmp 00437A40H

MoveSight_End:
	FakeJmp 007D8B1EH


Tribute:
	Mov Edx, DWord Ptr Ss:[Edi + 64H]
	Cmp Edx, 9H
	Je Tribute_Civil
	Cmp Edx, 7H
	Je Tribute_LoS
	Cmp Edx, 8H
	Je Tribute_Field

	Fild DWord Ptr Ds:[Edi + 10H]
	Mov Edx, DWord Ptr Ss:[Esp + 20H]
Tribute_Other:
	FakeJmp 004377C7H

Tribute_Civil:
	Mov Edx, DWord Ptr Ss:[Esp + 20H]
	Mov Eax, DWord Ptr Ss:[Edi + 10H]
	Mov Byte Ptr Ds:[Edx + 15DH], Al
	Jmp Tribute_End

Tribute_LoS:
	Mov Eax, DWord Ptr Ss:[Edi + 10H]
	Mov Edx, 1H
	Cmp Eax, 64H
	Jnb Tribute_LoS_Lost
	Xor Cl, Al
	Xor Al, Cl
	Xor Cl, Al
	Shl Edx, Cl
	Mov Cl, Al
	Mov Ax, Dx
	Mov Edx, DWord Ptr Ss:[Esp + 20H]
	Or Word Ptr Ds:[Edx + 12AH], Ax
	Jmp Tribute_End

Tribute_LoS_Lost:
	Not Edx
	Sub Eax, 64H
	Xor Cl, Al
	Xor Al, Cl
	Xor Cl, Al
	Shl Edx, Cl
	Mov Cl, Al
	Mov Ax, Dx
	Mov Edx, DWord Ptr Ss:[Esp + 20H]
	And Word Ptr Ds:[Edx + 12AH], Ax
	Jmp Tribute_End

Tribute_Field:
	Mov Eax, DWord Ptr Ss:[Edi + 10H]
	Mov Edx, 1H
	Cmp Eax, 64H
	Jnb Tribute_Field_Lost
	Xor Cl, Al
	Xor Al, Cl
	Xor Cl, Al
	Shl Edx, Cl
	Mov Cl, Al
	Mov Ax, Dx
	Mov Edx, DWord Ptr Ss:[Esp + 20H]
	Or Word Ptr Ds:[Edx + 12CH], Ax
	Jmp Tribute_End

Tribute_Field_Lost:
	Not Edx
	Sub Eax, 64H
	Xor Cl, Al
	Xor Al, Cl
	Xor Cl, Al
	Shl Edx, Cl
	Mov Cl, Al
	Mov Ax, Dx
	Mov Edx, DWord Ptr Ss:[Esp + 20H]
	And Word Ptr Ds:[Edx + 12CH], Ax

Tribute_End:
	FakeJmp 004377E1H



__PatchEffectsEnd:
