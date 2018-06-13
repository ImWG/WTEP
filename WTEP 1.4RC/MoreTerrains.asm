;EasyCodeName=MoreTerrains,1
Include	defines.asm

.Const

OLD_TERRAIN_COUNT Equ 42
EXTRA_TERRAIN_COUNT Equ 52

MoreTerrains@ DD 007BB769H
MoreTerrains2@ DD 007BB955H ;007BB3B1H

TerrainsLoad@ DD 00583A86H
TerrainsLoad2@ DD 00583A8BH
TerrainsLoad3@ DD 00584E1CH

SkipBorders@ DD 0057F087H

$__PatchTerrainsStart DD O __PatchTerrainsStart
$__PatchTerrainsEnd DD O __PatchTerrainsEnd
$MoreTerrains DD O MoreTerrains
$MoreTerrains2 DD O MoreTerrains2
$MoreTerrains_Table DD O MoreTerrains_Table

PatchTerrainsAddresses DD O MoreTerrains, O MoreTerrains_1, O MoreTerrains_2
	DD O MoreTerrains2, O MoreTerrains2_1, O MoreTerrains2_2
	DD 0H

PatchTerrainsDirectAddresses DD O MoreTerrains_Table_, O MoreTerrains_Table, 1
	DD O MoreTerrains2_Table_, O MoreTerrains_Table, 1
	DD 0H


.Data?

.Data

SkipBorders  DB 0EBH, 06H
SkipBordersN DD 2H


.Code


Align 4
__PatchTerrainsStart:



MoreTerrains:
	FakeCall 005473F0H
	Push Esi
	Push Edi
	Push Ebx
	Mov Edi, DWord Ptr Ds:[Esi + 9F4H]

MoreTerrains_Table_:
	Mov Esi, 11111111H
	Mov Ebx, 42 ; Start Terrain
.Repeat
	Mov Ecx, Edi
	Movzx Eax, Word Ptr Ds:[Esi]
	Push Ebx
	Push Eax
MoreTerrains_2:
	FakeCall 005473F0H
	Inc Ebx
	Add Esi, 2
.Until Word Ptr Ds:[Esi] == 0

	Pop Ebx
	Pop Edi
	Pop Esi
MoreTerrains_1:
	FakeJmp 007BB76EH


MoreTerrains2:
	FakeCall 00550870H
	Push Esi
	Push Edi
	Push Ebx
	Mov Edi, DWord Ptr Ss:[Ebp]
MoreTerrains2_Table_:
	Mov Esi, 11111111H
	Mov Ebx, 42 ; Start Terrain
.Repeat
	Mov Ecx, Edi
	Movzx Eax, Word Ptr Ds:[Esi]
	Push Ebx
	Push Eax
MoreTerrains2_2:
	FakeCall 00550870H
	Inc Ebx
	Add Esi, 2
.Until Word Ptr Ds:[Esi] == 0

	Pop Ebx
	Pop Edi
	Pop Esi
MoreTerrains2_1:
	FakeJmp 007BB95AH ;007BB3B6H

Align 2
MoreTerrains_Table:
	DW EXTRA_TERRAIN_COUNT + 1 Dup (0)



Align 4
__PatchTerrainsEnd:
