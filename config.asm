;EasyCodeName=config,1
.Const




.Data?


.Data

iniName			DB  '.\wtep.ini', 0
iniSection0		DB  'general', 0
iniSection1		DB  'modding', 0
iniSection2		DB  'effects', 0
iniSection3		DB  'buttons', 0
iniSection4		DB  'cheats', 0

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

iniIconHeal		DB 'IconSkillHeal', 0
iniIconBuild	DB 'IconSkillBuild', 0
iniIconGround	DB 'IconSkillAttackGround', 0
iniIconTrain	DB 'IconSkillTrain', 0
iniIconUnload	DB 'IconSkillUnload', 0
iniIconTeleport	DB 'IconSkillTeleport', 0
iniIconDrop		DB 'IconSkillParadrop', 0
iniIconUnpack	DB 'IconSkillUnpack', 0
iniIconPack		DB 'IconSkillPack', 0
iniIconDepositRes	DB 'IconDepositResource', 0

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
