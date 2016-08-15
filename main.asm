;EasyCodeName=Main,1
.386
.Model flat, StdCall
Option CaseMap:none
Include	windows.inc
Include	user32.inc
Include	kernel32.inc
IncludeLib	user32.lib
IncludeLib	kernel32.lib

;Include	effects.asm
;Include	modding.asm

.Const

MyPatchSizeX  	DD 00030000H

UPGameSize		DD 00300000H
UPPatchSize  	DD 0006C000H

TotalVSize@		DD 0148H
TotalVSize		DD 00412000H
PatchVSize@		DD 0338H
PatchVStart		DD 007A6000H
PatchRSize@		DD 0340H
SizeSize		DD 04H
PatchDelta		DD 00512000H
BaseDelta		DD 00400000H

MyTotalVSize  	DD 00442000H ; = TotalVSize + MyPatchSizeX
MyPatchSize  	DD 0009C000H ; = UPPatchSize + MyPatchSizeX


.Data?

stStartUp       STARTUPINFO <?>
stProcInfo      PROCESS_INFORMATION <?>
hMemory         DD ?
hh              DD ?
hProcess		DD ?

fHandle			DD ?

Wax	DD ? ; Virtual Registers :P
Wbx	DD ?
Wcx	DD ?
Wdx	DD ?
Wsi DD ?


.Data

szDllKernel     DB  'Kernel32.dll', 0
szLoadLibrary   DB  'LoadLibraryA', 0

szCaption       DB  'WTEP', 0
szText          DB  'Failed to launch game.', 0
szText1			DB	"This is the first time running WAIFor's Patch, we'll change allocations for patches...", 0
szText2			DB	'Not an available UserPatch game!', 0
szText3			DB	'WTEP will install patches into EXE file, are you sure to continue?', 0
szText4			DB	'Install completed.', 0

_Jmp			DB 0E9H
_Call			DB 0E8H

__PatchStart@	DD 00812000H ; = UPGameSize + PatchDelta
__OffsetStart	DD 00000000H


.Code


IncreasePatchAddress Proc _From, _To
	Mov Eax, __PatchStart@
	Add Eax, _To
	Sub Eax, _From
	Add Eax, 8
	Mov __PatchStart@, Eax
	Ret
IncreasePatchAddress EndP


getOffsetInFile Proc _lpBaseAddress
	Mov Eax, _lpBaseAddress
	Mov Ecx, PatchVStart
	.If Ecx > Eax
		Sub Eax, BaseDelta
	.Else
		Sub Eax, PatchDelta
	.EndIf
	Ret
getOffsetInFile EndP


WritePatch Proc _lpBaseAddress, _lpBuffer, _nSize
	.If cInstall == 0
		Invoke	WriteProcessMemory, stProcInfo.hProcess, _lpBaseAddress, _lpBuffer, _nSize, 0
		test	eax,eax
		setnz	cl
		Movzx Eax, Cl
	.Else
		Invoke getOffsetInFile, _lpBaseAddress
		Mov Wbx, Eax ; address

		Invoke SetFilePointer, fHandle, Wbx, 0H, FILE_BEGIN
		Invoke WriteFile, fHandle, _lpBuffer, _nSize, Addr Wcx, NULL
	.EndIf

	ret
WritePatch EndP

WritePatchCode Proc _lpBaseAddress, _lpBuffer, _nEnd
	Mov Eax, _nEnd
	Sub Eax, _lpBuffer
	Mov Wax, Eax

	.If cInstall == 0
		Invoke	WriteProcessMemory, stProcInfo.hProcess, _lpBaseAddress, _lpBuffer, Wax, 0
		test	eax,eax
		setnz	cl
		Movzx Eax, Cl

	.Else
		Mov Eax, _nEnd
		Sub Eax, _lpBuffer
		Mov Wax, Eax ; size

		Invoke getOffsetInFile, _lpBaseAddress
		Mov Wbx, Eax ; address

		Invoke SetFilePointer, fHandle, Wbx, 0H, FILE_BEGIN
		Invoke WriteFile, fHandle, _lpBuffer, Wax, Addr Wcx, NULL
	.EndIf

	ret
WritePatchCode EndP


WriteDirectAddress Proc _jmpFrom, _jmpTo, _offset
	Mov Eax, _jmpFrom
	Add Eax, _offset
	Sub Eax, __OffsetStart
	Add Eax, __PatchStart@
	Mov Wax, Eax

	Mov Eax, _jmpTo
	Add Eax, __PatchStart@
	Sub Eax, __OffsetStart
	Mov Wbx, Eax

	.If cInstall == 0
		Invoke	WriteProcessMemory, stProcInfo.hProcess, Wax, Offset Wbx, 4, 0
		test	eax,eax
		setnz	cl
		Movzx Eax, Cl
	.Else
		Mov Eax, Wax
		Sub Eax, PatchDelta
		Mov Wax, Eax
		Invoke SetFilePointer, fHandle, Wax, 0H, FILE_BEGIN
		Invoke WriteFile, fHandle, Offset Wbx, 4, Addr Wcx, NULL
	.EndIf

	Ret
WriteDirectAddress EndP

WriteDirectAddresses Proc _jmpFroms
	Mov Eax, _jmpFroms
	Mov Wsi, Eax

	Mov Edx, [Eax]
	.While Edx != 0
		Mov Wax, Edx
		Mov Ecx, [Eax + 4]
		Mov Wbx, Ecx
		Mov Ecx, [Eax + 8]
		Mov Wcx, Ecx
		Invoke WriteDirectAddress, Wax, Wbx, Wcx
		Mov Eax, Wsi
		Add Eax, 0CH
		Mov Wsi, Eax
		Mov Edx, [Eax]
	.EndW
	Ret
WriteDirectAddresses EndP


WriteDirectAddressArray Proc _jmpFrom
	Mov Esi, _jmpFrom
	Mov Eax, Esi
	Sub Eax, __OffsetStart
	Add Eax, __PatchStart@
	.If cInstall == 1
		Sub Eax, PatchDelta
	.EndIf

	Mov Wax, Eax

	Mov Edx, [Esi]
	.While Edx != 0
		Sub Edx, __OffsetStart
		Add Edx, __PatchStart@

		Mov Wbx, Edx
		.If cInstall == 0
			Invoke	WriteProcessMemory, stProcInfo.hProcess, Wax, Offset Wbx, 4, 0
		.Else
			Invoke SetFilePointer, fHandle, Wax, 0H, FILE_BEGIN
			Invoke WriteFile, fHandle, Offset Wbx, 4, Addr Wcx, NULL
		.EndIf
		Mov Eax, Wax
		Add Eax, 4
		Add Esi, 4
		Mov Wax, Eax
		Mov Edx, [Esi]
	.EndW
	Ret
WriteDirectAddressArray EndP

WriteDirectAddressArrays Proc _jmpFroms
	Mov Eax, _jmpFroms
	Mov Wsi, Eax

	.Repeat
		Mov Eax, Wsi
		Mov Eax, [Eax] ; [Wsi] = Wsi !
		.If Eax != 0
			Invoke WriteDirectAddressArray, Eax
		.EndIf
		Mov Eax, Wsi
		Add Eax, 4
		Mov Wsi, Eax
		Mov Eax, [Eax]
	.Until Eax == 0

	Ret
WriteDirectAddressArrays EndP


WriteAddress Proc _jmpFrom
	Mov Eax, _jmpFrom
	Sub Eax, __OffsetStart
	Add Eax, __PatchStart@
	Inc Eax
	.If cInstall != 0
		Sub Eax, PatchDelta
		Mov Wax, Eax ; source address
		Add Eax, PatchDelta
	.Else
		Mov Wax, Eax
	.EndIf
	Add Eax, 3
	Not Eax
	Mov Ecx, _jmpFrom
	Add Eax, [Ecx + 1]
	Mov Wbx, Eax ; target address

	.If cInstall == 0
		Invoke	WriteProcessMemory, stProcInfo.hProcess, Wax, Offset Wbx, 4, 0
		test	eax,eax
		setnz	cl
		Movzx Eax, Cl

	.Else
		Mov Wbx, Eax
		Invoke SetFilePointer, fHandle, Wax, 0H, FILE_BEGIN
		Invoke WriteFile, fHandle, Offset Wbx, 4, Addr Wcx, NULL

	.EndIf

	ret
WriteAddress EndP

WriteAddresses Proc _jmpFroms
	Mov Eax, _jmpFroms
	Mov Wsi, Eax

	.Repeat
		Mov Eax, Wsi
		Mov Eax, [Eax] ; [Wsi] = Wsi !
		Invoke WriteAddress, Eax
		Mov Eax, Wsi
		Add Eax, 4
		Mov Wsi, Eax
		Mov Eax, [Eax]
	.Until Eax == 0

	Ret
WriteAddresses EndP



_WriteJmp Proc _jmpFrom, _jmpTo, _Function
	.If cInstall == 0

		Invoke	WriteProcessMemory, stProcInfo.hProcess, _jmpFrom, _Function, 1, 0

		Mov Eax, _jmpFrom
		Inc Eax
		Mov Wax, Eax

		Mov Eax, _jmpTo
		Sub Eax, __OffsetStart
		Add Eax, __PatchStart@
		Sub Eax, _jmpFrom
		Sub Eax, 5
		Mov Wbx, Eax

		Invoke	WriteProcessMemory, stProcInfo.hProcess, Wax, Offset Wbx, 4, 0

		test	eax,eax
		setnz	cl
		Movzx Eax, Cl

	.Else
		Mov Eax, _jmpFrom
		.If Eax >= PatchVStart
			Sub Eax, PatchDelta
		.Else
			Sub Eax, BaseDelta
		.EndIf
		Mov Wax, Eax ; source

		Mov Eax, _jmpTo
		Sub Eax, __OffsetStart
		Add Eax, __PatchStart@
		Sub Eax, _jmpFrom
		Sub Eax, 5
		Mov Wbx, Eax ; dest

		Invoke SetFilePointer, fHandle, Wax, 0H, FILE_BEGIN
		Invoke WriteFile, fHandle, _Function, 1, Addr Wcx, NULL
		Mov Eax, Wax
		Inc Eax
		Mov Wax, Eax
		;Invoke SetFilePointer, fHandle, 1H, 0H, FILE_CURRENT
		Invoke SetFilePointer, fHandle, Wax, 0H, FILE_BEGIN
		Invoke WriteFile, fHandle, Offset Wbx, 4, Addr Wcx, NULL

	.EndIf

	ret
_WriteJmp EndP

WriteJmp Proc _jmpFrom, _jmpTo
	Invoke _WriteJmp, _jmpFrom, _jmpTo, Offset _Jmp
	Ret
WriteJmp EndP

WriteCall Proc _jmpFrom, _jmpTo
	Invoke _WriteJmp, _jmpFrom, _jmpTo, Offset _Call
	Ret
WriteCall EndP


WriteNumber Proc _jmpFrom, _Length, _Offset ; EAX = Number
	Mov Wbx, Eax
	Mov Eax, _jmpFrom
	Sub Eax, __OffsetStart
	Add Eax, __PatchStart@
	Add Eax, _Offset
	.If cInstall != 0
		Sub Eax, PatchDelta
	.EndIf
	Mov Wax, Eax

	.If cInstall == 0
		Invoke	WriteProcessMemory, stProcInfo.hProcess, Wax, Offset Wbx, _Length, 0
		Test Eax, Eax
		setnz	cl
		Movzx Eax, Cl

	.Else
		;Mov Wbx, Eax
		Invoke SetFilePointer, fHandle, Wax, 0H, FILE_BEGIN
		Invoke WriteFile, fHandle, Offset Wbx, _Length, Addr Wcx, NULL

	.EndIf

	ret
WriteNumber EndP

SetIcon Proc, _iniIcon, _Target, _Offset
	Invoke GetINI, Offset iniSection3, _iniIcon, -1
	.If Eax != -1
		Invoke WriteNumber, _Target, 1, _Offset
	.EndIf
	Ret
SetIcon EndP






GetINIString Proc _iniSection, _iniKey, _defaultGame, _hGameName
	Invoke GetPrivateProfileString, _iniSection, _iniKey, _defaultGame, _hGameName, 0FFH, Offset iniName
	Ret
GetINIString EndP

GetINI Proc _iniSection, _iniKey, _defaultNumber
	Invoke GetPrivateProfileInt, _iniSection, _iniKey, _defaultNumber, Offset iniName
	Ret
GetINI EndP



Main:

	Invoke GetINIString, Offset iniSection0, Offset iniKeyGame, Offset defaultGame, Offset cGameName
	Invoke GetINI, Offset iniSection0, Offset iniKeyInstall, 0
	.If Eax == 1
		Mov cInstall, 1
	.Else
		Mov cInstall, 0
	.EndIf

	; Load File
	Invoke CreateFile, Offset cGameName, GENERIC_READ Or GENERIC_WRITE,
				FILE_SHARE_READ, NULL, OPEN_EXISTING, NULL, NULL
	Mov fHandle, Eax
	;Invoke ReadFile, fHandle, Addr fBuffer, 20, Addr Wax, NULL

	; Check size of allocations
	Invoke SetFilePointer, fHandle, PatchVSize@, 0H, FILE_BEGIN
	Invoke ReadFile, fHandle, Offset Wax, SizeSize, Addr Wbx, NULL
	Mov Eax, Wax

	Cmp Eax, MyPatchSize
	Jge PatchIsReady
	Cmp Eax, UPPatchSize
	Jge PatchIsAvailable



PatchIsUnavailable:
	Invoke CloseHandle, fHandle
	Invoke MessageBox, NULL, Offset szText2, Offset szCaption, MB_OK
	Invoke ExitProcess, NULL

PatchIsAvailable:
	Invoke MessageBox, NULL, Offset szText1, Offset szCaption, MB_OKCANCEL
	Cmp Eax, IDOK
	Jne Exit

	; Change size
	Mov Eax, UPGameSize
	Add Eax, MyPatchSizeX
	Mov Wax, Eax
	Invoke SetFilePointer, fHandle, Wax, 0H, FILE_BEGIN
	Invoke SetEndOfFile, fHandle

	; Change size of allocations of patches
	Invoke SetFilePointer, fHandle, TotalVSize@, 0H, FILE_BEGIN
	Invoke WriteFile, fHandle, Offset MyTotalVSize, SizeSize, Addr Wax, NULL
	Invoke SetFilePointer, fHandle, PatchVSize@, 0H, FILE_BEGIN
	Invoke WriteFile, fHandle, Offset MyPatchSize, SizeSize, Addr Wax, NULL
	Invoke SetFilePointer, fHandle, PatchRSize@, 0H, FILE_BEGIN
	Invoke WriteFile, fHandle, Offset MyPatchSize, SizeSize, Addr Wax, NULL

PatchIsReady:
	.If cInstall == 0
		Invoke CloseHandle, fHandle

		Invoke GetStartupInfo, Offset stStartUp
		;Invoke GetINI, Offset iniSection, Offset iniKey, Offset defaultGame, Offset hGameName
		Invoke CreateProcess, Offset cGameName, NULL, NULL, NULL, NULL, CREATE_SUSPENDED, NULL, NULL,
					Offset stStartUp, Offset stProcInfo
		cmp eax,0
		Jz FailedToRun

		invoke VirtualAllocEx,stProcInfo.hProcess,NULL,12,MEM_COMMIT,PAGE_EXECUTE_READWRITE
		mov hMemory,eax

		Inc Eax

	.Else
		Invoke MessageBox, NULL, Offset szText3, Offset szCaption, MB_YESNO
		Cmp Eax, IDYES
		Jne Exit

	.EndIf
	

;Write Patches

	; Effects Patch
	Invoke GetINI, Offset iniSection0, Offset iniKeyTriggers, 0

	.If Eax == 1
		Mov Eax, _PatchEffectsStart
		Mov __OffsetStart, Eax

		; Triggers related
		Invoke	WritePatchCode, __PatchStart@, _PatchEffectsStart, _PatchEffectsEnd
		Invoke WriteAddresses, Addr PatchEffectsAddresses

		Invoke GetINI, Offset iniSection2, Offset iniKeyNewEffects, 0
		.If Eax == 1
			Invoke  WritePatch, ExpandNumberLength@, Offset ExpandNumberLength, ExpandNumberLengthN
			Invoke	WriteJmp, EnableInputs@, _EnableInputs
			Invoke	WriteJmp, CustomColorInfo@, _CustomColorInfo

			Invoke	WriteJmp, TaskObject@, _TaskObject
			Invoke	WriteJmp, KillObject@, _KillObject
			Invoke	WriteJmp, MoveSight@, _MoveSight
			Invoke	WriteJmp, Tribute@, _Tribute
			Invoke  WriteJmp, DamageUnit@, _DamageUnit
			Invoke  WriteJmp, ChangeAttack@, _ChangeAttack
			Invoke  WriteJmp, CreateUnitArray@, _CreateUnitArray
			Invoke  WriteJmp, ChangeDiplomacy@, _ChangeDiplomacy
			Invoke  WriteJmp, ChangeSpeed@, _ChangeSpeed

		.EndIf


		Invoke GetINI, Offset iniSection2, Offset iniKeyImprovedEd, 0
		.If Eax == 1
			Invoke	WritePatch, MoreTributeRes@, Offset MoreTributeRes, MoreTributeResN
			Invoke	WriteJmp, MoreResources@, _MoreResources
			Invoke	WritePatch, NonNumInQuantity@, Offset NonNumInQuantity, NonNumInQuantityN
			Invoke	WritePatch, GaiaForPlayer@, Offset GaiaForPlayer, GaiaForPlayerN
			Invoke	WritePatch, BuildingNameFix@, Offset BuildingNameFix, BuildingNameFixN

		.EndIf


		Invoke GetINI, Offset iniSection2, Offset iniKeyTaskProj, 0
		.If Eax == 1
			Invoke	WritePatch, EnableTaskProj@, Offset EnableTaskProj, EnableTaskProjN

		.EndIf


		;Invoke	WriteJmp, ShowInfo@, _ShowInfo

		Invoke WriteDirectAddresses, Offset PatchEffectsDirectAddresses
		Invoke WriteDirectAddressArrays, Offset PatchEffectsDirectAddressArrays

	.EndIf

	; Modding Patch
	Invoke GetINI, Offset iniSection0, Offset iniKeyModding, 0

	.If Eax == 1
		Mov Eax, _PatchModdingStart
		Mov __OffsetStart, Eax

		Invoke IncreasePatchAddress, _PatchEffectsStart, _PatchEffectsEnd
		Invoke	WritePatchCode, __PatchStart@, _PatchModdingStart, _PatchModdingEnd
		Invoke WriteAddresses, Addr PatchModdingAddresses


		Invoke GetINI, Offset iniSection1, Offset iniKeyExplUnit, 0
		.If Eax == 1
			Invoke	WriteJmp, ExplosionUnit1@, _ExplosionUnit1
		.ElseIf Eax == 2
			Invoke	WriteJmp, ExplosionUnit2@, _ExplosionUnit2
		.EndIf

		Invoke GetINI, Offset iniSection1, Offset iniKeySelfDestruct, 0
		.If Eax == 1
			Invoke	WriteJmp, SelfDestructUnit1@, _SelfDestructUnit1
		.ElseIf Eax == 2
			Invoke	WriteJmp, SelfDestructUnit2@, _SelfDestructUnit2
		.EndIf

		Invoke GetINI, Offset iniSection1, Offset iniKeySelfHeal, 0
		.If Eax == 1
			Invoke	WriteJmp, SelfHealUnit1@, _SelfHealUnit1
		.ElseIf Eax == 2
			Invoke	WriteJmp, SelfHealUnit2@, _SelfHealUnit2
		.EndIf

		Invoke GetINI, Offset iniSection1, Offset iniKey2ndPage, 0
		.If Eax == 1
			Invoke	WritePatch, SecondPageA@, Offset SecondPageA, SecondPageAN
			Invoke	WritePatch, SecondPage2@, Offset SecondPage2, SecondPage2N

			Mov Eax, 13
			Invoke WriteNumber, _NewButtons2_Position, 1, 1 ; Adjust positions of skill buttons
		.EndIf

		Invoke GetINI, Offset iniSection1, Offset iniKeyNewSkills, 0
		.If Eax == 1
			Invoke	WriteJmp, NewButtons@, _NewButtons
			Invoke	WriteJmp, NewButtons2@, _NewButtons2
			Invoke	WriteJmp, FreeDrop@, _FreeDrop
			Invoke	WritePatch, FreeDrop2@, Offset FreeDrop2, FreeDrop2N

			Invoke	WritePatch, AllUnload@, Offset AllUnload, AllUnloadN
			Invoke	WriteJmp, FreeGather@, _FreeGather

			;Invoke	WritePatch, MarketInit@, Offset MarketInit, MarketInitN
			Invoke	WriteJmp, MarketInit@, _MarketInit

		.EndIf

		Invoke GetINI, Offset iniSection1, Offset iniKeyAllFnd, 0
		.If Eax == 1
			Invoke	WritePatch, AllBuildFnd@, Offset AllBuildFnd, AllBuildFndN
		.EndIf

		Invoke GetINI, Offset iniSection1, Offset iniKeyAllHeal, 0
		.If Eax == 1
			Invoke	WriteJmp, AllHeal@, _AllHeal
		.EndIf

		Invoke GetINI, Offset iniSection1, Offset iniKeyAttackGnd, 0
		.If Eax == 1
			Invoke	WriteJmp, AttackGround@, _AttackGround
			Invoke	WriteJmp, AttackGround2@, _AttackGround2
		.EndIf

		Invoke GetINI, Offset iniSection1, Offset iniKeyBuilder, 0
		.If Eax == 1
			Invoke	WriteJmp, CustomBuilder@, _CustomBuilder
		.EndIf

		Invoke GetINI, Offset iniSection1, Offset iniKeyBuilder2, 0
		.If Eax == 1
			Invoke	WriteJmp, CustomBuilder2@, _CustomBuilder2
			Invoke	WriteJmp, CustomBuilder3@, _CustomBuilder3
		.EndIf

		Invoke GetINI, Offset iniSection1, Offset iniKeyDepositButton, 0
		.If Eax == 1
			Invoke	WriteJmp, DepositRes@, _DepositResource
			Invoke WritePatch, DepositRes2@, Offset DepositRes2, DepositRes2N
		.EndIf

		;Invoke WritePatch, NegaTech@, Offset NegaTech, NegaTechN

		Invoke GetINI, Offset iniSection1, Offset iniKeyHeroMode, 0
		.If Eax == 1
			Invoke	WriteJmp, HeroMode@, _HeroMode
			Invoke	WriteJmp, HeroMode2@, _HeroMode2
			Invoke WritePatch, HeroMode3@, Offset HeroMode3, HeroMode3N
			Invoke WritePatch, HeroMode4@, Offset HeroMode4, HeroMode4N
			Invoke WritePatch, HeroMode5@, Offset HeroMode5, HeroMode5N
			Invoke WritePatch, HeroMode6@, Offset HeroMode6, HeroMode6N
			Invoke WritePatch, HeroMode7@, Offset HeroMode7, HeroMode7N
			Invoke WritePatch, HeroMode8@, Offset HeroMode8, HeroMode8N
			Invoke WritePatch, HeroMode9@, Offset HeroMode9, HeroMode9N
			;Invoke WritePatch, HeroMode10@, Offset HeroMode10, HeroMode10N
		.EndIf

		Invoke GetINI, Offset iniSection1, Offset iniKeyAdvTrain, 0
		.If Eax == 1
			Invoke	WriteJmp, AdvTrainButton@, _AdvTrainButton
		.EndIf

		Invoke GetINI, Offset iniSection1, Offset iniKeyXAtks, 0
		.If Eax == 1
			Invoke WriteJmp, ExtendAttacks@, _ExtendAttacks
		.EndIf

		Invoke GetINI, Offset iniSection1, Offset iniKeyVillCntr, 0
		.If Eax == 1
			Invoke WriteJmp, VillCounterFix@, _VillCounterFix
		.EndIf

		Invoke GetINI, Offset iniSection1, Offset iniKeyXGarrison, 0
		.If Eax == 1
			Invoke WriteJmp, MoreGarrison@, _MoreGarrisonTypes
			Invoke WritePatch, MoreGarrison2@, Offset MoreGarrison2, MoreGarrison2N
			Invoke WritePatch, MoreGarrison3@, Offset MoreGarrison3, MoreGarrison3N
		.EndIf

		;Invoke WriteJmp, Repulse@, _Repulse

		Invoke	SetIcon, Offset iniIconHeal, _IconHeal, 1
		Invoke	SetIcon, Offset iniIconBuild, _IconBuild, 1
		Invoke	SetIcon, Offset iniIconGround, _IconGround, 1
		Invoke	SetIcon, Offset iniIconTrain, _IconTrain, 1
		Invoke	SetIcon, Offset iniIconUnload, _IconUnload, 1
		Invoke	SetIcon, Offset iniIconTeleport, _IconTeleport, 1
		Invoke	SetIcon, Offset iniIconDrop, _IconDrop, 1
		Invoke	SetIcon, Offset iniIconUnpack, _IconUnpack, 1
		Invoke	SetIcon, Offset iniIconPack, _IconPack, 1

		Invoke	SetIcon, Offset iniIconDepositRes, _IconDepositRes, 1

		

	.EndIf



;Post-write
	.If cInstall == 0
		Invoke GetModuleHandle, Offset szDllKernel
		Invoke GetProcAddress, Eax, Offset szLoadLibrary
		Mov hh,Eax
		Invoke CreateRemoteThread, stProcInfo.hProcess, NULL, 1000H, hh, hMemory, NULL, NULL
		Invoke ResumeThread, stProcInfo.hThread
		invoke CloseHandle,stProcInfo.hProcess
		Invoke CloseHandle, stProcInfo.hThread
	.Else
		Invoke CloseHandle, fHandle
		Invoke MessageBox, NULL, Offset szText4, Offset szCaption, MB_OK
	.EndIf

	Invoke ExitProcess, NULL

FailedToRun:
	Invoke MessageBox, NULL, Offset szText, Offset szCaption, MB_OK

Exit:
	Invoke ExitProcess, NULL

End Main

