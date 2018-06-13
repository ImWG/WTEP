;EasyCodeName=Modding,1
Include	defines.asm

.Const

MAX_GARRISON_CLASS Equ 59

SecondPageA@	DD 00528326H
SecondPage2@	DD 0052830CH
NewButtons@  	DD 00525A04H
NewButtons2@  	DD 00528351H
NewButtonsGr@  	DD 00525C7CH ;00525CE0H
AllBuildFnd@	DD 005571B5H
AllHeal@		DD 00434AC6H
FreeDrop@		DD 004692AAH
FreeDrop2@		DD 00469138H

ExplosionUnit1@	DD 004C1695H
ExplosionUnit2@	DD 004C167CH
SelfDestructUnit1@ DD 004C2CE6H
SelfDestructUnit2@ DD 004C2CD0H
SelfHealUnit1@	DD 004C179BH
SelfHealUnit2@	DD 004C1791H

AttackGround@	DD 00467932H
AttackGround2@	DD 00526120H

CustomBuilder@	DD 00525E1CH
CustomBuilder2@	DD 00527569H
CustomBuilder3@	DD 00527789H

AllUnload@		DD 00468A16H

NegaTech@		DD 0058D002H

CornerIcon1@	DD 00520369H
CornerIcon2@	DD 0052037AH
CornerIcon3@	DD 00520384H

DepositRes@		DD 00525DACH
DepositRes2@	DD 004BBF3BH

HeroMode@		DD 0046D940H
HeroMode2@		DD 004B7A79H
HeroMode3@		DD 004B7C42H
HeroMode4@		DD 0046F71DH
HeroMode5@		DD 0047A3A0H
HeroMode6@		DD 004C16C8H
HeroMode7@		DD 004E0AD0H
HeroMode8@ 		DD 004E0DBEH
HeroMode9@		DD 004E0DB8H
HeroMode10@		DD 0058FCAFH

AdvTrainButton@	DD 00527E38H

FreeGather@		DD 00468DABH

;MarketInit@		DD 00521FBDH
MarketInit@		DD 00521FBFH

ExtendAttacks@	DD 005CE7E8H

VillCounterFix@ DD 005CF005H
MoreGarrison@	DD 00434321H
MoreGarrisonB@	DD 0043430EH ; with overriding
MoreGarrison2@	DD 00434EB4H
MoreGarrison3@	DD 004342AAH
MoreGarrison4@	DD 00526A84H

Repulse@		DD 005CE7DCH
PickRelic@ 		DD 004B080AH, 004B0824H, 004B083EH, 004B0858H, 004B0872H, 004B088CH
				DD 004B08A6H, 004B08C0H, 004B08DAH, 004B08F4H, 0H
PickRelic2@		DD 00469416H
PickRelic3@		DD 004B18F8H
PickRelic4@		DD 004B0908H

IFV@			DD 004C5D24H
IFV2@			DD 004D27F5H

RandomUnit@ 	DD 004B12ABH
TerrFndn@		DD 004CC2EBH
TerrFndnA@		DD 004CC2F1H
TerrFndnC@		DD 004CC2DCH

VisInEditor@	DD 0058628CH

VillThirdPage1@ DD 005240CAH
VillThirdPage2@ DD 0052945CH
VillThirdPage3@ DD 00523557H
VillThirdPage4@ DD 0051D952H
VillThirdPage5@	DD 0051D904H
VillThirdPage6@ DD 0051F8AAH
VillThirdPage7@ DD 0051F8B0H
VillThirdPage8@ DD 005240C2H
VillThirdPage9@ DD 005277FCH
VillThirdPage10@ DD 005275D6H

TypeInEditor1@ DD 004E0ACBH
TypeInEditor2@ DD 004E0DAFH
TypeInEditor3@ DD 004E0B5CH
TypeInEditor4@ DD 004E0F64H
TypeInEditor5@ DD 004E0C12H
TypeInEditor6@ DD 004E1096H
TypeInEditor7@ DD 004E0C55H
TypeInEditor8@ DD 004E11DEH
TypeInEditor9@ DD 004E5047H

NewHealUnit@    DD 004C16C2H

IconGarrison@   DD 00525D10H
IconGarrison2@  DD 00525D26H

MonkHealGraph@  DD 004B4ED0H
MonkHealGraphId@ DD 004B4EDFH

AllPack@	DD 00527138H
AllPack2@	DD 005571DEH
AllPack3@	DD 005571E6H
AllPack4@	DD 00527125H

AIUnitLimit@ DD 0048EA11H
AIUnitLimit2@ DD 00557DD1H
AIUnitLimit3@ DD 00557EE1H

;NewCommand@ DD 0051E612H
QSAttack@ DD 005CE7B2H


; Interfaces
$__PatchModdingStart DD O __PatchModdingStart
$__PatchModdingEnd   DD O __PatchModdingEnd
$SecondPage        DD O SecondPage
$NewButtons        DD O NewButtons
$NewButtons2       DD O NewButtons2
$NewButtonsGr      DD O NewButtonsGr
$AllHeal		   DD O AllHeal
$FreeDrop          DD O FreeDrop
$ExplosionUnit1    DD O ExplosionUnit1
$ExplosionUnit2    DD O ExplosionUnit2
$SelfDestructUnit1 DD O SelfDestructUnit1
$SelfDestructUnit2 DD O SelfDestructUnit2
$SelfHealUnit1     DD O SelfHealUnit1
$SelfHealUnit2     DD O SelfHealUnit2
$AttackGround      DD O AttackGround
$AttackGround2     DD O AttackGround2
$CustomBuilder     DD O CustomBuilder
$CustomBuilder2    DD O CustomBuilder2
$CustomBuilder3    DD O CustomBuilder3
$DepositResource   DD O DepositResource
$HeroMode          DD O HeroMode
$HeroMode2         DD O HeroMode2
$AdvTrainButton    DD O AdvancedTrainButton
$FreeGather        DD O FreeGatherPoint
$MarketInit        DD O MarketInit
$ExtendAttacks     DD O ExtendAttacks
$VillCounterFix    DD O VillagerCounterFix
;$Repulse           DD O Repulse
$PickRelic         DD O PickRelic
$PickRelic2        DD O PickRelic2
$PickRelic3        DD O PickRelic3
$PickRelic4        DD O PickRelic4
$IFV               DD O IFV
$IFV2              DD O IFV2
$RandomUnit        DD O RandomUnit
$TerrFndn          DD O TerrFndn
$VisInEditor       DD O VisInEditor
$MoreGarrisonTypes DD O MoreGarrisonTypes
$MoreGarrisonTypesB DD O MoreGarrisonTypesB
$VillThirdPage1    DD O VillThirdPage1
$VillThirdPage2    DD O VillThirdPage2
$VillThirdPage3    DD O VillThirdPage3
$VillThirdPage4    DD O VillThirdPage4
$VillThirdPage5    DD O VillThirdPage5
$TypeInEditor1	   DD O TypeInEditor1
$TypeInEditor2	   DD O TypeInEditor2
$TypeInEditor3	   DD O TypeInEditor3
$TypeInEditor4	   DD O TypeInEditor4
$TypeInEditor5	   DD O TypeInEditor5
$TypeInEditor6	   DD O TypeInEditor6
$TypeInEditor7	   DD O TypeInEditor7
$TypeInEditor8	   DD O TypeInEditor8
$TypeInEditor9	   DD O TypeInEditor9
$NewHealUnit       DD O NewHealUnit
$AllBuildFnd       DD O AllBuildFnd
;$NewCommand        DD O NewCommand
$QSAttack		   DD O QSAttack

; Icons
$IconHeal          DD O IconHeal
$IconDepositRes    DD O IconDepositResource
$IconBuild         DD O IconBuild
$IconGround        DD O IconGround
$IconTrain         DD O IconTrain
$IconUnload        DD O IconUnload
$IconTeleport      DD O IconTeleport
$IconDrop          DD O IconDrop
$IconUnpack        DD O IconUnpack
$IconPack          DD O IconPack
$IconGetOut        DD O IconGetOut
$IconScout         DD O IconScout
$IconGround2       DD O IconGround2
$IconPack2         DD O IconPack2
$IconHeal2         DD O IconHeal2
$IconUnload2       DD O IconUnload2
; Descripions
$DscHeal           DD O DscHeal
$DscDepositRes     DD O DscDepositRes
$DscBuild          DD O DscBuild
$DscGround         DD O DscGround
$DscTrain          DD O DscTrain
$DscUnload         DD O DscUnload
$DscTeleport       DD O DscTeleport
$DscDrop           DD O DscDrop
$DscUnpack         DD O DscUnpack
$DscPack           DD O DscPack
$DscGetOut         DD O DscGetOut
$DscScout          DD O DscScout
$DscGround2        DD O DscGround2
$DscPack2          DD O DscPack2
$DscHeal2          DD O DscHeal2
$DscUnload2        DD O DscUnload2

; Position
$PosDepositRes     DD O PosDepositRes

$NewButtons2_Position DD O NewButtons2_Position
$NewButtons2_Position2 DD O NewButtons2_Position2


; Addresses for jmp or call
PatchModdingAddresses DD O NewButtons_0, O NewButtons_1, O NewButtons_2, O NewButtons_3, O NewButtons_4
		DD O NewButtons_5, O NewButtons_6, O NewButtons_7, O NewButtons_8
		DD O NewButtons_Back, O NewButtons_Back2, O NewButtons_9, O NewButtons_10, O NewButtons_11
		DD O NewButtons_12, O NewButtons_13, O NewButtons_14, O NewButtons_15, O NewButtons_16, O NewButtonsB_Create
		DD O NewButtons2_Back
		DD O NewButtons2_Market_1, O NewButtons2_Market_2, O NewButtons2_Market_3
		DD O NewButtons2_Market_4, O NewButtons2_Market_5, O NewButtons2_Market_6
		DD O NewButtonsGr_0, O NewButtonsGr_1, O NewButtonsGr_2
		DD O AllHeal_Monk, O AllHeal_1, O AllHeal_2, O AllHeal_3
		DD O FreeDrop_1, O FreeDrop_2, O FreeDrop_Back, O FreeDrop_Other
		DD O ExplosionUnit_1
		DD O SelfDestructUnit_1
		DD O SelfHealUnit_1
		DD O AttackGround_1, O AttackGround_2, O AttackGround2_1
		DD O CustomBuilder_1, O CustomBuilder2_1, O CustomBuilder3_1
		DD O DepositResource_1, O DepositResource_2
		DD O HeroMode_0, O HeroMode_1, O HeroMode_2, O HeroMode_3
		DD O HeroMode2_0, O HeroMode2_1
		DD O AdvancedTrainButton_1, O AdvancedTrainButton_2
		DD O FreeGatherPoint_0, O FreeGatherPoint_1, O FreeGatherPoint_2
		DD O FreeGatherPoint_3, O FreeGatherPoint_4, O FreeGatherPoint_5
		DD O MarketInit_1, O MarketInit_2
		DD O ExtendAttacks_1
		DD O VillagerCounterFix_1
		DD O MoreGarrisonTypes_0, O MoreGarrisonTypes_1, O MoreGarrisonTypes_2
		;DD O Repulse_2
		DD O PickRelic_1, O PickRelic2_1, O PickRelic3_1
		DD O IFV_1, O IFV2_1
		DD O RandomUnit_Other, O RandomUnit_1
		DD O TerrFndn_1
		DD O VisInEditor_1, O VisInEditor_2

		DD O VillThirdPage_1, O VillThirdPage_2, O VillThirdPage_3, O VillThirdPage_4, O VillThirdPage_5, O VillThirdPage_6
		DD O VillThirdPage_7, O VillThirdPage_8, O VillThirdPage_9, O VillThirdPage_10, O VillThirdPage_11, O VillThirdPage_12
		DD O VillThirdPage_13, O VillThirdPage_14, O VillThirdPage_15, O VillThirdPage_16

		DD O TypeInEditor1_1, O TypeInEditor1_2, O TypeInEditor1_3
		DD O TypeInEditor2_1, O TypeInEditor2_2, O TypeInEditor2_3
		DD O TypeInEditor3_1, O TypeInEditor3_2, O TypeInEditor3_3
		DD O TypeInEditor4_1, O TypeInEditor4_2, O TypeInEditor4_3
		DD O TypeInEditor5_1, O TypeInEditor5_2, O TypeInEditor5_3
		DD O TypeInEditor6_1, O TypeInEditor6_2, O TypeInEditor6_3
		DD O TypeInEditor7_1, O TypeInEditor7_2, O TypeInEditor7_3
		DD O TypeInEditor8_1, O TypeInEditor8_2, O TypeInEditor8_3
		DD O TypeInEditor9_1

		DD O NewHealUnit_1, O NewHealUnit_2
		DD O AllBuildFnd_1

		DD O QSAttack_1, O QSAttack_2

		;DD O NewCommand_1

		DD 0H

PatchModdingAddresses2 DD O ExplosionUnit_01, O AllBuildFnd_01
		DD O SelfDestructUnit_01, O SelfHealUnit_01
		DD O VillagerCounterFix_01, O VillagerCounterFix_02
		DD O AttackGround_01
		DD O RandomUnit_01
		;DD O NewCommand_01
		DD 0H

PatchModdingDirectAddresses DD NewButtons_Table_, O NewButtons_Table, 3
		DD NewButtons_Table2_, O NewButtons_Table2, 3
		DD TypeInEditor9_Table_, O TypeInEditor9_Table, 3
 		DD 0H

PatchModdingDirectAddressArrays DD O NewButtons_Table
		DD O NewButtons_Table2
		DD 0H

.Data?

.Data

SecondPageA		DB 00H
SecondPageAN	DD 1
SecondPage2		DB 66H, 90H
SecondPage2N	DD 2
FreeDrop2		DD 00000000H
FreeDrop2N		DD 4
AllUnload		DB 14H, 0FH, 84H
AllUnloadN		DD 3
NegaTech		DD 00FH, 0BEH, 0C0H, 066H, 090H
NegaTechN		DD 5

CornerIcon1		DB 0FH
CornerIcon1N	DD 1
CornerIcon2		DB 1EH
CornerIcon2N	DD 1
CornerIcon3		DB 10H
CornerIcon3N	DD 1

DepositRes2		DB 10H
DepositRes2N	DD 1

HeroMode3		DB 3CH, 01H, 75H ; Self-healing
HeroMode3N		DD 3
HeroMode4		DB 3CH, 01H, 75H
HeroMode4N		DD 3
HeroMode5		DB 80H, 0B8H, 0B5H, 001H, 000H, 000H, 001H, 090H
HeroMode5N		DD 8
HeroMode6		DB 3CH, 01H, 0FH, 85H
HeroMode6N		DD 4
HeroMode7		DB 80H, 0BAH, 0B5H, 001H, 000H, 000H, 001H, 090H, 074H
HeroMode7N		DD 9
HeroMode8		DB 3CH, 01H, 0FH, 84H
HeroMode8N		DD 4
HeroMode9		DB 80H, 0B9H, 0B5H, 001H, 000H, 000H, 001H, 090H, 00FH, 084H
HeroMode9N		DD 10
HeroMode10		DB 80H, 0B8H, 0B5H, 001H, 000H, 000H, 001H, 090H, 075H
HeroMode10N		DD 9

MoreGarrison2	DB 00H, 04H, 07H, 04H, 01H, 04H, 00H, 04H, 04H, 05H
				DB 05H, 04H, 02H, 06H, 04H, 04H, 04H, 04H, 03H, 01H
				DB 07H, 07H, 07H, 02H, 04H, 04H, 04H, 04H, 04H, 05H
				DB 04H, 04H, 04H, 04H, 04H, 00H, 02H, 04H, 04H, 04H
				DB 04H, 04H, 04H, 03H, 00H, 00H, 00H, 02H, 04H, 04H
				DB 00H, 06H, 04H, 07H, 06H, 06H, 00H, 02H, 05H, 01H
MoreGarrison2N	DD 60
MoreGarrison3	DB 8CH ; Allowing Type 80 to garrison into Type 80
MoreGarrison3N	DD 1
MoreGarrison4	DB 00H, 01H, 00H, 01H, 00H, 01H, 00H, 01H, 01H, 00H ; Button Activated
				DB 00H, 01H, 00H, 00H, 01H, 01H, 01H, 01H, 00H, 00H
				DB 00H, 00H, 00H, 00H, 01H, 01H, 01H, 01H, 01H, 00H
				DB 01H, 01H, 01H, 01H, 01H, 00H, 00H, 01H, 01H, 01H
				DB 01H, 01H, 01H, 00H, 00H, 00H, 00H, 00H, 01H, 01H
				DB 00H, 00H, 01H, 00H, 00H, 00H, 00H, 00H, 00H, 00H
MoreGarrison4N	DD 60

;MarketInit      DB 04H, 50H
;MarketInitN		DD 2

TerrFndnA		DB 21H
TerrFndnAN		DD 1H
TerrFndnC		DB 0BH
TerrFndnCN		DD 1H
TerrFndnD		DB 7FH

VillThirdPage6 	DB 02H, 7CH, 0FH
VillThirdPage6N DD 3
VillThirdPage7 	DB 7FH
VillThirdPage7N DD 1
VillThirdPage8 	DB 02H
VillThirdPage8N DD 1
VillThirdPage9 	DB 10H
VillThirdPage9N DD 1
VillThirdPage10 DB 0FH
VillThirdPage10N DD 1

IconGarrison	DB 20H, 10H
IconGarrisonN	DD 2

MonkHealGraph   DB 66H, 83H, 7AH, 10H, 7DH, 90H, 75H, 16H, 8BH, 51H, 0CH, 8BH, 52H, 74H, 0B8H, 00H
				DB 00H, 00H, 00H, 8BH, 14H, 82H, 8BH, 52H, 18H, 8BH, 01H, 90H
MonkHealGraphN  DD 1CH


AllPack			DB 6AH, 02H, 6AH, 0FFH
AllPackN		DD 4
AllPack2		DB 7AH, 1AH
AllPack2N		DD 2
AllPack3		DB 7AH, 12H
AllPack3N		DD 2
AllPack4		DB 8BH, 0DH, 0A0H, 12H, 79H, 00H
AllPack4N		DD 6




.Code

;SimpleButtonArgs 14, 1EH, 74H, 0A065H ; Building Page
;SimpleButtonArgs 14, 0FH, 1CH, 133CH ; Heal
;SimpleButtonArgs 1020H, 14, 20H, 0AAH, 1336H ; Second Page
;SimpleButtonArgs 1020H, 14, 2dH, 33H, 1350H ; Gather Point
;_SimpleButtonArgs 1028H, 14, 0DH, 12H, 4, 1418, 0, 0, 0, 18DB40H, 18D940H, 0 ; Train
;SimpleButtonArgs 1020H, 0, 2fH, 9dH, 0a090H ; OpenGate
;SimpleButtonArgs 1020H, 0, 30H, 9eH, 0a091H ; LockGate

_SimpleButtonArgs Macro _Type, _Position, _Icon, _Function, _Id, _Descrption, _Arg7, _HotKey, _Arg9, _Arg10, _Arg11, _Arg12, _IconOffset, _PositionOffset, _DescrptionOffset
	Mov Eax, DWord Ptr [Esi + _Type]
	Mov Ecx, Esi
	Push _Arg12
	Push _Arg11
	Push _Arg10
	Push _Arg9
	Push _HotKey
	Push _Arg7
IFNDEF _DescrptionOffset
_DescrptionOffset:
ENDIF
	Push _Descrption
	Push _Id
	Push _Function
IFNDEF _IconOffset
_IconOffset:
ENDIF
	Push _Icon
IFNDEF _PositionOffset
_PositionOffset:
ENDIF
	Push _Position
	Push Eax
EndM

SimpleButtonArgs Macro _Type, _Position, _Icon, _Function, _Descrption, _IconOffset, _PositionOffset, _DescrptionOffset
	_SimpleButtonArgs _Type, _Position, _Icon, _Function, 0, _Descrption, -1, 0, 0, 0, 0, 0, _IconOffset, _PositionOffset, _DescrptionOffset
EndM

SimpleButtonArgsBuild Macro _Type, _Function, _Position, _HotKey, _Arg10, _Arg11
	; EBX = Player Addr
	; EDX = Unit ID
	Mov Ecx, Esi

	Push 0
	Push _Arg11 ; Lea, [ESP+68]
	Push _Arg10 ; Lea, [ESP+26c]
	Push 0
	Push _HotKey
	Push 0

	Mov Ebx, DWord Ptr Ds:[Ebx + Edx * 4]
	Movsx Eax, Word Ptr Ds:[Ebx + 0EH]
	Add Eax, 20000
	Push Eax ; language help
	Push Edx
	Push _Function
	Movsx Eax, Word Ptr Ds:[Ebx + 54H]
	Push Eax
	Push _Position

	Mov Eax, DWord Ptr [Esi + _Type]
	Push Eax
EndM


Align 4
__PatchModdingStart:



; Allowing all classes of units to build foundations
AllBuildFnd:
	Cmp Word Ptr Ss:[Esp + 28H], 4
AllBuildFnd_01:
	FakeJe 005571C1H
	Mov Dl, Cl
	Cmp Word Ptr Ds:[Eax + 16H], Dx
AllBuildFnd_1:
	FakeJmp 005571BBH


; Make units with 4th bit of unit attributes checked explode when die.
ExplosionUnit1: ; 004C1695H - Remain offical petards and explosion boats
	Cmp Ax, 1B8H
	Je ExplosionUnit_1

ExplosionUnit2: ; 004C167CH - Not remain
	Mov Eax, DWord Ptr Ds:[Esi + 8H]
	Mov Al, Byte Ptr Ds:[Eax + 0A4H]
	Test Al, 08H
ExplosionUnit_01:
	FakeJe 004C16B6H
ExplosionUnit_1:
	FakeJmp 004C169BH


; Make units with "Attack Mode"=5 die when attack.
SelfDestructUnit1: ; 004C2CE6H - Remain offical petards and explosion boats
	Cmp Ax, 1B8H
	Je SelfDestructUnit_1

SelfDestructUnit2: ; 004C2CD0H - Not remain
	Mov Al, Byte Ptr Ds:[Edi + 99H]
	Cmp Al, 5H
SelfDestructUnit_01:
	FakeJne 004C2D1FH
SelfDestructUnit_1:
	FakeJmp 004C2CECH


; Make units 3rd bit of unit attributes checked self-healing like berserkers.
SelfHealUnit1: ; 004C179BH - Remain offical berserkers
	Cmp Ax, 2B6H
	Je SelfHealUnit_1

SelfHealUnit2: ; 004C1791H - Not remain
	Mov Al, Byte Ptr Ds:[Edx + 0A4H]
	Test Al, 04H
SelfHealUnit_01:
	FakeJe 004C188BH
SelfHealUnit_1:
	FakeJmp 004C17A5H


SecondPage:


NewButtons_0:
	FakeCall 005E7560H


NewButtons: ; EBX = Player Addr. ECX = Unit Addr. EDI = IconLib Addr.
	Cmp DWord Ptr Ds:[Ecx + 0CH], Ebx
	Jne NewButtons_Opponent

	Push 0
	Push 3
	Push 14
	Push Ebx
	Call NewButtons_Sub

	Mov Byte Ptr Ss:[Esp + 20H], Al
	Cmp DWord Ptr Ds:[Ecx + 0CH], Ebx
NewButtons_Back:
	FakeJmp 00525A0BH

NewButtons_Opponent:
NewButtons_Back2:
	FakeJmp 00525A11H


NewButtons_Sub:
	Push Ebp
	Lea Ebp, [Esp + 0CH]
	Push Eax
	Push Edx
	Push Ecx
	Mov Ebx, DWord Ptr Ss:[Esp + 14H]

	Mov Eax, DWord Ptr Ds:[Ecx + 08H]
	Push Eax
	Movzx Eax, Byte Ptr Ds:[Eax + 14CH] ; Eax = Tower Mode
	And Al, 1FH
	Cmp Eax, 19
	Ja NewButtons_Other

NewButtons_Table_:
	Jmp DWord Ptr Ds:[Eax * 4 + 11111111H]

Align 4
NewButtons_Table:
DD O NewButtons_Other, O NewButtons_Deposit, O NewButtons_Transform, O NewButtons_Train, O NewButtons_Heal
DD O NewButtons_Build, O NewButtons_Pack, O NewButtons_Unpack, O NewButtons_Ground, O NewButtons_Pack_
DD O NewButtons_Unpack_, O NewButtons_SingleBuild, O NewButtons_Other, O NewButtons_Unload, O NewButtons_Teleport
DD O NewButtons_Drop, O NewButtons_Market, O NewButtons_Convert, O NewButtons_Scout, O NewButtons_GetOut, 0H

NewButtons_Other:
	Pop Eax
NewButtons_Done:
	Mov Ecx, Ss:[Esp]
	Test Ecx, Ecx
	Je NewButtonsB_Other
	Mov Eax, DWord Ptr Ds:[Ecx + 08H]
	Movzx Eax, Byte Ptr Ds:[Eax + 14CH]
	Shr Eax, 5

NewButtons_Table2_: ; Vice Skill
	Jmp DWord Ptr Ds:[Eax * 4 + 11111111H]

Align 4
NewButtons_Table2:
DD O NewButtonsB_Other, O NewButtonsB_Ground, O NewButtonsB_Pack, O NewButtonsB_Heal, O NewButtonsB_Unload
DD O NewButtonsB_Other, O NewButtonsB_Other, O NewButtonsB_Other, 0H

NewButtonsB_Ground:
	SimpleButtonArgs 1020H, [Ebp + 4], 60, 23, 4923, IconGround2, _, DscGround2 ; Attack Ground
	Jmp NewButtonsB_Create
NewButtonsB_Pack:
	SimpleButtonArgs 1020H, [Ebp + 4], 0CH, 6EH, 0A05FH, IconPack2, _, DscPack2 ; Attack Ground
	Jmp NewButtonsB_Create
NewButtonsB_Heal:
	SimpleButtonArgs 1020H, [Ebp + 4], 0FH, 1CH, 133CH, IconHeal2, _, DscHeal2 ; Attack Ground
	Jmp NewButtonsB_Create
NewButtonsB_Unload:
	SimpleButtonArgs 1020H, [Ebp + 4], 11H, 7H, 132BH, IconUnload2, _, DscUnload2 ; Attack Ground

NewButtonsB_Create:
	FakeCall SUB_DRAWBUTTON
NewButtonsB_Other:
	Pop Ecx
	Pop Edx
	Pop Eax
	Pop Ebp
	Retn 10H


NewButtons_Deposit:
	Pop Eax
	Movsx Edx, Word Ptr Ds:[Eax + 0A6H]
	Push Ebx
	Mov Ebx, DWord Ptr Ds:[Ebx + 74H]
	Cmp Edx, 0
	Jge NewButtons_Deposit_
	Xor Edx, Edx
NewButtons_Deposit_:
	Mov Ebx, DWord Ptr Ds:[Ebx + Edx * 4]
	Movsx Ebx, Word Ptr Ds:[Ebx + 54H] ; Get Icon of spawn unit
	SimpleButtonArgs 1028H, [Ebp], Ebx, 9FH, 0A092H, _, _, DscDeposit ; Deposit Relic
NewButtons_1:
	FakeCall SUB_DRAWBUTTON
	Pop Ebx
	Jmp NewButtons_Done

NewButtons_Transform:
	Pop Eax
	Movsx Edx, Word Ptr Ds:[Eax + 0A6H]
	Push Ebx
	Mov Ebx, DWord Ptr Ds:[Ebx + 74H]
	Mov Ebx, DWord Ptr Ds:[Ebx + Edx * 4]
	Movsx Ebx, Word Ptr Ds:[Ebx + 54H] ; Get Icon of spawn unit
	SimpleButtonArgs 1028H, [Ebp], Ebx, 9FH, 0A05FH, _, _, DscTransform ; Deposit Relic
NewButtons_14:
	FakeCall SUB_DRAWBUTTON
	Pop Ebx
	Jmp NewButtons_Done

NewButtons_Heal:
	Pop Eax
	SimpleButtonArgs 1020H, [Ebp], 0FH, 1CH, 133CH, IconHeal, _, DscHeal ; Heal
NewButtons_2:
	FakeCall SUB_DRAWBUTTON
	Jmp NewButtons_Done

NewButtons_Convert:
	Pop Eax
	SimpleButtonArgs 1020H, [Ebp], 0EH, 1DH, 133DH, IconConvert, _, DscConvert ; Convert(Unfinished)
NewButtons_11:
	FakeCall SUB_DRAWBUTTON
	Jmp NewButtons_Done

NewButtons_Build:
	Pop Eax
	SimpleButtonArgs 1020H, [Ebp], 1CH, 74H, 0A065H, IconBuild, _, DscBuild ; Building Page
NewButtons_3:
	FakeCall SUB_DRAWBUTTON
	Jmp NewButtons_Done

NewButtons_Ground:
	Pop Eax
	SimpleButtonArgs 1020H, [Ebp], 60, 23, 4923, IconGround, _, DscGround ; Attack Ground
NewButtons_4:
	FakeCall SUB_DRAWBUTTON
	Jmp NewButtons_Done

NewButtons_Train:
	Cmp DWord Ptr Ss:[Ebp + 8H], 0
	Jne NewButtons_Other
	Pop Eax
	SimpleButtonArgs 1020H, [Ebp], 56, 0AAH, 1336H, IconTrain, _, DscTrain
NewButtons_5:
	FakeCall SUB_DRAWBUTTON
	Jmp NewButtons_Done

NewButtons_SingleBuild:
	Pop Eax
	Movsx Edx, Word Ptr Ds:[Eax + 0A6H]
	Push Ebx
	Push Edx
	Mov Ebx, DWord Ptr Ds:[Ebx + 74H]
	SimpleButtonArgsBuild 102CH, 13H, [Ebp], 4178, 0, 0 ;18DB38H, 18D938H, 0 ; Build
	Cmp Byte Ptr Ds:[Ebx + 5AH], 0
	Jne NewButtons_6
	Mov Ebx, 1 ; Disable the button
	Mov DWord Ptr Ss:[Esp + 30H], 1
NewButtons_6:
	FakeCall SUB_DRAWBUTTON
	Pop Edx
	Pop Ebx
	Jmp NewButtons_Done

NewButtons_SingleTrain:
	Pop Eax
	Movsx Edx, Word Ptr Ds:[Eax + 0A6H]
	Push Ebx
	Push Edx
	Mov Ebx, DWord Ptr Ds:[Ebx + 74H]
	SimpleButtonArgsBuild 1028H, 12H, [Ebp], 4178, 18DB40H, 18D940H
NewButtons_7:
	FakeCall SUB_DRAWBUTTON
	Pop Edx
	Pop Ebx
	Jmp NewButtons_Done

NewButtons_Unload:
	Pop Eax
	SimpleButtonArgs 1020H, [Ebp], 11H, 7H, 132BH, IconUnload, _, DscUnload ; Unload
	;SimpleButtonArgs 1020H, [Ebp], 2H, 0ACH, 1356H ; Go Out
NewButtons_8:
	FakeCall SUB_DRAWBUTTON
	Jmp NewButtons_Done

NewButtons_Teleport:
	Pop Eax
	SimpleButtonArgs 1020H, [Ebp], 2DH, 33H, 1350H, IconTeleport, _, DscTeleport ; Set Gather Point
NewButtons_9:
	FakeCall SUB_DRAWBUTTON
	Jmp NewButtons_Done

NewButtons_Drop:
	Pop Eax
	SimpleButtonArgs 1020H, [Ebp], 34, 33H, 1350H, IconDrop, _, DscDrop ; Set Gather Point
NewButtons_10:
	FakeCall SUB_DRAWBUTTON
	Jmp NewButtons_Done

NewButtons_Pack_:
	Mov Eax, 14
	Mov [Ebp], Eax
NewButtons_Pack:
	Pop Eax
	SimpleButtonArgs 1020H, [Ebp], 0CH, 6EH, 0A05FH, IconPack, _, DscPack ; Pack
NewButtons_12:
	FakeCall SUB_DRAWBUTTON
	Jmp NewButtons_Done

NewButtons_Unpack_:
	Mov Eax, 14
	Mov [Ebp], Eax
NewButtons_Unpack:
	Pop Eax
	SimpleButtonArgs 1020H, [Ebp], 0DH, 6FH, 0A060H, IconUnpack, _, DscUnpack ; Unpack
NewButtons_13:
	FakeCall SUB_DRAWBUTTON
	Jmp NewButtons_Done

NewButtons_Market:
	Cmp DWord Ptr Ss:[Ebp + 8H], 0
	Je NewButtons_Train

	Pop Eax
	Push Edi
	Mov Edi, Eax

	Test Word Ptr Ds:[Edi + 0A6H], 1H
	Jz NewButtons2_Market_1_
	SimpleButtonArgs 1020H, 6, 25, 7FH, 0A070H, _, _, _ ; Sell Wood
NewButtons2_Market_1:
	FakeCall SUB_DRAWBUTTON
NewButtons2_Market_1_:
	Test Word Ptr Ds:[Edi + 0A6H], 2H
	Jz NewButtons2_Market_2_
	SimpleButtonArgs 1020H, 7, 24, 80H, 0A071H, _, _, _ ; Sell Food
NewButtons2_Market_2:
	FakeCall SUB_DRAWBUTTON
NewButtons2_Market_2_:
	Test Word Ptr Ds:[Edi + 0A6H], 4H
	Jz NewButtons2_Market_3_
	SimpleButtonArgs 1020H, 8, 26, 81H, 0A072H, _, _, _ ; Sell Stone
NewButtons2_Market_3:
	FakeCall SUB_DRAWBUTTON
NewButtons2_Market_3_:
	Test Word Ptr Ds:[Edi + 0A6H], 8H
	Jz NewButtons2_Market_4_
	SimpleButtonArgs 1020H, 11, 12H, 83H, 0A074H, _, _, _ ; Buy Wood
NewButtons2_Market_4:
	FakeCall SUB_DRAWBUTTON
NewButtons2_Market_4_:
	Test Word Ptr Ds:[Edi + 0A6H], 10H
	Jz NewButtons2_Market_5_
	SimpleButtonArgs 1020H, 12, 13H, 84H, 0A075H, _, _, _ ; Buy Food
NewButtons2_Market_5:
	FakeCall SUB_DRAWBUTTON
NewButtons2_Market_5_:
	Test Word Ptr Ds:[Edi + 0A6H], 20H
	Jz NewButtons2_Market_6_
	SimpleButtonArgs 1020H, 13, 15H, 85H, 0A076H, _, _, _ ; Buy Gold
NewButtons2_Market_6:
	FakeCall SUB_DRAWBUTTON
NewButtons2_Market_6_:
	Pop Edi
	Jmp NewButtons_Done

NewButtons_Scout:
	Pop Eax
	SimpleButtonArgs 1020H, [Ebp], 5H, 27H, 4322, IconScout, _, DscScout ; Scout
NewButtons_15:
	FakeCall SUB_DRAWBUTTON
	Jmp NewButtons_Done

NewButtons_GetOut:
	Pop Eax
	SimpleButtonArgs 1020H, [Ebp], 2H, 0ACH, 1356H, IconGetOut, _, DscGetOut ; Get Out
NewButtons_16:
	FakeCall SUB_DRAWBUTTON
	Jmp NewButtons_Done


; Buttons For Building Page
NewButtons2: ; EBX = Player Addr, EDI = Unit Addr.
	Push Ecx
	Push 1
NewButtons2_Position2:
	Push 13
NewButtons2_Position:
	Push 14
	Push Ebx
	Mov Ecx, Edi
	Call NewButtons_Sub
	Pop Ecx

	Cmp Byte Ptr Ds:[Edi + 14CH], 0
NewButtons2_Back:
	FakeJmp 00528359H


; Disable Delete Button when units have vice-ability
NewButtonsGr:
	Cmp Byte Ptr Ss:[Esp + 20H], 1
	Je NewButtonsGr_1
	Test Ecx, Ecx
	Je NewButtonsGr_0
	Push Ecx
	Mov Ecx, [Ecx + 8H]
	Test Byte Ptr Ds:[Ecx + 14CH], 0E0H
	Pop Ecx
	Jne NewButtonsGr_1
NewButtonsGr_0:
	FakeJmp 00525C83H ;00525CE5H
NewButtonsGr_1:
	FakeJmp 00525CC2H ;00525D00H
NewButtonsGr_2:
	FakeJmp 00525D35H


; Initialize Displayed Market Prices
MarketInit:
	Je MarketInit_1
	Push Eax
	Mov Al, Byte Ptr Ds:[Eax + 14CH]
	And Al, 1FH
	Cmp Al, 10H
	Pop Eax
	Je MarketInit_1
MarketInit_2:
	FakeJmp 005221EEH
MarketInit_1:
	FakeJmp 00521FC5H


; Allowing all units to heal WITH RIGHT CLICK
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
	Mov Eax, DWord Ptr Ds:[Ebx + 0CH]
	Cmp Eax, DWord Ptr Ss:[Ebp + 0CH]
	Jne AllHeal_2_
; Old Codes Below
	;Mov Al, Byte Ptr Ds:[Ecx + 14CH]
	;Mov Ah, Al
	;And Al, 1FH
	;Cmp Al, 4 ; is with heal skill?
	;Je AllHeal_3_
	;And Ah, 0E0H
	;Cmp Al, 3 ; is with vice heal skill?
	;Je AllHeal_3_
; New Codes Below
	Push Ecx
	Push 1
	Sub Esp, 8H
	Push 105
	Call GetAbility
	Pop Ecx
	Test Eax, Eax
	Jne AllHeal_3_
; New Codes Above
AllHeal_2_:
	Pop Ebx
	Movsx Eax, Word Ptr Ds:[Ecx + 16H]
AllHeal_2: ; Other
	FakeJmp 00434CDFH

AllHeal_3_: ; Healing
	Pop Ebx
AllHeal_3:
	FakeJmp 00434B74H


FreeDrop:
	;Cmp Eax, 11EH
	;Je FreeDrop_Other_
	;Cmp Eax, 12CH
	;Jl FreeDrop_Custom
	;Cmp Eax, 135H
	;Jng FreeDrop_Other_

	Mov Edx, DWord Ptr Ds:[Esi + 8H] ; Unit Addr
	Push Ecx
	Mov Cl, Byte Ptr Ds:[Edx + 14CH]
	And Cl, 1FH
	Cmp Cl, 1
	Je FreeDrop_Custom
	Cmp Cl, 2
	Je FreeDrop_Transform

FreeDrop_Other_:
	Pop Ecx
	Add Eax, -11EH
FreeDrop_Other:
	FakeJmp 004692AFH

FreeDrop_Custom:
	Pop Ecx
	Mov Edx, DWord Ptr Ds:[Edi + 4H]
	Push 0 ; arg5 = 0
	Mov Eax, DWord Ptr Ds:[Edx + 4CH]
	Mov Ecx, DWord Ptr Ds:[Eax]
	Mov Eax, DWord Ptr Ds:[Esi + 40H]
	Push Eax ; arg4 = 1.0000
	Push Ebp ; arg3 = pos 2
	Mov Edx, DWord Ptr Ds:[Ecx]
	Push Ebx ; arg2 = pos 1
	Mov Edx, DWord Ptr Ds:[Esi + 8H]
	Movsx Eax, Word Ptr Ds:[Edx + 0A6H] ; Attribute Piece
	Cmp Eax, 0
	Jle FreeDrop_Custom_
	Mov Ecx, DWord Ptr Ds:[Esi + 0CH] ; Change Player from gaia
	Push Eax
	Jmp FreeDrop_1
FreeDrop_Custom_: ; If negative, create gaia's unit
	Neg Eax
	Push Eax ; arg1 = unit id
FreeDrop_1:
	FakeCall 00456A40H ; ECX = Player
FreeDrop_Back:
	FakeJmp 00469422H

FreeDrop_Transform:
	Pop Ecx
	Push Ebp
	Push Edi

	Mov Ebp, DWord Ptr Ds:[Esi + 0CH]
	Lea Ebp, DWord Ptr Ds:[Ebp + 1C4H]
	Mov Edi, DWord Ptr Ds:[Ebp]

FreeDrop_Transform_: ; Loop start
	Mov Edx, DWord Ptr Ds:[Edi + 0CH]
	Cmp Edx, DWord Ptr Ds:[Esi + 0CH]
	Jne FreeDrop_Transform__
	Mov Edx, DWord Ptr Ds:[Edi + 8H]

	Mov Bl, Byte Ptr Ds:[Edx + 14CH]
	And Bl, 1FH
	Cmp Bl, 2
	Jne FreeDrop_Transform__

	Movsx Eax, Word Ptr Ds:[Edx + 0A6H] ; Attribute Piece

	Mov Ebx, DWord Ptr Ds:[Edi + 0CH]
	Mov Ebx, DWord Ptr Ds:[Ebx + 74H]
	Mov Ebx, DWord Ptr Ds:[Ebx + Eax * 4]
	Push Ebx

	Mov Ecx, Edi
FreeDrop_2:
	FakeCall SUB_TRANSFORM ; ECX = Source Unit
FreeDrop_Transform__:
	Add Ebp, 4
	Mov Edi, DWord Ptr Ds:[Ebp]
	Test Edi, Edi
	Jne FreeDrop_Transform_

	Pop Edi
	Pop Ebp
	Jmp FreeDrop_Back


; Attack Ground
; Allow Units with Attack Mode = 6 or Tower Mode = 8 or Tower Mode & 0E0H = 20h to attack ground
AttackGround:
	Cmp Ax, 24H
	Je AttackGround_1
	Cmp Word Ptr Ds:[Ecx + 99H], 6
	Je AttackGround_1
	Mov Al, Byte Ptr Ds:[Ecx + 14CH]
	Mov Ah, Al
	And Ah, 1FH
	Cmp Ah, 8
	Je AttackGround_1
	And Al, 0E0H
	Cmp Al, 20H
AttackGround_01:
	FakeJne 00467938H
AttackGround_2:
	FakeJmp 0046794CH
AttackGround_1:
	FakeJmp 00467945H

; Make Units with Attack Mode = 6 have attack ground buttons instead of petrol, guard and follow
AttackGround2: ;00526120h
	Cmp Word Ptr Ds:[Ecx + 99H], 6
	Je AttackGround2_1
	Movsx Eax, Word Ptr Ds:[Ecx + 10]
	Cmp Eax, 1A4H
AttackGround2_1:
	FakeJmp 00526129H


; Unlock Build restrictions on fish boat
; 8th Unit Attribute determines isolated build page
CustomBuilder: ; ECX = Player Addr.
	Lea Ebx, [Esi + 1240H]
	Push Esi
	Lea Esi, Ds:[Ecx + 1C4H]
CustomBuilder_Loop: ; Avoid Fish Net
	Mov Eax, DWord Ptr Ds:[Esi]
	Test Eax, Eax
	Je CustomBuilder_
	Mov Eax, Ds:[Eax + 8H]
	Cmp Byte Ptr Ds:[Eax + 97H], 09H
	Je CustomBuilder_LoopEnd
	Add Esi, 4
	Jmp CustomBuilder_Loop

CustomBuilder_LoopEnd:
	Test Byte Ptr Ds:[Eax + 0A4H], 80H
	Jz CustomBuilder_
	Pop Esi
	Movsx Eax, Word Ptr Ds:[Eax + 10H] ; Isolated build page
	Push Eax
CustomBuilder_1:
	FakeJmp 00525E24H
CustomBuilder_: ; Common build page
	Pop Esi
	Push 0DH
	Jmp CustomBuilder_1


; Unlock Build restrictions on villagers
; For villagers or fishboats, 8th Unit Attribute determines isolated build page
; With new skill = 5, always judge from train location
; Village Buildings
CustomBuilder2: ; EAX = Player Addr.
	Lea Ebx, [Edi + 1240H]
	Mov Ecx, Ds:[Eax + 1C0H]
	Mov Ecx, Ds:[Ecx + 8H]
	Push Eax
	Mov Al, Byte Ptr Ds:[Ecx + 14CH]
	And Al, 1FH
	Cmp Al, 05H
	Pop Eax
	Je CustomBuilder2__
	Test Byte Ptr Ds:[Ecx + 0A4H], 80H
	Jz CustomBuilder2_
	Movsx Ecx, Word Ptr Ds:[Ecx + 10H] ; Isolated build page
	Push Ecx
CustomBuilder2_1:
	FakeJmp 00527571H
CustomBuilder2_: ; Common build page
	Push 76H
	Jmp CustomBuilder2_1
CustomBuilder2__: ; Share another unit's page
	Movsx Ecx, Word Ptr Ds:[Ecx + 0A6H]
	Push Ecx
	Jmp CustomBuilder2_1

; Military Buildings
CustomBuilder3: ; EAX = Player Addr.
	Lea Ebx, [Edi + 1240H]
	Mov Ecx, Ds:[Eax + 1C0H]
	Mov Ecx, Ds:[Ecx + 8H]
	Push Eax
	Mov Al, Byte Ptr Ds:[Ecx + 14CH]
	And Al, 1FH
	Cmp Al, 05H
	Pop Eax
	Je CustomBuilder3__
	Test Byte Ptr Ds:[Ecx + 0A4H], 80H
	Jz CustomBuilder3_
	Movsx Ecx, Word Ptr Ds:[Ecx + 10H] ; Isolated build page
	Push Ecx
CustomBuilder3_1:
	FakeJmp 00527791H
CustomBuilder3_: ; Common build page
	Push 76H
	Jmp CustomBuilder3_1
CustomBuilder3__: ; Share another unit's page
	Movsx Ecx, Word Ptr Ds:[Ecx + 0A6H]
	Push Ecx
	Jmp CustomBuilder3_1


; Advanced Train Button
; If one unit is Type 80, and not class 51 (Packed Siege Unit), it would be used as build.
; (Not Used) If one unit is Type 80, class 51, but not positive hp, it would be used as build too.
; If one unit is Type 80, class 51, but train time < 0, it would be used as build too.
AdvancedTrainButton:
	Cmp Byte Ptr Ds:[Edi + 4H], 50H
	Jl AdvancedTrainButton_1
	Cmp Word Ptr Ds:[Edi + 16H], 33H
	Jne AdvancedTrainButton_
	Cmp Word Ptr Ds:[Edi + 182H], 0H
	Jge AdvancedTrainButton_1
AdvancedTrainButton_:
	Mov Edx, DWord Ptr Ds:[Esi + 102CH]
	Mov DWord Ptr Ss:[Esp], Edx
	Mov Edx, 13H
	Mov DWord Ptr Ss:[Esp + 0CH], Edx
AdvancedTrainButton_1:
	FakeCall SUB_DRAWBUTTON
AdvancedTrainButton_2:
	FakeJmp 00527E3DH


; Deposit carrying resource into buildings nearby - for villager pages
; Thanks for Daniel !
DepositResource:
    Mov Eax, [Esi + 00001230H]
    Fld DWord Ptr Ds:[Eax + 44H]
    Fcomp DWord Ptr Ds:[Float0]
    Fnstsw Ax
    Test Ah, 41H
    Jne DepositResource_2
	SimpleButtonArgs 1020H, 5, 29, 160, 41107, IconDepositResource, PosDepositRes, DscDepositRes
DepositResource_1:
    FakeCall SUB_DRAWBUTTON
DepositResource_2:
    FakeJmp 00525DC5H


; Hero Mode For Conversion
; 0 - Normal
; 1 - Hero, cannot be converted
; 2 - Not hero, cannot be converted
; 3 - Not hero, can be converted after research 1
; 4 - Not hero, can be converted after research 2
; 3 and 4 DOESN'T work now.
HeroMode:
	Mov Cl, Byte Ptr Ds:[Edx + 1B5H]
	Cmp Cl, 2
	Je HeroMode_1
	Cmp Cl, 3
	Je HeroMode_2
	Cmp Cl, 4
	Je HeroMode_3
	Mov Cx, Word Ptr Ds:[Edx + 10H]
	Cmp Cx, 6DH
HeroMode_0:
	FakeJmp 0046D948H
HeroMode_1:
	FakeJmp 0046DA39H
HeroMode_2:
	FakeJmp 0046D9ACH
HeroMode_3:
	FakeJmp 0046DA00H

HeroMode2:
	Mov Cl, Byte Ptr Ds:[Eax + 1B5H]
	Cmp Cl, 2
	Je HeroMode2_1
	Mov Cx, Word Ptr Ds:[Eax + 10H]
	Cmp Cx, 6DH
HeroMode2_0:
	FakeJmp 004B7A81H
HeroMode2_1:
	FakeJmp 004B7E80H


; Units with Specific Tower Mode and Unit Attribute Piece:
; 14 - Can teleport to goal point, leaving a unit at source (Negative means no unit dropped)
; 15 - Can drop a unit in goal point
FreeGatherPoint:
	Mov Ecx, [Esi + 08H]
	Mov Al, [Ecx + 14CH]
	And Al, 1FH
	Cmp Al, 14
	Je FreeGatherPoint_Teleport
	Cmp Al, 15
	Je FreeGatherPoint_Drop
	Cmp Byte Ptr Ds:[Ecx + 04H], 50H
	Jne FreeGatherPoint_None

FreeGatherPoint_Other:
	Xor Ebp, Ebp
	Lea Eax, [Esp + 20H]
FreeGatherPoint_0:
	FakeJmp 00468DB1H

FreeGatherPoint_Teleport:
	Mov Ecx, [Esi + 8H]
	Push Ecx

	Push 0
	Push 0
	Push 1
	Push 1
	Push 0
	Push 0
	Push 1
	Push 0
	Push 0
	Push [Edi + 10H]
	Push [Edi + 0CH]
	Push [Esi + 0CH]
FreeGatherPoint_5:
	FakeCall SUB_CHECKUNITSPACE
	Pop Ecx
	Test Al, Al
	Jne FreeGatherPoint_None
	Movsx Ecx, Word Ptr Ds:[Ecx + 0A6H]
	Cmp Ecx, 0
	Jl FreeGatherPoint_Teleport_

	Push 0
	Push 0
	Push [Esi + 3CH]
	Push [Esi + 38H]
	Push Ecx
	Mov Ecx, [Esi + 0CH]
FreeGatherPoint_4: ; Leave unit when teleport
	FakeCall SUB_DROPUNIT
FreeGatherPoint_Teleport_:
	Push 0
	Push [Edi + 10H]
	Push [Edi + 0CH]
	Mov Ecx, Esi
FreeGatherPoint_1:
	FakeCall SUB_TELEPORT
; This is a temporary solution
; Because SUB_TELEPORT would make one random unit teleported into the left corner and unable to move anymore.
;	Mov Ecx, [Edi + 0CH]
;	Mov [Esi + 38H], Ecx
;	Mov [Esi + 0C0H], Ecx
;	Mov Ecx, [Edi + 10H]
;	Mov [Esi + 3CH], Ecx
;	Mov [Esi + 0C8H], Ecx
;	Xor Ecx, Ecx
;	Mov [Esi + 40H], Ecx

FreeGatherPoint_None:
FreeGatherPoint_2:
	;FakeJmp 00468E67H
	FakeJmp 00468E55H

FreeGatherPoint_Drop:
	Mov Ecx, [Esi + 8H]
	Push 0
	Push 0
	Push [Edi + 10H]
	Push [Edi + 0CH]
	Movsx Ecx, Word Ptr Ds:[Ecx + 0A6H]
	Push Ecx
	Mov Ecx, [Esi + 0CH]
FreeGatherPoint_3:
	FakeCall SUB_DROPUNIT
	Jmp FreeGatherPoint_None


; Extended Attack Values
; Special armor types make special effects.
; Type -100 - damage by max hp of destination units.
; Type -101 - damage by current hp of destination units.
; Type -102 - damage by current lost hp of destination units.
; Type -103 - damage by max hp of source unit.
; Type -104 - damage by current hp of source unit.
; Type -105 - damage by current lost hp of source unit.
; Values should be above 1000 (damage of 10% max hp should be 1100)
ExtendAttacks: ;SS[0] = Source Unit, SS[1] = Destination Unit, 005CE7E8h

	Fild DWord Ptr Ss:[Esp + 28H]
	Fsubp St(1), St

	Movsx Ecx, Word Ptr Ds:[Esi]
	Cmp Ecx, -100
	Jg ExtendAttacks_1
	Cmp Ecx, -105
	Jl ExtendAttacks_1

	Push Edi
	Push Esi
	Mov Edi, DWord Ptr Ss:[Esp + 0CH]
	Mov Esi, DWord Ptr Ss:[Esp + 8H]
	Push Eax
	Mov Eax, DWord Ptr Ds:[Edi + 8H]

	Cmp Ecx, -102
	Jge ExtendAttacks__
	Mov Edi, Esi
	Mov Eax, DWord Ptr Ds:[Edi + 8H]
	Add Ecx, 3
ExtendAttacks__:
	Cmp Ecx, -100
	Je ExtendAttacks_MaxHP
	Cmp Ecx, -101
	Je ExtendAttacks_CurrentHP
	;Cmp Ecx, -102
	;Je ExtendAttacks_LostHP
ExtendAttacks_LostHP:
	Fild Word Ptr Ds:[Eax + 2AH]
	Fsub DWord Ptr Ds:[Edi + 30H]
	Fmulp St(1), St
	Jmp ExtendAttacks_
ExtendAttacks_MaxHP:
	Fimul Word Ptr Ds:[Eax + 2AH]
	Jmp ExtendAttacks_
ExtendAttacks_CurrentHP:
	Fld DWord Ptr Ds:[Edi + 30H]
	Fild Word Ptr Ds:[Eax + 2AH]
	Fcom ; NO HURT FOR OVERFLOW HP
	Fstsw Ax
	Test Ah, 1H
	Jz ExtendAttacks_CurrentHP_
	Fxch
ExtendAttacks_CurrentHP_:
	Fincstp
	Fmulp St(1), St
	;Jmp ExtendAttacks_

ExtendAttacks_:
	Fmul DWord Ptr Ds:[Float0001]

	Pop Eax
	Pop Esi
	Pop Edi

ExtendAttacks_1:
	FakeJmp 005CE7EEH


; Fixed bugs of Villager's attacked by animals: change into female villager
VillagerCounterFix: ;005cf005h
	Cmp Byte Ptr Ds:[Eax + 110H], 1
VillagerCounterFix_01:
	FakeJe 005CF00EH
	Cmp Byte Ptr Ds:[Eax + 110H], 2
VillagerCounterFix_02:
	FakeJe 005CF020H
VillagerCounterFix_1:
	FakeJmp 005CF038H


; More Garrison Types
; Allowing more classes of units to garrison into buildings
; 5th bit: Animals (Prey, Predator, Domesticated Animals and Livestock) Currently no use
; 6th bit: Veichles (Siege Weapon, Scorpion and Trebuchets)
; 7th bit: Ships (Trade, Fishing, Transport, Warship and Boarding Boats)
; 8th bit: Custom class
MoreGarrisonTypesB: ; Eax = Unit Class, Dl = Garrision Type
	Push Ecx
	Mov Ecx, Ebp
	Push 2
	Push 0
	Push 3
	Push 3
	Call GetAbility
	Cmp Word Ptr Ds:[Eax + 14H], 0 ; Unit Ability "Garrison" in class 3 can override garrison class by "Resource In".
	Jl MoreGarrisonTypes_NoOverride
	Movsx Eax, Byte Ptr Ds:[Eax + 14H]
	Add Esp, 4H
	Jmp MoreGarrisonTypes
MoreGarrisonTypes_NoOverride:
	Movsx Eax, Word Ptr Ss:[Ebp + 16H]
MoreGarrisonTypes__:
	Pop Ecx
	Mov Dl, Byte Ptr Ds:[Ecx + 208H]
	Xor Esi, Esi
	Cmp Eax, MAX_GARRISON_CLASS
	Ja MoreGarrisonTypes_2

	Xor Ebx, Ebx
MoreGarrisonTypes: ; Eax = Unit Class, Dl = Garrision Type
	Mov Bl, Byte Ptr Ds:[Eax + 434EB4H]
	Cmp Bl, 05H
	Jge MoreGarrisonTypes_
MoreGarrisonTypes_0:
	FakeJmp 00434327H

MoreGarrisonTypes_:
	Je MoreGarrisonTypes_Animal
	Cmp Bl, 06H
	Je MoreGarrisonTypes_Veichle
	Cmp Bl, 07H
	Je MoreGarrisonTypes_Ship
	Cmp Bl, 08H
	Je MoreGarrisonTypes_Custom
	Test Dl, 80H ; Custom Garrision
	Je MoreGarrisonTypes_2
	Jmp MoreGarrisonTypes_1

MoreGarrisonTypes_1: ; Yes
	FakeJmp 00434350H
MoreGarrisonTypes_2: ; No
	FakeJmp 00434355H

MoreGarrisonTypes_Animal:
	Test Dl, 10H
	Je MoreGarrisonTypes_2
	Jmp MoreGarrisonTypes_1

MoreGarrisonTypes_Veichle:
	Test Dl, 20H
	Je MoreGarrisonTypes_2
	Jmp MoreGarrisonTypes_1

MoreGarrisonTypes_Ship:
	Test Dl, 40H
	Je MoreGarrisonTypes_2
	Jmp MoreGarrisonTypes_1

MoreGarrisonTypes_Custom:
	Test Dl, 80H
	Je MoreGarrisonTypes_2
	Jmp MoreGarrisonTypes_1


;Repulse: ; [Esp] = Source, [Esp + 4] = Target
;	Push Eax
;	Push Ecx
;	Push Edx
;	Push Esi
;	Mov Esi, DWord Ptr Ds:[Esp + 10H]
;	Mov Edx, DWord Ptr Ds:[Esp + 14H]
;
;	Push Ebp
;	Sub Esp, 10H
;	Fld DWord Ptr Ds:[Edx + 38H]
;	Fsub DWord Ptr Ds:[Esi + 38H]
;	Fmul DWord Ptr Ds:[Float05]
;	Fadd DWord Ptr Ds:[Edx + 38H]
;	Fst DWord Ptr Ds:[Edx + 38H]
;	Fstp DWord Ptr Ds:[Edx + 0C0H]
;
;	Fld DWord Ptr Ds:[Edx + 3CH]
;	Fsub DWord Ptr Ds:[Esi + 3CH]
;	Fmul DWord Ptr Ds:[Float05]
;	Fadd DWord Ptr Ds:[Edx + 3CH]
;	Fst DWord Ptr Ds:[Edx + 3CH]
;	Fstp DWord Ptr Ds:[Edx + 0C8H]
;
;	;Xor Ecx, Ecx
;	;Mov [Esi + 40H], Ecx
;
;	Add Esp, 10H
;	Pop Ebp
;
;	Pop Esi
;	Pop Edx
;	Pop Ecx
;	Pop Eax
;	; Normal
;	Movsx Ecx, Word Ptr Ds:[Esi + 2H]
;	Mov DWord Ptr Ss:[Esp + 1CH], Ecx
;Repulse_2:
;	FakeJmp 005CE7E4H


; Make various Monks (Archbishop, Friar Tuck, etc.) can restore correctly after pick and drop relic.
PickRelic4: ; SPECIAL FOR TURK RELIC - here lies a jump goal
	Mov Eax, DWord Ptr Ds:[Eax + 4D4H]
PickRelic: ; 004B080Ah
	Push DWord Ptr Ds:[Ecx + 8H]
	Push Eax

	Push Eax
	Call DWord Ptr Ds:[Edx + 5CH]
	Mov Esi, DWord Ptr Ss:[Esp + 8H]

	Push Ebp
	Lea Ebp, [Esp + 4H]
	Push Ebx
	Push Ecx
	Push Edx
	Push Edi
	Push Esi
	Mov Ecx, Esi
PickRelic_1:
	FakeCall SUB_UNIQUEUNIT
	Mov Esi, [Esi + 8H]
	Mov Edi, DWord Ptr Ss:[Ebp + 4H]
	Cmp Word Ptr Ds:[Edi + 10H], 07DH ; Normal Monk
	Je PickRelic_

	;Mov Eax, DWord Ptr Ds:[Edi + 08H]
	;Mov DWord Ptr Ds:[Esi + 08H], Eax
	Mov Ax, Word Ptr Ds:[Edi + 0CH] ; DLL Name
	Mov Word Ptr Ds:[Esi + 0CH], Ax
	Mov Ax, Word Ptr Ds:[Edi + 54H] ; Icon
	Mov Word Ptr Ds:[Esi + 54H], Ax

	Mov Eax, DWord Ptr Ds:[Edi + 40H] ; Select Sound
	Mov DWord Ptr Ds:[Esi + 40H], Eax
	Mov Eax, DWord Ptr Ds:[Edi + 114H] ; Move Sound
	Mov DWord Ptr Ds:[Esi + 114H], Eax
	Mov Eax, DWord Ptr Ds:[Edi + 118H] ; Attack Sound
	Mov DWord Ptr Ds:[Esi + 118H], Eax

	Push 1
	Sub Esp, 8H
	Push 132 ; Pickup Ability
	Mov Ecx, Edi
	Call GetAbility

	Test Eax, Eax
	.If !Zero?
		Mov Ebx, Eax ; Ability addr.

		; NOTE: Tool Graphic was used when monks go for relic
		Mov Eax, DWord Ptr Ds:[Ebx + 38H] ; Standing=Proceeding
		Test Eax, Eax
		.If !Zero?
			Mov DWord Ptr Ds:[Esi + 18H], Eax
		.EndIf

		Mov Eax, DWord Ptr Ds:[Ebx + 40H] ; Walking=Carrying
		Test Eax, Eax
		.If !Zero?
			Mov DWord Ptr Ds:[Esi + 0CCH], Eax
		.EndIf

		Mov Eax, DWord Ptr Ds:[Ebx + 3CH] ; Dying=Action
		Test Eax, Eax
		.If !Zero?
			Mov DWord Ptr Ds:[Esi + 20H], Eax
		.EndIf

	.EndIf

	Mov Ax, Word Ptr Ds:[Edi + 10H]
	Mov Word Ptr Ds:[Esi + 162H], Ax ; Stored original id in displayed attack
PickRelic_:
	Pop Esi
	Pop Edi
	Pop Edx
	Pop Ecx
	Pop Ebx
	Pop Ebp

	Add Esp, 0CH
	Mov Al, 1
	Pop Ebx
	Retn


PickRelic2: ;00469416h
	Push Ebx
	Push Esi
	Mov Esi, [Esi + 08H]
	Movsx Ebx, Word Ptr Ds:[Esi + 162H]
	Cmp Ebx, 0
	Jg PickRelic2_More
	Mov Eax, DWord Ptr Ds:[Ecx + 1F4H] ; Normal Monk
	Jmp PickRelic2_
PickRelic2_More:
	Mov Eax, DWord Ptr Ds:[Ebx * 4 + Ecx]
PickRelic2_:
	Pop Esi
	Pop Ebx
PickRelic2_1:
	FakeJmp 0046941CH


PickRelic3:
	Push Ebx
	Push Esi
	Mov Esi, [Esi + 08H]
	Mov Esi, [Esi + 08H]
	Movsx Ebx, Word Ptr Ds:[Esi + 162H]
	Cmp Ebx, 0
	Jg PickRelic3_More
	Mov Eax, DWord Ptr Ds:[Eax + 1F4H] ; Normal Monk
	Jmp PickRelic3_
PickRelic3_More:
	Mov Eax, DWord Ptr Ds:[Ebx * 4 + Eax]
PickRelic3_:
	Pop Esi
	Pop Ebx
PickRelic3_1:
	FakeJmp 004B18FEH


IFV: ;004C5D24h , EDI = Source Unit, ESI = Room Unit
	Mov Ecx, DWord Ptr Ds:[Esi + 24H]
	Cmp DWord Ptr Ds:[Ecx + 4H], 1
	Jne IFV_

	Push Edi
	Mov Edi, [Edi + 8H]

	Push 0
	Push DWord Ptr Ds:[Edi + 10H]
	Push DWord Ptr Ds:[Edi + 16H]
	Push 160
	Mov Ecx, [Esi + 08H]
	Call GetAbility
	Pop Edi
	Test Eax, Eax
	Je IFV_

	Movsx Eax, Word Ptr Ds:[Eax + 14H]
	Mov Ecx, DWord Ptr Ds:[Esi + 0CH]
	Mov Ecx, DWord Ptr Ds:[Ecx + 74H]
	Mov Ecx, DWord Ptr Ds:[Ecx + Eax * 4]
	Push Ecx
	Mov Ecx, Esi
IFV_1:
	FakeCall SUB_TRANSFORM

IFV_:
	Pop Edi
	Pop Esi
	Retn 4


IFV2: ;004D27F5h
	Cmp DWord Ptr Ds:[Ecx + 4], 0
	Jg IFV2_
	Mov Esi, [Esp]

	Push 1
	Push 0
	Push 0
	Push 161
	Mov Ecx, [Esi + 08H]
	Call GetAbility

	Test Eax, Eax
	Je IFV2_
	Cmp Byte Ptr Ds:[Esi + 48H], 02H ; Unit must be living
	Jne IFV2_

	Mov Ecx, DWord Ptr Ds:[Esi + 0CH]
	Test Ecx, Ecx
	Je IFV2_
	Push Eax
	Movsx Eax, Word Ptr Ds:[Eax + 0AH]
	Mov Ecx, DWord Ptr Ds:[Ecx + 74H]
	Mov Ecx, DWord Ptr Ds:[Ecx + Eax * 4]
	Push Ecx
	Mov Ecx, Esi
IFV2_1:
	FakeCall SUB_TRANSFORM ; ECX = Source Unit
	Pop Eax
	Cmp Byte Ptr Ds:[Eax + 04H], 1 ; Unknown 1
	Jne IFV2_

	Mov Ecx, DWord Ptr Ds:[Plc]
	Mov Ecx, DWord Ptr Ds:[Ecx + 424H]
	Mov Ecx, DWord Ptr Ds:[Ecx + 4CH]
	Mov Edx, DWord Ptr Ds:[Ecx]
	Push Edx
	Mov Ecx, Esi
	Mov Eax, [Esi]
	Call DWord Ptr Ds:[Eax + 4CH] ; Change Owner to GAIA

IFV2_:
	Pop Esi
	Retn 4


; Get Certain Ability Addr.
; ECX = Proto Unit
; arg1 = type
; arg2 = class (minor)
; arg3 = id (major)
; arg4 = mode (1-ignores both, 2-class only, 3-id only)
GetAbility:
	Push Ebx
	Push Esi
	Push Edi
	Push Edx
	Push Ebp

	Mov Edi, Ecx
	Xor Ecx, Ecx
	Mov Ebp, DWord Ptr Ds:[Edi + 0FCH]
	Xor Eax, Eax
	Test Ebp, Ebp
	Je GetAbility_
	Mov Edi, DWord Ptr Ds:[Ebp + 04H]
	Test Edi, Edi
	Je GetAbility_
	Xor Esi, Esi

GetAbility_Loop:
	Mov Edx, DWord Ptr Ds:[Edi]

	Mov Bx, Word Ptr Ss:[Esp + 18H] ; arg1
	Cmp Word Ptr Ds:[Edx + 06H], Bx
	Jne GetAbility_Loop_
	Xor Cl, Cl ; priority

	.If DWord Ptr Ss:[Esp + 24H] == 1 ; Ingore Both
		Mov Cl, 3
	.Else
		.If DWord Ptr Ss:[Esp + 24H] == 2 ; Class Only
			Mov Ebx, DWord Ptr Ss:[Esp + 1CH]
			.If Word Ptr Ds:[Edx + 08H] == Bx
				Mov Cl, 3
			.EndIf
		.Else
			Mov Ebx, DWord Ptr Ss:[Esp + 20H] ; arg3
			.If Word Ptr Ds:[Edx + 0AH] == Bx
				Mov Cl, 3
			.Else
				.If DWord Ptr Ss:[Esp + 24H] != 3 ; Id Only
					Cmp Word Ptr Ds:[Edx + 0AH], -1
					Jne GetAbility_Loop_
					Mov Ebx, DWord Ptr Ss:[Esp + 1CH] ; arg2
					.If Word Ptr Ds:[Edx + 08H] == Bx
						Mov Cl, 2
					.Else
						Cmp Word Ptr Ds:[Edx + 08H], -1
						Jne GetAbility_Loop_
						Mov Cl, 1
					.EndIf
				.EndIf
			.EndIf
		.EndIf
	.EndIf

	.If Cl > Ch
		Mov Esi, Edx
		Mov Ch, Cl
	.EndIf
GetAbility_Loop_:
	Add Edi, 4
	Inc Eax
	Cmp Eax, [Ebp + 8H]
	Jl GetAbility_Loop
	Mov Eax, Esi
GetAbility_:
	Pop Ebp
	Pop Edx
	Pop Edi
	Pop Esi
	Pop Ebx

	Retn 10H


; Random Train
; By Ability #164
RandomUnit: ; 004B12ABh
	Cmp Esi, 53H
RandomUnit_01:
	FakeJe 004B12B0H ;Villager

	Push Ebp
	Push Ebx
	Push Edi
	Push Esi ; Unit
	Push 0 ; Probablity

	Mov Edx, [Edi + 08H]
	Mov Ebp, [Edx + 0CH]
	Mov Ebp, [Ebp + 74H]

RandomUnit_1:
	FakeCall SUB_RANDOM
	Cdq
	Mov Ecx, 64H
	IDiv Ecx
	Mov [Esp], Edx

	Mov Ecx, [Esi * 4 + Ebp] ; ESI = Proto Unit Id
; Commented Codes below are used to optimize running, but dat editing will be more complex.
	;Mov Al, Byte Ptr Ds:[Ecx + 0A4H]
	;Test Al, 40H ; 7th Attribute
	;Je RandomUnit_Other
RandomUnit_GetAbility:
	Mov Edi, Ecx
	Xor Ecx, Ecx
	Mov Ebp, DWord Ptr Ds:[Edi + 0FCH]
	Xor Eax, Eax
	Test Ebp, Ebp
	Je RandomUnit_GetAbility_
	Mov Edi, DWord Ptr Ds:[Ebp + 04H]
	Test Edi, Edi
	Je RandomUnit_GetAbility_
	Xor Esi, Esi

RandomUnit_GetAbility_Loop:
	Mov Edx, DWord Ptr Ds:[Edi]
	Mov Bx, 164 ; Ability

.If Bx == Word Ptr Ds:[Edx + 06H]
	Mov Esi, [Esp]
	Movsx Ecx, Word Ptr Ds:[Edx + 14H] ; Resource In
	Cmp Esi, Ecx
	Jl RandomUnit_Set
	Sub Esi, Ecx
	Mov [Esp], Esi
.EndIf
	Add Edi, 4
	Inc Eax
	Cmp Eax, [Ebp + 8H]
	Jl RandomUnit_GetAbility_Loop
	Mov Eax, Esi

RandomUnit_GetAbility_:
	Add Esp, 4
	Pop Esi
	Pop Edi
	Pop Ebx
	Pop Ebp
RandomUnit_Other:
	FakeJmp 004B12C7H ; ESI = Proto Unit Id

RandomUnit_Set:
	Movsx Ebx, Word Ptr Ds:[Edx + 0AH]
	Cmp Ebx, 0
	Jl RandomUnit_GetAbility_
	Mov [Esp + 4H], Ebx
	Jmp RandomUnit_GetAbility_


; Vacate Foundation Terrains for Modding
TerrFndn:
	Je TerrFndn_Warm
	Mov Byte Ptr Ss:[Esp + 13H], 21H
	Jmp TerrFndn_1
TerrFndn_Warm:
	Mov Byte Ptr Ss:[Esp + 13H], 0BH
TerrFndn_1:
	FakeJmp 004CC2F2H


; Visibility in Scenario Editor
VisInEditor:
	Cmp Ebp, 3
	Jne VisInEditor_2
	Push Edi
	Mov Edi, DWord Ptr Ds:[Plc]
	Cmp DWord Ptr Ds:[Edi + 1E0H], 7
	Pop Edi
	Je VisInEditor_2
VisInEditor_1:
	FakeJmp 005862E0H
VisInEditor_2:
	FakeJmp 00586291H


; Villager's Third Building Page
; Thanks to Daniel Pereira's research
VillThirdPage:

VillThirdPage_start:
	Sub Esp, 00000410H
	Push Ebx
	Push Ebp
	Push Esi
	Push Edi
	Mov Edi, Ecx
	Mov DWord Ptr Ds:[Edi + 000017ECH], 00000002H
	Mov Ecx, DWord Ptr Ds:[007912A0H]
