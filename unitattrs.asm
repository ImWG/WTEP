;EasyCodeName=UnitAttrsTable,1
.Const

.Data?

.Data

.Code

ATTR Macro _type, _utype, _offset
	DW _offset
	DB _utype
	DB _type
EndM

T_CHR Equ 0
T_INT Equ 1
T_LNG Equ 2
T_FLT Equ 3
T_IMG Equ 4
T_SND Equ 5
T_ATK Equ 6
T_DEF Equ 7

__KillObject_Table__ Macro
	ATTR T_INT, 10, 016H ;Class
	ATTR T_INT, 10, 010H ;ID 1
	ATTR T_INT, 10, 012H ;ID 2
	ATTR T_INT, 10, 014H ;ID 3
	ATTR T_INT, 10, 00CH ;Language DLL Name
	ATTR T_INT, 10, 00EH ;Language DLL Creation
	ATTR T_LNG, 10, 0B0H ;Hotkey
	ATTR T_LNG, 10, 0A8H ;Language DLL Help
	ATTR T_LNG, 10, 0ACH ;Language DLL Hotkey Text
	ATTR T_INT, 10, 054H ;Icon
	ATTR T_INT, 80, 1CAH ;Angle
	ATTR T_IMG, 10, 018H ;Standing Graphics.1
	ATTR T_IMG, 10, 01CH ;Standing Graphics.2
	ATTR T_IMG, 10, 020H ;Dying Graphics.1
	ATTR T_IMG, 10, 024H ;Dying Graphics.2
	ATTR T_IMG, 30, 0CCH ;Walking and Running Graphics.1
	ATTR T_IMG, 30, 0D0H ;Walking and Running Graphics.2
	ATTR T_IMG, 80, 1C4H ;Snow Graphic
	ATTR T_IMG, 80, 1C0H ;Construction Graphic
	ATTR T_IMG, 60, 120H ;Attack Graphic
	ATTR T_IMG, 70, 1B8H ;Garrision Graphic
	ATTR T_INT, 10, 02AH ;Hit Points
	ATTR T_FLT, 20, 0C8H ;Speed
	ATTR T_FLT, 30, 0D4H ;Rotation Speed
	ATTR T_FLT, 10, 02CH ;Line Of Sight
	ATTR T_FLT, 60, 104H ;Search Radius
	ATTR T_FLT, 60, 138H ;Max Range
	ATTR T_FLT, 60, 15CH ;Min Range
	ATTR T_FLT, 60, 164H ;Displayed Range
	ATTR T_INT, 60, 162H ;Displayed Attack
	ATTR T_INT, 60, 14EH ;Frame Delay
	ATTR T_INT, 60, 14AH ;Accuracy Percent
	ATTR T_FLT, 60, 16CH ;Accuracy Error Radius
	ATTR T_FLT, 60, 144H ;Reload Time
	ATTR T_FLT, 60, 168H ;Displayed Reload Time
	ATTR T_FLT, 60, 13CH ;Blast Radius
	ATTR T_CHR, 60, 140H ;Blast Attack Level
	ATTR T_INT, 60, 124H ;Default Armor
	ATTR T_INT, 60, 134H ;Terrain Restriction
	ATTR T_INT, 60, 160H ;Displayed Melee Armor
	ATTR T_INT, 70, 188H ;Displayed Pierce Armor
	ATTR T_CHR, 60, 093H ;Blast Defense Level
	ATTR T_INT, 10, 084H ;Resource Capacity
	ATTR T_FLT, 10, 088H ;Resource Decay
	ATTR T_FLT, 60, 108H ;Work Rate
	ATTR T_CHR, 30, 030H ;Garrison Capacity
	ATTR T_CHR, 80, 208H ;Garrision Type
	ATTR T_FLT, 80, 20CH ;Garrision Heal Rate
	ATTR T_INT, 60, 148H ;Projectile Unit
	ATTR T_LNG, 70, 1ACH ;Missle Dupl. Unit
	ATTR T_LNG, 70, 1B0H ;Charging Graphic
	ATTR T_CHR, 70, 1B4H ;Charging Mode
	ATTR T_FLT, 70, 198H ;Total Missiles
	ATTR T_LNG, 70, 19CH ;Max Total Missiles
	ATTR T_FLT, 70, 1A0H ;Missile Spawning Area.1
	ATTR T_FLT, 70, 1A4H ;Missile Spawning Area.2
	ATTR T_FLT, 70, 1A8H ;Missile Spawning Area.3
	ATTR T_FLT, 60, 150H ;Graphic Displacement XYZ.1
	ATTR T_FLT, 60, 154H ;Graphic Displacement XYZ.2
	ATTR T_FLT, 60, 158H ;Graphic Displacement XYZ.3
	ATTR T_CHR, 60, 170H ;Stretch Mode
	ATTR T_CHR, 60, 171H ;Compensation Mode
	ATTR T_CHR, 60, 172H ;Drop Animation Mode
	ATTR T_CHR, 60, 173H ;Penetration Mode
	ATTR T_CHR, 60, 174H ;Unknown 24
	ATTR T_FLT, 60, 178H ;Projectile Arc
	ATTR T_CHR, 10, 05AH ;Enabled
	ATTR T_CHR, 10, 05BH ;Disabled
	ATTR T_CHR, 10, 028H ;Death:Revives
	ATTR T_CHR, 10, 056H ;Hide In Editor
	ATTR T_CHR, 10, 053H ;Air Mode
	ATTR T_CHR, 10, 070H ;Fly Mode
	ATTR T_CHR, 60, 11CH ;Animal Mode
	ATTR T_CHR, 60, 14CH ;Tower Mode
	ATTR T_CHR, 80, 1C8H ;Adjacent Mode
	ATTR T_CHR, 80, 1CCH ;Built: Vanishes
	ATTR T_CHR, 70, 1B5H ;Hero Mode
	ATTR T_CHR, 10, 052H ;Placement Mode
	ATTR T_CHR, 10, 06CH ;Hill Mode
	ATTR T_CHR, 10, 06DH ;Fog Visibility
	ATTR T_CHR, 10, 094H ;Sub Type
	ATTR T_CHR, 10, 095H ;Interaction Mode
	ATTR T_CHR, 10, 096H ;Minimap Mode
	ATTR T_CHR, 10, 098H ;Minimap Color
	ATTR T_CHR, 10, 099H ;Attack Mode
	ATTR T_CHR, 10, 09AH ;Edible Meat?
	ATTR T_CHR, 60, 110H ;Task Swap ID
	ATTR T_CHR, 10, 0A4H ;Unit Attribute
	ATTR T_CHR, 10, 0A5H ;Civilization
	ATTR T_INT, 10, 0A6H ;Attribute Piece
	ATTR T_INT, 10, 050H ;Dead Unit
	ATTR T_INT, 10, 060H ;Placement Terrain.1
	ATTR T_INT, 10, 062H ;Placement Terrain.2
	ATTR T_INT, 10, 05CH ;Placement Side Terrain.1
	ATTR T_INT, 10, 05EH ;Placement Side Terrain.2
	ATTR T_INT, 10, 06EH ;Terrain Restriction
	ATTR T_INT, 80, 1D0H ;Foundation Terrain
	ATTR T_INT, 80, 1D2H ;Old Terrain
	ATTR T_INT, 80, 1D4H ;Initiates Research
	ATTR T_INT, 60, 100H ;Action When Discovered
	ATTR T_INT, 60, 10CH ;Drop Site.1
	ATTR T_INT, 60, 10EH ;Drop Site.2
	ATTR T_FLT, 10, 034H ;Collosion Size.1
	ATTR T_FLT, 10, 038H ;Collosion Size.2
	ATTR T_FLT, 10, 064H ;Clearance Size.1
	ATTR T_FLT, 10, 068H ;Clearance Size.2
	ATTR T_FLT, 10, 0BCH ;Selection Shape Size.1
	ATTR T_FLT, 10, 0C0H ;Selection Shape Size.2
	ATTR T_CHR, 10, 0B4H ;Unselectable
	ATTR T_CHR, 10, 0B5H ;Is a resource?
	ATTR T_CHR, 10, 0B6H ;Unknown 7
	ATTR T_CHR, 10, 0B7H ;Unknown 8
	ATTR T_CHR, 10, 0A0H ;Selection Mask
	ATTR T_CHR, 10, 0A2H ;Selection Shape Type
	ATTR T_CHR, 10, 0A1H ;Selection Shape
	ATTR T_CHR, 10, 0B8H ;Selection Effect
	ATTR T_CHR, 10, 0B9H ;Editor Selection Color
	ATTR T_INT, 30, 0DAH ;Tracking Unit
	ATTR T_CHR, 30, 0DCH ;Tracking Unit Used
	ATTR T_FLT, 30, 0E0H ;Tracking Unit Density
	ATTR T_FLT, 30, 0E8H ;Rotations in Radians.1
	ATTR T_FLT, 30, 0ECH ;Rotations in Radians.2
	ATTR T_FLT, 30, 0F0H ;Rotations in Radians.3
	ATTR T_FLT, 30, 0F4H ;Rotations in Radians.4
	ATTR T_FLT, 30, 0F8H ;Rotations in Radians.5
	ATTR T_CHR, 10, 097H ;Command ID
	ATTR T_INT, 70, 182H ;Train Location
	ATTR T_INT, 70, 184H ;Train Time
	ATTR T_CHR, 70, 186H ;Train Button
	ATTR T_INT, 10, 072H ;Type.1
	ATTR T_INT, 10, 074H ;Type.2
	ATTR T_INT, 10, 076H ;Type.3
	ATTR T_FLT, 10, 078H ;Amount.1
	ATTR T_FLT, 10, 07CH ;Amount.2
	ATTR T_FLT, 10, 080H ;Amount.3
	ATTR T_CHR, 10, 090H ;Enable Mode.1
	ATTR T_CHR, 10, 091H ;Enable Mode.2
	ATTR T_CHR, 10, 092H ;Enable Mode.3
	ATTR T_INT, 70, 170H ;Cost Type.1
	ATTR T_INT, 70, 172H ;Cost Type.2
	ATTR T_INT, 70, 174H ;Cost Type.3
	ATTR T_INT, 70, 176H ;Cost Amount.1
	ATTR T_INT, 70, 178H ;Cost Amount.2
	ATTR T_INT, 70, 17AH ;Cost Amount.3
	ATTR T_INT, 70, 17CH ;Cost Used.1
	ATTR T_INT, 70, 17EH ;Cost Used.2
	ATTR T_INT, 70, 180H ;Cost Used.3
	ATTR T_INT, 80, 1CEH ;Stack Unit
	ATTR T_INT, 80, 200H ;Head Unit
	ATTR T_INT, 80, 202H ;Transform Unit
	ATTR T_INT, 80, 214H ;Pile Unit
	ATTR T_INT, 80, 1D8H ;Annex Units.1
	ATTR T_INT, 80, 1DAH ;Annex Units.2
	ATTR T_INT, 80, 1DCH ;Annex Units.3
	ATTR T_INT, 80, 1DEH ;Annex Units.4
	ATTR T_FLT, 80, 1E0H ;Annex.Units Misplacement.1
	ATTR T_FLT, 80, 1E4H ;Annex.Units Misplacement.2
	ATTR T_FLT, 80, 1E8H ;Annex.Units Misplacement.3
	ATTR T_FLT, 80, 1ECH ;Annex.Units Misplacement.4
	ATTR T_FLT, 80, 1F0H ;Annex.Units Misplacement.5
	ATTR T_FLT, 80, 1F4H ;Annex.Units Misplacement.6
	ATTR T_FLT, 80, 1F8H ;Annex.Units Misplacement.7
	ATTR T_FLT, 80, 1FCH ;Annex.Units Misplacement.8
	ATTR T_CHR, 80, 216H ;Looting Table.1
	ATTR T_CHR, 80, 217H ;Looting Table.2
	ATTR T_CHR, 80, 218H ;Looting Table.3
	ATTR T_CHR, 80, 219H ;Looting Table.4
	ATTR T_CHR, 80, 21AH ;Looting Table.5
	ATTR T_CHR, 80, 21BH ;Looting Table.6
	ATTR T_SND, 10, 040H ;Selection Sound
	ATTR T_SND, 10, 048H ;Dying Sound
	ATTR T_SND, 10, 044H ;Train Sound.1
	ATTR T_SND, 10, 04CH ;Train Sound.2
	ATTR T_SND, 60, 114H ;Attack Sound
	ATTR T_SND, 60, 118H ;Move Sound
	ATTR T_SND, 80, 1BCH ;Construction Sound
	ATTR T_SND, 80, 204H ;Unknown Sound
	ATTR T_FLT, 10, 03CH ;HP Bar Height 1
	ATTR T_FLT, 10, 0C4H ;HP Bar Height 2
	ATTR T_INT, 10, 058H ;Unknown 1
	ATTR T_FLT, 10, 08CH ;Unknown 3A
	ATTR T_CHR, 30, 0D8H ;Unknown 11
	ATTR T_CHR, 30, 0E4H ;Unknown 11
	ATTR T_FLT, 70, 18CH ;Unknown 26
	ATTR T_FLT, 70, 190H ;Unknown 27
	ATTR T_CHR, 80, 194H ;Unknown Type
	ATTR T_CHR, 80, 1D6H ;Unknown 33
	ATTR T_FLT, 80, 210H ;Wonder Timer?
	ATTR T_ATK, 70, 4H ; Melee Attack
	ATTR T_ATK, 70, 3H ; Pierce Attack
	ATTR T_DEF, 70, 4H ; Melee Armor
	ATTR T_DEF, 70, 3H ; Pierce Armor
EndM

ATTRIBUTES_COUNT Equ 191
DEFAULT_ATTRIBUTE Equ 21 ; default is hp


__KillObject_Functions__ Macro

; ecx-player addr., arg1-offset, arg2-min type, arg3-mode(0 set, 1 add), arg4-trigger.
; arg5-units table addr.(0 is techtree mode), arg6-unit count.

KillObject_Char:
	push ebx
	push ebp
	push esi
	push edi
	
	Mov Esi, Ecx
	Mov Edi, DWord Ptr Ss:[Esp + 20H] ; trigger
	Mov Ebp, DWord Ptr Ss:[Esp + 14H] ; offset
.If DWord Ptr Ss:[Esp + 24H] == 0
	Mov Ebx, DWord Ptr Ds:[Esi + 74H]
	Mov Eax, DWord Ptr Ds:[Edi + 24H]
	Cmp Eax, 0
	Jl KillObject_Char_
	mov ebx, dword ptr ds:[eax * 4 + ebx] ; unit addr.

	Mov Al, Byte Ptr Ss:[Esp + 18H] ; min type
	.If Al <= Byte Ptr Ds:[Ebx + 04H]
		Mov Eax, DWord Ptr Ds:[Edi + 10H]
		.If DWord Ptr Ss:[Esp + 1CH] == 2
			Push Eax
			Mov Ecx, Esi
			Call KillObject_GetResource
		.ElseIf DWord Ptr Ss:[Esp + 1CH] == 1
			Add Al, Byte Ptr Ss:[Ebx + Ebp]
		.EndIf
		Mov Byte Ptr Ss:[Ebx + Ebp], Al
	.EndIf
.else
	Mov Edx, DWord Ptr Ss:[Esp + 24H]
	Mov Ecx, DWord Ptr Ss:[Esp + 28H]
	.If Ecx > 0
		.Repeat
			mov ebx, [edx]
			mov ebx, dword ptr ds:[ebx+8h]
			Mov Al, Byte Ptr Ss:[Esp + 18H] ; min type
			.If Al <= Byte Ptr Ds:[Ebx + 04H]
				Mov Eax, DWord Ptr Ds:[Edi + 10H]
				.If DWord Ptr Ss:[Esp + 1CH] == 2
					Push Ecx
					Push Eax
					Mov Ecx, Esi
					Call KillObject_GetResource
					Pop Ecx
				.ElseIf DWord Ptr Ss:[Esp + 1CH] == 1
					Add Al, Byte Ptr Ss:[Ebx + Ebp]
				.EndIf
				Mov Byte Ptr Ss:[Ebx + Ebp], Al
			.EndIf
			add edx, 4h
			Dec Ecx
		.Until Zero?
	.EndIf
.endif
KillObject_Char_:
	Pop Edi
	pop esi
	pop ebp
	Pop Ebx
	Retn 18H


KillObject_Word:
	Push Ebx
	push ebp
	push esi
	push edi
	
	mov esi, ecx
	Mov Edi, DWord Ptr Ss:[Esp + 20H] ; trigger
	Mov Ebp, DWord Ptr Ss:[Esp + 14H] ; offset
.If DWord Ptr Ss:[Esp + 24H] == 0
	Mov Ebx, DWord Ptr Ds:[Esi + 74H]
	Mov Eax, DWord Ptr Ds:[Edi + 24H]
	Cmp Eax, 0
	Jl KillObject_Word_
	mov ebx, dword ptr ds:[eax * 4 + ebx] ; unit addr.
	
	Mov Al, Byte Ptr Ss:[Esp + 18H] ; min type
	.If Al <= Byte Ptr Ds:[Ebx + 04H]
		Mov Eax, DWord Ptr Ds:[Edi + 10H]

		.If DWord Ptr Ss:[Esp + 1CH] == 2
			Push Eax
			Mov Ecx, Esi
			Call KillObject_GetResource
		.ElseIf DWord Ptr Ss:[Esp + 1CH] == 1
			Add Ax, Word Ptr Ss:[Ebx + Ebp]
		.EndIf
		Mov Word Ptr Ss:[Ebx + Ebp], Ax
	.EndIf
.Else
	Mov Edx, DWord Ptr Ss:[Esp + 24H]
	Mov Ecx, DWord Ptr Ss:[Esp + 28H]
	.If Ecx > 0
		.Repeat
			mov ebx, [edx]
			mov ebx, dword ptr ds:[ebx+8h]
			Mov Al, Byte Ptr Ss:[Esp + 18H] ; min type
			.If Al <= Byte Ptr Ds:[Ebx + 04H]
				Mov Eax, DWord Ptr Ds:[Edi + 10H]
				.If DWord Ptr Ss:[Esp + 1CH] == 2
					Push Ecx
					Push Eax
					Mov Ecx, Esi
					Call KillObject_GetResource
					Pop Ecx
				.ElseIf DWord Ptr Ss:[Esp + 1CH] == 1
					Add Ax, Word Ptr Ss:[Ebx + Ebp]
				.EndIf
				Mov Word Ptr Ss:[Ebx + Ebp], Ax
			.EndIf
			add edx, 4h
			Dec Ecx
		.Until Zero?
	.EndIf
.endif
KillObject_Word_:
	Pop Edi
	pop esi
	pop ebp
	Pop Ebx
	Retn 18H


KillObject_DWord:
	Push Ebx
	push ebp
	push esi
	push edi
	
	Mov Esi, Ecx
	Mov Edi, DWord Ptr Ss:[Esp + 20H] ; trigger
	Mov Ebp, DWord Ptr Ss:[Esp + 14H] ; offset
.If DWord Ptr Ss:[Esp + 24H] == 0
	Mov Ebx, DWord Ptr Ds:[Esi + 74H]
	Mov Eax, DWord Ptr Ds:[Edi + 24H]
	Cmp Eax, 0
	Jl KillObject_DWord_
	mov ebx, dword ptr ds:[eax * 4 + ebx] ; unit addr.
	
	Mov Al, Byte Ptr Ss:[Esp + 18H] ; min type
	.If Al <= Byte Ptr Ds:[Ebx + 04H]
		Mov Eax, DWord Ptr Ds:[Edi + 10H]
		.If DWord Ptr Ss:[Esp + 1CH] == 2
			Push Eax
			Mov Ecx, Esi
			Call KillObject_GetResource
		.ElseIf DWord Ptr Ss:[Esp + 1CH] == 1
			Add Eax, DWord Ptr Ss:[Ebx + Ebp]
		.EndIf
		Mov DWord Ptr Ss:[Ebx + Ebp], Eax
	.EndIf
.else
	Mov Edx, DWord Ptr Ss:[Esp + 24H]
	Mov Ecx, DWord Ptr Ss:[Esp + 28H]
	.If Ecx > 0
		.Repeat
			mov ebx, [edx]
			mov ebx, dword ptr ds:[ebx+8h]
			Mov Al, Byte Ptr Ss:[Esp + 18H] ; min type
			.If Al <= Byte Ptr Ds:[Ebx + 04H]
				Mov Eax, DWord Ptr Ds:[Edi + 10H]
				.If DWord Ptr Ss:[Esp + 1CH] == 2
					Push Ecx
					Push Eax
					Mov Ecx, Esi
					Call KillObject_GetResource
					Pop Ecx
				.ElseIf DWord Ptr Ss:[Esp + 1CH] == 1
					Add Eax, DWord Ptr Ss:[Ebx + Ebp]
				.EndIf
				Mov DWord Ptr Ss:[Ebx + Ebp], Eax
			.EndIf
			add edx, 4h
			Dec Ecx
		.Until Zero?
	.EndIf
.endif
KillObject_DWord_:
	Pop Edi
	pop esi
	pop ebp
	Pop Ebx
	Retn 18H


KillObject_Float:
	Push Ebx
	push ebp
	push esi
	push edi
	
	Mov Esi, Ecx
	Mov Edi, DWord Ptr Ss:[Esp + 20H] ; trigger
	Mov Ebp, DWord Ptr Ss:[Esp + 14H] ; offset
.If DWord Ptr Ss:[Esp + 24H] == 0
	Mov Ebx, DWord Ptr Ds:[Esi + 74H]
	Mov Eax, DWord Ptr Ds:[Edi + 24H]
	Cmp Eax, 0
	Jl KillObject_Float_
	mov ebx, dword ptr ds:[eax * 4 + ebx] ; unit addr.
	
	Mov Al, Byte Ptr Ss:[Esp + 18H] ; min type
	.If Al <= Byte Ptr Ds:[Ebx + 04H]
		.If DWord Ptr Ss:[Esp + 1CH] == 2
			Push DWord Ptr Ds:[Edi + 10H]
			Mov Ecx, Esi
			Call KillObject_GetResourceFloat
		.Else
			Fild DWord Ptr Ds:[Edi + 10H]
		.EndIf
		Fmul DWord Ptr Ds:[Float0001]

		.If DWord Ptr Ss:[Esp + 1CH] == 1
			Fadd DWord Ptr Ss:[Ebx + Ebp]
		.EndIf
		Fstp DWord Ptr Ss:[Ebx + Ebp]
	.EndIf
.else
	Mov Edx, DWord Ptr Ss:[Esp + 24H]
	Mov Ecx, DWord Ptr Ss:[Esp + 28H]
	.If Ecx > 0
		.Repeat
			mov ebx, [edx]
			mov ebx, dword ptr ds:[ebx+8h]
			Mov Al, Byte Ptr Ss:[Esp + 18H] ; min type
			.If Al <= Byte Ptr Ds:[Ebx + 04H]
				.If DWord Ptr Ss:[Esp + 1CH] == 2
					Push Ecx
					Push DWord Ptr Ds:[Edi + 10H]
					Mov Ecx, Esi
					Call KillObject_GetResourceFloat
					Pop Ecx
				.Else
					Fild DWord Ptr Ds:[Edi + 10H]
				.EndIf
				Fmul DWord Ptr Ds:[Float0001]
				.If DWord Ptr Ss:[Esp + 1CH] == 1
					Fadd DWord Ptr Ss:[Ebx + Ebp]
				.EndIf
				Fstp DWord Ptr Ss:[Ebx + Ebp]
			.EndIf
			add edx, 4h
			Dec Ecx
		.Until Zero?
	.EndIf
.EndIf
KillObject_Float_:
	Pop Edi
	pop esi
	pop ebp
	Pop Ebx
	Retn 18H


KillObject_Image:
	Push Ebx
	push ebp
	push esi
	push edi
	
	Mov Esi, Ecx
	Mov Edi, DWord Ptr Ss:[Esp + 20H] ; trigger
	Mov Ebp, DWord Ptr Ss:[Esp + 14H] ; offset
.If DWord Ptr Ss:[Esp + 24H] == 0
	Mov Ebx, DWord Ptr Ds:[Esi + 74H]
	Mov Eax, DWord Ptr Ds:[Edi + 24H]
	Cmp Eax, 0
	Jl KillObject_Image_
	mov ebx, dword ptr ds:[eax * 4 + ebx] ; unit addr.
	
	Mov Al, Byte Ptr Ss:[Esp + 18H] ; min type
	.If Al <= Byte Ptr Ds:[Ebx + 04H]
		Mov Eax, DWord Ptr Ds:[Edi + 10H]
		.If DWord Ptr Ss:[Esp + 1CH] == 2
			Push Eax
			Mov Ecx, Esi
			Call KillObject_GetResource
		.EndIf
		Mov Edx, DWord Ptr Ds:[Esi + 8CH]
		.If Eax < DWord Ptr Ds:[Edx + 40H] ; Not overflow
			Mov Edx, DWord Ptr Ds:[Edx + 44H]
			Mov Eax, DWord Ptr Ds:[Eax * 4 + Edx]
			Mov DWord Ptr Ss:[Ebx + Ebp], Eax
		.EndIf
	.EndIf
.Else
	Mov Edx, DWord Ptr Ds:[Esi + 8CH]
	Mov Edx, DWord Ptr Ds:[Edx + 44H]
	Mov Eax, DWord Ptr Ds:[Edi + 10H]
	.If DWord Ptr Ss:[Esp + 1CH] == 2
		Push Eax
		Mov Ecx, Esi
		Call KillObject_GetResource
	.EndIf
	.If Eax < DWord Ptr Ds:[Edx + 40H] ; Not overflow
		Mov Edi, DWord Ptr Ds:[Eax * 4 + Edx]

		Mov Edx, DWord Ptr Ss:[Esp + 24H]
		Mov Ecx, DWord Ptr Ss:[Esp + 28H]
		.If Ecx > 0
			.Repeat
				mov ebx, [edx]
				Mov Esi, DWord Ptr Ds:[Ebx + 8H]
				Mov Al, Byte Ptr Ss:[Esp + 18H] ; min type
				.If Al <= Byte Ptr Ds:[Esi + 04H]
					Mov DWord Ptr Ds:[Esi + Ebp], Edi
				.EndIf
				add edx, 4h
				Dec Ecx
			.Until Zero?
		.EndIf
	.EndIf
.EndIf
KillObject_Image_:
	Pop Edi
	pop esi
	pop ebp
	Pop Ebx
	Retn 18H


KillObject_Sound:
	Push Ebx
	push ebp
	push esi
	push edi
	
	Mov Esi, Ecx
	Mov Edi, DWord Ptr Ss:[Esp + 20H] ; trigger
	Mov Ebp, DWord Ptr Ss:[Esp + 14H] ; offset
.If DWord Ptr Ss:[Esp + 24H] == 0
	Mov Ebx, DWord Ptr Ds:[Esi + 74H]
	Mov Eax, DWord Ptr Ds:[Edi + 24H]
	Cmp Eax, 0
	Jl KillObject_Sound_
	mov ebx, dword ptr ds:[eax * 4 + ebx] ; unit addr.
	
	Mov Al, Byte Ptr Ss:[Esp + 18H] ; min type
	.If Al <= Byte Ptr Ds:[Ebx + 04H]
		Mov Eax, DWord Ptr Ds:[Edi + 10H]
		.If DWord Ptr Ss:[Esp + 1CH] == 2
			Push Eax
			Mov Ecx, Esi
			Call KillObject_GetResource
		.EndIf
		Mov Edx, DWord Ptr Ds:[Esi + 8CH]
		.If Eax < DWord Ptr Ds:[Edx + 38H] ; Not overflow
			Mov Edx, DWord Ptr Ds:[Edx + 3CH]
			Mov Eax, DWord Ptr Ds:[Eax * 4 + Edx]
			Mov DWord Ptr Ss:[Ebx + Ebp], Eax
		.EndIf
	.EndIf
.Else
	Mov Edx, DWord Ptr Ds:[Esi + 8CH]
	Mov Edx, DWord Ptr Ds:[Edx + 3CH]
	Mov Eax, DWord Ptr Ds:[Edi + 10H]
	.If DWord Ptr Ss:[Esp + 1CH] == 2
		Push Eax
		Mov Ecx, Esi
		Call KillObject_GetResource
	.EndIf
	.If Eax < DWord Ptr Ds:[Edx + 38H] ; Not overflow
		Mov Edi, DWord Ptr Ds:[Eax * 4 + Edx]

		Mov Edx, DWord Ptr Ss:[Esp + 24H]
		Mov Ecx, DWord Ptr Ss:[Esp + 28H]
		.If Ecx > 0
			.Repeat
				mov ebx, [edx]
				Mov Ebx, DWord Ptr Ds:[Ebx + 8H]

				Mov Al, Byte Ptr Ss:[Esp + 18H] ; min type
				.If Al <= Byte Ptr Ds:[Ebx + 04H]
					Mov DWord Ptr Ss:[Ebx + Ebp], Edi
				.EndIf
				add edx, 4h
				Dec Ecx
			.Until Zero?
		.EndIf
	.EndIf
.EndIf
KillObject_Sound_:
	Pop Edi
	pop esi
	pop ebp
	Pop Ebx
	Retn 18H

; Internal Function
; ecx-protounit addr., arg1-type
; eax=armor quantity addr.
KillObject_getArmorType:
	Push Esi
	Push Edi
	Push Ebx

	Mov Esi, Ecx
	Mov Ebx, DWord Ptr Ss:[Esp + 14H]
	Movzx Ebx, Word Ptr Ds:[Esi + Ebx]
	Mov Edi, DWord Ptr Ss:[Esp + 18H]
	Mov Edi, DWord Ptr Ds:[Esi + Edi]
	Test Ebx, Ebx
	Je KillObject_getArmorType__
	Mov Ax, Word Ptr Ss:[Esp + 10H]

	.Repeat
		.If Ax == Word Ptr Ds:[Edi]
			Lea Eax, [Edi + 2H]
			Jmp KillObject_getArmorType_
		.EndIf
		Add Edi, 4
		Dec Ebx
	.Until Zero?
KillObject_getArmorType__:
	Xor Eax, Eax

KillObject_getArmorType_:
	Pop Ebx
	Pop Edi
	Pop Esi
	Retn 0CH


; Internal Function
KillObject_Armor:
	Push Ebx
	push ebp
	push esi
	push edi
	
	mov esi, ecx
	Mov Edi, DWord Ptr Ss:[Esp + 20H] ; trigger
	Mov Ebp, DWord Ptr Ss:[Esp + 14H] ; offset
.If DWord Ptr Ss:[Esp + 24H] == 0
	Mov Ebx, DWord Ptr Ds:[Esi + 74H]
	Mov Eax, DWord Ptr Ds:[Edi + 24H]
	Cmp Eax, 0
	Jl KillObject_Armor_
	mov ebx, dword ptr ds:[eax * 4 + ebx] ; unit addr.
	
	Mov Al, Byte Ptr Ss:[Esp + 18H] ; min type
	.If Al <= Byte Ptr Ds:[Ebx + 04H]

		Mov Ecx, Ebx
		Push DWord Ptr Ss:[Esp + 30H]
		Push DWord Ptr Ss:[Esp + 30H]
		Push Ebp
		Call KillObject_getArmorType
		Mov Ebx, Eax
		Test Ebx, Ebx
		.If !Zero?
			Mov Eax, DWord Ptr Ds:[Edi + 10H]
			.If DWord Ptr Ss:[Esp + 1CH] == 2
				Push Eax
				Mov Ecx, Esi
				Call KillObject_GetResource
			.ElseIf DWord Ptr Ss:[Esp + 1CH] == 1
				Add Ax, Word Ptr Ds:[Ebx]
			.EndIf
			Mov Word Ptr Ds:[Ebx], Ax
		.EndIf
	.EndIf
.Else
	Mov Edx, DWord Ptr Ss:[Esp + 24H]
	Mov Ecx, DWord Ptr Ss:[Esp + 28H]
	.If Ecx > 0
		.Repeat
			mov ebx, [edx]
			mov ebx, dword ptr ds:[ebx+8h]
			Mov Al, Byte Ptr Ss:[Esp + 18H] ; min type
			.If Al <= Byte Ptr Ds:[Ebx + 04H]
				Push Ecx
				Mov Ecx, Ebx
				Push DWord Ptr Ss:[Esp + 34H]
				Push DWord Ptr Ss:[Esp + 34H]
				Push Ebp
				Call KillObject_getArmorType
				Pop Ecx
				Mov Ebx, Eax
				Test Ebx, Ebx
				.If !Zero?
					Mov Eax, DWord Ptr Ds:[Edi + 10H]
					.If DWord Ptr Ss:[Esp + 1CH] == 2
						Push Ecx
						Push Eax
						Mov Ecx, Esi
						Call KillObject_GetResource
						Pop Ecx
					.ElseIf DWord Ptr Ss:[Esp + 1CH] == 1
						Add Ax, Word Ptr Ds:[Ebx]
					.EndIf
					Mov Word Ptr Ds:[Ebx], Ax
				.EndIf
			.EndIf
			add edx, 4h
			Dec Ecx
		.Until Zero?
	.EndIf
.endif
KillObject_Armor_:
	Pop Edi
	pop esi
	pop ebp
	Pop Ebx
	Retn 20H

KillObject_Attack:
	Push 130H
	Push 12CH
	Push DWord Ptr Ss:[Esp + 20H]
	Push DWord Ptr Ss:[Esp + 20H]
	Push DWord Ptr Ss:[Esp + 20H]
	Push DWord Ptr Ss:[Esp + 20H]
	Push DWord Ptr Ss:[Esp + 20H]
	Push DWord Ptr Ss:[Esp + 20H]
	Call KillObject_Armor
	Retn 18H

KillObject_Defense:
	Push 128H
	Push 126H
	Push DWord Ptr Ss:[Esp + 20H]
	Push DWord Ptr Ss:[Esp + 20H]
	Push DWord Ptr Ss:[Esp + 20H]
	Push DWord Ptr Ss:[Esp + 20H]
	Push DWord Ptr Ss:[Esp + 20H]
	Push DWord Ptr Ss:[Esp + 20H]
	Call KillObject_Armor
	Retn 18H

; ECX-Player Addr. arg1-resource id
; eax-resource(integer)
KillObject_GetResource:
	Push Esi
	Push Ebx
	Mov Esi, Ecx
	Movzx Ebx, Word Ptr Ss:[Esp + 0CH]
	Mov Esi, DWord Ptr Ds:[Esi + 0A8H]
	Lea Ebx, DWord Ptr Ds:[Ebx * 4 + Esi]
	Fld DWord Ptr Ds:[Ebx]
	Fistp DWord Ptr Ss:[Esp + 0CH]
	Mov Eax, DWord Ptr Ss:[Esp + 0CH]
	Pop Ebx
	Pop Esi
	Retn 4H

; ECX-Player Addr. arg1-resource id
; St(0)-resource
KillObject_GetResourceFloat:
	Push Esi
	Push Ebx
	Mov Esi, Ecx
	Movzx Ebx, Word Ptr Ss:[Esp + 0CH]
	Mov Esi, DWord Ptr Ds:[Esi + 0A8H]
	Lea Ebx, DWord Ptr Ds:[Ebx * 4 + Esi]
	Fld DWord Ptr Ds:[Ebx]
	Pop Ebx
	Pop Esi
	Retn 4H


__KillObject_Table2__ Macro
	ATTR T_CHR, 10, 035H ;Grpahic Angle
	ATTR T_LNG, 10, 004H ;Unit Id
	ATTR T_CHR, 10, 036H ;Selection Effect
	ATTR T_INT, 10, 04CH ;Resource Type
	ATTR T_FLT, 10, 044H ;Resource Quantity
	ATTR T_FLT, 10, 17CH ;Projectile Quantity
EndM
ATTRIBUTES_COUNT2 Equ 3


KillObject2_Char:
	push ebx
	push ebp
	push esi
	push edi
	
	Mov Esi, Ecx
	Mov Edi, DWord Ptr Ss:[Esp + 20H] ; trigger
	Mov Ebp, DWord Ptr Ss:[Esp + 14H] ; offset
	Mov Edx, DWord Ptr Ss:[Esp + 24H]
	Mov Ecx, DWord Ptr Ss:[Esp + 28H]
	.If Ecx > 0
		.Repeat
			Mov Ebx, [Edx]
			Mov Eax, DWord Ptr Ds:[Edi + 10H]
			.If DWord Ptr Ss:[Esp + 1CH] == 2
				Push Ecx
				Push Eax
				Mov Ecx, Esi
				Call KillObject_GetResource
				Pop Ecx
			.ElseIf DWord Ptr Ss:[Esp + 1CH] == 1
				Add Al, Byte Ptr Ss:[Ebx + Ebp]
			.EndIf
			Mov Byte Ptr Ss:[Ebx + Ebp], Al
			Add Edx, 4H
			Dec Ecx
		.Until Zero?
	.EndIf
KillObject2_Char_:
	Pop Edi
	pop esi
	pop ebp
	Pop Ebx
	Retn 18H

KillObject2_Word:
	push ebx
	push ebp
	push esi
	push edi
	
	Mov Esi, Ecx
	Mov Edi, DWord Ptr Ss:[Esp + 20H] ; trigger
	Mov Ebp, DWord Ptr Ss:[Esp + 14H] ; offset
	Mov Edx, DWord Ptr Ss:[Esp + 24H]
	Mov Ecx, DWord Ptr Ss:[Esp + 28H]
	.If Ecx > 0
		.Repeat
			Mov Ebx, [Edx]
			Mov Eax, DWord Ptr Ds:[Edi + 10H]
			.If DWord Ptr Ss:[Esp + 1CH] == 2
				Push Ecx
				Push Eax
				Mov Ecx, Esi
				Call KillObject_GetResource
				Pop Ecx
			.ElseIf DWord Ptr Ss:[Esp + 1CH] == 1
				Add Ax, Word Ptr Ss:[Ebx + Ebp]
			.EndIf
			Mov Word Ptr Ss:[Ebx + Ebp], Ax
			Add Edx, 4H
			Dec Ecx
		.Until Zero?
	.EndIf
KillObject2_Word_:
	Pop Edi
	pop esi
	pop ebp
	Pop Ebx
	Retn 18H

KillObject2_DWord:
	push ebx
	push ebp
	push esi
	push edi
	
	Mov Esi, Ecx
	Mov Edi, DWord Ptr Ss:[Esp + 20H] ; trigger
	Mov Ebp, DWord Ptr Ss:[Esp + 14H] ; offset
	Mov Edx, DWord Ptr Ss:[Esp + 24H]
	Mov Ecx, DWord Ptr Ss:[Esp + 28H]
	.If Ecx > 0
		.Repeat
			Mov Ebx, [Edx]
			Mov Eax, DWord Ptr Ds:[Edi + 10H]
			.If DWord Ptr Ss:[Esp + 1CH] == 2
				Push Ecx
				Push Eax
				Mov Ecx, Esi
				Call KillObject_GetResource
				Pop Ecx
			.ElseIf DWord Ptr Ss:[Esp + 1CH] == 1
				Add Eax, DWord Ptr Ss:[Ebx + Ebp]
			.EndIf
			Mov DWord Ptr Ss:[Ebx + Ebp], Eax
			Add Edx, 4H
			Dec Ecx
		.Until Zero?
	.EndIf
KillObject2_DWord_:
	Pop Edi
	pop esi
	pop ebp
	Pop Ebx
	Retn 18H

KillObject2_Float:
	Push Ebx
	push ebp
	push esi
	push edi
	
	Mov Esi, Ecx
	Mov Edi, DWord Ptr Ss:[Esp + 20H] ; trigger
	Mov Ebp, DWord Ptr Ss:[Esp + 14H] ; offset

	Mov Edx, DWord Ptr Ss:[Esp + 24H]
	Mov Ecx, DWord Ptr Ss:[Esp + 28H]
	.If Ecx > 0
		.Repeat
			Mov Ebx, [Edx]
			.If DWord Ptr Ss:[Esp + 1CH] == 2
				Push Ecx
				Push DWord Ptr Ds:[Edi + 10H]
				Mov Ecx, Esi
				Call KillObject_GetResourceFloat
				Pop Ecx
			.Else
				Fild DWord Ptr Ds:[Edi + 10H]
			.EndIf
			Fmul DWord Ptr Ds:[Float0001]
			.If DWord Ptr Ss:[Esp + 1CH] == 1
				Fadd DWord Ptr Ss:[Ebx + Ebp]
			.EndIf
			Fstp DWord Ptr Ss:[Ebx + Ebp]
			Add Edx, 4H
			Dec Ecx
		.Until Zero?
	.EndIf
KillObject2_Float_:
	Pop Edi
	pop esi
	pop ebp
	Pop Ebx
	Retn 18H



EndM
