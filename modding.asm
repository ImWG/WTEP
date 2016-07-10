;EasyCodeName=Modding,1
.Const

IFNDEF SecondPage2@
SecondPageA@	DD 00528326H
SecondPage2@	DD 0052830CH

ENDIF


.Data?

.Data
IFNDEF SecondPage2
SecondPageA		DB 00H
SecondPageAN	DD 1

SecondPage2		DB 66H, 90H
SecondPage2N	DD 2

ENDIF

.Code

__PatchModdingStart:
	DB 'WAIFor modding', 0

SecondPage:



__PatchModdingEnd:
