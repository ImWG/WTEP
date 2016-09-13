;EasyCodeName=Modding,1
Include	defines.asm

.Const

SecondPageA@	DD 00528326H
SecondPage2@	DD 0052830CH
NewButtons@  	DD 00525A04H
NewButtons2@  	DD 00528351H
NewButtonsGr@  	DD 00525C7CH ;00525CE0H
;AllBuildFnd@	DD 005571BBH
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
$Repulse           DD O Repulse
$PickRelic         DD O PickRelic
$PickRelic2        DD O PickRelic2
$PickRelic3        DD O PickRelic3
$PickRelic4        DD O PickRelic4
$IFV               DD O IFV
$IFV2              DD O IFV2
$RandomUnit        DD O RandomUnit

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
$IconGround2       DD O IconGround2
$IconPack2         DD O IconPack2
$IconHeal2         DD O IconHeal2
$IconUnload2       DD O IconUnload2

$MoreGarrisonTypes DD O MoreGarrisonTypes

$NewButtons2_Position DD O NewButtons2_Position
$NewButtons2_Position2 DD O NewButtons2_Position2


; Addresses for jmp or call
PatchModdingAddresses DD O NewButtons_0, O NewButtons_1, O NewButtons_2, O NewButtons_3, O NewButtons_4
		DD O NewButtons_5, O NewButtons_6, O NewButtons_7, O NewButtons_8
		DD O NewButtons_Back, O NewButtons_Back2, O NewButtons_9, O NewButtons_10, O NewButtons_11
		DD O NewButtons_12, O NewButtons_13, O NewButtons_14, O NewButtonsB_Create
		DD O NewButtons2_Back
		DD O NewButtons2_Market_1, O NewButtons2_Market_2, O NewButtons2_Market_3
		DD O NewButtons2_Market_4, O NewButtons2_Market_5, O NewButtons2_Market_6
		DD O NewButtonsGr_0, O NewButtonsGr_1, O NewButtonsGr_2
		DD O AllHeal_Monk, O AllHeal_1, O AllHeal_2, O AllHeal_3
		DD O FreeDrop_1, O FreeDrop_2, O FreeDrop_Back, O FreeDrop_Other
		DD O ExplosionUnit_1, O ExplosionUnit_2
		DD O SelfDestructUnit_1, O SelfDestructUnit_2
		DD O SelfHealUnit_1, O SelfHealUnit_2
		DD O AttackGround_1, O AttackGround_2, O AttackGround_3, O AttackGround2_1
		DD O CustomBuilder_1, O CustomBuilder2_1, O CustomBuilder3_1
		DD O DepositResource_1, O DepositResource_2
		DD O HeroMode_0, O HeroMode_1, O HeroMode_2, O HeroMode_3
		DD O HeroMode2_0, O HeroMode2_1
		DD O AdvancedTrainButton_1, O AdvancedTrainButton_2
		DD O FreeGatherPoint_0, O FreeGatherPoint_1, O FreeGatherPoint_2
		DD O FreeGatherPoint_3, O FreeGatherPoint_4, O FreeGatherPoint_5
		DD O MarketInit_1, O MarketInit_2
		DD O ExtendAttacks_1
		DD O VillagerCounterFix_1, O VillagerCounterFix_2, O VillagerCounterFix_3
		DD O MoreGarrisonTypes_0, O MoreGarrisonTypes_1, O MoreGarrisonTypes_2
		DD O Repulse_2
		DD O PickRelic_1, O PickRelic2_1, O PickRelic3_1
		DD O IFV_1, O IFV2_1
		DD O RandomUnit_Villager, O RandomUnit_Other, O RandomUnit_1
		DD 0H

PatchModdingDirectAddresses DD NewButtons_Table_, O NewButtons_Table, 3
		DD NewButtons_Table2_, O NewButtons_Table2, 3
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
;AllBuildFnd		DB 0EBH, 04H
;AllBuildFndN	DD 2
AllBuildFnd		DB 083H, 03CH, 0E4H, 000H, 0EBH, 000H, 00FH, 084H ; Allowing all classes of units to build foundations
AllBuildFndN	DD 8
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

HeroMode3		DB 3CH, 01H, 75H
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



.Code

;SimpleButtonArgs 14, 1EH, 74H, 0A065H ; Building Page
;SimpleButtonArgs 14, 0FH, 1CH, 133CH ; Heal
;SimpleButtonArgs 1020H, 14, 20H, 0AAH, 1336H ; Second Page
;SimpleButtonArgs 1020H, 14, 2dH, 33H, 1350H ; Gather Point
;_SimpleButtonArgs 1028H, 14, 0DH, 12H, 4, 1418, 0, 0, 0, 18DB40H, 18D940H, 0 ; Train
;SimpleButtonArgs 1020H, 0, 2fH, 9dH, 0a090H ; OpenGate
;SimpleButtonArgs 1020H, 0, 30H, 9eH, 0a091H ; LockGate

_SimpleButtonArgs Macro _Type, _Position, _Icon, _Function, _Id, _Descrption, _Arg7, _HotKey, _Arg9, _Arg10, _Arg11, _Arg12, _IconOffset
	Mov Eax, DWord Ptr [Esi + _Type]
	Mov Ecx, Esi
	Push _Arg12
	Push _Arg11
	Push _Arg10
	Push _Arg9
	Push _HotKey
	Push _Arg7
	Push _Descrption
	Push _Id
	Push _Function
IFNDEF _IconOffset
_IconOffset:
ENDIF
	Push _Icon
	Push _Position
	Push Eax
EndM

SimpleButtonArgs Macro _Type, _Position, _Icon, _Function, _Descrption, _IconOffset
	_SimpleButtonArgs _Type, _Position, _Icon, _Function, 0, _Descrption, -1, 0, 0, 0, 0, 0, _IconOffset
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



__PatchModdingStart:
	DB 'WAIFor modding', 0


; Make units with 4th bit of unit attributes checked explode when die.
ExplosionUnit1: ; 004C1695H - Remain offical petards and explosion boats
	Cmp Ax, 1B8H
	Je ExplosionUnit_1

ExplosionUnit2: ; 004C167CH - Not remain
	Mov Eax, DWord Ptr Ds:[Esi + 8H]
	Mov Al, Byte Ptr Ds:[Eax + 0A4H]
	Test Al, 08H
	Je ExplosionUnit_2
ExplosionUnit_1:
	FakeJmp 004C169BH

ExplosionUnit_2:
	FakeJmp 004C16B6H


; Make units with "Attack Mode"=5 die when attack.
SelfDestructUnit1: ; 004C2CE6H - Remain offical petards and explosion boats
	Cmp Ax, 1B8H
	Je SelfDestructUnit_1

SelfDestructUnit2: ; 004C2CD0H - Not remain
	Mov Al, Byte Ptr Ds:[Edi + 99H]
	Cmp Al, 5H
	Jne SelfDestructUnit_2
SelfDestructUnit_1:
	FakeJmp 004C2CECH

SelfDestructUnit_2:
	FakeJmp 004C2D1FH


; Make units 3rd bit of unit attributes checked self-healing like berserkers.
SelfHealUnit1: ; 004C179BH - Remain offical berserkers
	Cmp Ax, 2B6H
	Je SelfHealUnit_1

SelfHealUnit2: ; 004C1791H - Not remain
	Mov Al, Byte Ptr Ds:[Edx + 0A4H]
	Test Al, 04H
	Jz SelfHealUnit_2
SelfHealUnit_1:
	FakeJmp 004C17A5H

SelfHealUnit_2:
	FakeJmp 004C188BH


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
	Cmp Eax, 17
	Ja NewButtons_Other

NewButtons_Table_:
	Jmp DWord Ptr Ds:[Eax * 4 + 11111111H]
NewButtons_Table:
DD O NewButtons_Other, O NewButtons_Deposit, O NewButtons_Transform, O NewButtons_Train, O NewButtons_Heal
DD O NewButtons_Build, O NewButtons_Pack, O NewButtons_Unpack, O NewButtons_Ground, O NewButtons_Pack_
DD O NewButtons_Unpack_, O NewButtons_SingleBuild, O NewButtons_Other, O NewButtons_Unload, O NewButtons_Teleport
DD O NewButtons_Drop, O NewButtons_Market, O NewButtons_Convert, 0H

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
NewButtons_Table2:
DD O NewButtonsB_Other, O NewButtonsB_Ground, O NewButtonsB_Pack, O NewButtonsB_Heal, O NewButtonsB_Unload
DD O NewButtonsB_Other, O NewButtonsB_Other, O NewButtonsB_Other, 0H

NewButtonsB_Ground:
	SimpleButtonArgs 1020H, [Ebp + 4], 60, 23, 4923, IconGround2 ; Attack Ground
	Jmp NewButtonsB_Create
NewButtonsB_Pack:
	SimpleButtonArgs 1020H, [Ebp + 4], 0CH, 6EH, 0A05FH, IconPack2 ; Attack Ground
	Jmp NewButtonsB_Create
NewButtonsB_Heal:
	SimpleButtonArgs 1020H, [Ebp + 4], 0FH, 1CH, 133CH, IconHeal2 ; Attack Ground
	Jmp NewButtonsB_Create
NewButtonsB_Unload:
	SimpleButtonArgs 1020H, [Ebp + 4], 11H, 7H, 132BH, IconUnload2 ; Attack Ground

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
	SimpleButtonArgs 1028H, [Ebp], Ebx, 9FH, 0A092H, _ ; Deposit Relic
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
	SimpleButtonArgs 1028H, [Ebp], Ebx, 9FH, 0A05FH, _ ; Deposit Relic
NewButtons_14:
	FakeCall SUB_DRAWBUTTON
	Pop Ebx
	Jmp NewButtons_Done

NewButtons_Heal:
	Pop Eax
	SimpleButtonArgs 1020H, [Ebp], 0FH, 1CH, 133CH, IconHeal ; Heal
NewButtons_2:
	FakeCall SUB_DRAWBUTTON
	Jmp NewButtons_Done

NewButtons_Convert:
	Pop Eax
	SimpleButtonArgs 1020H, [Ebp], 0EH, 1DH, 133DH, IconConvert ; Convert(Unfinished)
NewButtons_11:
	FakeCall SUB_DRAWBUTTON
	Jmp NewButtons_Done

NewButtons_Build:
	Pop Eax
	SimpleButtonArgs 1020H, [Ebp], 1CH, 74H, 0A065H, IconBuild ; Building Page
NewButtons_3:
	FakeCall SUB_DRAWBUTTON
	Jmp NewButtons_Done

NewButtons_Ground:
	Pop Eax
	SimpleButtonArgs 1020H, [Ebp], 60, 23, 4923, IconGround ; Attack Ground
NewButtons_4:
	FakeCall SUB_DRAWBUTTON
	Jmp NewButtons_Done

NewButtons_Train:
	Cmp DWord Ptr Ss:[Ebp + 8H], 0
	Jne NewButtons_Other
	Pop Eax
	SimpleButtonArgs 1020H, [Ebp], 56, 0AAH, 1336H, IconTrain
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
	SimpleButtonArgs 1020H, [Ebp], 11H, 7H, 132BH, IconUnload ; Unload
	;SimpleButtonArgs 1020H, [Ebp], 2H, 0ACH, 1356H ; Go Out
NewButtons_8:
	FakeCall SUB_DRAWBUTTON
	Jmp NewButtons_Done

NewButtons_Teleport:
	Pop Eax
	SimpleButtonArgs 1020H, [Ebp], 2DH, 33H, 1350H, IconTeleport ; Set Gather Point
NewButtons_9:
	FakeCall SUB_DRAWBUTTON
	Jmp NewButtons_Done

NewButtons_Drop:
	Pop Eax
	SimpleButtonArgs 1020H, [Ebp], 34, 33H, 1350H, IconDrop ; Set Gather Point
NewButtons_10:
	FakeCall SUB_DRAWBUTTON
	Jmp NewButtons_Done

NewButtons_Pack_:
	Mov Eax, 14
	Mov [Ebp], Eax
NewButtons_Pack:
	Pop Eax
	SimpleButtonArgs 1020H, [Ebp], 0CH, 6EH, 0A05FH, IconPack ; Pack
NewButtons_12:
	FakeCall SUB_DRAWBUTTON
	Jmp NewButtons_Done

NewButtons_Unpack_:
	Mov Eax, 14
	Mov [Ebp], Eax
NewButtons_Unpack:
	Pop Eax
	SimpleButtonArgs 1020H, [Ebp], 0CH, 6EH, 0A05FH, IconUnpack ; Unpack
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
	SimpleButtonArgs 1020H, 6, 25, 7FH, 0A070H, _ ; Sell Wood
NewButtons2_Market_1:
	FakeCall SUB_DRAWBUTTON
NewButtons2_Market_1_:
	Test Word Ptr Ds:[Edi + 0A6H], 2H
	Jz NewButtons2_Market_2_
	SimpleButtonArgs 1020H, 7, 24, 80H, 0A071H, _ ; Sell Food
NewButtons2_Market_2:
	FakeCall SUB_DRAWBUTTON
NewButtons2_Market_2_:
	Test Word Ptr Ds:[Edi + 0A6H], 4H
	Jz NewButtons2_Market_3_
	SimpleButtonArgs 1020H, 8, 26, 81H, 0A072H, _ ; Sell Stone
NewButtons2_Market_3:
	FakeCall SUB_DRAWBUTTON
NewButtons2_Market_3_:
	Test Word Ptr Ds:[Edi + 0A6H], 8H
	Jz NewButtons2_Market_4_
	SimpleButtonArgs 1020H, 11, 12H, 83H, 0A074H, _ ; Buy Wood
NewButtons2_Market_4:
	FakeCall SUB_DRAWBUTTON
NewButtons2_Market_4_:
	Test Word Ptr Ds:[Edi + 0A6H], 10H
	Jz NewButtons2_Market_5_
	SimpleButtonArgs 1020H, 12, 13H, 84H, 0A075H, _ ; Buy Food
NewButtons2_Market_5:
	FakeCall SUB_DRAWBUTTON
NewButtons2_Market_5_:
	Test Word Ptr Ds:[Edi + 0A6H], 20H
	Jz NewButtons2_Market_6_
	SimpleButtonArgs 1020H, 13, 15H, 85H, 0A076H, _ ; Buy Gold
NewButtons2_Market_6:
	FakeCall SUB_DRAWBUTTON
NewButtons2_Market_6_:
	Pop Edi
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
	Cmp Byte Ptr Ds:[Eax + 14CH], 10H
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
	Cmp Byte Ptr Ds:[Ecx + 14CH], 4 ; is with heal skill?
	Je AllHeal_3_

AllHeal_2_:
	Pop Ebx
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
	Cmp Al, 8
	Je AttackGround_1
	And Al, 0E0H
	Cmp Al, 20H
	Jne AttackGround_3
AttackGround_2:
	FakeJmp 0046794CH
AttackGround_1:
	FakeJmp 00467945H
AttackGround_3:
	FakeJmp 00467938H

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
	Cmp Byte Ptr Ds:[Ecx + 14CH], 05H
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
	Cmp Byte Ptr Ds:[Ecx + 14CH], 05H
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
; If one unit is Type 80, class 51, but not positive hp, it would be used as build too.
AdvancedTrainButton:
	Cmp Byte Ptr Ds:[Edi + 4H], 50H
	Jl AdvancedTrainButton_1
	Cmp Word Ptr Ds:[Edi + 16H], 33H
	Jne AdvancedTrainButton_
	Cmp Word Ptr Ds:[Edi + 2AH], 0H
	Jg AdvancedTrainButton_1
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
DepositResource:
    Mov Eax, [Esi + 00001230H]
    Fld DWord Ptr Ds:[Eax + 44H]
    Fcomp DWord Ptr Ds:[Float0]
    Fnstsw Ax
    Test Ah, 41H
    Jne DepositResource_2
	SimpleButtonArgs 1020H, 5, 29, 160, 41107, IconDepositResource
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
; 3 and 4 doesn't work now.
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
; Type 10000 - damage by max hp of destination units.
; Type 10001 - damage by current hp of destination units.
; Type 10002 - damage by current lost hp of destination units.
; Type 10003 - damage by max hp of source unit.
; Type 10004 - damage by current hp of source unit.
; Type 10005 - damage by current lost hp of source unit.
; Values should be above 1000 (damage of 10% max hp should be 1100)
ExtendAttacks: ;SS[0] = Source Unit, SS[1] = Destination Unit, 005CE7E8h

	Fild DWord Ptr Ss:[Esp + 28H]
	Fsubp St(1), St

	Movsx Ecx, Word Ptr Ds:[Esi]
	Cmp Ecx, 10000
	Jl ExtendAttacks_1
	Cmp Ecx, 10005
	Jg ExtendAttacks_1

	Push Edi
	Push Esi
	Mov Edi, DWord Ptr Ss:[Esp + 0CH]
	Mov Esi, DWord Ptr Ss:[Esp + 8H]
	Push Eax
	Mov Eax, DWord Ptr Ds:[Edi + 8H]

	Cmp Ecx, 10002
	Jle ExtendAttacks__
	Mov Edi, Esi
	Mov Eax, DWord Ptr Ds:[Edi + 8H]
	Sub Ecx, 3
ExtendAttacks__:
	Cmp Ecx, 10000
	Je ExtendAttacks_MaxHP
	Cmp Ecx, 10001
	Je ExtendAttacks_CurrentHP
	;Cmp Ecx, 10002
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
	Fmul DWord Ptr Ds:[Edi + 30H]
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
	Je VillagerCounterFix_2
	Cmp Byte Ptr Ds:[Eax + 110H], 2
	Je VillagerCounterFix_3
VillagerCounterFix_1:
	FakeJmp 005CF038H
VillagerCounterFix_2:
	FakeJmp 005CF00EH
VillagerCounterFix_3:
	FakeJmp 005CF020H


; More Garrison Types
; Allowing more classes of units to garrison into buildings
; 5th bit: Animals (Prey, Predator, Domesticated Animals and Livestock) Currently no use
; 6th bit: Veichles (Siege Weapon, Scorpion and Trebuchets)
; 7th bit: Ships (Trade, Fishing, Transport, Warship and Boarding Boats)
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


Repulse: ; [Esp] = Source, [Esp + 4] = Target
	Push Eax
	Push Ecx
	Push Edx
	Push Esi
	Mov Esi, DWord Ptr Ds:[Esp + 10H]
	Mov Edx, DWord Ptr Ds:[Esp + 14H]

	Push Ebp
	Sub Esp, 10H
	Fld DWord Ptr Ds:[Edx + 38H]
	Fsub DWord Ptr Ds:[Esi + 38H]
	Fmul DWord Ptr Ds:[Float05]
	Fadd DWord Ptr Ds:[Edx + 38H]
	Fst DWord Ptr Ds:[Edx + 38H]
	Fstp DWord Ptr Ds:[Edx + 0C0H]

	Fld DWord Ptr Ds:[Edx + 3CH]
	Fsub DWord Ptr Ds:[Esi + 3CH]
	Fmul DWord Ptr Ds:[Float05]
	Fadd DWord Ptr Ds:[Edx + 3CH]
	Fst DWord Ptr Ds:[Edx + 3CH]
	Fstp DWord Ptr Ds:[Edx + 0C8H]

	;Xor Ecx, Ecx
	;Mov [Esi + 40H], Ecx

	Add Esp, 10H
	Pop Ebp

	Pop Esi
	Pop Edx
	Pop Ecx
	Pop Eax
	; Normal
	Movsx Ecx, Word Ptr Ds:[Esi + 2H]
	Mov DWord Ptr Ss:[Esp + 1CH], Ecx
Repulse_2:
	FakeJmp 005CE7E4H


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
	Mov Ax, Word Ptr Ds:[Edi + 0CH]
	Mov Word Ptr Ds:[Esi + 0CH], Ax
	Mov Ax, Word Ptr Ds:[Edi + 54H]
	Mov Word Ptr Ds:[Esi + 54H], Ax
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
	Mov Ecx, Esi
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
	Mov Ecx, Esi
	Call GetAbility

	Test Eax, Eax
	Je IFV2_
	Cmp Byte Ptr Ds:[Esi + 48H], 02H ; Unit must be living
	Jne IFV2_

	Push Eax
	Movsx Eax, Word Ptr Ds:[Eax + 0AH]
	Mov Ecx, DWord Ptr Ds:[Esi + 0CH]
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
; ECX = Source Unit
; arg1 = type
; arg2 = class (minor)
; arg3 = id (major)
; arg4 = mode (1 ignores arg 2 and 3)
GetAbility:
	Push Ebx
	Push Esi
	Push Edi
	Push Edx
	Push Ebp

	Mov Esi, Ecx
	Xor Ecx, Ecx

	Mov Edi, DWord Ptr Ds:[Esi + 08H]
	Mov Ebp, DWord Ptr Ds:[Edi + 0FCH]
	Xor Eax, Eax
	Test Ebp, Ebp
	Je GetAbility_
	Mov Edi, DWord Ptr Ds:[Ebp + 04H]
	Xor Esi, Esi

GetAbility_Loop:
	Mov Edx, DWord Ptr Ds:[Edi]

	Mov Bx, Word Ptr Ss:[Esp + 18H] ; arg1
	Cmp Word Ptr Ds:[Edx + 06H], Bx
	Jne GetAbility_Loop_
	Xor Cl, Cl ; priority

	Cmp DWord Ptr Ss:[Esp + 24H], 1 ; arg4
	Je GetAbility_Loop_1st

	Mov Ebx, DWord Ptr Ss:[Esp + 20H] ; arg3
	Je GetAbility_Loop_1st
	Cmp Word Ptr Ds:[Edx + 0AH], Bx
	Jne GetAbility_Loop_2nd
GetAbility_Loop_1st:
	Mov Cl, 3
	Jmp GetAbility_Loop_Do
GetAbility_Loop_2nd:
	Cmp Word Ptr Ds:[Edx + 0AH], -1
	Jne GetAbility_Loop_
	Mov Ebx, DWord Ptr Ss:[Esp + 1CH] ; arg2
	Cmp Word Ptr Ds:[Edx + 08H], Bx
	Jne GetAbility_Loop_3rd
	Mov Cl, 2
	Jmp GetAbility_Loop_Do
GetAbility_Loop_3rd:
	Cmp Word Ptr Ds:[Edx + 08H], -1
	Jne GetAbility_Loop_
	Mov Cl, 1

GetAbility_Loop_Do:
	Cmp Cl, Ch
	Jle GetAbility_Loop_
	Mov Esi, Edx
	Mov Ch, Cl

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



RandomUnit: ; 004B12ABh
	Cmp Esi, 53H
	Je RandomUnit_Villager
	Mov Edx, [Edi + 08H]
	Mov Edx, [Edx + 0CH]
	Mov Edx, [Edx + 74H]
	Mov Ecx, [Esi * 4 + Edx]
	Movsx Ecx, Word Ptr Ds:[Ecx + 58H] ; Unknown 1
	Cmp Ecx, 0
	Jl RandomUnit_Other
	Push Ecx
RandomUnit_1:
	FakeCall SUB_RANDOM
	Cdq
	Mov Ecx, 64H
	IDiv Ecx
	Cmp Edx, 32H
	Pop Ecx
	Jl RandomUnit_Other
	Mov Esi, Ecx
RandomUnit_Other:
	FakeJmp 004B12C7H

RandomUnit_Villager:
	FakeJmp 004B12B0H



__PatchModdingEnd:
