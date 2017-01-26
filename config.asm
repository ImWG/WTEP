;EasyCodeName=config,1
.Const




.Data?


.Data

iniName			DB  '.\wtep.ini', 0
iniSection0		DB  'General', 0
iniSection1		DB  'Modding', 0
iniSection2		DB  'Effects', 0
iniSection3		DB  'Buttons', 0
iniSection4		DB  'Cheats', 0
iniSection5		DB  'CustomGarrisionTypes', 0
iniSection6		DB  'NewResourceLanguages', 0

iniKey1			DB '1', 0
iniKey2			DB '2', 0
iniKey3			DB '3', 0
iniKey4			DB '4', 0
iniKey5			DB '5', 0
iniKey6			DB '6', 0
iniKey7			DB '7', 0
iniKey8			DB '8', 0
iniKey9			DB '9', 0
iniKey10		DB '10', 0

defaultGame		DB	'age2_x1.exe', 0
noCheat			DB  0

iniKeyGame		DB  'game', 0
iniKeyInstall	DB  'install', 0
iniKeyTriggers	DB  'triggers', 0
iniKeyModding	DB  'modding', 0
iniKeyCheats	DB  'cheats', 0

iniKeyNewEffects DB  'NewEffects', 0
iniKeyImprovedEd DB  'ImprovedEditor', 0
iniKeyTaskProj	DB  'TaskProjectiles', 0
iniKeyCasualTerr DB  'CasualTerrain', 0

iniKey2ndPage	DB  'SecondPage', 0
iniKeyNewSkills	DB	'NewSkills', 0
iniKeyAllFnd	DB	'AllClassBuildFoundations', 0
iniKeyAllHeal	DB	'AllClassHeal', 0
iniKeyExplUnit	DB  'ExplosionUnit', 0
iniKeySelfDestruct DB  'SelfDestructUnit', 0
iniKeySelfHeal	DB  'SelfHealUnit', 0
iniKeyDepositButton DB 'DepositButton', 0
iniKeyBuilder	DB 'CustomBuilder', 0
iniKeyBuilder2	DB 'CustomBuilderVillagers', 0
iniKeyAttackGnd	DB 'AttackGround', 0
iniKeyHeroMode	DB 'HeroModeForConversion', 0
iniKeyAdvTrain	DB 'AdvancedTrainButton', 0
iniKeyXAtks		DB 'ExtendedAttacks', 0
iniKeyVillCntr	DB 'FixVillagerCounter', 0
iniKeyXGarrison	DB 'MoreGarrisonTypes', 0
iniKeyRelicMem	DB 'MonkRelicMemory', 0
iniKeyIFV		DB 'FunctionGarrison', 0
iniKeyRandomUnit DB 'RandomTrain', 0
iniKeyTerrFndn	DB 'FreeFoundationTerrain', 0
iniKeyVisInEd   DB 'VisbilityInEditor', 0
iniKeyVillThird DB 'VillagerThirdPage', 0
iniKeyTypeInEd  DB 'ForcedTypeInEditor', 0

iniIconHeal		DB 'IconSkillHeal', 0
iniIconBuild	DB 'IconSkillBuild', 0
iniIconGround	DB 'IconSkillAttackGround', 0
iniIconTrain	DB 'IconSkillTrain', 0
iniIconUnload	DB 'IconSkillUnload', 0
iniIconTeleport	DB 'IconSkillTeleport', 0
iniIconDrop		DB 'IconSkillParadrop', 0
iniIconUnpack	DB 'IconSkillUnpack', 0
iniIconPack		DB 'IconSkillPack', 0
iniIconGetOut	DB 'IconSkillGetOut', 0
iniIconScout	DB 'IconSkillScout', 0
iniIconDepositRes	DB 'IconDepositResource', 0
iniIconGarrison	DB 'IconGarrison', 0

iniDscHeal		DB 'DescSkillHeal', 0
iniDscBuild 	DB 'DescSkillBuild', 0
iniDscGround	DB 'DescSkillAttackGround', 0
iniDscTrain 	DB 'DescSkillTrain', 0
iniDscUnload	DB 'DescSkillUnload', 0
iniDscTeleport	DB 'DescSkillTeleport', 0
iniDscDrop		DB 'DescSkillParadrop', 0
iniDscUnpack	DB 'DescSkillUnpack', 0
iniDscPack		DB 'DescSkillPack', 0
iniDscGetOut	DB 'DescSkillGetOut', 0
iniDscScout		DB 'DescSkillScout', 0
iniDscDepositRes	DB 'DescDepositResource', 0
;iniDscGround2	DB 'DescSkillAttackGround2', 0
;iniDscPack2		DB 'DescSkillPack2', 0
;iniDscHeal2		DB 'DescSkillHeal2', 0
;iniDscUnload2	DB 'DescSkillUnload2', 0

iniPosDepositRes	DB 'PosDepositResource', 0

iniRDscPopLimit DB 'PopLimit', 0
iniRDscBuildRat DB 'BuildRate', 0
iniRDscMarketRt DB 'MarketRate', 0
iniRDscCurrAge  DB 'CurrentAge', 0
iniRDscMonkHeal DB 'MonkHealRate', 0
iniRDscBerserk  DB 'BerserkerHealRate', 0
iniRDscFaithRc  DB 'FaithRecharge', 0
iniRDscRelicPrd DB 'RelicProduction', 0
iniRDscHealRang DB 'MonkHealRange', 0
iniRDscFoodPrd  DB 'FoodProduction', 0
iniRDscWoodPrd  DB 'WoodProduction', 0
iniRDscGoldPrd  DB 'GoldProduction', 0
iniRDscStonePrd DB 'StoneProduction', 0
iniRDscTradePrd DB 'TradeProduction', 0

iniCheatSpawn1	DB 'CodeSpawn1', 0
iniCheatUnit1	DB 'SpawnUnit1', 0
iniCheatSpawn2	DB 'CodeSpawn2', 0
iniCheatUnit2	DB 'SpawnUnit2', 0
iniCheatSpawn3	DB 'CodeSpawn3', 0
iniCheatUnit3	DB 'SpawnUnit3', 0
iniCheatSpawn4	DB 'CodeSpawn4', 0
iniCheatUnit4	DB 'SpawnUnit4', 0
iniCheatSpawn5	DB 'CodeSpawn5', 0
iniCheatUnit5	DB 'SpawnUnit5', 0

iniCheatTech1	DB 'CodeTech1', 0
iniCheatRsrh1	DB 'Research1', 0
iniCheatTech2	DB 'CodeTech2', 0
iniCheatRsrh2	DB 'Research2', 0
iniCheatTech3	DB 'CodeTech3', 0
iniCheatRsrh3	DB 'Research3', 0
iniCheatTech4	DB 'CodeTech4', 0
iniCheatRsrh4	DB 'Research4', 0
iniCheatTech5	DB 'CodeTech5', 0
iniCheatRsrh5	DB 'Research5', 0


cGameName		DB 256 Dup(0)
cInstall		DD 00000000H

.Code
