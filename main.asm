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

tempAddress		DD ?
tempAddress2	DD ?
tempAddress3	DD ?
tempAddress4	DD ?


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
		Mov tempAddress2, Eax ; address

		Invoke SetFilePointer, fHandle, tempAddress2, 0H, FILE_BEGIN
		Invoke WriteFile, fHandle, _lpBuffer, _nSize, Addr tempAddress3, NULL
	.EndIf

	ret
WritePatch EndP

WritePatchCode Proc _lpBaseAddress, _lpBuffer, _nEnd
	Mov Eax, _nEnd
	Sub Eax, _lpBuffer
	Mov tempAddress, Eax

	.If cInstall == 0
		Invoke	WriteProcessMemory, stProcInfo.hProcess, _lpBaseAddress, _lpBuffer, tempAddress, 0
		test	eax,eax
		setnz	cl
		Movzx Eax, Cl

	.Else
		Mov Eax, _nEnd
		Sub Eax, _lpBuffer
		Mov tempAddress, Eax ; size

		Invoke getOffsetInFile, _lpBaseAddress
		Mov tempAddress2, Eax ; address

		Invoke SetFilePointer, fHandle, tempAddress2, 0H, FILE_BEGIN
		Invoke WriteFile, fHandle, _lpBuffer, tempAddress, Addr tempAddress3, NULL
	.EndIf

	ret
WritePatchCode EndP


WriteAddress Proc _jmpFrom
	Mov Eax, _jmpFrom
	Sub Eax, __OffsetStart
	Add Eax, __PatchStart@
	Inc Eax
	.If cInstall != 0
		Sub Eax, PatchDelta
		Mov tempAddress, Eax ; source address
		Add Eax, PatchDelta
	.Else
		Mov tempAddress, Eax
	.EndIf
	Add Eax, 3
	Not Eax
	Mov Ecx, _jmpFrom
	Add Eax, [Ecx + 1]
	Mov tempAddress2, Eax ; target address

	.If cInstall == 0
		Invoke	WriteProcessMemory, stProcInfo.hProcess, tempAddress, Offset tempAddress2, 4, 0
		test	eax,eax
		setnz	cl
		Movzx Eax, Cl

	.Else
		Mov tempAddress2, Eax
		Invoke SetFilePointer, fHandle, tempAddress, 0H, FILE_BEGIN
		Invoke WriteFile, fHandle, Offset tempAddress2, 4, Addr tempAddress3, NULL

	.EndIf

	ret
WriteAddress EndP


WriteJmp Proc _jmpFrom, _jmpTo
	.If cInstall == 0

		Invoke	WriteProcessMemory, stProcInfo.hProcess, _jmpFrom, Offset _Jmp, 1, 0

		Mov Eax, _jmpFrom
		Inc Eax
		Mov tempAddress, Eax

		Mov Eax, _jmpTo
		Sub Eax, __OffsetStart
		Add Eax, __PatchStart@
		Sub Eax, _jmpFrom
		Sub Eax, 5
		Mov tempAddress2, Eax

		Invoke	WriteProcessMemory, stProcInfo.hProcess, tempAddress, Offset tempAddress2, 4, 0

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
		Mov tempAddress, Eax ; source

		Mov Eax, _jmpTo
		Sub Eax, __OffsetStart
		Add Eax, __PatchStart@
		Sub Eax, _jmpFrom
		Sub Eax, 5
		Mov tempAddress2, Eax ; dest

		Invoke SetFilePointer, fHandle, tempAddress, 0H, FILE_BEGIN
		Invoke WriteFile, fHandle, Offset _Jmp, 1, Addr tempAddress3, NULL
		Mov Eax, tempAddress
		Inc Eax
		Mov tempAddress, Eax
		;Invoke SetFilePointer, fHandle, 1H, 0H, FILE_CURRENT
		Invoke SetFilePointer, fHandle, tempAddress, 0H, FILE_BEGIN
		Invoke WriteFile, fHandle, Offset tempAddress2, 4, Addr tempAddress3, NULL

	.EndIf

	ret
WriteJmp EndP


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
	;Invoke ReadFile, fHandle, Addr fBuffer, 20, Addr tempAddress, NULL

	; Check size of allocations
	Invoke SetFilePointer, fHandle, PatchVSize@, 0H, FILE_BEGIN
	Invoke ReadFile, fHandle, Offset tempAddress, SizeSize, Addr tempAddress2, NULL
	Mov Eax, tempAddress

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
	Mov tempAddress, Eax
	Invoke SetFilePointer, fHandle, tempAddress, 0H, FILE_BEGIN
	Invoke SetEndOfFile, fHandle

	; Change size of allocations of patches
	Invoke SetFilePointer, fHandle, TotalVSize@, 0H, FILE_BEGIN
	Invoke WriteFile, fHandle, Offset MyTotalVSize, SizeSize, Addr tempAddress, NULL
	Invoke SetFilePointer, fHandle, PatchVSize@, 0H, FILE_BEGIN
	Invoke WriteFile, fHandle, Offset MyPatchSize, SizeSize, Addr tempAddress, NULL
	Invoke SetFilePointer, fHandle, PatchRSize@, 0H, FILE_BEGIN
	Invoke WriteFile, fHandle, Offset MyPatchSize, SizeSize, Addr tempAddress, NULL

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

		Invoke	WriteAddress, _CustomColorInfo_White
		Invoke	WriteAddress, _CustomColorInfo_Normal
		Invoke	WriteJmp, CustomColorInfo@, _CustomColorInfo

		Invoke	WriteJmp, EnableInputs@, _EnableInputs
		Invoke	WriteAddress, _EnableInputs_Back

		Invoke	WriteJmp, TaskObject@, _TaskObject
		Invoke	WriteAddress, _TaskObject_Other
		Invoke	WriteAddress, _TaskObject_End
		Invoke	WriteAddress, _TaskObject_Transform_
		Invoke	WritePatch, EnableTaskProj@, Offset EnableTaskProj, EnableTaskProjN

		Invoke	WriteJmp, KillObject@, _KillObject
		Invoke	WriteAddress, _KillObject_Other
		Invoke	WriteAddress, _KillObject_End

		Invoke	WriteJmp, MoveSight@, _MoveSight
		Invoke	WriteAddress, _MoveSight_End
		Invoke	WriteAddress, _MoveSight_Jle

		Invoke	WriteJmp, Tribute@, _Tribute
		Invoke	WriteAddress, _Tribute_Other
		Invoke	WriteAddress, _Tribute_End

		Invoke	WritePatch, MoreTributeRes@, Offset MoreTributeRes, MoreTributeResN
		Invoke	WriteJmp, MoreResources@, _MoreResources
		Invoke	WriteAddress, _MoreResources_1
		Invoke	WriteAddress, _MoreResources_2
		Invoke	WriteAddress, _MoreResources_3
		Invoke	WriteAddress, _MoreResources_4
		Invoke	WriteAddress, _MoreResources_5
		Invoke	WriteAddress, _MoreResources_Back

		Invoke	WritePatch, NonNumInQuantity@, Offset NonNumInQuantity, NonNumInQuantityN

	.EndIf

	; Modding Patch
	Invoke GetINI, Offset iniSection0, Offset iniKeyModding, 0

	.If Eax == 1
		Mov Eax, _PatchModdingStart
		Mov __OffsetStart, Eax

		Invoke IncreasePatchAddress, _PatchEffectsStart, _PatchEffectsEnd
		Invoke	WritePatchCode, __PatchStart@, _PatchModdingStart, _PatchModdingEnd

		Invoke	WritePatch, SecondPageA@, Offset SecondPageA, SecondPageAN
		Invoke	WritePatch, SecondPage2@, Offset SecondPage2, SecondPage2N

		Invoke	WriteJmp, NewButtons@, _NewButtons
		Invoke	WriteAddress, _NewButtons_1
		Invoke	WriteAddress, _NewButtons_Back

		Invoke	WritePatch, AllBuildFnd@, Offset AllBuildFnd, AllBuildFndN
		Invoke	WriteJmp, AllHeal@, _AllHeal
		Invoke	WriteAddress, _AllHeal_Monk
		Invoke	WriteAddress, _AllHeal_1
		Invoke	WriteAddress, _AllHeal_2
		Invoke	WriteAddress, _AllHeal_3

		Invoke	WriteJmp, FreeDrop@, _FreeDrop
		Invoke	WriteAddress, _FreeDrop_1
		Invoke	WriteAddress, _FreeDrop_Back
		Invoke	WriteAddress, _FreeDrop_Other
		Invoke	WritePatch, FreeDrop2@, Offset FreeDrop2, FreeDrop2N

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
