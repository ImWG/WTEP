;EasyCodeName=Main,1
.386
.Model flat, StdCall
Option CaseMap:none
Include	windows.inc
Include	user32.inc
Include	kernel32.inc
IncludeLib	user32.lib
IncludeLib	kernel32.lib

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
iniName			DB 256 Dup(?) ; ini File Name

Wax	DD ? ; Virtual Registers :P
Wbx	DD ?
Wcx	DD ?
Wdx	DD ?
Wsi DD ?

Wst	DB 256 Dup(?) ; String Buffer


.Data

szDllKernel     DB  'Kernel32.dll', 0
szLoadLibrary   DB  'LoadLibraryA', 0

szCaption       DB  'WTEP', 0
szText          DB  'Failed to launch game "%s".', 0
szText1			DB	"This is the first time running WAIFor's Patch, we'll change allocations for patches of ", '"%s"...', 0
szText2			DB	'"%s" is not an available UserPatch game!', 0
szText3			DB	'WTEP will install patches into EXE file "%s", are you sure to continue?', 0
szText4			DB	'Install completed.', 0

_Jmp			DB 0E9H
_Call			DB 0E8H

__PatchStart@	DD 00812000H ; = UPGameSize + PatchDelta
__OffsetStart	DD 00000000H





.Code

O Equ Offset


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
		; Eax = address

		Invoke SetFilePointer, fHandle, Eax, 0H, FILE_BEGIN
		Invoke WriteFile, fHandle, _lpBuffer, _nSize, Addr _nSize, NULL
	.EndIf

	ret
WritePatch EndP

WritePatchCode Proc Uses Esi, _lpBaseAddress, _lpBuffer, _nEnd
	Mov Eax, _nEnd
	Sub Eax, _lpBuffer

	.If cInstall == 0
		Invoke	WriteProcessMemory, stProcInfo.hProcess, _lpBaseAddress, _lpBuffer, Eax, 0
		test	eax,eax
		setnz	cl
		Movzx Eax, Cl

	.Else
		Mov Eax, _nEnd
		Sub Eax, _lpBuffer
		Mov Esi, Eax ; size

		Invoke getOffsetInFile, _lpBaseAddress
		; Eax = address

		Invoke SetFilePointer, fHandle, Eax, 0H, FILE_BEGIN
		Invoke WriteFile, fHandle, _lpBuffer, Esi, Addr _nEnd, NULL
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


WriteDirectAddressArray Proc Uses Esi, _jmpFrom
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


WriteDirectAddressReverse Proc _jmpFrom, _jmpTo ; From Original to Patch
	Mov Eax, _jmpFrom
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
		Sub Eax, BaseDelta
		Mov Wax, Eax
		Invoke SetFilePointer, fHandle, Wax, 0H, FILE_BEGIN
		Invoke WriteFile, fHandle, Offset Wbx, 4, Addr Wcx, NULL
	.EndIf

	Ret
WriteDirectAddressReverse EndP

WriteAddressReverse Proc _jmpFrom, _jmpTo, _offset ; From Original to Patch

	Mov Eax, _jmpTo
	Sub Eax, _jmpFrom
	Sub Eax, _offset

	Invoke WriteDirectAddressReverse, _jmpFrom, Eax

	Ret
WriteAddressReverse EndP




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

; Conditional Jumps
WriteAddress2 Proc _jmpFrom
	Mov Eax, _jmpFrom
	Sub Eax, __OffsetStart
	Add Eax, __PatchStart@
	Add Eax, 2
	.If cInstall != 0
		Sub Eax, PatchDelta
		Mov Wax, Eax ; source address
		Add Eax, PatchDelta
	.Else
		Mov Wax, Eax
	.EndIf
	Add Eax, 3
	Not Eax ; eax = -eax - 1
	Mov Ecx, _jmpFrom
	Add Eax, [Ecx + 2]
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
WriteAddress2 EndP


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


WriteAddresses2 Proc _jmpFroms
	Mov Eax, _jmpFroms
	Mov Wsi, Eax

	.Repeat
		Mov Eax, Wsi
		Mov Eax, [Eax] ; [Wsi] = Wsi !
		Invoke WriteAddress2, Eax
		Mov Eax, Wsi
		Add Eax, 4
		Mov Wsi, Eax
		Mov Eax, [Eax]
	.Until Eax == 0

	Ret
WriteAddresses2 EndP


_WriteJmp Proc _jmpFrom, _jmpTo, _Function
	.If cInstall == 0

		.If _Function != 0
			Invoke	WriteProcessMemory, stProcInfo.hProcess, _jmpFrom, _Function, 1, 0
		.EndIf

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

		.If _Function != 0
			Invoke SetFilePointer, fHandle, Wax, 0H, FILE_BEGIN
			Invoke WriteFile, fHandle, _Function, 1, Addr Wcx, NULL
		.EndIf
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

; Multi to One
WriteJmps Proc _jmpFroms, _jmpTo
	Mov Eax, _jmpFroms
	Mov Wsi, Eax

	.Repeat
		Mov Eax, Wsi
		Mov Eax, [Eax] ; [Wsi] = Wsi !
		Invoke WriteJmp, Eax, _jmpTo
		Mov Eax, Wsi
		Add Eax, 4
		Mov Wsi, Eax
		Mov Eax, [Eax]
	.Until Eax == 0
	Ret
WriteJmps EndP

WriteCall Proc _jmpFrom, _jmpTo
	Invoke _WriteJmp, _jmpFrom, _jmpTo, Offset _Call
	Ret
WriteCall EndP

; For Conditional Jumps
WriteJmp2 Proc _jmpFrom, _jmpTo
	Mov Eax, _jmpFrom
	Inc Eax
	Invoke _WriteJmp, Eax, _jmpTo, 0
	Ret
WriteJmp2 EndP

; Mode: 0-Base, 1-Patch
WriteNumber Proc _jmpFrom, _Length, _Offset, _Mode ; EAX = Number
	Mov Wbx, Eax
	Mov Eax, _jmpFrom
	.If _Mode == 0
		Add Eax, _Offset
		.If cInstall != 0
			Sub Eax, BaseDelta
		.EndIf
	.Else
		Sub Eax, __OffsetStart
		Add Eax, __PatchStart@
		Add Eax, _Offset
		.If cInstall != 0
			Sub Eax, PatchDelta
		.EndIf
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
		Invoke WriteNumber, _Target, 1, _Offset, 1
	.EndIf
	Ret
SetIcon EndP

SetLang Proc, _iniIcon, _Target, _Offset
	Invoke GetINI, Offset iniSection3, _iniIcon, -1
	.If Eax != -1
		Invoke WriteNumber, _Target, 2, _Offset, 1
	.EndIf
	Ret
SetLang EndP

SetResource Proc, _iniIcon, _Target, _Offset
	Invoke GetINI, Offset iniSection6, _iniIcon, -1
	.If Eax != -1
		Invoke WriteNumber, _Target, 2, _Offset, 1
	.EndIf
	Ret
SetResource EndP

SetCheatUnit Proc, _iniIcon, _Target, _Offset
	Invoke GetINI, Offset iniSection4, _iniIcon, -1
	.If Eax != -1
		Invoke WriteNumber, _Target, 2, _Offset, 1
	.EndIf
	Ret
SetCheatUnit EndP

WriteString Proc _jmpFrom, _StringAddr, _Length, _Offset
	Mov Eax, _StringAddr
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
		Invoke	WriteProcessMemory, stProcInfo.hProcess, Wax, Wbx, _Length, 0
		Test Eax, Eax
		setnz	cl
		Movzx Eax, Cl

	.Else
		;Mov Wbx, Eax
		Invoke SetFilePointer, fHandle, Wax, 0H, FILE_BEGIN
		Invoke WriteFile, fHandle, Wbx, _Length, Addr Wcx, NULL

	.EndIf

	ret
WriteString EndP

SetCheat Proc, _iniCheat, _Target
	Invoke GetINIString, Offset iniSection4, _iniCheat, Offset noCheat, Offset Wst
	Mov Esi, Offset Wst
	.If Byte Ptr Ds:[Esi] != 0
		Invoke WriteString, _Target, Esi, 31, 0
	.EndIf
	Ret
SetCheat EndP

SetGarrisionType Proc, _Class, _Type
	.If _Type != -1
		.If _Class <= 61
			Mov Esi, _Class
			Mov Eax, _Type
			Invoke WriteNumber, MoreGarrison2@, 1, Esi, 0
			.If _Type == 0
				Mov Eax, 1
			.Else
				Xor Eax, Eax
			.EndIf
			Invoke WriteNumber, MoreGarrison4@, 1, Esi, 0
		.EndIf
	.EndIf
	Ret
SetGarrisionType EndP


GetINIString Proc _iniSection, _iniKey, _defaultGame, _hGameName
	Invoke GetPrivateProfileString, _iniSection, _iniKey, _defaultGame, _hGameName, 0FFH, Offset iniName
	Ret
GetINIString EndP

GetINI Proc _iniSection, _iniKey, _defaultNumber
	Invoke GetPrivateProfileInt, _iniSection, _iniKey, _defaultNumber, Offset iniName
	Ret
GetINI EndP


InnerStrCopy Proc Uses Esi Edi, _Source, _Target, _MaxLength
	Local _Tail
	Mov Esi, _Source
	Mov Esi, _Source
	Mov Edi, _Target
	Mov Ecx, Esi
	Add Ecx, _MaxLength
	Mov _Tail, Ecx
.Repeat
	Mov Al, Byte Ptr Ds:[Esi]
	Mov Byte Ptr Ds:[Edi], Al
	Inc Esi
	Inc Edi
.Until Al == 0 || Esi >= _Tail

	Ret
InnerStrCopy EndP


GetSeparatedStrings Proc Uses Esi Ebx, _Source, _Target, _Index
	Mov Esi, _Source
	Mov Ebx, 0
	Mov Cl, 0 ; is last blank? 0-no, 1-yes, 2-qouted
.Repeat
	Mov Al, Byte Ptr Ds:[Esi]
	.If Al == 32 || Al == 9 ; if blank?
		.If Cl == 0
			Mov Cl, 1
			Inc Ebx
		.EndIf
	.ElseIf Al == '"' ; if qouted?
		.If Cl == 2
			Mov Cl, 1
		.Else
			Mov Cl, 2
		.EndIf
	.Else
		.If Cl == 1
			Mov Cl, 0
		.EndIf
		.If Ebx == _Index
			Mov Ebx, Esi
			.Repeat
				Mov Al, [Ebx]
				Inc Ebx
			.Until Al == 32 || Al == 9
			Sub Ebx, Esi
			Invoke InnerStrCopy, Esi, _Target, Ebx
			Mov Eax, 1
			Ret
		.EndIf
	.EndIf
	Inc Esi
.Until Al == 0
	Mov Eax, 0
	Ret
GetSeparatedStrings EndP



Main:

	; Load INI File Name
	Invoke GetCommandLine
	Mov Esi, Eax

	Invoke GetSeparatedStrings, Esi, Addr Wst, 1
	.If Eax == 1
		Mov Eax, Offset Wst
		Mov Wax, Eax
		Invoke wsprintf, Addr iniName, Addr iniFormat, Addr Wst
	.Else
		Invoke InnerStrCopy, Addr defaultINI, Addr iniName, 255
	.EndIf


	; Begin
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
	Invoke wsprintf, Addr Wst, Addr szText2, Addr cGameName
	Invoke MessageBox, NULL, Addr Wst, Addr szCaption, MB_OK
	Invoke ExitProcess, NULL

PatchIsAvailable:
	Invoke wsprintf, Addr Wst, Addr szText1, Addr cGameName
	Invoke MessageBox, NULL, Addr Wst, Addr szCaption, MB_OKCANCEL
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
		Invoke wsprintf, Addr Wst, Addr szText3, Addr cGameName
		Invoke MessageBox, NULL, Addr Wst, Addr szCaption, MB_YESNO
		Cmp Eax, IDYES
		Jne Exit

	.EndIf
	

;Write Patches

	; Effects Patch
	Invoke GetINI, Offset iniSection0, Offset iniKeyTriggers, 0

	.If Eax == 1
		Mov Eax, $__PatchEffectsStart
		Mov __OffsetStart, Eax

		; Triggers related
		Invoke	WritePatchCode, __PatchStart@, $__PatchEffectsStart, $__PatchEffectsEnd
		Invoke WriteAddresses, Addr PatchEffectsAddresses
		Invoke WriteAddresses2, Addr PatchEffectsAddresses2

		Invoke GetINI, Offset iniSection2, Offset iniKeyNewEffects, 0
		.If Eax == 1 || Eax == 2
			.If Eax == 1
				Invoke  WritePatch, ExpandNumberLength@, Offset ExpandNumberLength, ExpandNumberLengthN
			.Else
				Invoke  WriteJmp, ExpandNumberLengthB@, $ExpandNumberLengthB
			.EndIf
			Invoke	WriteJmp, EnableInputs@, $EnableInputs
			Invoke	WriteJmp, CustomColorInfo@, $CustomColorInfo
			Invoke	WriteJmp, CustomColorInfo2@, $CustomColorInfo2

			Invoke	WriteJmp, TaskObject@, $TaskObject
			Invoke	WriteJmp, KillObject@, $KillObject
			Invoke	WriteJmp, MoveSight@, $MoveSight
			Invoke	WriteJmp, Tribute@, $Tribute
			Invoke  WriteJmp, DamageUnit@, $DamageUnit
			Invoke  WriteJmp, DamageUnit2@, $DamageUnit2
			Invoke  WriteJmp, CreateUnit@, $CreateUnit
			Invoke  WriteJmp, ChangeDiplomacy@, $ChangeDiplomacy
			Invoke  WriteJmp, SendChat@, $SendChat
			Invoke  WriteJmp, RemoveUnit@, $RemoveUnit
			Invoke  WriteJmp, ChangeAttack@, $ChangeAttack
			Invoke  WriteDirectAddressReverse, AIScriptGoal@, $AIScriptGoal
			Invoke  WriteDirectAddressReverse, ChangeName@, $ChangeName

		.EndIf


		Invoke GetINI, Offset iniSection2, Offset iniKeyImprovedEd, 0
		.If Eax == 1
			Invoke	WritePatch, NonNumInQuantity@, Offset NonNumInQuantity, NonNumInQuantityN
			Invoke	WritePatch, GaiaForPlayer@, Offset GaiaForPlayer, GaiaForPlayerN
			Invoke	WritePatch, GaiaForPlayer2@, Offset GaiaForPlayer2, GaiaForPlayer2N
			Invoke	WritePatch, BuildingNameFix@, Offset BuildingNameFix, BuildingNameFixN
			Invoke	WritePatch, HouseRotate@, Offset HouseRotate, HouseRotateN

		.EndIf

		Invoke GetINI, Offset iniSection2, Offset iniKeyTaskProj, 0
		.If Eax == 1
			Invoke	WritePatch, EnableTaskProj@, Offset EnableTaskProj, EnableTaskProjN

		.EndIf

		Invoke GetINI, Offset iniSection2, Offset iniKeyIsoSiege, 0
		.If Eax == 1
			Invoke	WritePatch, IsoSiege@, Offset IsoSiege, IsoSiegeN
			Invoke	WritePatch, IsoSiege2@, Offset IsoSiege2, IsoSiege2N
			Invoke	WritePatch, IsoSiege3@, Offset IsoSiege3, IsoSiege3N

		.EndIf

		Invoke GetINIString, Offset iniSection2, Offset iniKeyDanielETP, Offset noCheat, Offset Wst
		Mov Esi, Offset Wst
		;.If Byte Ptr Ds:[Esi] != 0
		;	Invoke WritePatch, DanielETP@, Offset Wst, 256
		;.EndIf

		Invoke GetINI, Offset iniSection2, Offset iniKeyHotKeyFunc, 0
		.If Eax == 1
			Invoke  WriteDirectAddressReverse, HotKeySwitch@, $HotKeySwitch
			Invoke  WriteDirectAddressReverse, HotKeySwitch2@, $HotKeySwitch2
			Invoke  WriteJmp, CasualTerrainB@, $CasualTerrainB
			Invoke  WriteJmp, CasualTerrainB2@, $CasualTerrainB2
			Invoke  WriteJmp, CasualTerrainB3@, $CasualTerrainB3
			Invoke  WriteJmp, HiddenUnit@, $HiddenUnit
			Invoke  WriteJmp, HiddenUnit2@, $HiddenUnit2
			Invoke  WriteJmp, HiddenUnit3@, $HiddenUnit3
			Invoke  WriteJmp, InternalName@, $InternalName

		.Else
			Invoke GetINI, Offset iniSection2, Offset iniKeyCasualTerr, 0
			.If Eax == 1
				Invoke	WritePatch, CasualTerrain@, Offset CasualTerrain, CasualTerrainN
				Invoke	WritePatch, CasualTerrain2@, Offset CasualTerrain2, CasualTerrain2N
				Invoke	WritePatch, CasualTerrain3@, Offset CasualTerrain3, CasualTerrain3N

			.EndIf

		.EndIf

		;Invoke	WriteJmp, ShowInfo@, $ShowInfo

		Invoke WriteDirectAddresses, Offset PatchEffectsDirectAddresses
		Invoke WriteDirectAddressArrays, Offset PatchEffectsDirectAddressArrays

		Invoke IncreasePatchAddress, $__PatchEffectsStart, $__PatchEffectsEnd
	.EndIf


	; Modding Patch
	Invoke GetINI, Offset iniSection0, Offset iniKeyModding, 0

	.If Eax == 1
		Mov Eax, $__PatchModdingStart
		Mov __OffsetStart, Eax

		Invoke	WritePatchCode, __PatchStart@, $__PatchModdingStart, $__PatchModdingEnd
		Invoke WriteAddresses, Addr PatchModdingAddresses
		Invoke WriteAddresses2, Addr PatchModdingAddresses2


		;Invoke GetINI, Offset iniSection1, Offset iniKeyExplUnit, 0
		;.If Eax == 1
		;	Invoke	WriteJmp, ExplosionUnit1@, $ExplosionUnit1
		;.ElseIf Eax == 2
		;	Invoke	WriteJmp, ExplosionUnit2@, $ExplosionUnit2
		;.EndIf

		;Invoke GetINI, Offset iniSection1, Offset iniKeySelfDestruct, 0
		;.If Eax == 1
		;	Invoke	WriteJmp, SelfDestructUnit1@, $SelfDestructUnit1
		;.ElseIf Eax == 2
		;	Invoke	WriteJmp, SelfDestructUnit2@, $SelfDestructUnit2
		;.EndIf

		;Invoke GetINI, Offset iniSection1, Offset iniKeySelfHeal, 0
		;.If Eax == 1
		;	Invoke	WriteJmp, SelfHealUnit1@, $SelfHealUnit1
		;.ElseIf Eax == 2
		;	Invoke	WriteJmp, SelfHealUnit2@, $SelfHealUnit2
		;.EndIf

		Invoke GetINI, Offset iniSection1, Offset iniKey2ndPage, 0
		.If Eax == 1
			Invoke	WritePatch, SecondPageA@, Offset SecondPageA, SecondPageAN
			Invoke	WritePatch, SecondPage2@, Offset SecondPage2, SecondPage2N

			Mov Eax, 12
			Invoke WriteNumber, $NewButtons2_Position2, 1, 1, 1 ; Adjust positions of skill buttons
			Mov Eax, 13
			Invoke WriteNumber, $NewButtons2_Position, 1, 1, 1 ; Adjust positions of skill buttons
		.EndIf

		Invoke GetINI, Offset iniSection1, Offset iniKeyNewSkills, 0
		.If Eax == 1
			Invoke	WriteJmp, NewButtons@, $NewButtons
			Invoke	WriteJmp, NewButtons2@, $NewButtons2
			Invoke	WriteJmp, NewButtonsGr@, $NewButtonsGr
			Invoke	WriteJmp, FreeDrop@, $FreeDrop
			Invoke	WritePatch, FreeDrop2@, Offset FreeDrop2, FreeDrop2N

			Invoke	WritePatch, AllUnload@, Offset AllUnload, AllUnloadN
			Invoke	WriteJmp, FreeGather@, $FreeGather

			;Invoke	WritePatch, MarketInit@, Offset MarketInit, MarketInitN
			Invoke	WriteJmp, MarketInit@, $MarketInit

			; Enable all classes to pack
			Invoke  WritePatch, AllPack@, O AllPack, AllPackN
			Invoke  WritePatch, AllPack2@, O AllPack2, AllPack2N
			Invoke  WritePatch, AllPack3@, O AllPack3, AllPack3N
			Invoke  WritePatch, AllPack4@, O AllPack4, AllPack4N

			;Invoke	WriteJmp2, NewCommand@, $NewCommand

		.EndIf

		Invoke GetINI, Offset iniSection1, Offset iniKeyAllFnd, 0
		.If Eax == 1
			Invoke	WriteJmp, AllBuildFnd@, $AllBuildFnd
		.EndIf

		Invoke GetINI, Offset iniSection1, Offset iniKeyAllHeal, 0
		.If Eax == 1
			Invoke	WriteJmp, AllHeal@, $AllHeal
		.EndIf

		Invoke GetINI, Offset iniSection1, Offset iniKeyAttackGnd, 0
		.If Eax == 1
			Invoke	WriteJmp, AttackGround@, $AttackGround
			Invoke	WriteJmp, AttackGround2@, $AttackGround2
		.EndIf

		Invoke GetINI, Offset iniSection1, Offset iniKeyBuilder, 0
		.If Eax == 1
			Invoke	WriteJmp, CustomBuilder@, $CustomBuilder
		.EndIf

		Invoke GetINI, Offset iniSection1, Offset iniKeyBuilder2, 0
		.If Eax == 1
			Invoke	WriteJmp, CustomBuilder2@, $CustomBuilder2
			Invoke	WriteJmp, CustomBuilder3@, $CustomBuilder3
		.EndIf

		Invoke GetINI, Offset iniSection1, Offset iniKeyDepositButton, 0
		.If Eax == 1
			Invoke	WriteJmp, DepositRes@, $DepositResource
			Invoke WritePatch, DepositRes2@, Offset DepositRes2, DepositRes2N
		.EndIf

		;Invoke WritePatch, NegaTech@, Offset NegaTech, NegaTechN

		Invoke GetINI, Offset iniSection1, Offset iniKeyAdvTrain, 0
		.If Eax == 1
			Invoke	WriteJmp, AdvTrainButton@, $AdvTrainButton
		.EndIf

		Invoke GetINI, Offset iniSection1, Offset iniKeyXAtks, 0
		.If Eax == 1
			Invoke WriteJmp, ExtendAttacks@, $ExtendAttacks
		.EndIf

		Invoke GetINI, Offset iniSection1, Offset iniKeyVillCntr, 0
		.If Eax == 1
			Invoke WriteJmp, VillCounterFix@, $VillCounterFix
		.EndIf

		Invoke GetINI, Offset iniSection1, Offset iniKeyXGarrison, 0
		.If Eax == 1 || Eax == 2
			Invoke WriteJmp, MoreGarrisonB@, $MoreGarrisonTypes

			Invoke WritePatch, MoreGarrison3@, Offset MoreGarrison3, MoreGarrison3N
			Invoke WriteJmp, MoreGarrison4@, $MoreGarrison4

			; set Garrison Type 8
			Mov Edi, 1
			Mov Ebp, 0
			.Repeat
				Invoke wsprintf, Addr Wst, Addr iniNumberKeyF, Edi
				Invoke GetINI, O iniSection5, O Wst, -1
				Invoke SetGarrisionType, Eax, 8
				Inc Edi
				Add Ebp, 1
			.Until Edi > MAX_GARRISON_CLASS + 1 ; From 1

			; set Custom Garrison
			Mov Edi, 0
			Mov Ebp, 0
			.Repeat
				Invoke wsprintf, Addr Wst, Addr iniGarrClassF, Edi
				Invoke GetINI, O iniSection5, O Wst, -1
				Invoke SetGarrisionType, Edi, Eax
				Inc Edi
				Add Ebp, 1
			.Until Edi > MAX_GARRISON_CLASS ; From 0

		.EndIf

		;Invoke WriteJmp, Repulse@, $Repulse

		Invoke GetINI, Offset iniSection1, Offset iniKeyRelicMem, 0
		.If Eax == 1
			Invoke WriteJmps, Offset PickRelic@, $PickRelic
			Invoke WriteJmp, PickRelic2@, $PickRelic2
			Invoke WriteJmp, PickRelic3@, $PickRelic3
			Invoke WriteJmp, PickRelic4@, $PickRelic4
		.EndIf

		Invoke GetINI, Offset iniSection1, O iniKeyIFV, 0
		.If Eax == 1
			Invoke WriteJmp, IFV@, $IFV
			Invoke WriteJmp, IFV2@, $IFV2
		.EndIf

		Invoke GetINI, Offset iniSection1, Offset iniKeyRandomUnit, 0
		.If Eax == 1
			Invoke WriteJmp, RandomUnit@, $RandomUnit
		.EndIf

		Invoke GetINI, Offset iniSection1, Offset iniKeyTerrFndn, 0
		.If Eax == 1
			Invoke WritePatch, TerrFndnA@, O TerrFndnA, TerrFndnAN
		.ElseIf Eax == 2
			Invoke WriteJmp, TerrFndn@, $TerrFndn
		.ElseIf Eax == 3
			Invoke WriteJmp, TerrFndn@, $TerrFndn
			Invoke WritePatch, TerrFndnC@, O TerrFndnC, TerrFndnCN
		.ElseIf Eax == 4
			Invoke WriteJmp, TerrFndn@, $TerrFndn
			Invoke WritePatch, TerrFndnC@, O TerrFndnD, TerrFndnCN
		.EndIf

		Invoke GetINI, Offset iniSection1, Offset iniKeyVisInEd, 0
		.If Eax == 1
			Invoke WriteJmp, VisInEditor@, $VisInEditor
		.EndIf

		Invoke GetINI, Offset iniSection1, Offset iniKeyVillThird, 0
		.If Eax == 1
			Invoke WriteJmp, VillThirdPage1@, $VillThirdPage1
			Invoke WriteDirectAddressReverse, VillThirdPage2@, $VillThirdPage2
			Invoke WriteJmp, VillThirdPage3@, $VillThirdPage3
			Invoke WriteJmp, VillThirdPage4@, $VillThirdPage4
			Invoke WriteAddressReverse, VillThirdPage5@, $VillThirdPage5, 4
			Invoke WritePatch, VillThirdPage6@, O VillThirdPage6, VillThirdPage6N
			Invoke WritePatch, VillThirdPage7@, O VillThirdPage7, VillThirdPage7N
			Invoke WritePatch, VillThirdPage8@, O VillThirdPage8, VillThirdPage8N
			Invoke WritePatch, VillThirdPage9@, O VillThirdPage9, VillThirdPage9N
			Invoke WritePatch, VillThirdPage10@, O VillThirdPage10, VillThirdPage10N
		.EndIf

		Invoke GetINI, Offset iniSection1, Offset iniKeyTypeInEd, 0
		.If Eax == 1
			Invoke WriteJmp, TypeInEditor1@, $TypeInEditor1
			Invoke WriteJmp, TypeInEditor2@, $TypeInEditor2
			Invoke WriteJmp, TypeInEditor3@, $TypeInEditor3
			Invoke WriteJmp, TypeInEditor4@, $TypeInEditor4
			Invoke WriteJmp, TypeInEditor5@, $TypeInEditor5
			Invoke WriteJmp, TypeInEditor6@, $TypeInEditor6
			Invoke WriteJmp, TypeInEditor7@, $TypeInEditor7
			Invoke WriteJmp, TypeInEditor8@, $TypeInEditor8
			Invoke WriteJmp, TypeInEditor9@, $TypeInEditor9
		.EndIf

		Invoke GetINI, Offset iniSection1, Offset iniKeyNewHeal, 0
		.If Eax == 1
			Invoke WriteJmp, NewHealUnit@, $NewHealUnit
		.EndIf

		Invoke GetINI, Offset iniSection1, Offset iniKeyMonkHealGraph, 0
		.If Eax == 1
			Invoke WritePatch, MonkHealGraph@, O MonkHealGraph, MonkHealGraphN
			Invoke GetINI, Offset iniSection1, Offset iniKeyMonkHealGraphId, 125 ; Default is Monk
			Invoke WriteNumber, MonkHealGraphId@, 4, 0, 0
		.EndIf

		Invoke GetINI, Offset iniSection1, Offset iniKeyAIUnitLim, 0
		.If iniKeyAIUnitLim > 0
			Mov Esi, Eax
			Invoke WriteNumber, AIUnitLimit@, 2, 0, 0
			Mov Eax, Esi
			Invoke WriteNumber, AIUnitLimit2@, 2, 0, 0
			Mov Eax, Esi
			;Invoke WriteNumber, AIUnitLimit3@, 2, 0, 0
		.EndIf

		;Invoke WriteJmp, QSAttack@, $QSAttack


		Invoke	SetIcon, O iniIconHeal, $IconHeal, 1
		Invoke	SetIcon, O iniIconBuild, $IconBuild, 1
		Invoke	SetIcon, O iniIconGround, $IconGround, 1
		Invoke	SetIcon, O iniIconTrain, $IconTrain, 1
		Invoke	SetIcon, O iniIconUnload, $IconUnload, 1
		Invoke	SetIcon, O iniIconTeleport, $IconTeleport, 1
		Invoke	SetIcon, O iniIconDrop, $IconDrop, 1
		Invoke	SetIcon, O iniIconUnpack, $IconUnpack, 1
		Invoke	SetIcon, O iniIconPack, $IconPack, 1
		Invoke	SetIcon, O iniIconDepositRes, $IconDepositRes, 1
		Invoke	SetLang, O iniIconGetOut, $IconGetOut, 1
		Invoke	SetLang, O iniIconScout, $IconScout, 1

		Invoke	SetIcon, O iniIconHeal, $IconHeal2, 1
		Invoke	SetIcon, O iniIconGround, $IconGround2, 1
		Invoke	SetIcon, O iniIconUnload, $IconUnload2, 1
		Invoke	SetIcon, O iniIconPack, $IconPack2, 1

		Invoke	SetLang, O iniDscHeal, $DscHeal, 1
		Invoke	SetLang, O iniDscBuild, $DscBuild, 1
		Invoke	SetLang, O iniDscGround, $DscGround, 1
		Invoke	SetLang, O iniDscTrain, $DscTrain, 1
		Invoke	SetLang, O iniDscUnload, $DscUnload, 1
		Invoke	SetLang, O iniDscTeleport, $DscTeleport, 1
		Invoke	SetLang, O iniDscDrop, $DscDrop, 1
		Invoke	SetLang, O iniDscUnpack, $DscUnpack, 1
		Invoke	SetLang, O iniDscPack, $DscPack, 1
		Invoke	SetLang, O iniDscDepositRes, $DscDepositRes, 1
		Invoke	SetLang, O iniDscGetOut, $DscGetOut, 1
		Invoke	SetLang, O iniDscScout, $DscScout, 1

		Invoke	SetLang, O iniDscHeal, $DscHeal2, 1
		Invoke	SetLang, O iniDscGround, $DscGround2, 1
		Invoke	SetLang, O iniDscUnload, $DscUnload2, 1
		Invoke	SetLang, O iniDscPack, $DscPack2, 1

		Invoke	SetIcon, O iniPosDepositRes, $PosDepositRes, 1


		Invoke WriteDirectAddresses, Offset PatchModdingDirectAddresses
		Invoke WriteDirectAddressArrays, Offset PatchModdingDirectAddressArrays

		Invoke IncreasePatchAddress, $__PatchModdingStart, $__PatchModdingEnd
	.EndIf


	; Set Garrison Icon
	; An Independent Function
	Invoke GetINI, Offset iniSection3, Offset iniIconGarrison, -1
	.If Eax <= 80000000H
		Invoke WriteNumber, IconGarrison2@, 1, 0, 0
		Invoke WritePatch, IconGarrison@, O IconGarrison, IconGarrisonN
	.EndIf


	; Cheats Patch
	Invoke GetINI, Offset iniSection0, Offset iniKeyCheats, 0
	.If Eax == 1
		Mov Eax, $__PatchCheatsStart
		Mov __OffsetStart, Eax

		Invoke	WritePatchCode, __PatchStart@, $__PatchCheatsStart, $__PatchCheatsEnd
		Invoke WriteAddresses, Addr PatchCheatsAddresses
		Invoke WriteDirectAddresses, Offset PatchCheatsDirectAddresses
		Invoke WriteDirectAddressArrays, Offset PatchCheatsDirectAddressArrays

		Invoke WriteJmp, CheatCheck@, $CheatCheck
		Invoke WriteJmp, CheatEffect@, $CheatEffect

		; Spawn Cheats
		Invoke SetCheat, Offset iniCheatSpawn1, $Cheat_1
		Invoke SetCheatUnit, Offset iniCheatUnit1, $CheatEffect1_Unit, 1
		Invoke SetCheat, Offset iniCheatSpawn2, $Cheat_2
		Invoke SetCheatUnit, Offset iniCheatUnit2, $CheatEffect2_Unit, 1
		Invoke SetCheat, Offset iniCheatSpawn3, $Cheat_3
		Invoke SetCheatUnit, Offset iniCheatUnit3, $CheatEffect3_Unit, 1
		Invoke SetCheat, Offset iniCheatSpawn4, $Cheat_4
		Invoke SetCheatUnit, Offset iniCheatUnit4, $CheatEffect4_Unit, 1
		Invoke SetCheat, Offset iniCheatSpawn5, $Cheat_5
		Invoke SetCheatUnit, Offset iniCheatUnit5, $CheatEffect5_Unit, 1

		; Research Cheats
		Invoke SetCheat, Offset iniCheatTech1, $Cheat_6
		Invoke SetCheatUnit, Offset iniCheatRsrh1, $CheatEffect6_Unit, 1
		Invoke SetCheat, Offset iniCheatTech2, $Cheat_7
		Invoke SetCheatUnit, Offset iniCheatRsrh2, $CheatEffect7_Unit, 1
		Invoke SetCheat, Offset iniCheatTech3, $Cheat_8
		Invoke SetCheatUnit, Offset iniCheatRsrh3, $CheatEffect8_Unit, 1
		Invoke SetCheat, Offset iniCheatTech4, $Cheat_9
		Invoke SetCheatUnit, Offset iniCheatRsrh4, $CheatEffect9_Unit, 1
		Invoke SetCheat, Offset iniCheatTech5, $Cheat_10
		Invoke SetCheatUnit, Offset iniCheatRsrh5, $CheatEffect10_Unit, 1


		Invoke IncreasePatchAddress, $__PatchCheatsStart, $__PatchCheatsEnd
	.EndIf


	; Terrains Patch
	;Invoke GetINI, Offset iniSection0, Offset iniKeyTerrains, 0
	Xor Eax, Eax
	.If Eax == 1

		Mov Eax, $__PatchTerrainsStart
		Mov __OffsetStart, Eax

		Invoke	WritePatchCode, __PatchStart@, $__PatchTerrainsStart, $__PatchTerrainsEnd
		Invoke WriteAddresses, Addr PatchTerrainsAddresses
		Invoke WriteDirectAddresses, Offset PatchTerrainsDirectAddresses
		;Invoke WriteDirectAddressArrays, Offset PatchTerrainsDirectAddressArrays

		Invoke WriteJmp, MoreTerrains@, $MoreTerrains
		Invoke WriteJmp, MoreTerrains2@, $MoreTerrains2

		; Max Terrains Restriction
		Invoke GetINI, Offset iniSection7, O iniKeyMaxTerr, EXTRA_TERRAIN_COUNT
		Mov Ebp, Eax
		.If Ebp > EXTRA_TERRAIN_COUNT
			Mov Ebp, EXTRA_TERRAIN_COUNT
		.EndIf
		Add Ebp, OLD_TERRAIN_COUNT

		Mov Ecx, 1B4H
		Mul Ecx
		Add Eax, 467CH
		Mov Wsi, Eax ; = 467C + N * 1B4H
		Invoke WritePatch, TerrainsLoad@, O Wsi, 4

		Mov Wsi, Ebp ; = 2A + N
		Invoke WritePatch, TerrainsLoad2@, O Wsi, 4
		;Invoke WritePatch, TerrainsLoad3@, O Wsi, 1

		Invoke WritePatch, SkipBorders@, O SkipBorders, SkipBordersN

		; Set New Terrain Names: Empty is for Wiped Out
		Mov Edi, OLD_TERRAIN_COUNT
		Mov Ebx, 0
		.Repeat
			Invoke wsprintf, Addr Wst, Addr iniNumberKeyF, Edi
			Invoke GetINI, Offset iniSection7, Offset Wst, 0
			Invoke WriteNumber, $MoreTerrains_Table, 2, Ebx, 1
			Inc Edi
			Add Ebx, 2
		.Until Edi >= Ebp
		Mov Eax, 0
		Invoke WriteNumber, $MoreTerrains_Table, 2, Ebx, 1

		Invoke IncreasePatchAddress, $__PatchTerrainsStart, $__PatchTerrainsEnd
	.EndIf


	; Gizmo
	Invoke GetINI, Offset iniSection0, Offset iniKeyGizmo, 0
	.If Eax == 1

		Mov Eax, $__PatchGizmoStart
		Mov __OffsetStart, Eax

		Invoke	WritePatchCode, __PatchStart@, $__PatchGizmoStart, $__PatchGizmoEnd
		Invoke  WriteAddresses, Addr PatchGizmoAddresses
		Invoke  WriteJmp, Gizmo@, $Gizmo
		Invoke  WriteDirectAddresses, Addr PatchGizmoDirectAddresses

		Invoke  IncreasePatchAddress, $__PatchGizmoStart, $__PatchGizmoEnd
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
	Invoke wsprintf, Addr Wst, Addr szText, Addr cGameName
	Invoke MessageBox, NULL, Addr Wst, Addr szCaption, MB_OK

Exit:
	Invoke ExitProcess, NULL

End Main