VillThirdPage_1:
	FakeCall _PageFunction1
	Lea Ebp, [Edi + 00001248H]
	Mov Esi, Eax
	Lea Ebx, [Edi + 00001240H]
	Push 76H
	Push Ebp
	Push Ebx
	Mov Ecx, Esi
	Mov [Esp + 28H], Esi
VillThirdPage_2:
	FakeCall _PageFunction0
	Xor Eax, Eax
	Mov Al, [Esi + 000000A1H]
	Cmp Eax, 05
	Mov [Esp + 18H], Eax
	Jle VillThirdPage_less_equal
	Mov DWord Ptr Ds:[Esp + 18H], 00000002H

VillThirdPage_less_equal:
	Mov Ecx, Edi
VillThirdPage_3:
	FakeCall _PageFunction7
	Cmp Word Ptr Ds:[Ebp + 00H], 00
	Mov DWord Ptr Ds:[Esp + 14H], 00000000H
	Jng VillThirdPage_not_greater
	Xor Ebp, Ebp
	Jmp VillThirdPage_near

VillThirdPage_nonblock1:
	Mov Esi, [Esp + 1CH]

VillThirdPage_near:
	Mov Eax, [Ebx]
	Mov Edx, [Esi + 74H]
	Movsx Ecx, Word Ptr Ds:[Eax + Ebp + 04H]
	Xor Eax, Eax
	Mov Esi, [Edx + Ecx * 4]
	Movsx Eax, Byte Ptr Ds:[Esi + 00000186H]
	Sub Eax, 6
	Cmp Eax, 15
	Mov [Esp + 10H], Eax
	Jl VillThirdPage_jmp_nb2
	Cmp Eax, 31
	Jae VillThirdPage_jmp_nb2
	;Cmp Byte Ptr Ds:[Esi + 00000097H], 0AH
	;Jne VillThirdPage_jmp_nb2
	Mov Ecx, DWord Ptr Ds:[007912A0H]
	Lea Edx, [Esp + 00000220H]
	Push 00000200H
	Push Edx
	Movsx Edx, Word Ptr Ds:[Esi + 0CH]
	Mov Eax, [Ecx]
	Push Edx
	Call DWord Ptr Ds:[Eax + 28H]
	Movsx Eax, Word Ptr Ds:[Esi + 0EH]
	Mov Ecx, [Ebx]
	Push Eax
	Add Ecx, Ebp
	Push 13H
	Lea Edx, [Esp + 28H]
	Push Ecx
	Push Edx
	Mov Ecx, Edi
VillThirdPage_4:
	FakeCall _PageFunction2
	Mov Eax, [Esp + 10H]
	Mov Ecx, Edi
	Push Eax
VillThirdPage_5:
	FakeCall _PageFunction5
	Lea Edx, [Esp + 20H]
	Push 00
	Push Edx
	Mov Ecx, [Ebx]
	Lea Edx, [Esp + 00000228H]
	Add Ecx, Ebp
	Push Edx
	Mov Edx, [Esi + 000000B0H]
	Push 00
	Push Edx
	Movsx Edx, Word Ptr Ds:[Esi + 0EH]
	Add Edx, 00004E20H
	Push 00
	Push Edx
	Mov [Esp + 2CH], Eax
	Movsx Edx, Word Ptr Ds:[Ecx + 04H]
	Mov Cx, [Ecx + 06H]
	Push Edx
	Add Cx, [Esi + 000001CAH]
	Mov Edx, [Esp + 38H]
	Push 13H
	Push Ecx
	Push Eax
	Mov Eax, [Edi + Edx * 4 + 0000102CH]
	Mov Ecx, Edi
	Push Eax
VillThirdPage_6:
	FakeCall SUB_DRAWBUTTON
	Movsx Edx, Word Ptr Ds:[Esp + 10H]
	Mov Ecx, [Ebx]
	Mov Eax, [Edi + Edx * 4 + 00001080H]
	Movsx Ecx, Word Ptr Ds:[Ecx + Ebp + 04H]
	Mov DWord Ptr Ds:[Eax + 00000140H], 00000013H
	Mov [Eax + 00000144H], Ecx

VillThirdPage_nonblock2:
	Mov Eax, [Esp + 14H]
	Add Ebp, 28H
	Movsx Ecx, Word Ptr Ds:[Edi + 00001248H]
	Inc Eax
	Cmp Eax, Ecx
	Mov [Esp + 14H], Eax
	Jl VillThirdPage_nonblock1

VillThirdPage_nonblock3:
	Mov Edx, [Edi + 00001020H]
	Mov Ecx, Edi
	Push 0
	Push 0
	Push 0
	Push 0
	Push 0
	Push - 1
	Push 4912
	Push 0
	Push 12
	Push 32
	Push 13
	Push Edx
VillThirdPage_7:
	FakeCall SUB_DRAWBUTTON
	Mov Eax, [Edi + 00001020H]
	Mov Ecx, Edi
	Push 0
	Push 0
	Push 0
	Push 0
	Push 0
	Push - 1
	Push 4911
	Push 0
	Push 137
	Push 0
	Push 14
	Push Edx
VillThirdPage_8:
	FakeCall SUB_DRAWBUTTON
	Mov Ecx, Edi
VillThirdPage_9:
	FakeCall _PageFunction4
	Pop Edi
	Pop Esi
	Pop Ebp
	Pop Ebx
	Add Esp, 00000410H
	Ret

VillThirdPage1:
	Cmp Eax, 04
	Je VillThirdPage_start
	Ret

VillThirdPage2:
	Cmp Eax, 02
	Jne VillThirdPage_10
	Mov Ecx, Esi
	Call VillThirdPage_start
	Pop Esi
	Ret
VillThirdPage_10:
	FakeJmp PageJmp1

VillThirdPage3:
	Cmp Eax, 17
	Je VillThirdPage_12
	Cmp Eax, 02
	Je VillThirdPage_12
VillThirdPage_11:
	FakeJmp PageJmp2

VillThirdPage_12:
	FakeJmp PageJmp3

VillThirdPage4:
	Cmp DWord Ptr Ds:[Ebp + 000017ECH], 02
	Je VillThirdPage_16
	Cmp DWord Ptr Ds:[Ebp + 000017ECH], 04
VillThirdPage_13:
	FakeJmp PageJmp4

VillThirdPage5:
	Cmp Eax, 02
	Je VillThirdPage_15
VillThirdPage_14:
	FakeJmp PageJmp5
VillThirdPage_15:
	FakeJmp PageJmp6
VillThirdPage_16:
	FakeJmp PageJmp7

VillThirdPage_jmp_nb2:
	Jmp VillThirdPage_nonblock2

VillThirdPage_not_greater:
	Jmp VillThirdPage_nonblock3


; Force Units displayed in Unit/Building/Hero/Other list in map editor
; Unit
TypeInEditor1: ; @004E0ACB
	Cmp Byte Ptr Ds:[Edx + 56H], 2
	Je TypeInEditor1_3
	Jb TypeInEditor1_
	Cmp Byte Ptr Ds:[Edx + 56H], 5
	Jbe TypeInEditor1_2
TypeInEditor1_:
	Cmp Bl, 46H
	Jne TypeInEditor1_2
TypeInEditor1_1:
	FakeJmp 004E0AD0H
TypeInEditor1_2:
	FakeJmp 004E0B36H
TypeInEditor1_3:
	FakeJmp 004E0CBFH ; 004E0CC0H

TypeInEditor2: ; @004E0DAF
	Cmp Byte Ptr Ds:[Ecx + 56H], 2
	Je TypeInEditor2_3
	Jb TypeInEditor2_
	Cmp Byte Ptr Ds:[Ecx + 56H], 5
	Jbe TypeInEditor2_2
TypeInEditor2_:
	Cmp Dl, 46H
	Jne TypeInEditor2_2
TypeInEditor2_1:
	FakeJmp 004E0DB8H
TypeInEditor2_2:
	FakeJmp 004E0EC4H
TypeInEditor2_3:
	FakeJmp 004E0EE2H

; Building
TypeInEditor3: ; @004E0B5C
	Mov Cl, Byte Ptr Ds:[Edx + 56H]
	Cmp Cl, 2
	Je TypeInEditor3_2
	Cmp Cl, 3
	Je TypeInEditor3_3
	Cmp Cl, 4
	Je TypeInEditor3_2
	Cmp Cl, 5
	Je TypeInEditor3_2
	Cmp Byte Ptr Ds:[Edx + 4H], Al
	Jne TypeInEditor3_2
TypeInEditor3_1:
	FakeJmp 004E0B65H
TypeInEditor3_2:
	FakeJmp 004E0CC0H
TypeInEditor3_3:
	FakeJmp 004E0CBFH

TypeInEditor4: ; @004E0F64
	Mov Al, Byte Ptr Ds:[Ecx + 56H]
	Cmp Al, 2
	Je TypeInEditor4_2
	Cmp Al, 3
	Je TypeInEditor4_3
	Cmp Al, 4
	Je TypeInEditor4_2
	Cmp Al, 5
	Je TypeInEditor4_2
	Cmp Byte Ptr Ds:[Ecx + 4H], 50H
	Jne TypeInEditor4_2
TypeInEditor4_1:
	FakeJmp 004E0F6EH
TypeInEditor4_2:
	FakeJmp 004E145DH
TypeInEditor4_3:
	FakeJmp 004E1008H

; Hero
TypeInEditor5: ; @004E0C12
	Mov Cl, Byte Ptr Ds:[Edx + 56H]
	Cmp Cl, 2
	Je TypeInEditor5_2
	Cmp Cl, 3
	Je TypeInEditor5_2
	Cmp Cl, 4
	Je TypeInEditor5_3
	Cmp Cl, 5
	Je TypeInEditor5_2
	Mov Cl, Byte Ptr Ds:[Edx + 4H]
	Cmp Cl, 46H
TypeInEditor5_1:
	FakeJmp 004E0C18H
TypeInEditor5_2:
	FakeJmp 004E0CC0H
TypeInEditor5_3:
	FakeJmp 004E0CBFH

TypeInEditor6: ; @004E1096
	Mov Al, Byte Ptr Ds:[Ecx + 56H]
	Cmp Al, 2
	Je TypeInEditor6_2
	Cmp Al, 3
	Je TypeInEditor6_2
	Cmp Al, 4
	Je TypeInEditor6_3
	Cmp Al, 5
	Je TypeInEditor6_2
	Mov Al, Byte Ptr Ds:[Ecx + 4H]
	Cmp Al, 46H
TypeInEditor6_1:
	FakeJmp 004E109BH
TypeInEditor6_2:
	FakeJmp 004E1130H
TypeInEditor6_3:
	FakeJmp 004E115CH

; Other
TypeInEditor7: ; @004E0C55
	Cmp Byte Ptr Ds:[Edx + 56H], 5
	Je TypeInEditor7_3
	Jg TypeInEditor7_
	Cmp Byte Ptr Ds:[Edx + 56H], 2
	Jge TypeInEditor7_2
TypeInEditor7_:
	Mov Cl, Byte Ptr Ds:[Edx + 4H]
	Cmp Cl, 46H
TypeInEditor7_1:
	FakeJmp 004E0C5BH
TypeInEditor7_2:
	FakeJmp 004E0CC0H
TypeInEditor7_3:
	FakeJmp 004E0CBFH

TypeInEditor8: ; @004E11DE
	Cmp Byte Ptr Ds:[Ecx + 56H], 5
	Je TypeInEditor8_3
	Jg TypeInEditor8_
	Cmp Byte Ptr Ds:[Ecx + 56H], 2
	Jge TypeInEditor8_2
TypeInEditor8_:
	Mov Al, Byte Ptr Ds:[Ecx + 4H]
	Cmp Al, 46H
TypeInEditor8_1:
	FakeJmp 004E11E3H
TypeInEditor8_2:
	FakeJmp 004E145DH
TypeInEditor8_3:
	FakeJmp 004E135AH

; Assignment in Trigger
TypeInEditor9: ; @004E5047H
	Movzx Ecx, Byte Ptr Ds:[Eax + 56H]
	Sub Ecx, 2
	Cmp Ecx, 4
	Jae TypeInEditor9_
TypeInEditor9_Table_:
	Jmp DWord Ptr Ds:[Ecx * 4 + 11111111H]
TypeInEditor9_:
	Mov Cl, Byte Ptr Ds:[Eax + 4H]
	Cmp Cl, 46H
TypeInEditor9_1:
	FakeJmp 004E504DH
TypeInEditor9_Table:
	DD 004E50A5H ; Unit
	DD 004E5116H ; Building
	DD 004E5132H ; Hero
	DD 004E5145H ; Other


NewHealUnit:
	Mov Ecx, Edx
	Push 1
	Sub Esp, 8H
	Push 150
	Call GetAbility
	Test Eax, Eax
	Jne NewHealUnit_
	Mov Al, Byte Ptr Ds:[Edx + 1B5H] ; Other
NewHealUnit_1:
	FakeJmp 004C16C8H
NewHealUnit_2: ; Other
	FakeJmp 004C1791H

NewHealUnit_:
	Mov Edi, Eax

	Fld DWord Ptr Ds:[Esi + 30H]
	Fcomp DWord Ptr Ds:[635BC8H]
	Fstsw Ax
	Test Ah, 01H
	Jne NewHealUnit_2 ; Taken if HP <= 1

	Cmp Byte Ptr Ds:[Edi + 4], 0
	Jne NewHealUnit_Fast
	Mov Eax, DWord Ptr Ds:[Esi + 0CH]
	Mov Ecx, DWord Ptr Ds:[Eax + 8CH]
	Fld DWord Ptr Ds:[Ecx + 0A8H]
	Fadd DWord Ptr Ds:[Esi + 18CH]
	Fst DWord Ptr Ds:[Esi + 18CH]
	Fcomp DWord Ptr Ds:[6355CCH]
	Fstsw Ax
	Test Ah, 01H
	Jne NewHealUnit_Skip ; Taken if Paused ( Res < 2.0)

NewHealUnit_Fast:
	Fld DWord Ptr Ds:[Edi + 1CH] ; Work Rate Mul.
	Ftst
	Fstsw Ax
	Movsx Ecx, Word Ptr Ds:[Edi + 16H]
	Cmp Ecx, 0
	Jl NewHealUnit_NoRes
	Mov Ebp, DWord Ptr Ds:[Esi + 0CH]
	Mov Ebp, DWord Ptr Ds:[Ebp + 0A8H]
	Mov Ecx, DWord Ptr Ds:[Ecx * 4 + Ebp]
	Fmul DWord Ptr Ds:[Ecx + 1CH] ; Resource

NewHealUnit_NoRes:
	Lea Ebp, [Esp - 4]
	Fstp DWord Ptr Ss:[Ebp + 14H]
	Test Ah, 01H
	Jne NewHealUnit_Decrease

NewHealUnit_Increase:
	Movsx Ecx, Word Ptr Ds:[Edx + 2AH]
	Mov DWord Ptr Ss:[Ebp + 10H], Ecx
	Fild DWord Ptr Ss:[Ebp + 10H]
	Fcomp DWord Ptr Ds:[Esi + 30H]
	Fstsw Ax
	Test Ah, 41H
	Jne NewHealUnit_Skip

	Fld DWord Ptr Ds:[Esi + 30H]
	Fcomp DWord Ptr Ds:[Edi + 24H]
	Fstsw Ax
	Test Ah, 01H
	Je NewHealUnit_Skip ; Taken If Hp >= Max Recover Hp

NewHealUnit_Increase_:
	Fld DWord Ptr Ds:[Esi + 18CH]
	Fsub DWord Ptr Ds:[6355CCH]
	Fstp DWord Ptr Ds:[Esi + 18CH]
	Fld DWord Ptr Ds:[Esi + 30H]
	Fadd DWord Ptr Ss:[Ebp + 14H]
	Fst DWord Ptr Ds:[Esi + 30H]
	Movsx Eax, Word Ptr Ds:[Edx + 2AH]
	Mov DWord Ptr Ss:[Ebp + 10H], Eax
	Fild DWord Ptr Ss:[Ebp + 10H]
	Fxch St(1)
	Fcompp
	Fstsw Ax
	Test Ah, 01H
	Je NewHealUnit_Full ; Taken if ST>=ST(1)P

	Fld DWord Ptr Ds:[Esi + 30H]
	Fcomp DWord Ptr Ds:[Edi + 24H]
	Fstsw Ax
	Test Ah, 01H
	Je NewHealUnit_Maximum ; Taken If Hp >= Max Recover Hp

	Fld DWord Ptr Ds:[Esi + 18CH]
	Fcomp DWord Ptr Ds:[6355CCH] ; FLOAT 2.000000
	Fstsw Ax
	Test Ah, 01H
	Je NewHealUnit_Increase_ ; Taken if ST>=[6355CC]

	Pop Edi
	Pop Esi
	Mov Al, Bl
	Pop Ebp
	Pop Ebx
	Pop Ecx
	Retn

NewHealUnit_Full:
	Movsx Ecx, Word Ptr Ds:[Edx + 2AH]
	Mov DWord Ptr Ss:[Esp + 10H], Ecx
	Pop Edi
	Fild DWord Ptr Ss:[Esp + 0CH]
	Mov Al, Bl
	Fstp DWord Ptr Ds:[Esi + 30H]
	Pop Esi
	Pop Ebp
	Pop Ebx
	Pop Ecx
	Retn

NewHealUnit_Maximum:
	Fld DWord Ptr Ds:[Edi + 24H]
	Pop Edi
	Mov Al, Bl
	Fstp DWord Ptr Ds:[Esi + 30H]
	Pop Esi
	Pop Ebp
	Pop Ebx
	Pop Ecx
	Retn

NewHealUnit_Skip:
	Pop Edi
	Pop Esi
	Mov Al, Bl
	Pop Ebp
	Pop Ebx
	Pop Ecx
	Retn

NewHealUnit_Decrease:
	Fld DWord Ptr Ds:[Esi + 30H]
	Fcomp DWord Ptr Ds:[Edi + 24H]
	Fstsw Ax
	Test Ah, 41H
	Jne NewHealUnit_Skip ; Taken If Hp <= Min Decrease Hp

NewHealUnit_Decrease_:
	Fld DWord Ptr Ds:[Esi + 18CH]
	Fsub DWord Ptr Ds:[6355CCH]
	Fstp DWord Ptr Ds:[Esi + 18CH]
	Fld DWord Ptr Ds:[Esi + 30H]
	Fadd DWord Ptr Ss:[Ebp + 14H]
	Fst DWord Ptr Ds:[Esi + 30H]

	Fcomp DWord Ptr Ds:[Edi + 24H]
	Fstsw Ax
	Test Ah, 01H
	Jne NewHealUnit_Maximum ; Taken If Hp < Min Decrease Hp

	Fld DWord Ptr Ds:[Esi + 18CH]
	Fcomp DWord Ptr Ds:[6355CCH] ; FLOAT 2.000000
	Fstsw Ax
	Test Ah, 01H
	Je NewHealUnit_Decrease_ ; Taken if ST>=[6355CC]

	Pop Edi
	Pop Esi
	Mov Al, Bl
	Pop Ebp
	Pop Ebx
	Pop Ecx
	Retn


;NewCommand: ; ECX = 0B5H
;	Sub Ecx, 0B5H
;	Cmp Ecx, 2H
;NewCommand_01:
;	FakeJa 0051F534H
;NewCommand_1:
;	FakeJmp 0051F534H


; EDI = Defense Addr, ESI = Attack Addr, EBX = Defense Count
; Local.2 = Attack Count, Local.3 = 1.0f
Delta Equ 8H
Local_0 Equ Esp + 1CH + Delta ; Accurate Value
Local_1 Equ Esp + 18H + Delta ; Target Default Armor
Local_2 Equ Esp + 14H + Delta ; Attack Index
Local_3 Equ Esp + 10H + Delta ; 1.0f
Arg_1 Equ Esp + 24H + Delta ; Attack Count
Arg_2 Equ Esp + 28H + Delta ; Attack Addr.
Arg_3 Equ Esp + 2CH + Delta ; Multipiler
Local_4 Equ Esp ; Dodge Value
Local_5 Equ Esp + 4H ; Defense Value
DODGE_OFFSET Equ 100

QSAttack:
	Sub Esp, 8H
.Repeat
	Mov Dx, Word Ptr Ds:[Esi]
	Cmp Dx, DODGE_OFFSET
	Jge QSAttack_Skip

	Mov Eax, DWord Ptr Ss:[Local_1]
	Test Edi, Edi
	Mov DWord Ptr Ss:[Local_5], Eax
	Je QSAttack_NoDefense
	Test Ebx, Ebx
	Jle QSAttack_NoDefense

; Find Defense Value -- EAX = Defense Addr, DX = Armor Class
	Mov Eax, Edi
	Mov Ecx, Ebx
	.Repeat
		.If Word Ptr Ds:[Eax] == Dx
			Movsx Ebp, Word Ptr Ds:[Eax + 2H]
			Mov DWord Ptr Ss:[Local_5], Ebp
		.EndIf
		Add Eax, 4H
		Dec Ecx
	.Until Zero?

; Find Dodge Value -- EAX = Defense Addr, DX = Armor Class
	Xor Eax, Eax
	Mov DWord Ptr Ss:[Local_4], Eax
	Add Dx, DODGE_OFFSET
	Mov Eax, Edi
	Mov Ecx, Ebx
	.Repeat
		.If Word Ptr Ds:[Eax] == Dx
			Movsx Ebp, Word Ptr Ds:[Eax + 2H]
			Mov DWord Ptr Ss:[Local_4], Ebp
		.EndIf
		Add Eax, 4H
		Dec Ecx
	.Until Zero?

; Find Accurate Value -- EAX = Attack Addr, DX = Armor Class
	Mov Eax, 100
	Mov DWord Ptr Ss:[Local_0], Eax
	Mov Eax, DWord Ptr Ss:[Arg_2]
	Mov Ecx, DWord Ptr Ss:[Arg_1]
	.Repeat
		.If Word Ptr Ds:[Eax] == Dx
			Movsx Ebp, Word Ptr Ds:[Eax + 2H]
			Mov DWord Ptr Ss:[Local_0], Ebp
		.EndIf
		Add Eax, 4H
		Dec Ecx
	.Until Zero?

QSAttack_NoDefense:
	Movsx Ecx, Word Ptr Ds:[Esi + 2H]
	Sub Ecx, DWord Ptr Ss:[Local_5]
	Cmp Ecx, 0
	Jle QSAttack_Skip
	Mov DWord Ptr Ss:[Local_5], Ecx ; Attack Value - Defense Value

	Mov Ecx, DWord Ptr Ss:[Local_0]
	Sub Ecx, DWord Ptr Ss:[Local_4]
	Cmp Ecx, 0
	Jle QSAttack_Skip
	Mov DWord Ptr Ss:[Local_0], Ecx ; Accurate Value - Dodge Value

	Fild DWord Ptr Ss:[Local_5]
	Fimul DWord Ptr Ss:[Local_0]

	Fmul DWord Ptr Ss:[Local_3]
	Fmul DWord Ptr Ss:[Arg_3]
	Fcom QWord Ptr Ds:[6355D0H] ; FLOAT 0.0
	Fstsw Ax
	Test Ah, 41H
	.If Zero?
		.If Dx == 3 + DODGE_OFFSET || Dx == 4 + DODGE_OFFSET
QSAttack_2: ; Random Factor
			FakeCall SUB_RANDOM
			Cdq
			Mov Ecx, 64H
			IDiv Ecx
			Inc Edx
			Mov [Local_0], Edx
			Fimul DWord Ptr Ss:[Local_0]
			Mov DWord Ptr Ss:[Local_0], 42C80000H ; 100.0
			Fdiv DWord Ptr Ss:[Local_0]
		.EndIf
		Faddp St(1), St ; Plus
	.Else
		Fstp St
	.EndIf

QSAttack_Skip:
	Mov Eax, DWord Ptr Ss:[Local_2]
	Add Esi, 4H
	Dec Eax
	Mov DWord Ptr Ss:[Local_2], Eax
.Until Zero?

	Mov DWord Ptr Ss:[Local_0], 42C80000H ; 100.0 ; 461C4000H ; 10000.0
	Fdiv DWord Ptr Ss:[Local_0]
	Add Esp, 8H
QSAttack_1:
	FakeJmp 005CE817H



Align 4
__PatchModdingEnd:
