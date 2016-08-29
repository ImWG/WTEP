;EasyCodeName=Effects,1
Include	defines.asm

.Const

; Combined patches
CustomColorInfo@ 	DD 0051CF28H
MoreResources@		DD 004EE724H ; Add more resources in list

EnableInputs@ 		DD 007DD2DDH
TaskObject@ 		DD 0043797FH
KillObject@			DD 004379DDH
MoveSight@			DD 007D8B10H
Tribute@			DD 004377C0H
ShowInfo@			DD 00437C0FH
DamageUnit@			DD 00437D40H
CreateUnitArray@	DD 004378C3H
ChangeAttack@ 		DD 007D8A94H
ChangeDiplomacy@	DD 00437605H
ChangeSpeed@		DD 007DD43EH
SendChat@			DD 0043764FH

; Isolated patches
EnableTaskProj@		DD 00437973H ; Enable Task Object for projectiles.
MoreTributeRes@		DD 004EE738H ; Make resources list same with Accumulate Attribute's.
NonNumInQuantity@	DD 004EAD97H ; Allow non-number characters in Quantity box. negative figures could be typed instantly
GaiaForPlayer@		DD 007CE1C0H ; Allow set gaia civilization for players (shown as "Random")
GaiaForPlayer2@		DD 007CE1DCH
BuildingNameFix@	DD 004E1033H ; Fix buildings without language name shown as blank choices in trigger editor.
ExpandNumberLength@	DD 004EADF9H ; Allow more figures to type in in "Number".

.Const

; Interfaces
$__PatchEffectsStart DD Offset __PatchEffectsStart
$__PatchEffectsEnd DD Offset __PatchEffectsEnd

$EnableInputs DD Offset EnableInputs
$MoreResources DD Offset MoreResources
$CustomColorInfo DD Offset CustomColorInfo
$TaskObject DD Offset TaskObject
$KillObject DD Offset KillObject
$MoveSight DD Offset MoveSight
$Tribute DD Offset Tribute
$ShowInfo DD Offset ShowInfo
$DamageUnit DD Offset DamageUnit
$CreateUnitArray DD Offset CreateUnitArray
$ChangeAttack DD Offset ChangeAttack
$ChangeDiplomacy DD Offset ChangeDiplomacy
$ChangeSpeed DD Offset ChangeSpeed
$SendChat DD Offset SendChat


PatchEffectsAddresses DD Offset CustomColorInfo_White, Offset CustomColorInfo_Normal
	DD Offset EnableInputs_Back
	DD Offset TaskObject_Other, Offset TaskObject_End
	DD Offset TaskObject_Transform_1, Offset TaskObject_Immitate_End_1
	DD Offset TaskObject_Teleport_1, Offset TaskObject_InstantGarrison_1, Offset TaskObject_InstantGarrison_2
	DD Offset KillObject_Other, Offset KillObject_End, Offset KillObject_Isolate_1
	DD Offset MoveSight_End, Offset MoveSight_Jle
	DD Offset Tribute_Other, Offset Tribute_End
	DD Offset MoreResources_1, Offset MoreResources_2, Offset MoreResources_3, Offset MoreResources_4
	DD Offset MoreResources_5, Offset MoreResources_6, Offset MoreResources_Back
	DD Offset ShowInfo_1
	DD Offset DamageUnit_1, Offset DamageUnit_2, Offset DamageUnit_3
	DD Offset CreateUnitArray_0, Offset CreateUnitArray_1, Offset CreateUnitArray_2, Offset CreateUnitArray_3
	DD Offset ChangeAttack_1, Offset ChangeAttack_2, Offset ChangeAttack_3
	DD Offset ChangeDiplomacy_1, Offset ChangeDiplomacy_2, Offset ChangeDiplomacy_3
	DD Offset ChangeSpeed_2, Offset ChangeSpeed_1
	DD Offset SendChat_0, Offset SendChat_1, Offset SendChat_2
	DD 0H

PatchEffectsDirectAddresses DD Offset KillObject_Table_, Offset KillObject_Table, 4
	DD Offset ChangeAttack_Table_, Offset ChangeAttack_Table, 4
	DD Offset ChangeSpeed_Table_, Offset ChangeSpeed_Table, 4
	DD 0H

PatchEffectsDirectAddressArrays DD 0H ; Offset KillObject_Table
	DD 0H


.Data

; For isolated patches
EnableTaskProj		DB 000H
EnableTaskProjN		DD 1H

MoreTributeRes		DB 0E9H, 1AH, 0FFH, 0FFH, 0FFH
MoreTributeResN		DD 5H

NonNumInQuantity	DB 00H
NonNumInQuantityN	DD 01H

GaiaForPlayer		DB 90H
GaiaForPlayerN		DD 01H
GaiaForPlayer2		DB 7EH
GaiaForPlayer2N		DD 01H

BuildingNameFix		DB 28H
BuildingNameFixN	DD 01H

ExpandNumberLength	DB 05H
ExpandNumberLengthN	DD 1


.Code

; Patch Content
__PatchEffectsStart:
	DB 'WAIFor effects', 0


EnableInputs:
	; Al = 02020202H, for
	; Cl = 02020202H, for requireds
	Mov DWord Ptr Ds:[Edx + 10H], Eax
	Mov Word Ptr Ds:[Edx + 14H], Ax
	Push Edi
	Mov Edi, DWord Ptr Ds:[Esi + 0CH]

	Mov Edx, DWord Ptr Ds:[Edi + 4H]
	Mov Byte Ptr Ds:[Edx + 16H], Al
	Mov Edx, DWord Ptr Ds:[Edi + 0CH]
	Mov Byte Ptr Ds:[Edx + 16H], Al
	Mov Edx, DWord Ptr Ds:[Edi + 10H]
	Mov Byte Ptr Ds:[Edx + 16H], Al
	Mov Edx, DWord Ptr Ds:[Edi + 14H]
	Mov Byte Ptr Ds:[Edx + 16H], Al
	Mov Edx, DWord Ptr Ds:[Edi + 18H]
	Mov Byte Ptr Ds:[Edx + 16H], Al
	Mov Edx, DWord Ptr Ds:[Edi + 1CH]
	Mov Byte Ptr Ds:[Edx + 16H], Al
	Mov Edx, DWord Ptr Ds:[Edi + 20H]
	Mov Byte Ptr Ds:[Edx + 16H], Al
	Mov Edx, DWord Ptr Ds:[Edi + 24H]
	Mov Byte Ptr Ds:[Edx + 16H], Al
	Mov Edx, DWord Ptr Ds:[Edi + 28H]
	Mov Byte Ptr Ds:[Edx + 16H], Al
	Mov Edx, DWord Ptr Ds:[Edi + 2CH]
	Mov DWord Ptr Ds:[Edx + 10H], Eax
	Mov Edx, DWord Ptr Ds:[Edi + 30H]
	Mov Byte Ptr Ds:[Edx + 16H], Al
	Mov Edx, DWord Ptr Ds:[Edi + 38H]
	Mov Byte Ptr Ds:[Edx + 16H], Al
	Mov Byte Ptr Ds:[Edx + 1H], Al
	Mov Edx, DWord Ptr Ds:[Edi + 3CH]
	Mov Byte Ptr Ds:[Edx + 16H], Al
	Mov Edx, DWord Ptr Ds:[Edi + 40H]
	Mov Byte Ptr Ds:[Edx + 04H], Al
	Mov Edx, DWord Ptr Ds:[Edi + 44H]
	Mov Byte Ptr Ds:[Edx + 16H], Al
	Mov Edx, DWord Ptr Ds:[Edi + 4CH]
	Mov Byte Ptr Ds:[Edx + 16H], Al
	Mov Edx, DWord Ptr Ds:[Edi + 5CH]
	Mov Byte Ptr Ds:[Edx + 16H], Al
	Mov Edx, DWord Ptr Ds:[Edi + 60H]
	Mov Byte Ptr Ds:[Edx + 16H], Al
	Mov Edx, DWord Ptr Ds:[Edi + 64H]
	Mov Byte Ptr Ds:[Edx + 16H], Al
	Mov Edx, DWord Ptr Ds:[Edi + 68H]
	Mov Byte Ptr Ds:[Edx + 16H], Al
	; User Patch's effects
	Mov Edx, DWord Ptr Ds:[Edi + 78H]
	Mov Byte Ptr Ds:[Edx + 16H], Al
	Mov Edx, DWord Ptr Ds:[Edi + 7CH]
	Mov Byte Ptr Ds:[Edx + 16H], Al
	Mov Edx, DWord Ptr Ds:[Edi + 80H]
	Mov Byte Ptr Ds:[Edx + 16H], Al
	Mov Edx, DWord Ptr Ds:[Edi + 84H]
	Mov Byte Ptr Ds:[Edx + 16H], Al

	Pop Edi

EnableInputs_Back:
	FakeJmp 007DD2E4H


MoreResources:
	Mov Ecx, DWord Ptr Ss:[Ebp] ; Pop Limitation
	Push 4
	Push 9747
MoreResources_1:
	FakeCall 00550870H
	Mov Ecx, DWord Ptr Ss:[Ebp] ; Building Rate
	Push 195
	Push 7054
MoreResources_2:
	FakeCall 00550870H
	Mov Ecx, DWord Ptr Ss:[Ebp] ; Market Rate
	Push 78
	Push 7015
MoreResources_3:
	FakeCall 00550870H
	Mov Ecx, DWord Ptr Ss:[Ebp] ; Current Age
	Push 6
	Push 10336
MoreResources_4:
	FakeCall 00550870H
	Mov Ecx, DWord Ptr Ss:[Ebp] ; Monk Heal Rate
	Push 89
	Push 4124
MoreResources_5:
	FakeCall 00550870H
	Mov Ecx, DWord Ptr Ss:[Ebp] ; berserker Heal
	Push 96
	Push 7431
MoreResources_6:
	FakeCall 00550870H

	Mov Ecx, DWord Ptr Ss:[Ebp]
	Push 0
MoreResources_Back:
	FakeJmp 004EE729H



CustomColorInfo:
	Add Esp, 8
	Test Eax, Eax
	Je CustomColorInfo_Other

CustomColorInfo_White:
	FakeJmp 0051CF2FH

CustomColorInfo_Other:
	Cmp Byte Ptr Ds:[Esi], 03CH
	Jne CustomColorInfo_Normal
	Cmp Byte Ptr Ds:[Esi + 5], 03EH
	Jne CustomColorInfo_Normal
	Lea Edx, [Esp + 20H]
	Lea Eax, [Esp + 14H]
	Mov Cl, Byte Ptr Ds:[Esi + 1]
	Sub Cl, 041H
	Shl Cl, 4
	Mov Ch, Byte Ptr Ds:[Esi + 2]
	Sub Ch, 041H
	Add Cl, Ch
	Mov Byte Ptr Ds:[Eax], Cl
	Mov Cl, Byte Ptr Ds:[Esi + 3]
	Sub Cl, 041H
	Shl Cl, 4
	Mov Ch, Byte Ptr Ds:[Esi + 4]
	Sub Ch, 041H
	Add Cl, Ch
	Mov Byte Ptr Ds:[Edx], Cl
	Add Esi, 6

CustomColorInfo_Normal:
	FakeJmp 0051CF36H


TaskObject:
	Mov Edx, DWord Ptr Ds:[Edi + 64H]
	Cmp Edx, 0H
	Jle TaskObject_Other_
	Cmp Edx, 1H
	Je TaskObject_Teleport
	Cmp Edx, 2H
	Je TaskObject_InstantGarrison
	Cmp Edx, 6H
	Je TaskObject_ToId
	Cmp Edx, 7H
	Je TaskObject_Transform
	Cmp Edx, 8H
	Je TaskObject_Voice
	Cmp Edx, 9H
	Je TaskObject_Immitate
TaskObject_Other_:
	Fild DWord Ptr Ds:[Edi + 48H]
	Push 0H

TaskObject_Other:
	FakeJmp 00437984H

TaskObject_Immitate:

	Push Ecx
	Mov Ecx, DWord Ptr Ds:[Ecx + 8H]
	Mov Edx, DWord Ptr Ds:[Esp + 28H]
	Mov Edx, DWord Ptr Ds:[Edx + 8H]
	Mov Edx, DWord Ptr Ds:[Edx + 18H] ;standing
	Mov DWord Ptr Ds:[Ecx + 18H], Edx
	Mov Edx, DWord Ptr Ds:[Esp + 28H]
	Mov Edx, DWord Ptr Ds:[Edx + 8H]
	Mov Edx, DWord Ptr Ds:[Edx + 20H] ;dying
	Mov DWord Ptr Ds:[Ecx + 20H], Edx
	Cmp Byte Ptr Ds:[Ecx + 4H], 46H ;is source eyecandy
	Jl TaskObject_Immitate_End
	Mov Edx, DWord Ptr Ds:[Esp + 28H]
	Mov Edx, DWord Ptr Ds:[Edx + 8H]
	Cmp Byte Ptr Ds:[Edx + 4H], 46H
	Jl TaskObject_Immitate_EyeCandy ; is target eyecandy
	Mov Edx, DWord Ptr Ds:[Edx + 0CCH] ;walking
	Mov DWord Ptr Ds:[Ecx + 0CCH], Edx
	Mov Edx, DWord Ptr Ds:[Esp + 28H]
	Mov Edx, DWord Ptr Ds:[Edx + 8H]
	Mov Edx, DWord Ptr Ds:[Edx + 120H] ;attacking
	Mov DWord Ptr Ds:[Ecx + 120H], Edx
	Jmp TaskObject_Immitate_End

TaskObject_Immitate_EyeCandy:
	Mov Edx, DWord Ptr Ds:[Edx + 18H]
	Mov DWord Ptr Ds:[Ecx + 0CCH], Edx
	Mov DWord Ptr Ds:[Ecx + 120H], Edx

TaskObject_Immitate_End: ; Update Vision
	Pop Ecx
	Mov Edx, DWord Ptr Ds:[Ecx + 8H]
	Push Edx
TaskObject_Immitate_End_1:
	FakeCall SUB_REFRESH_GRAPHIC
	Jmp TaskObject_End

TaskObject_ToId:
	Mov Edx, DWord Ptr Ds:[Esp + 24H]
	Mov Edx, DWord Ptr Ds:[Edx + 4H]
	Mov DWord Ptr Ds:[Ecx + 4H], Edx
	Jmp TaskObject_End

TaskObject_Teleport: ; ECX = Unit Addr.
	Cmp Byte Ptr Ds:[Ecx + 4EH], 60
	Jl TaskObject_Teleport_End
	Mov Edx, DWord Ptr Ds:[Esp + 24H]
	Cmp Edx, 0H
	Push Edx
	Push Eax
	Push 0
	Jle TaskObject_Teleport_Point
	Fld DWord Ptr Ds:[Edx + 38H]
	Fld DWord Ptr Ds:[Edx + 3CH]
	Jmp TaskObject_Teleport_
TaskObject_Teleport_Point:
	Fild DWord Ptr Ds:[Edi + 44H]
	Fild DWord Ptr Ds:[Edi + 48H]
TaskObject_Teleport_:
	Sub Esp, 8H
	Fst DWord Ptr Ds:[Ecx + 0C8H]
	Fstp DWord Ptr Ss:[Esp + 4H]
	Fst DWord Ptr Ds:[Ecx + 0C0H]
	Fstp DWord Ptr Ss:[Esp]
TaskObject_Teleport_1:
	FakeCall SUB_TELEPORT
	Pop Eax
	Pop Edx
TaskObject_Teleport_End:
	Jmp TaskObject_End

TaskObject_Transform:
	Mov Edx, DWord Ptr Ds:[Esp + 24H]
	Mov Edx, DWord Ptr Ds:[Edx + 8H]
	Push Edx
TaskObject_Transform_1:
	FakeCall SUB_TRANSFORM
	Jmp TaskObject_End

TaskObject_InstantGarrison:
	Mov Edx, DWord Ptr Ds:[Esp + 24H]
	Push Ecx
	Mov Ecx, Edx
TaskObject_InstantGarrison_2:
	FakeCall 004C5CB0H ;
	Jmp TaskObject_End

	Push Ecx
	Push Edx
	Push Ecx
	Mov Ecx, Edx
TaskObject_InstantGarrison_1:
	FakeCall 004D27A0H
	Add Esp, 8H
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


; In Kill Object, changed attributes are non-metric.
KillObject:
	Mov Eax, DWord Ptr Ds:[Edi + 10H] ;eax = Quantity
	Mov Ebx, DWord Ptr Ds:[Edi + 64H] ;ebx = Number
	Lea Edi, [Esp + 94H]
	Mov Ecx, DWord Ptr Ds:[Edi]
	Cmp Ebx, 0
	Jle KillObject_Other
	Cmp Ebx, 1
	Je KillObject_Undead
	Cmp Ebx, 2
	Je KillObject_Isolate
	Cmp Ebx, 3
	Je KillObject_ToggleId
	Cmp Ebx, 4
	Je KillObject_Angle

	; WAIFor's Unique Attribute!
	Cmp Ebx, 99
	Jg KillObject_Other
	Je KillObject_AttrPiece
	Cmp Ebx, 98
	Je KillObject_TowerMode

	; General Attributes
	Cmp Ebx, 10
	Jl KillObject_Other
	Cmp Ebx, 25
	Jge KillObject_Other
	Sub Ebx, 10

KillObject_Table_:
	Movsx Ebx, Word Ptr Ds:[Ebx * 2 + 11111111H]
	Test Ebx, 3000H
	Je KillObject_Word
	Test Ebx, 1000H
	Jne KillObject_Byte
	And Ebx, 0FFFH
	Push Ebx
	Call KillObject_LoopAttr3
KillObject_End:
	FakeJmp 004379F7H
KillObject_Byte:
	And Ebx, 0FFFH
	Push Ebx
	Call KillObject_LoopAttr1
	Jmp KillObject_End
KillObject_Word:
	Push Ebx
	Call KillObject_LoopAttr2
	Jmp KillObject_End

KillObject_Other:
	FakeJmp 004379E6H

KillObject_CommonLoop:
	Inc Esi
	Add Edi, 4H
	Mov Ecx, DWord Ptr Ds:[Edi]
	Cmp Esi, DWord Ptr Ss:[Esp + 14H]
	Retn

KillObject_LoopAttr1:
	Push Edx
	Mov Edx, [Esp + 08H]
KillObject_LoopAttr1_:
	Mov Ebx, DWord Ptr Ds:[Ecx + 08H]
	Mov Byte Ptr Ds:[Ebx + Edx], Al
	Inc Esi
	Add Edi, 4H
	Mov Ecx, DWord Ptr Ds:[Edi]
	Cmp Esi, DWord Ptr Ss:[Esp + 1CH]
	Jl KillObject_LoopAttr2_
	Pop Edx
	Retn 04H

KillObject_LoopAttr2:
	Push Edx
	Mov Edx, [Esp + 08H]
KillObject_LoopAttr2_:
	Mov Ebx, DWord Ptr Ds:[Ecx + 08H]
	Mov Word Ptr Ds:[Ebx + Edx], Ax
	Inc Esi
	Add Edi, 4H
	Mov Ecx, DWord Ptr Ds:[Edi]
	Cmp Esi, DWord Ptr Ss:[Esp + 1CH]
	Jl KillObject_LoopAttr2_
	Pop Edx
	Retn 04H

KillObject_LoopAttr3:
	Push Edx
	Mov Edx, [Esp + 08H]
KillObject_LoopAttr3_:
	Mov Ebx, DWord Ptr Ds:[Ecx + 08H]
	Mov DWord Ptr Ds:[Ebx + Edx], Eax
	Inc Esi
	Add Edi, 4H
	Mov Ecx, DWord Ptr Ds:[Edi]
	Cmp Esi, DWord Ptr Ss:[Esp + 1CH]
	Jl KillObject_LoopAttr3_
	Pop Edx
	Retn 04H

KillObject_TowerMode:
	Push 14CH
	Call KillObject_LoopAttr1
	Jmp KillObject_End

KillObject_AttrPiece:
	Push 0A6H
	Call KillObject_LoopAttr2
	Jmp KillObject_End

; Originally I used this for loading saved file causes restore problems. I referred UserPatch's Effect, but it doesn't work.
; I think it is because AOC doesn't save those attributes.
; Use "Call KillObject_GetProtoUnit" replace "Mov Ebx, DWord Ptr Ds:[Ecx + 08H]".
;KillObject_GetProtoUnit:
;	Mov Ebx, DWord Ptr Ds:[Ecx + 0CH]
;	Mov Ebx, DWord Ptr Ds:[Ebx + 74H]
;	Mov Ecx, DWord Ptr Ds:[Ecx + 8H]
;	Mov Cx, Word Ptr Ds:[Ecx + 10H]
;	And Ecx, 0FFFFH
;	Mov Ebx, DWord Ptr Ds:[Ebx + Ecx * 4]
;	Retn

KillObject_Undead:
	Mov DWord Ptr Ds:[Ecx + 30H], 7F800000H
	Call KillObject_CommonLoop
	Jl KillObject_Undead
	Jmp KillObject_End

KillObject_Isolate:
	Mov Ebx, DWord Ptr Ds:[Ecx + 8H]
	Mov Bl, Byte Ptr Ds:[Ebx + 4H]
	Cmp Bl, 46H
	Jl KillObject_Isolate_
KillObject_Isolate_1:
	FakeCall SUB_UNIQUEUNIT
KillObject_Isolate_:
	Call KillObject_CommonLoop
	Jl KillObject_Isolate
	Jmp KillObject_End

KillObject_ToggleId:
	Cmp Eax, 0H
	Jg KillObject_ToggleId_P
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

KillObject_Angle:
	Mov Ds:[Ecx + 35H], Al
	Call KillObject_CommonLoop
	Jl KillObject_Angle
	Jmp KillObject_End


; Id, Class, Icon, LangId, MinimapMode
; Visibility, DeathUnit, Walkable, TerrRt, Projectile
; Projectile2, TrainLocation, TrainButton, CommandID, IntereationMode
KillObject_Table: ; 5 values per line
	DW 0010H, 0016H, 0054H, 000CH, 1096H
	DW 106DH, 0050H, 10A2H, 006EH, 0148H
	DW 01ACH, 0184H, 1186H, 1097H, 1095H


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
	Cmp Edx, 1H
	Je Tribute_Instant
	Cmp Edx, 3H
	Je Tribute_Instant_1000Div
	Cmp Edx, 4H
	Je Tribute_Product_1000Div
	Cmp Edx, 5H
	Je Tribute_Convert
	Cmp Edx, 6H
	Je Tribute_Product2

	Fild DWord Ptr Ds:[Edi + 10H]
	Cmp Edx, 2H
	Jne Tribute_Other_
	Fmul DWord Ptr Ds:[Float0001] ; X = X / 100
Tribute_Other_:
	Mov Edx, DWord Ptr Ss:[Esp + 20H]

Tribute_Other:
	FakeJmp 004377C7H

Tribute_Instant:
	Fild DWord Ptr Ds:[Edi + 10H]
Tribute_Instant_:
	Mov Edx, DWord Ptr Ss:[Esp + 20H]
	Mov Edx, DWord Ptr Ds:[Edx + 0A8H]
	Mov Eax, DWord Ptr Ds:[Edi + 14H]
	Fstp DWord Ptr Ds:[Edx + Eax * 4]
	Jmp Tribute_End

Tribute_Instant_1000Div:
	Fild DWord Ptr Ds:[Edi + 10H]
	Fmul DWord Ptr Ds:[Float0001]
	Jmp Tribute_Instant_

Tribute_Product_1000Div:
	Fild DWord Ptr Ds:[Edi + 10H]
	Fmul DWord Ptr Ds:[Float0001]

	Mov Eax, DWord Ptr Ds:[Edi + 14H]
	Mov Edx, DWord Ptr Ss:[Esp + 18H]
	Mov Edx, DWord Ptr Ds:[Edx + 0A8H]
	Fmul DWord Ptr Ds:[Edx + Eax * 4]

	Mov Edx, DWord Ptr Ss:[Esp + 20H]
	Mov Edx, DWord Ptr Ds:[Edx + 0A8H]
	Fstp DWord Ptr Ds:[Edx + Eax * 4]
	Jmp Tribute_End

Tribute_Convert:
	Mov Eax, DWord Ptr Ds:[Edi + 14H]
	Mov Edx, DWord Ptr Ss:[Esp + 18H]
	Mov Edx, DWord Ptr Ds:[Edx + 0A8H]
	Fld DWord Ptr Ds:[Edx + Eax * 4]

	Mov Edx, DWord Ptr Ss:[Esp + 20H]
	Mov Edx, DWord Ptr Ds:[Edx + 0A8H]
	Mov Eax, DWord Ptr Ds:[Edi + 10H]
	Cmp Eax, 0H
	Jge Tribute_Convert_
	Not Eax
	Fadd DWord Ptr Ds:[Edx + Eax * 4]
Tribute_Convert_:
	Fstp DWord Ptr Ds:[Edx + Eax * 4]
	Jmp Tribute_End

Tribute_Product2:
	Mov Eax, DWord Ptr Ds:[Edi + 14H]
	Mov Edx, DWord Ptr Ss:[Esp + 18H]
	Mov Edx, DWord Ptr Ds:[Edx + 0A8H]
	Fld DWord Ptr Ds:[Edx + Eax * 4]

	Mov Edx, DWord Ptr Ss:[Esp + 20H]
	Mov Edx, DWord Ptr Ds:[Edx + 0A8H]
	Mov Eax, DWord Ptr Ds:[Edi + 10H]
	Cmp Eax, 0H
	Jge Tribute_Product2_
	Not Eax
	Fmul DWord Ptr Ds:[Edx + Eax * 4]
	Fadd DWord Ptr Ds:[Edx + Eax * 4]
	Jmp Tribute_Product2__
Tribute_Product2_:
	Fmul DWord Ptr Ds:[Edx + Eax * 4]
Tribute_Product2__:
	Fstp DWord Ptr Ds:[Edx + Eax * 4]
	Jmp Tribute_End

Tribute_Civil:
	Mov Edx, DWord Ptr Ss:[Esp + 20H]
	Mov Eax, DWord Ptr Ss:[Edi + 10H]
	Mov Byte Ptr Ds:[Edx + 15DH], Al
	Jmp Tribute_End

Tribute_End:
	FakeJmp 004377E1H


ShowInfo:
	Movsx Eax, Word Ptr Ds:[Edi + 3CH]
	Cmp Eax, 0H
	Jge ShowInfo_
	Xor Eax, Eax

ShowInfo_:
	Inc Eax
	Mov Edx, DWord Ptr Ds:[Edi + 6CH]
	Add Edx, Eax

	Mov Ah, Byte Ptr Ds:[Edi + 3FH]
	;Cmp Ah, 0FFH
	;Je ShowInfo__
	Mov Byte Ptr Ds:[Edx], Ah

;ShowInfo__:

	Mov Ah, Byte Ptr Ds:[Edx]
	Xor Al, Al
	Mov Byte Ptr Ds:[Edi + 3FH], Ah
	Mov Byte Ptr Ds:[Edx], Al

	Mov Ax, Word Ptr Ds:[Edi + 3CH]
	Inc Ax
	Mov Word Ptr Ds:[Edi + 3CH], Ax
	Mov Eax, DWord Ptr Ds:[Edi + 34H]
	Cmp Eax, Ebx
ShowInfo_1:
	FakeJmp 00437C14H


DamageUnit: ; ST(0) = Quantity
	Mov Eax, DWord Ptr Ds:[Esi]
	Mov Dl, Byte Ptr Ds:[Edi + 64H]
	Cmp Dl, 1 ; Set HP instantly
	Je DamageUnit_1
	Cmp Dl, 2 ; Damage HP by permillage
	Je DamageUnit_Perm
	Cmp Dl, 3 ; Set HP by permillage
	Je DamageUnit_Perm
	Cmp Dl, 4 ; Damage HP by current lost HP's permillage
	Je DamageUnit_LostPerm
	Cmp Dl, 5 ; Set HP by current HP's permillage
	Je DamageUnit_CurrentPerm
	Cmp Dl, 6 ; Add Max HP
	Je DamageUnit_AddEmptyHP

DamageUnit_:
	Fsubr DWord Ptr Ds:[Eax + 30H]
DamageUnit_1:
	FakeJmp 00437D45H

DamageUnit_Perm:
	Fmul DWord Ptr Ds:[Float0001]
	Push Eax
	Mov Eax, DWord Ptr Ds:[Eax + 08H]
	Fimul Word Ptr Ds:[Eax + 2AH]
	Pop Eax
	Cmp Dl, 3
	Je DamageUnit_1
	Jmp DamageUnit_

DamageUnit_CurrentPerm:
	Fmul DWord Ptr Ds:[Float0001]
	Fmul DWord Ptr Ds:[Eax + 30H]
	Jmp DamageUnit_1

DamageUnit_LostPerm:
	Fmul DWord Ptr Ds:[Float0001]
	Fld DWord Ptr Ds:[Eax + 30H]
	Push Eax
	Mov Eax, DWord Ptr Ds:[Eax + 08H]
	Fisubr Word Ptr Ds:[Eax + 2AH]
	Pop Eax
	Fmul
	Jmp DamageUnit_

DamageUnit_AddEmptyHP:
	Push Ecx
	Push Eax
	Mov Ecx, Eax
DamageUnit_2:
	FakeCall SUB_UNIQUEUNIT
	Pop Eax
	Mov Edx, [Eax + 8H]
	Fiadd Word Ptr Ds:[Edx + 2AH]
	Fistp Word Ptr Ds:[Edx + 2AH]
	Pop Ecx
	;Fdecstp
DamageUnit_3:
	FakeJmp 00437FCEH


; "Create Unit" can set a square area, so game will create units fill the square.
CreateUnitArray: ; @004378C3h
	Jne CreateUnitArray_
CreateUnitArray_1:
	FakeJmp 00437FDAH
CreateUnitArray_: ; ECX = Protounit addr. EAX = Player Addr
	Cmp DWord Ptr Ds:[Edi + 4CH], 0
	Jge CreateUnitArray__
CreateUnitArray_0:
	FakeJmp 004378C9H
CreateUnitArray__:

	Push Ebp
	Mov Ebp, Edi

	Push Eax
	Push Ebx
	Push Ecx
	Push Edx
	Push Edi
	Push Esi

	Mov Edx, DWord Ptr Ds:[Ebp + 24H]
	Mov Ecx, Eax
	Mov Esi, DWord Ptr Ds:[Ebp + 4CH]
	Mov Edi, DWord Ptr Ds:[Ebp + 50H]

CreateUnitArray_Loop:
	Push Edx
	Push Ecx
	Push Esi
	Push Edi

	Push 1
	Push 0
	Push Edi
	Fild DWord Ptr Ss:[Esp]
	Fadd DWord Ptr Ds:[Float05]
	Fstp DWord Ptr Ss:[Esp]
	Push Esi
	Fild DWord Ptr Ss:[Esp]
	Fadd DWord Ptr Ds:[Float05]
	Fstp DWord Ptr Ss:[Esp]
	Push Edx
CreateUnitArray_3:
	FakeCall SUB_DROPUNIT
	Pop Edi
	Pop Esi
	Pop Ecx
	Pop Edx
	Inc Esi
	Cmp Esi, DWord Ptr Ds:[Ebp + 54H]
	Jl CreateUnitArray_Loop
	Cmp Edi, DWord Ptr Ds:[Ebp + 58H]
	Jge CreateUnitArray_LoopEnd
	Mov Esi, DWord Ptr Ds:[Ebp + 4CH]
	Inc Edi
	Jmp CreateUnitArray_Loop

CreateUnitArray_LoopEnd:
	Pop Esi
	Pop Edi
	Pop Edx
	Pop Ecx
	Pop Ebx
	Pop Eax
	Pop Ebp
CreateUnitArray_2:
	FakeJmp 0043794EH


; Change Protounit's Integer Metric Attributes
ChangeAttack: ;007D8A94h
	Cmp Edx, 0
	Jne ChangeAttack_
ChangeAttack_1:
	FakeJmp 00437F2BH
ChangeAttack_:
	Cmp Edx, 1
	Jne ChangeAttack__
ChangeAttack_2:
	FakeJmp 007D8A9DH
ChangeAttack__:
	Cmp Edx, 10
	Jl ChangeAttack_1
	Cmp Edx, 21
	Jge ChangeAttack_1
	Sub Edx, 10

ChangeAttack_Table_:
	Movsx Edx, Word Ptr Ds:[Edx * 2 + 11111111H]
	Cmp Edx, 0H
	Je ChangeAttack_3
	Test Edx, 1000H
	Jne ChangeAttack_Loop2_Begin
ChangeAttack_Loop: ; NOTE: All attributes are WORD size!
	Mov Ecx, DWord Ptr Ds:[Edi + 10H]
	Mov Esi, DWord Ptr Ss:[Ebp]
	Mov Eax, DWord Ptr Ds:[Esi + 8H]
	Cmp Byte Ptr Ds:[Eax + 4H], 46H
	Jb ChangeAttack_Loop_
	Mov Word Ptr Ds:[Eax + Edx], Cx
ChangeAttack_Loop_:
	Mov Eax, DWord Ptr Ss:[Esp + 10H]
	Inc Ebx
	Add Ebp, 4
	Cmp Ebx, Eax
	Jl ChangeAttack_Loop
ChangeAttack_3:
	FakeJmp 007D8AEBH

ChangeAttack_Loop2_Begin:
	And Edx, 0FFFH
ChangeAttack_Loop2: ; For Special: Garrison Cap.
	Mov Ecx, DWord Ptr Ds:[Edi + 10H]
	Mov Esi, DWord Ptr Ss:[Ebp]
	Mov Eax, DWord Ptr Ds:[Esi + 8H]
	Cmp Byte Ptr Ds:[Eax + 4H], 46H
	Jb ChangeAttack_Loop_
	Mov Byte Ptr Ds:[Eax + Edx], Cl
ChangeAttack_Loop2_:
	Mov Eax, DWord Ptr Ss:[Esp + 10H]
	Inc Ebx
	Add Ebp, 4
	Cmp Ebx, Eax
	Jl ChangeAttack_Loop2
	Jmp ChangeAttack_3

; HP, Displayed Atk, Displayed Melee, Displayed Pierce, Train Time
; Cost 1, Cost 2, Cost 3, Resource Cap., Garrison Cap.
; Max ProjCount
ChangeAttack_Table:
	DW 02AH, 162H, 160H, 188H, 182H
	DW 172H, 178H, 17EH, 084H, 1030H
	DW 19CH


; Change Player LoS
ChangeDiplomacy: ; 00437605h
	Mov Eax, DWord Ptr Ds:[Edi + 64H]
	Cmp Eax, 3
	Je ChangeDiplomacy_Control
	;Cmp Eax, 4
	;Je ChangeDiplomacy_Civil
	Cmp Eax, 1
	Je ChangeDiplomacy_Field
	Cmp Eax, 2
	Jne ChangeDiplomacy_Other
	; Change LoS
	Mov Ebx, 12CH
ChangeDiplomacy_:
	Mov Eax, DWord Ptr Ds:Ds:[Edi + 18H]
	And Eax, Eax
	Mov Esi, DWord Ptr Ds:[Esp + 18H]
	Mov Ecx, DWord Ptr Ds:[Edi + 2CH]
	Je ChangeDiplomacy_On
	; ChangeDiplomacy_Off
	Mov Ax, -2 ; 1111...1110
	Shl Ax, Cl
	And Word Ptr Ds:[Esi + Ebx], Ax
	Jmp ChangeDiplomacy_2
ChangeDiplomacy_On:
	Mov Ax, 1
	Shl Ax, Cl
	Or Word Ptr Ds:[Esi + Ebx], Ax
ChangeDiplomacy_2:
	FakeJmp 0043761DH

ChangeDiplomacy_Field:
	Mov Ebx, 12AH
	Jmp ChangeDiplomacy_

ChangeDiplomacy_Other:
	Mov Eax, DWord Ptr Ds:[Edi + 18H]
	Mov Ecx, DWord Ptr Ss:[Esp + 18H]
ChangeDiplomacy_1:
	FakeJmp 0043760CH

ChangeDiplomacy_Control:
	Mov Ecx, DWord Ptr Ds:[Plc]
ChangeDiplomacy_3:
	FakeCall 005EAE80H
	Cmp Eax, DWord Ptr Ds:[Edi + 28H]
	Jne ChangeDiplomacy_2
    Mov Ecx, DWord Ptr Ds:[Plc]
    Mov Eax, [Ecx]
    Push DWord Ptr Ds:[Edi + 2CH]
    Call DWord Ptr Ds:[Eax + 14H]
	Jmp ChangeDiplomacy_2

ChangeDiplomacy_Civil:
	Push Ebp
	Mov Ebp, Esp
	Push Esi
	Push Edx
	Mov Esi, DWord Ptr Ss:[Ebp + 1CH]
	Mov Edx, DWord Ptr Ss:[Ebp + 24H]

	Mov Ecx, DWord Ptr Ds:[Edx + 74H]
	Mov DWord Ptr Ds:[Esi + 74H], Ecx
	Mov Cl, Byte Ptr Ds:[Edx + 15DH]
	Mov Byte Ptr Ds:[Esi + 15DH], Cl
	Pop Edx
	Pop Esi
	Pop Ebp
	Jmp ChangeDiplomacy_2


; Change Float Attributes
ChangeSpeed: ; 007DD43Eh
	Lea Ebx, [Esp + 94H]
	Mov Eax, [Edi + 64H]
	Cmp Eax, 10
	Jl ChangeSpeed_1
	Cmp Eax, 20
	Jge ChangeSpeed_1
	Sub Eax, 10

ChangeSpeed_Table_:
	Movsx Edx, Word Ptr Ds:[Eax * 2 + 11111111H]
	Fild Word Ptr Ds:[Edi + 10H]
	Fdiv DWord Ptr Ds:[Float100]
ChangeSpeed_Loop:
	Mov Esi, DWord Ptr Ds:[Ebx]
	Mov Esi, DWord Ptr Ds:[Esi + 8H]
	Cmp Byte Ptr Ds:[Esi + 4H], 46H
	Jb ChangeSpeed_Loop_
	Fst DWord Ptr Ds:[Esi + Edx]
ChangeSpeed_Loop_:
	Mov Eax, DWord Ptr Ss:[Esp + 10H]
	Inc Ebp
	Add Ebx, 4
	Cmp Ebp, Eax
	Jl ChangeSpeed_Loop
	Fstp St
ChangeSpeed_2:
	FakeJmp 007DD4A9H

ChangeSpeed_1:
	FakeJmp 007DD445H

; Speed, Range, WorkRate, DecayRate, LoS(Causing Unrevealable Black Areas!)
; Stored1, Stored2, Stored3, ProjCount, BlastRadius
ChangeSpeed_Table:
	DW 0C8H, 138H, 108H, 088H, 02CH
	DW 078H, 07CH, 080H, 198H, 13CH


; Send Chat
; 1 - make cheats from source player
SendChat: ; 043764F
	Mov Ecx, DWord Ptr Ds:[Plc]
	Mov Eax, DWord Ptr Ds:[Edi + 64H]
	Cmp Eax, 1
	Jne SendChat_0
	Push DWord Ptr Ds:[Edi + 6CH] ; arg2: Message
	Push DWord Ptr Ds:[Edi + 28H] ; arg1: Player Id
SendChat_1:
	FakeCall 00443EB0H
SendChat_2:
	FakeJmp 0043770DH

SendChat_0:
	FakeJmp 00437655H

__PatchEffectsEnd:



