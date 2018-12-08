;EasyCodeName=Modding,1
; Un-hardcoding and new functions in-game

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
MoreGarrison4@	DD 00525CDCH

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
;QSAttack@ DD 005CE7B2H

;MoreOnMinimap1@ DD 00432C61H
;MoreOnMinimap2@ DD 00432F1EH
;MoreOnMinimap3@ DD 004337C5H
;ColoredUnit@ DD 005862A9H
;ColoredUnit2@ DD 004CEDE7H
CustomGarrison@ DD 0043429FH
BuilderSound@ DD 00457304H
;MoreLang@ DD 0044DE47H
;AddUnitZPosition@ DD 00414ADAH
AdvAdjacentMode@ DD 004C9E7DH


; Interfaces
$__PatchModdingStart DD Offset __PatchModdingStart
$__PatchModdingEnd   DD Offset __PatchModdingEnd
$SecondPage        DD Offset SecondPage
$NewButtons        DD Offset NewButtons
$NewButtons2       DD Offset NewButtons2
$NewButtonsGr      DD Offset NewButtonsGr
$AllHeal		   DD Offset AllHeal
$FreeDrop          DD Offset FreeDrop
$ExplosionUnit1    DD Offset ExplosionUnit1
$ExplosionUnit2    DD Offset ExplosionUnit2
$SelfDestructUnit1 DD Offset SelfDestructUnit1
$SelfDestructUnit2 DD Offset SelfDestructUnit2
$SelfHealUnit1     DD Offset SelfHealUnit1
$SelfHealUnit2     DD Offset SelfHealUnit2
$AttackGround      DD Offset AttackGround
$AttackGround2     DD Offset AttackGround2
$CustomBuilder     DD Offset CustomBuilder
$CustomBuilder2    DD Offset CustomBuilder2
$CustomBuilder3    DD Offset CustomBuilder3
$DepositResource   DD Offset DepositResource
$AdvTrainButton    DD Offset AdvancedTrainButton
$FreeGather        DD Offset FreeGatherPoint
$MarketInit        DD Offset MarketInit
$ExtendAttacks     DD Offset ExtendAttacks
$VillCounterFix    DD Offset VillagerCounterFix
;$Repulse           DD Offset Repulse
$PickRelic         DD Offset PickRelic
$PickRelic2        DD Offset PickRelic2
$PickRelic3        DD Offset PickRelic3
$PickRelic4        DD Offset PickRelic4
$IFV               DD Offset IFV
$IFV2              DD Offset IFV2
$RandomUnit        DD Offset RandomUnit
$TerrFndn          DD Offset TerrFndn
$VisInEditor       DD Offset VisInEditor
$MoreGarrisonTypes DD Offset MoreGarrisonTypes
$MoreGarrison4     DD Offset MoreGarrison4
$VillThirdPage1    DD Offset VillThirdPage1
$VillThirdPage2    DD Offset VillThirdPage2
$VillThirdPage3    DD Offset VillThirdPage3
$VillThirdPage4    DD Offset VillThirdPage4
$VillThirdPage5    DD Offset VillThirdPage5
$TypeInEditor1	   DD Offset TypeInEditor1
$TypeInEditor2	   DD Offset TypeInEditor2
$TypeInEditor3	   DD Offset TypeInEditor3
$TypeInEditor4	   DD Offset TypeInEditor4
$TypeInEditor5	   DD Offset TypeInEditor5
$TypeInEditor6	   DD Offset TypeInEditor6
$TypeInEditor7	   DD Offset TypeInEditor7
$TypeInEditor8	   DD Offset TypeInEditor8
$TypeInEditor9	   DD Offset TypeInEditor9
$NewHealUnit       DD Offset NewHealUnit
$AllBuildFnd       DD Offset AllBuildFnd
;$NewCommand        DD Offset NewCommand
$QSAttack		   DD Offset QSAttack

$MoreOnMinimap1    DD MoreOnMinimap1
$MoreOnMinimap2    DD MoreOnMinimap2
$MoreOnMinimap3    DD MoreOnMinimap3
$ColoredUnit       DD ColoredUnit
$ColoredUnit2      DD ColoredUnit2
$CustomGarrison    DD CustomGarrison
$BuilderSound      DD BuilderSound
$MoreLang          DD MoreLang
$AddUnitZPosition  DD AddUnitZPosition
$AdvAdjacentMode   DD AdvAdjacentMode

; Icons
$IconHeal          DD Offset IconHeal
$IconDepositRes    DD Offset IconDepositResource
$IconBuild         DD Offset IconBuild
$IconGround        DD Offset IconGround
$IconTrain         DD Offset IconTrain
$IconUnload        DD Offset IconUnload
$IconTeleport      DD Offset IconTeleport
$IconDrop          DD Offset IconDrop
$IconUnpack        DD Offset IconUnpack
$IconPack          DD Offset IconPack
$IconGetOut        DD Offset IconGetOut
$IconScout         DD Offset IconScout
$IconGround2       DD Offset IconGround2
$IconPack2         DD Offset IconPack2
$IconHeal2         DD Offset IconHeal2
$IconUnload2       DD Offset IconUnload2
; Descripions
$DscHeal           DD Offset DscHeal
$DscDepositRes     DD Offset DscDepositRes
$DscBuild          DD Offset DscBuild
$DscGround         DD Offset DscGround
$DscTrain          DD Offset DscTrain
$DscUnload         DD Offset DscUnload
$DscTeleport       DD Offset DscTeleport
$DscDrop           DD Offset DscDrop
$DscUnpack         DD Offset DscUnpack
$DscPack           DD Offset DscPack
$DscGetOut         DD Offset DscGetOut
$DscScout          DD Offset DscScout
$DscGround2        DD Offset DscGround2
$DscPack2          DD Offset DscPack2
$DscHeal2          DD Offset DscHeal2
$DscUnload2        DD Offset DscUnload2

; Position
$PosDepositRes     DD Offset PosDepositRes

$NewButtons2_Position DD Offset NewButtons2_Position
$NewButtons2_Position2 DD Offset NewButtons2_Position2


; Addresses for jmp or call
PatchModdingAddresses DD Offset NewButtons_0, Offset NewButtons_1, Offset NewButtons_2, Offset NewButtons_3, Offset NewButtons_4
		DD Offset NewButtons_5, Offset NewButtons_6, Offset NewButtons_7, Offset NewButtons_8
		DD Offset NewButtons_Back, Offset NewButtons_Back2, Offset NewButtons_9, Offset NewButtons_10, Offset NewButtons_11
		DD Offset NewButtons_12, Offset NewButtons_13, Offset NewButtons_14, Offset NewButtons_15, Offset NewButtons_16, Offset NewButtonsB_Create
		DD Offset NewButtons2_Back
		DD Offset NewButtons2_Market_1, Offset NewButtons2_Market_2, Offset NewButtons2_Market_3
		DD Offset NewButtons2_Market_4, Offset NewButtons2_Market_5, Offset NewButtons2_Market_6
		DD Offset NewButtonsGr_0, Offset NewButtonsGr_1, Offset NewButtonsGr_2
		DD Offset AllHeal_Monk, Offset AllHeal_1, Offset AllHeal_2, Offset AllHeal_3
		DD Offset FreeDrop_1, Offset FreeDrop_2, Offset FreeDrop_Back, Offset FreeDrop_Other
		DD Offset ExplosionUnit_1
		DD Offset SelfDestructUnit_1
		DD Offset SelfHealUnit_1
		DD Offset AttackGround_1, Offset AttackGround_2, Offset AttackGround2_1
		DD Offset CustomBuilder_1, Offset CustomBuilder2_1, Offset CustomBuilder3_1
		DD Offset DepositResource_1, Offset DepositResource_2
		DD Offset AdvancedTrainButton_1, Offset AdvancedTrainButton_2
		DD Offset FreeGatherPoint_0, Offset FreeGatherPoint_1, Offset FreeGatherPoint_2
		DD Offset FreeGatherPoint_3, Offset FreeGatherPoint_4, Offset FreeGatherPoint_5
		DD Offset MarketInit_1, Offset MarketInit_2
		DD Offset ExtendAttacks_1
		DD Offset VillagerCounterFix_1
		DD Offset MoreGarrisonTypes_1, Offset MoreGarrison4_1
		;DD Offset Repulse_2
		DD Offset PickRelic_1, Offset PickRelic2_1, Offset PickRelic3_1
		DD Offset IFV_1, Offset IFV2_1
		DD Offset RandomUnit_Other, Offset RandomUnit_1
		DD Offset TerrFndn_1
		DD Offset VisInEditor_1, Offset VisInEditor_2

		DD Offset VillThirdPage_1, Offset VillThirdPage_2, Offset VillThirdPage_3, Offset VillThirdPage_4, Offset VillThirdPage_5, Offset VillThirdPage_6
		DD Offset VillThirdPage_7, Offset VillThirdPage_8, Offset VillThirdPage_9, Offset VillThirdPage_10, Offset VillThirdPage_11, Offset VillThirdPage_12
		DD Offset VillThirdPage_13, Offset VillThirdPage_14, Offset VillThirdPage_15, Offset VillThirdPage_16

		DD Offset TypeInEditor1_1, Offset TypeInEditor1_2, Offset TypeInEditor1_3
		DD Offset TypeInEditor2_1, Offset TypeInEditor2_2, Offset TypeInEditor2_3
		DD Offset TypeInEditor3_1, Offset TypeInEditor3_2, Offset TypeInEditor3_3
		DD Offset TypeInEditor4_1, Offset TypeInEditor4_2, Offset TypeInEditor4_3
		DD Offset TypeInEditor5_1, Offset TypeInEditor5_2, Offset TypeInEditor5_3
		DD Offset TypeInEditor6_1, Offset TypeInEditor6_2, Offset TypeInEditor6_3
		DD Offset TypeInEditor7_1, Offset TypeInEditor7_2, Offset TypeInEditor7_3
		DD Offset TypeInEditor8_1, Offset TypeInEditor8_2, Offset TypeInEditor8_3
		DD Offset TypeInEditor9_1

		DD Offset NewHealUnit_1, Offset NewHealUnit_2
		DD Offset AllBuildFnd_1

		DD Offset QSAttack_1, Offset QSAttack_2

		;DD Offset NewCommand_1
		DD MoreOnMinimap1_1, MoreOnMinimap2_1, MoreOnMinimap3_1
		DD ColoredUnit_1, ColoredUnit2_1, CustomGarrison_1, BuilderSound_1, MoreLang_1, AddUnitZPosition_1
		DD AdvAdjacentMode_1, AdvAdjacentMode_2
		DD 0H

PatchModdingAddresses2 DD Offset ExplosionUnit_01, Offset AllBuildFnd_01
		DD Offset SelfDestructUnit_01, Offset SelfHealUnit_01
		DD Offset VillagerCounterFix_01, Offset VillagerCounterFix_02
		DD Offset AttackGround_01
		DD Offset RandomUnit_01
		;DD Offset NewCommand_01
		DD MoreOnMinimap1_01, MoreOnMinimap2_01, MoreOnMinimap3_01, CustomGarrison_01
		DD BuilderSound_01, BuilderSound_02, MoreLang_01
		DD 0H

PatchModdingDirectAddresses DD NewButtons_Table_ + 3, NewButtons_Table
		DD NewButtons_Table2_ + 3, NewButtons_Table2
		DD TypeInEditor9_Table_ + 3, TypeInEditor9_Table
		DD AdvAdjacentMode_Table_ + 3, AdvAdjacentMode_Table
 		DD 0H

PatchModdingDirectAddressArrays DD NewButtons_Table, NewButtons_Table2, AdvAdjacentMode_Table + 4
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

MoreGarrison3	DB 8CH ; Allowing Type 80 to garrison into Type 80
MoreGarrison3N	DD 1

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
DD Offset NewButtons_Other, Offset NewButtons_Deposit, Offset NewButtons_Transform, Offset NewButtons_Train, Offset NewButtons_Heal
DD Offset NewButtons_Build, Offset NewButtons_Pack, Offset NewButtons_Unpack, Offset NewButtons_Ground, Offset NewButtons_Pack_
DD Offset NewButtons_Unpack_, Offset NewButtons_SingleBuild, Offset NewButtons_Other, Offset NewButtons_Unload, Offset NewButtons_Teleport
DD Offset NewButtons_Drop, Offset NewButtons_Market, Offset NewButtons_Convert, Offset NewButtons_Scout, Offset NewButtons_GetOut, 0H

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
DD Offset NewButtonsB_Other, Offset NewButtonsB_Ground, Offset NewButtonsB_Pack, Offset NewButtonsB_Heal, Offset NewButtonsB_Unload
DD Offset NewButtonsB_Other, Offset NewButtonsB_Other, Offset NewButtonsB_Other, 0H

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
	Push Ecx
	Push 1
	Sub Esp, 8H
	Push 105
	Call GetAbility
	Pop Ecx
	Test Eax, Eax
	Jne AllHeal_3_
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
; Allowing type 80 units to garrison into buildings
MoreGarrisonTypes: ; Eax = Unit Class, Dl = Garrision Type
	Push Ecx
	Mov Ecx, Ebp
	Push 2
	Push 0
	Push 3
	Push 3
	Call GetAbility
	Cmp Word Ptr Ds:[Eax + 14H], 0 ; Unit Ability "Garrison" in class 3 can override garrison class by "Resource In".
	Jl MoreGarrisonTypes_NoOverride
	Movsx Eax, Word Ptr Ds:[Eax + 14H]
	Pop Ecx
	Jmp MoreGarrisonTypes_
MoreGarrisonTypes_NoOverride:
	Movsx Eax, Word Ptr Ss:[Ebp + 16H]
	Pop Ecx
MoreGarrisonTypes_:
	Mov Dl, Byte Ptr Ds:[Ecx + 208H]
	Xor Esi, Esi
MoreGarrisonTypes_1:
	FakeJmp 0043431FH

; Display garrison button by checking ability
MoreGarrison4:
	Push Edx
	Push Eax
	Xor Ebx, Ebx
	Mov Bl, 1
	Mov Ecx, [Esi + 1080H + 4H * 4] ; Check if there is already a button
	Cmp Byte Ptr Ds:[Ecx + 38H], 0
.If !Zero?
	Mov Ecx, Eax
	Push 2
	Push 0
	Push 3
	Push 3
	Call GetAbility
	Test Eax, Eax
	.If !Zero?
		Mov Bl, 0
	.EndIf
.EndIf
	Pop Eax
	Pop Edx
MoreGarrison4_1:
	FakeJmp 00525CEDH


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


; Minimap mode: 11-lined square, 12-X
MoreOnMinimap1: ; 00432C61h - Flare X
	Cmp Byte Ptr Ds:[Edx + 096H], 12
MoreOnMinimap1_01:
	FakeJe 00432C69H
	Cmp Word Ptr Ds:[Edx + 10H], 112H
MoreOnMinimap1_1:
	FakeJmp 00432C67H

MoreOnMinimap2: ; 00432F1Eh - Wonder lined square
	Cmp Byte Ptr Ds:[Eax + 096H], 11
	Mov Eax, 4
MoreOnMinimap2_01:
	FakeJe 00432F2EH
	Cmp Cx, 114H
MoreOnMinimap2_1:
	FakeJmp 00432F23H

MoreOnMinimap3: ; 004337C7h - Wonder Patch 2
	Cmp DWord Ptr Ss:[Esp + 10H], 11
MoreOnMinimap3_01:
	FakeJe 004337D6H
MoreOnMinimap3_1:
	FakeJmp 00433892H


ColoredUnit: ;005862A9H
	Push Ecx
	Mov Ecx, Esi
	Call ColoredUnit_GetColor
	Pop Ecx
ColoredUnit_1:
	FakeJmp 005862AFH

ColoredUnit2: ;004CEDE7H
	Push Ecx
	Mov Ecx, Esi
	Call ColoredUnit_GetColor
	Mov Edx, Eax
	Pop Ecx
ColoredUnit2_1:
	FakeJmp 004CEDEDH


ColoredUnit_GetColor:
	Push Esi
	Push Edi
	Push Ebx
	Push Edx
	Mov Esi, Ecx
	Mov Edi, DWord Ptr Ds:[Esi + 0CH]
	Mov Eax, DWord Ptr Ds:[Esi + 08H]
;	Cmp Byte Ptr Ds:[Eax + 4H], 70 ; Only 70+ Units
;	Jl ColoredUnit_GetColor_Normal
	;Mov Ax, Word Ptr Ds:[Eax + 0EH] ; (Unused)"Language DLL Creation", ColorMask = 0C800H(51200)
	;Cmp Ah, 0C8H - 100H
	Mov Al, Byte Ptr Ds:[Eax + 56H] ; "Hide In Editor", [64,127]
.If Al >= 64
	Sub Al, 64
	Mov Ebx, DWord Ptr Ds:[Edi + 8CH]
	Mov Ecx, DWord Ptr Ds:[Ebx + 78H]
	Movzx Eax, Al
	.If Al == 63
		Mov Al, Byte Ptr Ds:[681A20H] ; Time
		And Al, 7
	.EndIf
	.If Al >= Cl
		Xor Al, Al
	.EndIf
	Mov Esi, DWord Ptr Ds:[Ebx + 7CH]
	Mov Eax, DWord Ptr Ds:[Eax * 4 + Esi]
.Else
;ColoredUnit_GetColor_Normal:
	Mov Eax, DWord Ptr Ds:[Edi + 160H]
.EndIf
	Pop Edx
	Pop Ebx
	Pop Edi
	Pop Esi
	Retn


; Allow garrison by id of task
CustomGarrison: ; 0043429FH, EDX = Shelter, EBP = Unit
	Push Esi
	Push Edi
	Push Ebp
	Push Eax

	Mov Ax, Word Ptr Ds:[Edx + 10H]
	Mov Edi, DWord Ptr Ds:[Ebp + 0FCH]
	Test Edi, Edi
	Je CustomGarrison_Skip
	Mov Esi, DWord Ptr Ds:[Edi + 8H]
	Test Esi, Esi
	Je CustomGarrison_Skip
	Mov Ebp, DWord Ptr Ds:[Edi + 4H]
.Repeat
	Mov Edi, DWord Ptr Ds:[Ebp]
	Cmp Ax, Word Ptr Ds:[Edi + 0AH]
	Je CustomGarrison_Do
	Add Ebp, 4
	Dec Esi
.Until Zero?
CustomGarrison_Skip:
	Pop Eax
	Pop Ebp
	Pop Edi
	Pop Esi
	Cmp Byte Ptr Ds:[Edx + 4H], 50H
CustomGarrison_01:
	FakeJne 004343FCH
CustomGarrison_1:
	FakeJmp 004342A5H

CustomGarrison_Do:
	Add Esp, 10H
	Mov Eax, Edi
	Pop Edi
	Pop Esi
	Pop Ebp
	Pop Ebx
	Add Esp, 18H
	Retn 20H

; Allow Custom Builder Sound (Attack Sound)
BuilderSound: ;00457304h
	Mov Al, Byte Ptr Ds:[Ecx + 110H]
	Cmp Al, 2
BuilderSound_01:
	FakeJe 0045730DH
	Cmp Al, 1
BuilderSound_02:
	FakeJe 0045731EH
	Push Esi
	Mov Edx, DWord Ptr Ds:[Ecx]
	Call DWord Ptr Ds:[Edx + 30H]
BuilderSound_1:
	FakeJmp 0045732DH


; Allow units to have 32768 to 65534 lang ids
MoreLang:  ;0044DE47h
	Mov Ax, Word Ptr Ds:[Edx + 0CH]
	Cmp Ax, -1
MoreLang_01:
	FakeJe 0044DEDDH
MoreLang_1:
	FakeJmp 0044DE54H


AddUnitZPosition: ; 00414ADAh
	Push 1H
	Push 3F800000H
	Push Ecx
AddUnitZPosition_1:
	FakeJmp 00414ADFH


; Advanced Adjacent Mode
AdvAdjacentMode: ; @004C9E7DH
	Call DWord Ptr Ds:[Edx + 304H]
	Mov Ecx, DWord Ptr Ds:[Esi + 8H]
	Movzx Eax, Byte Ptr Ds:[Ecx + 1C8H] ; Adj.Mode
	Dec Eax
.If Al >= 2
AdvAdjacentMode_1:
	FakeJmp 004C9E83H
.EndIf
AdvAdjacentMode_Table_:
	Jmp DWord Ptr Ds:[Eax * 4 + 11111111H]

AdvAdjacentMode_Ortho: ; Like RA2
	Xor Edx, Edx
	Mov Eax, DWord Ptr Ss:[Esp + 10H]
	Test Eax, Eax
.If !Zero?
	Or Dl, 1
.EndIf
	Mov Eax, DWord Ptr Ss:[Esp + 08H]
	Test Eax, Eax
.If !Zero?
	Or Dl, 2
.EndIf
	Mov Eax, DWord Ptr Ss:[Esp + 0CH]
	Test Eax, Eax
.If !Zero?
	Or Dl, 4
.EndIf
	Mov Eax, DWord Ptr Ss:[Esp + 04H]
	Test Eax, Eax
.If !Zero?
	Or Dl, 8
.EndIf
	Push Edx
	;Mov Ecx, Esi
AdvAdjacentMode_2:
	FakeJmp 004C9F04H

AdvAdjacentMode_Table:
	DD 004C9E83H, AdvAdjacentMode_Ortho, 0



Align 4
__PatchModdingEnd:
