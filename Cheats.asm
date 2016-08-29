;EasyCodeName=Cheats,1
Include	defines.asm

.Const

CheatCheck@     DD 00444572H
CheatEffect@	DD 0042BDE4H


; Interfaces
$__PatchCheatsStart  DD Offset __PatchCheatsStart
$__PatchCheatsEnd    DD Offset __PatchCheatsEnd
$CheatCheck        DD Offset CheatCheck
$CheatEffect       DD Offset CheatEffect
$Cheat_1           DD Offset Cheat_1
$Cheat_2           DD Offset Cheat_2
$Cheat_3           DD Offset Cheat_3
$Cheat_4           DD Offset Cheat_4
$Cheat_5           DD Offset Cheat_5
$Cheat_6           DD Offset Cheat_6
$Cheat_7           DD Offset Cheat_7
$Cheat_8           DD Offset Cheat_8
$Cheat_9           DD Offset Cheat_9
$Cheat_10          DD Offset Cheat_10

$CheatEffect1_Unit DD Offset CheatEffect1_Unit
$CheatEffect2_Unit DD Offset CheatEffect2_Unit
$CheatEffect3_Unit DD Offset CheatEffect3_Unit
$CheatEffect4_Unit DD Offset CheatEffect4_Unit
$CheatEffect5_Unit DD Offset CheatEffect5_Unit
$CheatEffect6_Unit DD Offset CheatEffect6
$CheatEffect7_Unit DD Offset CheatEffect7
$CheatEffect8_Unit DD Offset CheatEffect8
$CheatEffect9_Unit DD Offset CheatEffect9
$CheatEffect10_Unit DD Offset CheatEffect10


; Addresses for jmp or call
PatchCheatsAddresses DD Offset CheatCheck_0, Offset CheatCheck_1
		DD Offset CheatCheck_2, Offset CheatCheck_3, Offset CheatCheck_4, Offset CheatCheck_5, Offset CheatCheck_6
		DD Offset CheatCheck_7, Offset CheatCheck_8, Offset CheatCheck_9, Offset CheatCheck_10, Offset CheatCheck_11
		DD Offset CheatEffect_0, Offset CheatEffect_1, Offset CheatEffect_2, Offset CheatEffect_3, Offset CheatEffect_4
		DD 0H

PatchCheatsDirectAddresses DD Offset CheatEffectTable_, Offset CheatEffectTable, 3
		DD Offset CheatCheck, Offset Cheat_1, 1
		DD Offset CheatCheck2, Offset Cheat_2, 1
		DD Offset CheatCheck3, Offset Cheat_3, 1
		DD Offset CheatCheck4, Offset Cheat_4, 1
		DD Offset CheatCheck5, Offset Cheat_5, 1
		DD Offset CheatCheck6, Offset Cheat_6, 1
		DD Offset CheatCheck7, Offset Cheat_7, 1
		DD Offset CheatCheck8, Offset Cheat_8, 1
		DD Offset CheatCheck9, Offset Cheat_9, 1
		DD Offset CheatCheck10, Offset Cheat_10, 1
		DD 0H

PatchCheatsDirectAddressArrays DD Offset CheatEffectTable, 0H

.Data?

.Data


.Code


__PatchCheatsStart:
	DB 'WAIFor cheats', 0

; Related To Cheats
CheatCheck: ;00444572h
	Push 11111111H
	Lea Eax, [Esp + 00000214H]
	Push Eax
CheatCheck_2:
	FakeCall 0061CD70H
	Add Esp, 4
	pop ecx
	test eax,eax
	Jne CheatCheck2
	Push 7FH
CheatCheck_1: ; Jump To Effects
	FakeJmp 004445AEH

CheatCheck2: ;00444572h
	Push 11111111H
	Lea Eax, [Esp + 00000214H]
	Push Eax
CheatCheck_3:
	FakeCall 0061CD70H
	Add Esp, 4
	pop ecx
	test eax,eax
	Jne CheatCheck3
	Push 80H
	Jmp CheatCheck_1

CheatCheck3: ;00444572h
	Push 11111111H
	Lea Eax, [Esp + 00000214H]
	Push Eax
CheatCheck_4:
	FakeCall 0061CD70H
	Add Esp, 4
	pop ecx
	test eax,eax
	Jne CheatCheck4
	Push 81H
	Jmp CheatCheck_1

CheatCheck4: ;00444572h
	Push 11111111H
	Lea Eax, [Esp + 00000214H]
	Push Eax
CheatCheck_5:
	FakeCall 0061CD70H
	Add Esp, 4
	pop ecx
	test eax,eax
	Jne CheatCheck5
	Push 82H
	Jmp CheatCheck_1

CheatCheck5:
	Push 11111111H
	Lea Eax, [Esp + 00000214H]
	Push Eax
CheatCheck_6:
	FakeCall 0061CD70H
	Add Esp, 4
	pop ecx
	test eax,eax
	Jne CheatCheck6
	Push 83H
	Jmp CheatCheck_1

CheatCheck6:
	Push 11111111H
	Lea Eax, [Esp + 00000214H]
	Push Eax
CheatCheck_7:
	FakeCall 0061CD70H
	Add Esp, 4
	pop ecx
	test eax,eax
	Jne CheatCheck7
	Push 84H
	Jmp CheatCheck_1

CheatCheck7:
	Push 11111111H
	Lea Eax, [Esp + 00000214H]
	Push Eax
CheatCheck_8:
	FakeCall 0061CD70H
	Add Esp, 4
	pop ecx
	test eax,eax
	Jne CheatCheck8
	Push 85H
	Jmp CheatCheck_1

CheatCheck8:
	Push 11111111H
	Lea Eax, [Esp + 00000214H]
	Push Eax
CheatCheck_9:
	FakeCall 0061CD70H
	Add Esp, 4
	pop ecx
	test eax,eax
	Jne CheatCheck9
	Push 86H
	Jmp CheatCheck_1

CheatCheck9:
	Push 11111111H
	Lea Eax, [Esp + 00000214H]
	Push Eax
CheatCheck_10:
	FakeCall 0061CD70H
	Add Esp, 4
	pop ecx
	test eax,eax
	Jne CheatCheck10
	Push 87H
	Jmp CheatCheck_1

CheatCheck10:
	Push 11111111H
	Lea Eax, [Esp + 00000214H]
	Push Eax
CheatCheck_11:
	FakeCall 0061CD70H
	Add Esp, 4
	pop ecx
	test eax,eax
	Jne CheatCheck_Other
	Push 88H
	Jmp CheatCheck_1

CheatCheck_Other:
	Mov Esi, 0066FB68H
CheatCheck_0:
	FakeJmp 00444577H

Cheat_1 DB 32 Dup (0)
Cheat_2 DB 32 Dup (0)
Cheat_3 DB 32 Dup (0)
Cheat_4 DB 32 Dup (0)
Cheat_5 DB 32 Dup (0)
Cheat_6 DB 32 Dup (0)
Cheat_7 DB 32 Dup (0)
Cheat_8 DB 32 Dup (0)
Cheat_9 DB 32 Dup (0)
Cheat_10 DB 32 Dup (0)


CheatEffect: ;0042BDE4h
	Jbe CheatEffect_0 ;JA 0042C3E3
    Sub Eax, 27
CheatEffectTable_:
    Jmp DWord Ptr Ds:[Eax * 4 + 11111111H]
CheatEffect_0:
	FakeJmp 0042BDEAH
CheatEffectTable:
	DD Offset CheatEffect1, Offset CheatEffect2, Offset CheatEffect3, Offset CheatEffect4, Offset CheatEffect5
	DD Offset CheatEffect6, Offset CheatEffect7, Offset CheatEffect8, Offset CheatEffect9, Offset CheatEffect10
	DD 0

CheatEffect_Other:
	pop edi
	pop esi
	pop ebp
	pop ebx
	retn 8

CheatEffect1:
	Call CheatEffect_SpawnFromTC
	Push 1
	push eax
	Mov Edx, [Ecx]
	push esi
	Push Eax
CheatEffect1_Unit:
	Push 0FFFFH
CheatEffect_1:
	FakeJmp 0042C3A1H

CheatEffect2:
	Call CheatEffect_SpawnFromTC
	Push 1
	push eax
	Mov Edx, [Ecx]
	push esi
	Push Eax
CheatEffect2_Unit:
	Push 0FFFFH
	Jmp CheatEffect_1

CheatEffect3:
	Call CheatEffect_SpawnFromTC
	Push 1
	push eax
	Mov Edx, [Ecx]
	push esi
	Push Eax
CheatEffect3_Unit:
	Push 0FFFFH
	Jmp CheatEffect_1

CheatEffect4:
	Call CheatEffect_SpawnFromTC
	Push 1
	push eax
	Mov Edx, [Ecx]
	push esi
	Push Eax
CheatEffect4_Unit:
	Push 0FFFFH
	Jmp CheatEffect_1

CheatEffect5:
	Call CheatEffect_SpawnFromTC
	Push 1
	push eax
	Mov Edx, [Ecx]
	push esi
	Push Eax
CheatEffect5_Unit:
	Push 0FFFFH
	Jmp CheatEffect_1

CheatEffect_SpawnFromTC:
	Mov Ax, [Esp + 18H]
	test ax,ax
	Jng CheatEffect_Other_
	mov ecx,[esi+4Ch]
	push 00
	movsx ebx,ax
	shl ebx,02h
	push 02
	push 01
	Mov Edx, [Ebx + Ecx]
	Push 0BF800000H
	Push 0BF800000H
	push 6Dh
	Mov Ecx, [Edx + 78H]
CheatEffect_2:
	FakeCall 00567E60H
	mov edi,eax
	test edi,edi
	Je CheatEffect_Other_
	Mov Eax, [Esi + 4CH]
	Mov Edx, [Edi + 40H]
	Mov Esi, [Edi + 3CH]
	Mov [Esp + 18H], Edx
	Mov Ecx, [Ebx + Eax]
	Mov Eax, [Esp + 18H]
	Ret
CheatEffect_Other_:
	Add Esp, 4H
	Jmp CheatEffect_Other


CheatEffect_Research:
	Mov Ecx, DWord Ptr Ds:[Plc]
CheatEffect_3:
	FakeCall 005E7560H
	Mov Ecx, [Eax + 12A0H]
	Push DWord Ptr Ss:[Esp + 4H]
CheatEffect_4:
	FakeCall 0040244DH
	Ret 4

CheatEffect6:
	Push 0FFFFH
	Call CheatEffect_Research
CheatEffect_Back:
	Pop Edi
	Pop Esi
	Pop Ebp
	Pop Ebx
	Retn 8

CheatEffect7:
	Push 0FFFFH
	Call CheatEffect_Research
	Jmp CheatEffect_Back

CheatEffect8:
	Push 0FFFFH
	Call CheatEffect_Research
	Jmp CheatEffect_Back

CheatEffect9:
	Push 0FFFFH
	Call CheatEffect_Research
	Jmp CheatEffect_Back

CheatEffect10:
	Push 0FFFFH
	Call CheatEffect_Research
	Jmp CheatEffect_Back



__PatchCheatsEnd:
