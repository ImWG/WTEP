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
CasualTerrain@		DD 00461A8AH ; Allow free terrain draw
CasualTerrain2@		DD 00461444H
CasualTerrain3@		DD 0045F984H
HouseRotate@		DD 004CA4DCH ; Allow All Building's Rotation (Not only House #70)


; Interfaces
$__PatchEffectsStart DD O __PatchEffectsStart
$__PatchEffectsEnd DD O __PatchEffectsEnd

$EnableInputs DD O EnableInputs
$MoreResources DD O MoreResources
$CustomColorInfo DD O CustomColorInfo
$TaskObject DD O TaskObject
$KillObject DD O KillObject
$MoveSight DD O MoveSight
$Tribute DD O Tribute
$ShowInfo DD O ShowInfo
$DamageUnit DD O DamageUnit
$CreateUnitArray DD O CreateUnitArray
$ChangeAttack DD O ChangeAttack
$ChangeDiplomacy DD O ChangeDiplomacy
$ChangeSpeed DD O ChangeSpeed
$SendChat DD O SendChat

$MoreResources_Table DD O MoreResources_Table


PatchEffectsAddresses DD O CustomColorInfo_White, O CustomColorInfo_Normal
	DD O EnableInputs_Back
	DD O TaskObject_Other, O TaskObject_End
	DD O TaskObject_Transform_1, O TaskObject_Immitate_End_1
	DD O TaskObject_Teleport_1, O TaskObject_InstantGarrison_1, O TaskObject_InstantGarrison_2
	DD O KillObject_Other, O KillObject_End, O KillObject_Isolate_1
	DD O MoveSight_End, O MoveSight_Jle
	DD O Tribute_Other, O Tribute_End, O Tribute_Random
	DD O MoreResources_1, O MoreResources_Back
	DD O ShowInfo_1
	DD O DamageUnit_1, O DamageUnit_2, O DamageUnit_3
	DD O CreateUnitArray_0, O CreateUnitArray_1, O CreateUnitArray_2, O CreateUnitArray_3
	DD O ChangeAttack_1, O ChangeAttack_2, O ChangeAttack_3
	DD O ChangeDiplomacy_1, O ChangeDiplomacy_2, O ChangeDiplomacy_3
	DD O ChangeSpeed_2, O ChangeSpeed_1
	DD O SendChat_0, O SendChat_1, O SendChat_2
	DD 0H

PatchEffectsDirectAddresses DD O KillObject_Table_, O KillObject_Table, 4
	DD O ChangeAttack_Table_, O ChangeAttack_Table, 4
	DD O ChangeSpeed_Table_, O ChangeSpeed_Table, 4
	DD O TaskObject_Table_, O TaskObject_Table, 3
	DD O Tribute_Table_, O Tribute_Table, 3
	DD O DamageUnit_Table_, O DamageUnit_Table, 3
	DD O MoreResources_Table_, O MoreResources_Table, 1
	DD 0H

PatchEffectsDirectAddressArrays DD O TaskObject_Table, O Tribute_Table, O DamageUnit_Table
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

CasualTerrain		DB 0EBH, 0AH
CasualTerrainN		DD 02H
CasualTerrain2		DB 0EBH, 2BH
CasualTerrain2N		DD 02H
CasualTerrain3		DB 0EBH
CasualTerrain3N		DD 01H

HouseRotate			DB 00H
HouseRotateN		DD 01H


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
	Push Ebx
	Push Esi
	Push Edi
MoreResources_Table_:
	Mov Esi, 11111111H
	Lea Ebx, [Esi + 2H]
MoreResources_Loop:

	Mov Ecx, DWord Ptr Ss:[Ebp] ; Pop Limitation
	Movsx Edi, Word Ptr Ds:[Esi]
	Cmp Edi, 0
	Jl MoreResources_LoopEnd
	Push Edi
	Movsx Edi, Word Ptr Ds:[Ebx]
	Push Edi
MoreResources_1:
	FakeCall 00550870H

	Add Esi, 4H
	Add Ebx, 4H
	Jmp MoreResources_Loop

MoreResources_LoopEnd:
	Pop Edi
	Pop Esi
	Pop Ebx

	Mov Ecx, DWord Ptr Ss:[Ebp]
	Push 0
MoreResources_Back:
	FakeJmp 004EE729H

; Pop Limitation, Building Rate, Market Rate, Current Age, Monk Heal Rate
; Food Prod., Wood Prod., Gold Prod., Stone Prod., Trade Prod.
; berserker Heal, Faith Recharging, Relic Prod., Heal Range
; (Unused)Gathered Gold, Stone, Food, Wood, Map Reveal%
MoreResources_Table:
	DW 4, 9747, 195, 8054, 78, 8015, 6, 10336, 89, 4124
	DW 190, 9906, 189, 9907, 47, 9909, 79, 9908, 10, 42040
	DW 96, 8431, 35, 8220, 191, 9929, 90, 5620
	;DW 188, 9909, 187, 9908, 185, 9906, 186, 9907, 22, 9919
	DW - 1, -1


CustomColorInfo:
	Add Esp, 8
	Test Eax, Eax
	Je CustomColorInfo_Other

CustomColorInfo_White:
	FakeJmp 0051CF2FH

CustomColorInfo_Other:
	Cmp Byte Ptr Ds:[Esi], '<'
	Jne CustomColorInfo_Normal
	Cmp Byte Ptr Ds:[Esi + 5], '>'
	Jne CustomColorInfo_Normal
	Lea Edx, [Esp + 20H]
	Lea Eax, [Esp + 14H]
	Mov Cl, Byte Ptr Ds:[Esi + 1]
	Sub Cl, 'A'
	Cmp Cl, 0FH
	Ja CustomColorInfo_Normal
	Shl Cl, 4
	Mov Ch, Byte Ptr Ds:[Esi + 2]
	Sub Ch, 'A'
	Cmp Ch, 0FH
	Ja CustomColorInfo_Normal
	Add Cl, Ch
	Mov Byte Ptr Ds:[Eax], Cl
	Mov Cl, Byte Ptr Ds:[Esi + 3]
	Sub Cl, 'A'
	Cmp Cl, 0FH
	Ja CustomColorInfo_Normal
	Shl Cl, 4
	Mov Ch, Byte Ptr Ds:[Esi + 4]
	Sub Ch, 'A'
	Cmp Ch, 0FH
	Ja CustomColorInfo_Normal
	Add Cl, Ch
	Mov Byte Ptr Ds:[Edx], Cl
	Add Esi, 6

CustomColorInfo_Normal:
	FakeJmp 0051CF36H


TaskObject:
	Mov Edx, DWord Ptr Ds:[Edi + 64H]
	Cmp Edx, 10
	Jae TaskObject_Other_
TaskObject_Table_:
	Jmp DWord Ptr Ds:[Edx * 4 + 11111111H]
TaskObject_Table:
	DD O TaskObject_Other_, O TaskObject_Teleport, O TaskObject_InstantGarrison, O TaskObject_Other_, O TaskObject_Other_
	DD O TaskObject_Other_, O TaskObject_ToId, O TaskObject_Transform, O TaskObject_Voice, O TaskObject_Immitate
	DD 0

TaskObject_Other_:
	Fild DWord Ptr Ds:[Edi + 48H]
	Push 0H
TaskObject_Other:
	FakeJmp 00437984H

TaskObject_Immitate:
	Push Esi
	Push Edi
	Push Ebx

	Mov Esi, DWord Ptr Ds:[Ecx + 8H]
	Mov Edi, DWord Ptr Ss:[Esp + 30H] ;+3*4
	Mov Edi, DWord Ptr Ds:[Edi + 8H]
	Mov Bl, Byte Ptr Ds:[Esi + 4H]
	Mov Bh, Byte Ptr Ds:[Edi + 4H]

	Cmp Bl, 3CH ;is source < Type60
	Jb TaskObject_Immitate_End

	Mov Edx, DWord Ptr Ds:[Edi + 18H] ;standing
	Mov DWord Ptr Ds:[Esi + 18H], Edx
	Mov Edx, DWord Ptr Ds:[Edi + 1CH] ;standing 2
	Mov DWord Ptr Ds:[Esi + 1CH], Edx

	Mov Edx, DWord Ptr Ds:[Edi + 20H] ;dying
	Mov DWord Ptr Ds:[Esi + 20H], Edx
	Mov Edx, DWord Ptr Ds:[Edi + 24H] ;dying 2
	Mov DWord Ptr Ds:[Esi + 24H], Edx

	Cmp Bh, 3CH
	Jb TaskObject_Immitate_EyeCandy ; is target eyecandy

	Mov Edx, DWord Ptr Ds:[Edi + 0CCH] ;walking
	Mov DWord Ptr Ds:[Esi + 0CCH], Edx
	Mov Edx, DWord Ptr Ds:[Edi + 0D0H] ;running
	Mov DWord Ptr Ds:[Esi + 0D0H], Edx
	Mov Edx, DWord Ptr Ds:[Edi + 120H] ;attacking
	Mov DWord Ptr Ds:[Esi + 120H], Edx
	Jmp TaskObject_Immitate_End

TaskObject_Immitate_EyeCandy:
	Mov Edx, DWord Ptr Ds:[Edi + 18H]
	Mov DWord Ptr Ds:[Esi + 0CCH], Edx
	Mov DWord Ptr Ds:[Esi + 120H], Edx
	Mov Edx, DWord Ptr Ds:[Edi + 1CH]
	Mov DWord Ptr Ds:[Esi + 0D0H], Edx

TaskObject_Immitate_End: ; Update Vision
	Pop Ebx
	Pop Edi
	Pop Esi
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
	Cmp Edx, 13
	Jae Tribute_Default
Tribute_Table_:
	Jmp DWord Ptr Ds:[Edx * 4 + 11111111H]
Tribute_Table:
	DD O Tribute_Default, O Tribute_Instant, O Tribute_Product, O Tribute_Convert, O Tribute_Product2
	DD O Tribute_Random, O Tribute_Random, O Tribute_Default, O Tribute_Default, O Tribute_Civil
	DD O Tribute_1000Div, O Tribute_Instant_1000Div, O Tribute_Product_1000Div, 0

Tribute_1000Div:
	Fild DWord Ptr Ds:[Edi + 10H]
	Fmul DWord Ptr Ds:[Float0001] ; X = X / 1000
	Jmp Tribute_
Tribute_Default:
	Fild DWord Ptr Ds:[Edi + 10H]
Tribute_:
	Mov Edx, DWord Ptr Ss:[Esp + 20H]
Tribute_Other:
	FakeJmp 004377C7H

Tribute_Instant_1000Div:
	Fild DWord Ptr Ds:[Edi + 10H]
	Fmul DWord Ptr Ds:[Float0001]
	Jmp Tribute_Instant_
Tribute_Instant:
	Fild DWord Ptr Ds:[Edi + 10H]
Tribute_Instant_:
	Mov Edx, DWord Ptr Ss:[Esp + 20H]
	Mov Edx, DWord Ptr Ds:[Edx + 0A8H]
	Mov Eax, DWord Ptr Ds:[Edi + 14H]
	Fstp DWord Ptr Ds:[Edx + Eax * 4]
	Jmp Tribute_End

Tribute_Product_1000Div:
	Fild DWord Ptr Ds:[Edi + 10H]
	Fmul DWord Ptr Ds:[Float0001]
	Jmp Tribute_Product_
Tribute_Product:
	Fild DWord Ptr Ds:[Edi + 10H]
Tribute_Product_:
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

Tribute_Random:
	FakeCall SUB_RANDOM
	Cdq
	Mov Ecx, 64H
	IDiv Ecx
	Sub Esp, 4H
	Mov [Esp], Edx
	Fild DWord Ptr Ds:[Esp]
	Fimul DWord Ptr Ds:[Edi + 10H]
	Fdiv DWord Ptr Ds:[Float100]
	Add Esp, 4H
	Cmp DWord Ptr Ss:[Edi + 64H], 5
	Je Tribute_
	Mov Edx, DWord Ptr Ss:[Esp + 20H]
	Mov Edx, DWord Ptr Ds:[Edx + 0A8H]
	Mov Eax, DWord Ptr Ds:[Edi + 14H]
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
	Mov Edx, DWord Ptr Ds:[Edi + 64H]
	Cmp Edx, 7
	Jae DamageUnit_
DamageUnit_Table_:
	Jmp DWord Ptr Ds:[Edx * 4 + 11111111H]

; Set HP instantly
; Damage HP by permillage
; Set HP by permillage
; Damage HP by current lost HP's permillage
; Set HP by current HP's permillage
; Add Max HP
DamageUnit_Table:
	DD O DamageUnit_, O DamageUnit_1, DamageUnit_Perm, DamageUnit_Perm, DamageUnit_LostPerm
	DD O DamageUnit_CurrentPerm, 0 ; DamageUnit_AddEmptyHP

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
	Cmp Eax, 26
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
; Radius1, Radius2, EditorRd1, EditorRd2, SelectRd1
; SelectRd2
ChangeSpeed_Table:
	DW 0C8H, 138H, 108H, 088H, 02CH
	DW 078H, 07CH, 080H, 198H, 13CH
	DW 034H, 038H, 064H, 068H, 0BCH
	DW 0C0H


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



