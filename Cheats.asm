;EasyCodeName=Cheats,1
Include	defines.asm

.Const

CheatCheck@     DD 00444572H
CheatEffect@	DD 0042BDE4H


; Interfaces
$__PatchCheatsStart  DD O __PatchCheatsStart
$__PatchCheatsEnd    DD O __PatchCheatsEnd
$CheatCheck        DD O CheatCheck
$CheatEffect       DD O CheatEffect
$Cheat_1           DD O Cheat_1
$Cheat_2           DD O Cheat_2
$Cheat_3           DD O Cheat_3
$Cheat_4           DD O Cheat_4
$Cheat_5           DD O Cheat_5
$Cheat_6           DD O Cheat_6
$Cheat_7           DD O Cheat_7
$Cheat_8           DD O Cheat_8
$Cheat_9           DD O Cheat_9
$Cheat_10          DD O Cheat_10

$CheatEffect1_Unit DD O CheatEffect1_Unit
$CheatEffect2_Unit DD O CheatEffect2_Unit
$CheatEffect3_Unit DD O CheatEffect3_Unit
$CheatEffect4_Unit DD O CheatEffect4_Unit
$CheatEffect5_Unit DD O CheatEffect5_Unit
$CheatEffect6_Unit DD O CheatEffect6
$CheatEffect7_Unit DD O CheatEffect7
$CheatEffect8_Unit DD O CheatEffect8
$CheatEffect9_Unit DD O CheatEffect9
$CheatEffect10_Unit DD O CheatEffect10


; Addresses for jmp or call
PatchCheatsAddresses DD O CheatCheck_0, O CheatCheck_1
		DD O CheatCheck_2, O CheatCheck_3, O CheatCheck_4, O CheatCheck_5, O CheatCheck_6
		DD O CheatCheck_7, O CheatCheck_8, O CheatCheck_9, O CheatCheck_10, O CheatCheck_11
		DD O CheatEffect_0, O CheatEffect_1, O CheatEffect_2, O CheatEffect_3, O CheatEffect_4
		DD 0H

PatchCheatsDirectAddresses DD O CheatEffectTable_, O CheatEffectTable, 3
		DD O CheatCheck, O Cheat_1, 1
		DD O CheatCheck2, O Cheat_2, 1
		DD O CheatCheck3, O Cheat_3, 1
		DD O CheatCheck4, O Cheat_4, 1
		DD O CheatCheck5, O Cheat_5, 1
		DD O CheatCheck6, O Cheat_6, 1
		DD O CheatCheck7, O Cheat_7, 1
		DD O CheatCheck8, O Cheat_8, 1
		DD O CheatCheck9, O Cheat_9, 1
		DD O CheatCheck10, O Cheat_10, 1
		DD 0H

PatchCheatsDirectAddressArrays DD O CheatEffectTable, 0H

.Data?

.Data


.Code


Align 4
__PatchCheatsStart:



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

Align 4
CheatEffectTable:
	DD O CheatEffect1, O CheatEffect2, O CheatEffect3, O CheatEffect4, O CheatEffect5
	DD O CheatEffect6, O CheatEffect7, O CheatEffect8, O CheatEffect9, O CheatEffect10
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



Align 4
__PatchCheatsEnd:
