;EasyCodeName=Effects,1
Include	defines.asm
Include	unitattrs.asm

.Const

; Combined patches
CustomColorInfo@ 	DD 0051CF28H
CustomColorInfo2@ 	DD 0051C8EEH
MoreResources@		DD 004EE724H ; Add more resources in list

EnableInputs@ 		DD 007DD2DDH
TaskObject@ 		DD 0043796BH
KillObject@			DD 004379CFH
MoveSight@			DD 007D8B10H
Tribute@			DD 004377C0H
ShowInfo@			DD 00437C0FH
DamageUnit@			DD 00437D40H
DamageUnit2@ 		DD 00437D36H
CreateUnit@			DD 007D8BB3H
ChangeDiplomacy@	DD 00437605H
SendChat@			DD 0043764FH
RemoveUnit@			DD 00437A06H
ChangeAttack@       DD 007D8A97H

CasualTerrainB@		DD 00461A86H
CasualTerrainB2@	DD 00461444H
CasualTerrainB3@	DD 0045F980H
HiddenUnit@			DD 004E0AAFH
HiddenUnit2@		DD 004E0D8FH
HiddenUnit3@		DD 004E5025H
InternalName@		DD 004E1056H


; Isolated patches
EnableTaskProj@		DD 00437973H ; Enable Task Object for projectiles.
MoreTributeRes@		DD 004EE738H ; Make resources list same with Accumulate Attribute's.
NonNumInQuantity@	DD 004EAD97H ; Allow non-number characters in Quantity box. negative figures could be typed instantly
GaiaForPlayer@		DD 007CE1C0H ; Allow set gaia civilization for players (shown as "Random")
GaiaForPlayer2@		DD 007CE1DCH
BuildingNameFix@	DD 004E1033H ; Fix buildings without language name shown as blank choices in trigger editor.
ExpandNumberLength@	DD 004EADF9H ; Allow more figures to type in in "Number".
ExpandNumberLengthB@ DD 004EADF2H ; For Daniel's 1.5 Patch
CasualTerrain@		DD 00461A8AH ; Allow free terrain draw
CasualTerrain2@		DD 00461444H
CasualTerrain3@		DD 0045F984H
HouseRotate@		DD 004CA4DCH ; Allow All Building's Rotation (Not only House #70)
IsoSiege@			DD 0045BC2BH ; Avoid Isolated Siege Weapon's upgrade by Techs
IsoSiege2@			DD 004C1A9CH
IsoSiege3@			DD 004C18AFH ; Avoid Attribute Modification
AIScriptGoal@       DD 007DD6D4H
ChangeName@         DD 007DD714H

DanielETP@			DD 00628880H ; Set Daniel's ETP triggers.dll location
HotKeySwitch@		DD 004F1F82H
HotKeySwitch2@		DD 004F1F89H



; Interfaces
$__PatchEffectsStart DD __PatchEffectsStart
$__PatchEffectsEnd DD __PatchEffectsEnd

$EnableInputs DD EnableInputs
$MoreResources DD MoreResources
$CustomColorInfo DD CustomColorInfo
$CustomColorInfo2 DD CustomColorInfo2
$ExpandNumberLengthB DD ExpandNumberLengthB
$TaskObject DD TaskObject
$KillObject DD KillObject
$MoveSight DD MoveSight
$Tribute DD Tribute
;$ShowInfo DD ShowInfo
$DamageUnit DD DamageUnit
$DamageUnit2 DD DamageUnit2
$CreateUnit DD CreateUnit
$ChangeDiplomacy DD ChangeDiplomacy
$SendChat DD SendChat
$RemoveUnit DD RemoveUnit
$CasualTerrainB DD CasualTerrainB
$CasualTerrainB2 DD CasualTerrainB2
$CasualTerrainB3 DD CasualTerrainB3
$HiddenUnit DD HiddenUnit
$HiddenUnit2 DD HiddenUnit2
$HiddenUnit3 DD HiddenUnit3
$InternalName DD InternalName
$ChangeAttack DD ChangeAttackPatch
$AIScriptGoal DD AIScriptGoal
$ChangeName DD ChangeName

$MoreResources_Table DD MoreResources_Table
$HotKeySwitch DD HotKeySwitch
$HotKeySwitch2 DD HotKeySwitch2


PatchEffectsAddresses DD CustomColorInfo_1, CustomColorInfo_2, CustomColorInfo2_1, CustomColorInfo2_2
	DD EnableInputs_Back
	DD TaskObject_Teleport_1
	DD MoveSight_Jle
	DD Tribute_Other, Tribute_End, Tribute_Random
	DD MoreResources_1, MoreResources_Back
	DD DamageUnit_1, DamageUnit_2
	DD CreateUnit_1, CreateUnit_2, CreateUnit_3
	DD ChangeDiplomacy_1, ChangeDiplomacy_2, ChangeDiplomacy_3
	DD SendChat_0, SendChat_1, SendChat_2
	DD KillObject_Image_1, KillObject_Other
	DD RemoveUnit_1, RemoveUnit_2
	DD ExpandNumberLenB_1
	DD HotKeySwitch_CasualTerrain_1, HotKeySwitch_HiddenUnit_1, HotKeySwitch_InternalName_1
	DD CasualTerrainB_1, CasualTerrainB2_1, CasualTerrainB2_2, CasualTerrainB3_1
	DD HiddenUnit_1, HiddenUnit2_1, HiddenUnit3_1
	DD InternalName_1
	DD AIScriptGoal_1, AIScriptGoal_2, AIScriptGoal_3, AIScriptGoal_4, AIScriptGoal_5
	DD TaskObject_Teleport_1, ChangeName_1
	DD 0H

PatchEffectsAddresses2 DD CreateUnit_01, MoveSight_01, TaskObject_01
	DD RemoveUnit_01
	DD CasualTerrainB_01, CasualTerrainB2_01, CasualTerrainB3_01, CasualTerrainB3_02
	DD HiddenUnit_01, HiddenUnit_02, HiddenUnit2_01, HiddenUnit2_02, HiddenUnit3_01, HiddenUnit3_02
	DD InternalName_01, InternalName_02
	DD AIScriptGoal_01, AIScriptGoal_02
	DD TaskObject_01, ChangeName_01, ChangeAttack_01
	DD 0H

PatchEffectsDirectAddresses DD KillObject_Table_, KillObject_Table, 3
	DD KillObject_Table2_, KillObject_Table2, 3
	DD KillObject_CallTable_, KillObject_CallTable, 3
	DD KillObject_CallTable2_, KillObject_CallTable2, 3
	DD TaskObject_Table_, TaskObject_Table, 3
	DD Tribute_Table_, Tribute_Table, 3
	DD DamageUnit_Table_, DamageUnit_Table, 3
	DD MoreResources_Table_, MoreResources_Table, 1
	DD ChangeAttack_Table_, ChangeAttack_Table, 3
	DD 007DD714H, Offset ChangeName, 0
	;DD HotKeySwitch_CasualTerrain, HotKeySwitch_Flag, 1
	;DD HotKeySwitch_CasualTerrain_Attr, HotKeySwitch_Flag, 1
	DD 0H

PatchEffectsDirectAddressArrays DD TaskObject_Table, Tribute_Table, DamageUnit_Table
	DD KillObject_CallTable, KillObject_CallTable2, ChangeAttack_Table + 4
	DD HotKeySwitch2_Table
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

IsoSiege			DB 0EBH
IsoSiegeN			DD 1
IsoSiege2			DB 90H, 90H
IsoSiege2N			DD 2
IsoSiege3			DB 0E9H, 0CCH, 00H, 00H, 00H, 90H
IsoSiege3N			DD 6


.Code

HotKeySwitchFlag Equ 7A5204H

__EffectPostfix__ Macro
	Pop Edi
	Pop Esi
	Pop Ebp
	Mov Al, 1
	Pop Ebx
	Add Esp, 2034H
	Retn 4
EndM


; Patch Content
Align 4
__PatchEffectsStart:



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
	Mov Byte Ptr Ds:[Edx + 1H], Al
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
Align 2
MoreResources_Table:
	DW 4, 9747, 195, 8054, 78, 8015, 6, 10336, 89, 4124
	DW 190, 9906, 189, 9907, 47, 9909, 79, 9908, 10, 42040
	DW 96, 8431, 35, 8220, 191, 9929, 90, 5620
	;DW 188, 9909, 187, 9908, 185, 9906, 186, 9907, 22, 9919
	DW - 1, -1


ExpandNumberLengthB:
	Lea Edi, [Esi + 0E44H]
	Push 5
ExpandNumberLenB_1:
	FakeJmp 004EADFAH


; Message Color
; Pattern: <=FFFF>
CustomColorInfo:
	Add Esp, 8
	Test Eax, Eax
	Je CustomColorInfo_Other
CustomColorInfo_1: ; White
	FakeJmp 0051CF2FH
; Esi = String Addr, [Esp + 14H] = Text Color, [Esp + 20H] = Outline Color
CustomColorInfo_Other:
	Lea Edx, [Esp + 20H]
	Lea Eax, [Esp + 14H]
	Push Edx
	Push Eax
	Push Esi
	Call CustomColorInfoAnalyze
	Test Eax, Eax
.If !Zero?
	Add Esi, 7
.EndIf
CustomColorInfo_2: ; Normal
	FakeJmp 0051CF36H

; Chat Color
CustomColorInfo2:
	Add Esp, 8
	Test Eax, Eax
	Je CustomColorInfo2_Other
CustomColorInfo2_1: ; White
	FakeJmp 0051C8F9H
; [Ebp] = String Addr, [Esp + 14H] = Text Color, [Esp + 20H] = Outline Color
CustomColorInfo2_Other:
	Mov Ecx, DWord Ptr Ss:[Ebp]
	Lea Edx, [Esp + 20H]
	Lea Eax, [Esp + 14H]
	Push Ebx
	Push Edi
	Push Ecx
	Call CustomColorInfoAnalyze
	Test Eax, Eax
.If !Zero?
	Mov Ecx, DWord Ptr Ss:[Ebp]
	Add Ecx, 7
	Mov DWord Ptr Ss:[Ebp], Ecx
.EndIf
CustomColorInfo2_2: ; Normal
	FakeJmp 0051C9F9H


CustomColorInfoAnalyze:
	Push Edi
	Push Esi
	Push Ebx
	Push Edx
	Push Ebp
@StackSize Equ 18H

	Mov Esi, DWord Ptr Ss:[Esp + @StackSize]
	Cmp Byte Ptr Ds:[Esi], '<'
	Jne CustomColorInfo_Normal
	Cmp Byte Ptr Ds:[Esi + 1], '='
	Jne CustomColorInfo_Normal
	Cmp Byte Ptr Ds:[Esi + 6], '>'
	Jne CustomColorInfo_Normal
	Xor Ebx, Ebx
	;Mov Ebp, DWord Ptr Ss:[Esp + @StackSize + 4H]

	Mov Cl, Byte Ptr Ds:[Esi + 2]
	Call GetHexValue
	Cmp Ax, 0
	Jl CustomColorInfo_Normal
	Mov Bl, Al
	Mov Cl, Byte Ptr Ds:[Esi + 3]
	Call GetHexValue
	Cmp Ax, 0
	Jl CustomColorInfo_Normal
	Shl Bl, 4
	Or Bl, Al

	Mov Cl, Byte Ptr Ds:[Esi + 4]
	Call GetHexValue
	Cmp Ax, 0
	Jl CustomColorInfo_Normal
	Mov Bh, Al
	Mov Cl, Byte Ptr Ds:[Esi + 5]
	Call GetHexValue
	Cmp Ax, 0
	Jl CustomColorInfo_Normal
	Shl Bh, 4
	Or Bh, Al

	Mov Edi, DWord Ptr Ss:[Esp + @StackSize + 4H]
	Mov Byte Ptr Ds:[Edi], Bl
	Mov Edi, DWord Ptr Ss:[Esp + @StackSize + 8H]
	Mov Byte Ptr Ds:[Edi], Bh

	Xor Eax, Eax
	Mov Al, 1
	Jmp CustomColorInfo_
CustomColorInfo_Normal:
	Xor Eax, Eax
CustomColorInfo_:
	Pop Ebp
	Pop Edx
	Pop Ebx
	Pop Esi
	Pop Edi
	Retn 0CH

; CL - Hex char
; return - value or -1(invalid)
GetHexValue:
	Xor Eax, Eax
.If Cl <= '9'
	Sub Cl, '0'
	Cmp Cl, 9
	Ja GetHexValue_Invalid
.ElseIf Cl <= 'F'
	Sub Cl, 'A'
	Cmp Cl, 5
	Ja GetHexValue_Invalid
	Add Cl, 10
.Else
GetHexValue_Invalid:
	Not Eax
	Retn
.EndIf
	Mov Al, Cl
	Retn


; Task Object
; 2 - Garrison Instantly
; 3 - Move, locating by player's food and wood
; 4 - Teleport all without restriction
TaskObject:
	Lea Ebp, [Esp + 94H]
	Mov Ecx, DWord Ptr Ds:[Edi + 64H]
	Cmp Ecx, 4
TaskObject_01:
	FakeJa 00437972H

TaskObject_Table_:
	Jmp DWord Ptr Ds:[Ecx * 4 + 11111111H]
Align 4
TaskObject_Table:
	DD TaskObject_Teleport, TaskObject_Garrison, TaskObject_ByRes, TaskObject_Teleport, 0

TaskObject_Teleport:
	Mov Esi, DWord Ptr Ss:[Esp + 10H]
.Repeat
	Mov Ecx, DWord Ptr Ss:[Ebp]
	Mov Ebx, [Ecx + 8H]
	.If Byte Ptr Ds:[Ebx + 4H] >= 70
		Mov Edx, DWord Ptr Ds:[Esp + 24H]
		Cmp Edx, 0H
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
	.EndIf
	Add Ebp, 4H
	Dec Esi
.Until Zero?
	Jmp TaskObject_Skip

TaskObject_Garrison:
	Mov Esi, DWord Ptr Ss:[Esp + 10H]
	Mov Edx, DWord Ptr Ds:[Esp + 24H]
	Test Edx, Edx
.If !Zero?
.Repeat
	Mov Ecx, DWord Ptr Ss:[Ebp]
	Mov Edx, DWord Ptr Ds:[Esp + 24H]
	Push Ecx
	Mov Eax, DWord Ptr Ds:[Edx]
	Mov Ecx, Edx
	Call DWord Ptr Ds:[Eax + 0E8H]
	Add Ebp, 4H
	Dec Esi
.Until Zero?
.EndIf
TaskObject_Skip:
	Pop Edi
	Pop Esi
	Pop Ebp
	Mov Al, 1
	Pop Ebx
	Add Esp, 2034H
	Retn 4

TaskObject_ByRes:
	Mov Esi, DWord Ptr Ss:[Esp + 10H]
.Repeat
	Mov Ecx, DWord Ptr Ss:[Ebp]
	Push 0
	Mov Edi, DWord Ptr Ds:[Ecx + 0CH]
	Mov Ecx, Edi
	Push 1
	Call KillObject_GetResourceFloat
	Sub Esp, 4H
	Fstp DWord Ptr Ss:[Esp]
	Mov Ecx, Edi
	Push 0
	Call KillObject_GetResourceFloat
	Sub Esp, 4H
	Fstp DWord Ptr Ss:[Esp]
	Mov Ecx, DWord Ptr Ss:[Ebp]
	Mov Eax, DWord Ptr Ds:[Ecx]
	Push 0
	Call DWord Ptr Ds:[Eax + 0A0H]

	Add Ebp, 4H
	Dec Esi
.Until Zero?
	Jmp TaskObject_Skip


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
MoveSight_01:
	FakeJg 007D8B1EH

MoveSight_Jle:
	FakeJmp 00437A40H


Tribute:
	Mov Edx, DWord Ptr Ss:[Edi + 64H]
	Cmp Edx, 13
	Jae Tribute_Default
Tribute_Table_:
	Jmp DWord Ptr Ds:[Edx * 4 + 11111111H]
Align 4
Tribute_Table:
	DD Tribute_Default, O Tribute_Instant, O Tribute_Multiply, O Tribute_Convert, O Tribute_Product
	DD Tribute_Division, O Tribute_Default, O Tribute_Default, O Tribute_Random, O Tribute_Random
	DD Tribute_1000Div, O Tribute_Instant_1000Div, O Tribute_Multiply_1000Div, 0

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

Tribute_Multiply_1000Div:
	Fild DWord Ptr Ds:[Edi + 10H]
	Fmul DWord Ptr Ds:[Float0001]
	Jmp Tribute_Multiply_
Tribute_Multiply:
	Fild DWord Ptr Ds:[Edi + 10H]
Tribute_Multiply_:
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

Tribute_Product:
	Mov Eax, DWord Ptr Ds:[Edi + 14H]
	Mov Edx, DWord Ptr Ss:[Esp + 18H]
	Mov Edx, DWord Ptr Ds:[Edx + 0A8H]
	Fld DWord Ptr Ds:[Edx + Eax * 4]
	Mov Edx, DWord Ptr Ss:[Esp + 20H]
	Mov Edx, DWord Ptr Ds:[Edx + 0A8H]
	Mov Eax, DWord Ptr Ds:[Edi + 10H]
	Cmp Eax, 0H
	Jge Tribute_Product_
	Not Eax
	Fmul DWord Ptr Ds:[Edx + Eax * 4]
	Fadd DWord Ptr Ds:[Edx + Eax * 4]
	Jmp Tribute_Product__
Tribute_Product_:
	Fmul DWord Ptr Ds:[Edx + Eax * 4]
Tribute_Product__:
	Fstp DWord Ptr Ds:[Edx + Eax * 4]
	Jmp Tribute_End

Tribute_Division:
	Mov Eax, DWord Ptr Ds:[Edi + 14H]
	Mov Edx, DWord Ptr Ss:[Esp + 18H]
	Mov Edx, DWord Ptr Ds:[Edx + 0A8H]
	Fld DWord Ptr Ds:[Edx + Eax * 4]
	Mov Edx, DWord Ptr Ss:[Esp + 20H]
	Mov Edx, DWord Ptr Ds:[Edx + 0A8H]
	Mov Eax, DWord Ptr Ds:[Edi + 10H]
	Cmp Eax, 0H
	Jge Tribute_Division_
	Not Eax
	Fdivr DWord Ptr Ds:[Edx + Eax * 4]
	Fadd DWord Ptr Ds:[Edx + Eax * 4]
	Jmp Tribute_Division__
Tribute_Division_:
	Fdivr DWord Ptr Ds:[Edx + Eax * 4]
Tribute_Division__:
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
	Cmp DWord Ptr Ss:[Edi + 64H], 8
	Je Tribute_
	Mov Edx, DWord Ptr Ss:[Esp + 20H]
	Mov Edx, DWord Ptr Ds:[Edx + 0A8H]
	Mov Eax, DWord Ptr Ds:[Edi + 14H]
	Fstp DWord Ptr Ds:[Edx + Eax * 4]
	Jmp Tribute_End

Tribute_End:
	FakeJmp 004377E1H


;ShowInfo:
;	Movsx Eax, Word Ptr Ds:[Edi + 3CH]
;	Cmp Eax, 0H
;	Jge ShowInfo_
;	Xor Eax, Eax
;
;ShowInfo_:
;	Inc Eax
;	Mov Edx, DWord Ptr Ds:[Edi + 6CH]
;	Add Edx, Eax
;
;	Mov Ah, Byte Ptr Ds:[Edi + 3FH]
;	;Cmp Ah, 0FFH
;	;Je ShowInfo__
;	Mov Byte Ptr Ds:[Edx], Ah
;
;;ShowInfo__:
;
;	Mov Ah, Byte Ptr Ds:[Edx]
;	Xor Al, Al
;	Mov Byte Ptr Ds:[Edi + 3FH], Ah
;	Mov Byte Ptr Ds:[Edx], Al
;
;	Mov Ax, Word Ptr Ds:[Edi + 3CH]
;	Inc Ax
;	Mov Word Ptr Ds:[Edi + 3CH], Ax
;	Mov Eax, DWord Ptr Ds:[Edi + 34H]
;	Cmp Eax, Ebx
;ShowInfo_1:
;	FakeJmp 00437C14H


DamageUnit: ; ST(0) = Quantity
	Mov Eax, DWord Ptr Ds:[Esi]
	Mov Edx, DWord Ptr Ds:[Edi + 64H]
	Cmp Edx, 6
	Ja DamageUnit_
DamageUnit_Table_:
	Jmp DWord Ptr Ds:[Edx * 4 + 11111111H]

; 1 - Set HP instantly
; 2 - Damage HP by permillage
; 3 - Set HP by permillage
; 4 - Damage HP by current lost HP's permillage
; 5 - Set HP by current HP's permillage
; 6 - Save HP into Resource
; 7 - Load HP from Resource
Align 4
DamageUnit_Table:
	DD DamageUnit_, O DamageUnit_1, DamageUnit_Perm, DamageUnit_Perm, DamageUnit_LostPerm
	DD DamageUnit_CurrentPerm, 0 ;

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

DamageUnit_ToRes:
	Fldz
DamageUnit_ToRes_:
	Mov Eax, DWord Ptr Ds:[Esi]
	Fadd DWord Ptr Ds:[Eax + 30H]
	Mov Eax, DWord Ptr Ss:[Esp + 10H]
	Inc Ebp
	Add Esi, 4
	Cmp Ebp, Eax
	Jl DamageUnit_ToRes_

	Fidiv DWord Ptr Ss:[Esp + 10H]

	Mov Ebx, DWord Ptr Ss:[Esp + 18H]
	Mov Ebx, DWord Ptr Ss:[Ebx + 0A8H]
	Movsx Eax, Word Ptr Ds:[Edi + 10H]
	Lea Eax, [Eax * 4 + Ebx]
	Fadd DWord Ptr Ds:[Eax]
	Fstp DWord Ptr Ds:[Eax]
DamageUnit_Back:
	Pop Edi
	Pop Esi
	Pop Ebp
	Mov Al, 1
	Pop Ebx
	Add Esp, 2034H
	Retn 4

DamageUnit_FromRes:
	Mov Ebx, DWord Ptr Ss:[Esp + 18H]
	Mov Ebx, DWord Ptr Ss:[Ebx + 0A8H]
	Movsx Eax, Word Ptr Ds:[Edi + 10H]
	Lea Eax, [Eax * 4 + Ebx]
	Fld DWord Ptr Ds:[Eax]
	Mov Edx, DWord Ptr Ss:[Esp + 10H]
DamageUnit_FromRes_:
	Mov Eax, DWord Ptr Ds:[Esi]
	Fst DWord Ptr Ds:[Eax + 30H]
	Inc Ebp
	Add Esi, 4
	Cmp Ebp, Edx
	Jl DamageUnit_FromRes_
	Fincstp
	Jmp DamageUnit_Back

DamageUnit2: ; 00437D36H
	Mov Esi, Esp
	Add Esi, 94H
	Mov Eax, DWord Ptr Ds:[Edi + 64H]
	Cmp Eax, 7
	Je DamageUnit_ToRes
	Cmp Eax, 8
	Je DamageUnit_FromRes
DamageUnit_2:
	FakeJmp 00437D3DH


; Create Unit:
; 3 - can set a square area, so game will create units fill the square.
; 4 - located by resources (Food, Wood).
; both ignore room.
CreateUnit: ; 007D8BB3H
	Mov Eax, DWord Ptr Ss:[Esp + 18H]
	Cmp Esi, 3
	Je CreateUnitArray
	Cmp Esi, 4
	Je CreateUnitResource
	And Esi, Esi
CreateUnit_01:
	FakeJle 004378B8H ; Other
CreateUnit_1:
	FakeJmp 007D8BBFH ; Enable/disable

CreateUnitArray:
	Mov Ecx, DWord Ptr Ds:[Edi + 24H]
	Mov Edx, DWord Ptr Ds:[Eax + 74H]
	Mov Ecx, DWord Ptr Ds:[Ecx * 4 + Edx]
	Cmp Ecx, Ebx
	Je CreateUnitArray_Skip

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
CreateUnit_2:
	FakeCall SUB_DROPUNIT
	Pop Edi
	Pop Esi
	Pop Ecx
	Pop Edx
	Inc Esi
	Cmp Esi, DWord Ptr Ds:[Ebp + 54H]
	Jle CreateUnitArray_Loop
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
CreateUnitArray_Skip:
	Pop Edi
	Pop Esi
	Pop Ebp
	Mov Al, 1
	Pop Ebx
	Add Esp, 2034H
	Retn 4

CreateUnitResource:
	Mov Edi, DWord Ptr Ds:[Edi + 24H]
	Mov Edx, DWord Ptr Ds:[Eax + 74H]
	Mov Ecx, DWord Ptr Ds:[Edi * 4 + Edx]
	Mov Esi, Eax ; esi = player addr.
	Cmp Ecx, Ebx
	Je CreateUnitArray_Skip

	Push 1
	Push 0
	Mov Ecx, Esi
	Push 1
	Call KillObject_GetResourceFloat
	Sub Esp, 4H
	Fstp DWord Ptr Ss:[Esp]
	Mov Ecx, Esi
	Push 0
	Call KillObject_GetResourceFloat
	Sub Esp, 4H
	Fstp DWord Ptr Ss:[Esp]

	Mov Ecx, Esi
	Push Edi
CreateUnit_3:
	FakeCall SUB_DROPUNIT

	Jmp CreateUnitArray_Skip


; Change Player LoS
ChangeDiplomacy: ; 00437605h
	Mov Eax, DWord Ptr Ds:[Edi + 64H]
	Cmp Eax, 3
	Je ChangeDiplomacy_Control
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


; Kill Object: Change Protounit Properties
; 1 - Make units invulnerable
; 100~399 - set attr of selected
; 400~699 - add attr of selected
; 700~999 - set attr by resource of selected
; +1000 - of protounit
KillObject: ;004379CFh
	Mov Eax, DWord Ptr Ds:[Edi + 64H] ;ebx = Number
	Cmp Eax, 100
	Jge KillObject_Change
	Cmp Eax, 10
	Jge KillObject_Change2
	Cmp Eax, 1
	Je KillObject_Invulnerable
	Mov Eax, DWord Ptr Ss:[Esp + 10H]
	Xor Esi, Esi
KillObject_Other:
	FakeJmp 004379D5H

KillObject_Invulnerable:
	Xor Esi, Esi
	Mov Eax, DWord Ptr Ss:[Esp + 10H]
	Cmp Eax, Ebx
	Jle KillObject_Invulnerable_Skip
	Lea Edi, [Esp + 94H]
.Repeat
	Mov Ecx, DWord Ptr Ds:[Edi]
	Mov Eax, 7F800000H
	Mov DWord Ptr Ds:[Ecx + 30H], Eax
	Mov Eax, DWord Ptr Ss:[Esp + 10H]
	Inc Esi
	Add Edi, 4
.Until Esi >= Eax
KillObject_Invulnerable_Skip:
	__EffectPostfix__

KillObject_Change:
	Mov Ebx, Eax
	Lea Esi, [Esp + 94H]
	Sub Ebx, 100
	Mov Ecx, DWord Ptr Ss:[Esp + 18H]
	Push DWord Ptr Ss:[Esp + 10H]
	.If Ebx >= 1000
		Sub Ebx, 1000
		Push 0
	.Else
		Push Esi
	.EndIf
	Push Edi ; trigger
	.If Ebx >= 600
		Sub Ebx, 600
		Push 2
	.ElseIf Ebx >= 300
		Sub Ebx, 300
		Push 1
	.Else
		Push 0 ; mode
	.EndIf

	.If Ebx > ATTRIBUTES_COUNT
		Mov Ebx, DEFAULT_ATTRIBUTE
	.EndIf

KillObject_Table_:
	Mov Ebx, [Ebx * 4 + 11111111H]

	Xor Edx, Edx
	Mov Dx, Bx ; Offset
	Shr Ebx, 10H
	Xor Eax, Eax
	Mov Al, Bl ; Min "Type"
	Push Eax
	Push Edx
	Shr Ebx, 8H
KillObject_CallTable_:
	Call DWord Ptr Ds:[Ebx * 4 + 11111111H]
	Pop Edi
	Pop Esi
	Pop Ebp
	Mov Al, 1
	Pop Ebx
	Add Esp, 2034H
	Retn 4

__KillObject_Functions__

Align 4
KillObject_CallTable:
	DD KillObject_Char, O KillObject_Word, O KillObject_DWord, O KillObject_Float
	DD KillObject_Image, O KillObject_Sound, O KillObject_Attack, O KillObject_Defense, 0

Align 4
KillObject_Table:
	__KillObject_Table__

KillObject_Change2:
	Mov Ebx, Eax
	Lea Esi, [Esp + 94H]
	Sub Ebx, 10
	Mov Ecx, DWord Ptr Ss:[Esp + 18H]
	Push DWord Ptr Ss:[Esp + 10H]
	Push Esi
	Push Edi ; trigger
	.If Ebx >= 60
		Sub Ebx, 60
		Push 2
	.ElseIf Ebx >= 30
		Sub Ebx, 30
		Push 1
	.Else
		Push 0 ; mode
	.EndIf

	.If Ebx > ATTRIBUTES_COUNT2
		Mov Ebx, 0
	.EndIf

KillObject_Table2_:
	Mov Ebx, [Ebx * 4 + 11111111H]

	Xor Edx, Edx
	Mov Dx, Bx ; Offset
	Shr Ebx, 10H
	Xor Eax, Eax
	Mov Al, Bl ; Min "Type"
	Push Eax
	Push Edx
	Shr Ebx, 8H
KillObject_CallTable2_:
	Call DWord Ptr Ds:[Ebx * 4 + 11111111H]
	Pop Edi
	Pop Esi
	Pop Ebp
	Mov Al, 1
	Pop Ebx
	Add Esp, 2034H
	Retn 4

Align 4
KillObject_CallTable2:
	DD KillObject2_Char, O KillObject2_Word, O KillObject2_DWord, O KillObject2_Float, O KillObject2_Angle, 0

Align 4
KillObject_Table2:
	__KillObject_Table2__


; RemoveUnit:
; 1 - Change units into certain unit
RemoveUnit:
	Mov Eax, DWord Ptr Ss:[Esp + 10H]
	Xor Esi, Esi
	Mov Ecx, DWord Ptr Ss:[Edi + 64H]
	Cmp Ecx, 1
RemoveUnit_01:
	FakeJne 00437A0CH
	Cmp Eax, Ebx
	Jl RemoveUnit_
	Mov Ebp, Eax
	Mov Esi, DWord Ptr Ss:[Esp + 18H]

	Mov Eax, DWord Ptr Ds:[Edi + 10H]
	Cmp Eax, DWord Ptr Ds:[Esi + 70H]
	Jae RemoveUnit_
	Mov Ebx, DWord Ptr Ds:[Esi + 74H]
	Mov Ebx, DWord Ptr Ds:[Eax * 4 + Ebx]
	Test Ebx, Ebx
	Je RemoveUnit_
	Lea Edi, [Esp + 94H]
.Repeat
	Mov Ecx, DWord Ptr Ds:[Edi]
	Mov Esi, [Ecx + 8H]
	.If Byte Ptr Ds:[Esi + 4H] >= 70
		Push Ebx
RemoveUnit_1:
		FakeCall SUB_TRANSFORM
		Mov Ecx, DWord Ptr Ds:[Edi]
		.If Esi != DWord Ptr Ds:[Ecx + 0CH]
RemoveUnit_2:
			FakeCall SUB_UNIQUEUNIT
		.EndIf
	.EndIf
	Add Edi, 4
	Dec Ebp
.Until Zero?
RemoveUnit_:
	Pop Edi
	Pop Esi
	Pop Ebp
	Mov Al, 1
	Pop Ebx
	Add Esp, 2034H
	Retn 4


; ChangeAttack
; 2 - Add unit's projectile count
; 3 - Set unit's projectile count
ChangeAttackPatch:
	Dec Edx
	Cmp Edx, 3
ChangeAttack:
ChangeAttack_01:
	FakeJae 00437F2BH
ChangeAttack_Table_:
	Jmp DWord Ptr Ds:[Edx * 4 + ChangeAttack_Table]
ChangeAttack_SetPrj:
	Fild DWord Ptr Ds:[Edi + 10H]
	Xor Edx, Edx
.Repeat
	Mov Ecx, DWord Ptr Ds:[Ebp]
	Fst DWord Ptr Ds:[Ecx + 17CH]
	Inc Edx
	Add Ebp, 4
.Until Edx >= Eax
	Fincstp
	__EffectPostfix__

ChangeAttack_AddPrj:
	Sub Esp, 4H
	Fild DWord Ptr Ds:[Edi + 10H]
	Fst DWord Ptr Ss:[Esp]
	Xor Edx, Edx
.Repeat
	Mov Ecx, DWord Ptr Ds:[Ebp]
	Fadd DWord Ptr Ds:[Ecx + 17CH]
	Fstp DWord Ptr Ds:[Ecx + 17CH]
	Fld DWord Ptr Ss:[Esp]
	Inc Edx
	Add Ebp, 4
.Until Edx >= Eax
	Fincstp
	Add Esp, 4H
	__EffectPostfix__

Align 4
ChangeAttack_Table:
	DD 007D8A9DH, ChangeAttack_AddPrj, ChangeAttack_SetPrj, 0


; AIScriptGoal
; 1 - Set goal off
; 8 - Set player's color
; 9 - Set player's civilization(Culture only, including new trained units)
; In 8 and 9, goal #256 would change in random.
AIScriptGoal:
	Mov Ecx, DWord Ptr Ds:[Edi + 64H]
	Test Ecx, Ecx
AIScriptGoal_01:
	FakeJle 00437895H
	Cmp Ecx, 1
	Je AIScriptGoal_Off
	Cmp Ecx, 8
	Je AIScriptGoal_Color
	Cmp Ecx, 9
AIScriptGoal_02:
	FakeJne 00437895H

AIScriptGoal_Civil:
	Mov Esi, DWord Ptr Ss:[Esp + 18H]
	Mov Ecx, DWord Ptr Ds:[Edi + 0CH]
	Mov Eax, DWord Ptr Ds:[Esi + 8CH] ; Check maximum
	Mov Eax, DWord Ptr Ds:[Eax + 50H]
	Cmp Ecx, 255
	Jl AIScriptGoal_Civil_
	Je AIScriptGoal_Civil_NoGaia
	Mov Ebp, Eax
AIScriptGoal_4:
	FakeCall SUB_RANDOM
	Cdq
	IDiv Ebp
	Mov Cl, Dl
	Mov Eax, Ebp
	Jmp AIScriptGoal_Civil_
AIScriptGoal_Civil_NoGaia:
	Mov Ebp, Eax
	Dec Ebp
AIScriptGoal_5:
	FakeCall SUB_RANDOM
	Cdq
	IDiv Ebp
	Inc Dl
	Mov Cl, Dl
	Inc Ebp
	Mov Eax, Ebp
AIScriptGoal_Civil_:
	Cmp Cl, Al
	Jge AIScriptGoal_
	Mov Byte Ptr Ds:[Esi + 15DH], Cl
	Mov Ecx, DWord Ptr Ds:[Plc]
AIScriptGoal_2:
	FakeCall 005EAE80H
    Mov Ecx, DWord Ptr Ds:[Plc]
    Mov Ebx, [Ecx]
    Push Eax
    Call DWord Ptr Ds:[Ebx + 14H]
	Jmp AIScriptGoal_

AIScriptGoal_Off:
    Mov Ecx, [Esp + 18H]
    mov edx,[edi+0Ch]
    push edx
    mov eax,[ecx]
    call AIScriptGoalOff
    __EffectPostfix__

AIScriptGoal_Color:
	Mov Esi, DWord Ptr Ss:[Esp + 18H]
	Mov Ebx, DWord Ptr Ds:[Edi + 0CH]
	Mov Eax, DWord Ptr Ds:[Esi + 8CH] ; Check maximum
	Mov Eax, DWord Ptr Ds:[Eax + 78H]
	Cmp Ebx, 255
	Jl AIScriptGoal_Color_
	Je AIScriptGoal_Color_8P
	Mov Ebp, Eax
	Jmp AIScriptGoal_3
AIScriptGoal_Color_8P:
	Mov Ebp, 8
AIScriptGoal_3:
	FakeCall SUB_RANDOM
	Cdq
	IDiv Ebp
	Mov Ebx, Edx
	Mov Eax, Ebp
AIScriptGoal_Color_:
	Cmp Ebx, Eax
	Jge AIScriptGoal_
	Mov Ecx, Esi
	Push Ebx
AIScriptGoal_1:
	FakeCall 00555E40H
AIScriptGoal_:
	__EffectPostfix__

AIScriptGoalOff:
    Mov Eax, [Esp + 04H]
    Push Eax
    Call UnsetAIScriptGoal
    Pop Ecx
    Retn 4
UnsetAIScriptGoal:
    Mov Eax, [Esp + 04H]
    Mov DWord Ptr Ds:[Eax * 4 + 006B39A0H], 0
    Retn


; Change Name
; 2 - Set Protounit's Name
ChangeName:
	Cmp DWord Ptr Ds:[Edi + 64H], 2
ChangeName_01:
	FakeJne 00437E3BH
	Mov Esi, DWord Ptr Ss:[Esp + 18H]
	Mov Eax, DWord Ptr Ds:[Edi + 24H] ; Protounit id
	Mov Ecx, DWord Ptr Ds:[Esi + 70H]
.If Eax < Ecx
	Mov Ecx, DWord Ptr Ds:[Esi + 74H]
	Mov Ebx, DWord Ptr Ds:[Ecx + Eax * 4]
	Test Ebx, Ebx
	.If !Zero?
		Mov Cx, Word Ptr Ds:[Edi + 34H]
		Mov Word Ptr Ds:[Ebx + 0CH], Cx
		Mov Edx, DWord Ptr Ds:[Edi + 6CH]
		Add Ebx, 8H
		Push Edx
		Push Ebx
ChangeName_1:
		FakeCall 00568590H
		Add Esp, 8H
	.EndIf
.EndIf
	__EffectPostfix__


Align 4
HotKeySwitch: ; Function Table
	DB 00H, 0FH, 02H, 03H, 0FH, 0FH, 0FH, 11H, 0FH, 12H, 0FH, 0FH, 04H, 0FH, 05H, 06H ; A~P
	DB 10H, 07H, 01H, 08H, 09H, 0AH, 0BH, 0CH, 0DH, 0EH, 0FH, 0FH, 0FH, 0FH, 0FH, 0FH ; Q~Z,[\]^_`
	DB 0FH, 0FH, 0FH, 0FH, 0FH, 0FH, 0FH, 0FH, 0FH, 0FH, 0FH, 0FH, 0FH, 0FH, 0FH, 0FH ; a~p
	DB 0FH, 0FH, 0FH, 0FH, 0FH, 0FH, 0FH, 0CH, 0DH, 0EH ; q~z

Align 4
HotKeySwitch2:
	DD 004F1F8DH, 004F20EAH, 004F20AAH, 004F202AH
	DD 004F1FAAH, 004F206AH, 004F1FEAH, 004F20CAH
	DD 004F1FCAH, 004F200AH, 004F204AH, 004F208AH
	DD 004F2135H, 004F2179H, 004F2157H, 004F2331H
HotKeySwitch2_Table:
	DD HotKeySwitch_CasualTerrain, O HotKeySwitch_HiddenUnit, O HotKeySwitch_InternalName, 0H

;Align 4
;HotKeySwitch_Flag:
;	DD 0H

HotKeySwitch_CasualTerrain: ; Ctrl+Q
	Mov Eax, DWord Ptr Ds:[HotKeySwitchFlag]
	Xor Al, 1H
	Xor Edi, Edi
;HotKeySwitch_CasualTerrain_Attr:
	Mov DWord Ptr Ds:[HotKeySwitchFlag], Eax
	Mov Ecx, DWord Ptr Ds:[Plc]
	Push Edi
	Push Edi
	Inc Edi
	Push Edi
HotKeySwitch_CasualTerrain_1:
	FakeCall 005EB990H
	Mov Eax, Edi
	Pop Edi
	Pop Esi
	Retn 14H

HotKeySwitch_HiddenUnit: ; Ctrl+H
	Mov Eax, DWord Ptr Ds:[HotKeySwitchFlag]
	Xor Al, 2H
	Xor Edi, Edi
;HotKeySwitch_CasualTerrain_Attr:
	Mov DWord Ptr Ds:[HotKeySwitchFlag], Eax
	Mov Ecx, DWord Ptr Ds:[Plc]
	Push Edi
	Push Edi
	Inc Edi
	Push Edi
HotKeySwitch_HiddenUnit_1:
	FakeCall 005EB990H
	Mov Eax, Edi
	Pop Edi
	Pop Esi
	Retn 14H

HotKeySwitch_InternalName: ; Ctrl+J
	Mov Eax, DWord Ptr Ds:[HotKeySwitchFlag]
	Xor Al, 4H
	Xor Edi, Edi
;HotKeySwitch_CasualTerrain_Attr:
	Mov DWord Ptr Ds:[HotKeySwitchFlag], Eax
	Mov Ecx, DWord Ptr Ds:[Plc]
	Push Edi
	Push Edi
	Inc Edi
	Push Edi
HotKeySwitch_InternalName_1:
	FakeCall 005EB990H
	Mov Eax, Edi
	Pop Edi
	Pop Esi
	Retn 14H


CasualTerrainB: ; 00461A86H
	Mov Ecx, DWord Ptr Ss:[Esp + 58H]
	Test DWord Ptr Ds:[HotKeySwitchFlag], 01H
CasualTerrainB_01:
	FakeJne 00461A96H
	Push Eax
CasualTerrainB_1:
	FakeJmp 00461A8BH

CasualTerrainB2: ; 00461444H
	Test DWord Ptr Ds:[HotKeySwitchFlag], 01H
CasualTerrainB2_01:
	FakeJne 00461471H
	Push Edx
CasualTerrainB2_1:
	FakeCall 00460BE0H
CasualTerrainB2_2:
	FakeJmp 0046144AH

CasualTerrainB3: ; 0045F980H
	Mov Eax, DWord Ptr Ss:[Esp + 1CH]
CasualTerrainB3_01:
	FakeJe 0045F9D7H
	Test DWord Ptr Ds:[HotKeySwitchFlag], 01H
CasualTerrainB3_02:
	FakeJne 0045F9D7H
CasualTerrainB3_1:
	FakeJmp 0045F986H


HiddenUnit: ; 004E0AAFH
HiddenUnit_01:
	FakeJne 004E0AB5H
	Test DWord Ptr Ds:[HotKeySwitchFlag], 02H
HiddenUnit_02:
	FakeJe 004E0CC0H
HiddenUnit_1:
	FakeJmp 004E0AB5H

HiddenUnit2: ; 004E0D8FH
HiddenUnit2_01:
	FakeJne 004E0D95H
	Test DWord Ptr Ds:[HotKeySwitchFlag], 02H
HiddenUnit2_02:
	FakeJe 004E145DH
HiddenUnit2_1:
	FakeJmp 004E0D95H

HiddenUnit3: ; 004E5025H
	Test DWord Ptr Ds:[HotKeySwitchFlag], 02H
HiddenUnit3_01:
	FakeJe 004E502BH
	Cmp Byte Ptr Ds:[Eax + 56H], 1
HiddenUnit3_02:
	FakeJe 004E5033H
HiddenUnit3_1:
	FakeJmp 004E502BH


InternalName: ; 004E1056h
	Test DWord Ptr Ds:[HotKeySwitchFlag], 04H
InternalName_01:
	FakeJe 004E105CH
	Cmp Byte Ptr Ds:[Esi + Edx], 0
InternalName_02:
	FakeJne 004E108CH
InternalName_1:
	FakeJmp 004E105CH



Align 4
__PatchEffectsEnd:

