;EasyCodeName=Defines,1
.Const

.Data?

.Data

.Code

FakeJmp Macro _Address
	DB 0E9H
	DD _Address
EndM

FakeCall Macro _Address
	DB 0E8H
	DD _Address
EndM
