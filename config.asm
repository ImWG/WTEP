;EasyCodeName=config,1
.Const




.Data?


.Data

iniFormat		DB  '.\%s', 0
defaultINI		DB  '.\wtep.ini', 0
iniSection0		DB  'General', 0
iniSection1		DB  'Modding', 0
iniSection2		DB  'Effects', 0
iniSection3		DB  'Buttons', 0
iniSection4		DB  'Cheats', 0
iniSection5		DB  'CustomGarrisionTypes', 0
iniSection6		DB  'NewResourceLanguages', 0
iniSection7		DB  'NewTerrains', 0

defaultGame		DB	'age2_x1.exe', 0
noCheat			DB  0

iniKeyGame		DB  'game', 0
iniKeyInstall	DB  'install', 0
iniKeyTriggers	DB  'triggers', 0
iniKeyModding	DB  'modding', 0
iniKeyCheats	DB  'cheats', 0
iniKeyTerrains	DB  'terrains', 0
iniNumberKeyF   DB  '%d', 0

; Scenario
iniKeyCasualTerr DB 'CasualTerrain', 0
iniKeyImprovedEd DB 'ImprovedEditor', 0
iniKeyMoreRes    DB 'MoreResources', 0
iniKeyNewEffects DB 'NewEffects', 0
iniKeyIsoSiege	 DB 'SiegeWeaponBugFix', 0
iniKeyTaskProj	 DB 'TaskProjectiles', 0

; Un-hardcoding
iniKeyAllFnd	DB 'AllClassBuildFoundations', 0
iniKeyAllHeal	DB 'AllClassHeal', 0
iniKeyAttackGnd	DB 'AttackGround', 0
iniKeyBuilder	DB 'CustomBuilder', 0
iniKeyBuilder2	DB 'CustomBuilderVillagers', 0
iniKeyExplUnit	DB 'ExplosionUnit', 0
iniKeyVillCntr	DB 'FixVillagerCounter', 0
iniKeyTypeInEd  DB 'ForcedTypeInEditor', 0
iniKeyTerrFndn	DB 'FreeFoundationTerrain', 0
iniKeyMonkHealGraph DB 'MonkHealGraphic', 0
iniKeyMonkHealGraphId DB 'MonkHealGraphicId', 0
iniKey2ndPage	DB 'SecondPage', 0
iniKeySelfDestruct DB 'SelfDestructUnit', 0
iniKeySelfHeal	DB 'SelfHealUnit', 0

; Enhanced Functions
iniKeyAdvTrain	DB 'AdvancedTrainButton', 0
iniKeyDepositButton DB 'DepositButton', 0
iniKeyXAtks		DB 'ExtendedAttacks', 0
iniKeyIFV		DB 'FunctionGarrison', 0
iniKeyHeroMode	DB 'HeroModeForConversion', 0
iniKeyXGarrison	DB 'MoreGarrisonTypes', 0
iniKeyRelicMem	DB 'MonkRelicMemory', 0
iniKeyNewSkills	DB 'NewSkills', 0
iniKeyRandomUnit DB 'RandomTrain', 0
iniKeyNewHeal   DB 'Regeneration', 0
iniKeyVillThird DB 'VillagerThirdPage', 0
iniKeyVisInEd   DB 'VisbilityInEditor', 0
iniGarrClassF   DB 'class%d', 0

; Icon Images
iniIconDepositRes	DB 'IconDepositResource', 0
iniIconGarrison	DB 'IconGarrison', 0
iniIconGround	DB 'IconSkillAttackGround', 0
iniIconBuild	DB 'IconSkillBuild', 0
iniIconGetOut	DB 'IconSkillGetOut', 0
iniIconHeal		DB 'IconSkillHeal', 0
iniIconPack		DB 'IconSkillPack', 0
iniIconDrop		DB 'IconSkillParadrop', 0
iniIconScout	DB 'IconSkillScout', 0
iniIconTeleport	DB 'IconSkillTeleport', 0
iniIconTrain	DB 'IconSkillTrain', 0
iniIconUnload	DB 'IconSkillUnload', 0
iniIconUnpack	DB 'IconSkillUnpack', 0

; Icon Descrptions
iniDscDepositRes	DB 'DescDepositResource', 0
iniDscHeal		DB 'DescSkillHeal', 0
iniDscGround	DB 'DescSkillAttackGround', 0
iniDscBuild 	DB 'DescSkillBuild', 0
iniDscGetOut	DB 'DescSkillGetOut', 0
iniDscPack		DB 'DescSkillPack', 0
iniDscDrop		DB 'DescSkillParadrop', 0
iniDscScout		DB 'DescSkillScout', 0
iniDscTeleport	DB 'DescSkillTeleport', 0
iniDscTrain 	DB 'DescSkillTrain', 0
iniDscUnload	DB 'DescSkillUnload', 0
iniDscUnpack	DB 'DescSkillUnpack', 0

; Icon Locations
iniPosDepositRes	DB 'PosDepositResource', 0

; Resource Language Ids
iniRDscBerserk  DB 'BerserkerHealRate', 0
iniRDscBuildRat DB 'BuildRate', 0
iniRDscCurrAge  DB 'CurrentAge', 0
iniRDscFaithRc  DB 'FaithRecharge', 0
iniRDscFoodPrd  DB 'FoodProduction', 0
iniRDscGoldPrd  DB 'GoldProduction', 0
iniRDscMarketRt DB 'MarketRate', 0
iniRDscHealRang DB 'MonkHealRange', 0
iniRDscMonkHeal DB 'MonkHealRate', 0
iniRDscPopLimit DB 'PopLimit', 0
iniRDscRelicPrd DB 'RelicProduction', 0
iniRDscStonePrd DB 'StoneProduction', 0
iniRDscTradePrd DB 'TradeProduction', 0
iniRDscWoodPrd  DB 'WoodProduction', 0

; Cheats
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


; Terrains
iniKeyMaxTerr   DB 'MaxExtraTerrains', 0


cGameName		DB 256 Dup(0)
cInstall		DD 00000000H

.Code
