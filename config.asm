;EasyCodeName=config,1
.Const




.Data?


.Data

iniName			DB  '.\wtep.ini', 0
iniSection0		DB  'general', 0
iniSection1		DB  'modding', 0
defaultGame		DB	'age2_x1.exe', 0

iniKeyGame		DB  'game', 0
iniKeyInstall	DB  'install', 0
iniKeyTriggers	DB  'triggers', 0
iniKeyModding	DB  'modding', 0


cGameName		DB 256 Dup(0)
cInstall		DD 00000000H

.Code
