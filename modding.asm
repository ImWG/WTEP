;EasyCodeName=Modding,1
Include	defines.asm

.Const

SecondPageA@	DD 00528326H
SecondPage2@	DD 0052830CH
NewButtons@  	DD 00525A04H
AllBuildFnd@	DD 005571BBH
AllHeal@		DD 00434AC6H
FreeDrop@		DD 004692AAH
FreeDrop2@		DD 00469138H

; Inerfaces
_PatchModdingStart DD Offset __PatchModdingStart
_PatchModdingEnd   DD Offset __PatchModdingEnd
_SecondPage        DD Offset SecondPage
_NewButtons        DD Offset NewButtons
_NewButtons_1      DD Offset NewButtons_1
_NewButtons_Back   DD Offset NewButtons_Back
_AllHeal		   DD Offset AllHeal
_AllHeal_Monk	   DD Offset AllHeal_Monk
_AllHeal_1		   DD Offset AllHeal_1
_AllHeal_2		   DD Offset AllHeal_2
_AllHeal_3		   DD Offset AllHeal_3
_FreeDrop          DD Offset FreeDrop
_FreeDrop_1        DD Offset FreeDrop_1
_FreeDrop_Other    DD Offset FreeDrop_Other
_FreeDrop_Back     DD Offset FreeDrop_Back


.Data?

.Data

SecondPageA		DB 00H
SecondPageAN	DD 1
SecondPage2		DB 66H, 90H
SecondPage2N	DD 2
AllBuildFnd		DB 0EBH, 04H ; Allowing all classes of units to build foundations
AllBuildFndN	DD 2
FreeDrop2		DD 00000000H
FreeDrop2N		DD 4


.Code

SimpleButtonArgs Macro _Position, _Icon, _Function, _Descrption
	Mov Eax, DWord Ptr [Esi + 1020H]
	Mov Ecx, Esi
	Push 0
	Push 0
	Push 0
	Push 0
	Push 0
	Push - 1
	Push _Descrption
	Push 0
	Push _Function
	Push _Icon
	Push _Position
	Push Eax
EndM



__PatchModdingStart:
	DB 'WAIFor modding', 0

SecondPage:

NewButtons: ; EBX = Player Addr. ECX = Unit Addr.
	Push Eax
	Push Edx
	Push Ecx

	Mov Eax, DWord Ptr Ds:[Ecx + 08H]
	Movsx Eax, Word Ptr Ds:[Eax + 16H] ;CRASH!
	Cmp Ax, 06H
	Jne NewButtons_
	;SimpleButtonArgs 14, 1EH, 74H, 0A065H ; Building Page
	;SimpleButtonArgs 14, 0FH, 1CH, 133CH ; Heal
	SimpleButtonArgs 14, 10H, 9FH, 0A092H ; Deposit Relic
NewButtons_1:
	FakeCall 00520620H
NewButtons_:
	Pop Ecx
	Pop Edx
	Pop Eax

	Mov Byte Ptr Ss:[Esp + 20H], Al
	Cmp DWord Ptr Ds:[Ecx + 0CH], Ebx
NewButtons_Back:
	FakeJmp 00525A0BH


; Allowing all units to heal
AllHeal:
	Jne AllHeal_
AllHeal_Monk:
	FakeJmp 00434ACCH
AllHeal_:
	Push Ebx
	Mov Ebx, DWord Ptr Ss:[Esp + 38H]
	Test Ebx, Ebx
	Jne AllHeal_1_
	Pop Ebx
AllHeal_1:
	FakeJmp 00434E5DH
AllHeal_1_:
	Mov Ebx, DWord Ptr Ds:[Ebx + 0CH]
	Cmp Ebx, DWord Ptr Ss:[Ebp + 0CH]
	Je AllHeal_3_
	Pop Ebx
AllHeal_2: ; Other
	FakeJmp 00434CDFH
AllHeal_3_: ; Healing
	Pop Ebx
AllHeal_3:
	FakeJmp 00434B74H


FreeDrop:
	Cmp Eax, 11EH
	Je FreeDrop_Other_
	Cmp Eax, 12CH
	Jl FreeDrop_Custom
	Cmp Eax, 135H
	Jng FreeDrop_Other_

FreeDrop_Custom:
	Mov Edx, DWord Ptr Ds:[Edi + 4H]
	Push 0
	Mov Eax, DWord Ptr Ds:[Edx + 4CH]
	Mov Ecx, DWord Ptr Ds:[Eax]
	Mov Eax, DWord Ptr Ds:[Esi + 40H]
	Push Eax
	Push Ebp
	Mov Edx, DWord Ptr Ds:[Ecx]
	Push Ebx
	Mov Edx, DWord Ptr Ds:[Esi + 8]
	Movsx Eax, Word Ptr Ds:[Edx + 0A6H] ; Attribute Piece
	Cmp Eax, 0
	Jle FreeDrop_
	Mov Ecx, DWord Ptr Ds:[Esi + 0CH] ; Change Player from gaia
	Push Eax
	Jmp FreeDrop_1
FreeDrop_: ; If negative, create gaia's unit
	Not Eax
	Push Eax
FreeDrop_1:
	FakeCall 00456A40H ; ECX = Player
FreeDrop_Back:
	FakeJmp 00469422H

FreeDrop_Other_:
	Add Eax, -11EH
FreeDrop_Other:
	FakeJmp 004692AFH

__PatchModdingEnd:
