scoreboard objectives add Health dummy
scoreboard objectives add MaxHealth dummy
scoreboard objectives add Time dummy
scoreboard objectives add ArmorType dummy
scoreboard objectives add PrevArmorType dummy
scoreboard objectives add ArmorHealth dummy
scoreboard objectives add ArmorProt dummy
scoreboard objectives add DamageTaken dummy
scoreboard objectives add Jump custom:jump

scoreboard objectives add P.Ammo dummy
scoreboard objectives add P.MaxAmmo dummy
scoreboard objectives add P.ReloadTime dummy
scoreboard objectives add P.Firerate dummy
scoreboard objectives add P.Damage dummy

scoreboard objectives add S.Ammo dummy
scoreboard objectives add S.MaxAmmo dummy
scoreboard objectives add S.ReloadTime dummy
scoreboard objectives add S.Firerate dummy
scoreboard objectives add S.Damage dummy

scoreboard objectives add Recoil dummy
scoreboard objectives add RecoilRandom dummy
scoreboard objectives add RecoilDirec dummy

scoreboard objectives add PrimaryWeapon dummy
scoreboard objectives add SecondaryWeapon dummy
scoreboard objectives add EquipmentSlot1 dummy
scoreboard objectives add EquipmentSlot2 dummy
scoreboard objectives add TimeLeft dummy
scoreboard objectives add RoundWins dummy
scoreboard objectives add GameWins dummy
scoreboard objectives add PlayerCount dummy
scoreboard objectives add GameStatus dummy
scoreboard objectives add Experience dummy
scoreboard objectives add Level level

scoreboard objectives add Motion dummy
scoreboard objectives add x1 dummy
scoreboard objectives add y1 dummy
scoreboard objectives add z1 dummy
scoreboard objectives add Numbers dummy

scoreboard objectives add currY dummy
scoreboard objectives add lastY dummy

scoreboard players set 100 Numbers 100
scoreboard players set 180 Numbers 180
scoreboard players set 90 Numbers 90
scoreboard players set 45 Numbers 45
scoreboard players set 2 Numbers 2

bossbar add 1 {"text": "Rounds"}

kill @e[type=interaction,tag=Armory]
execute in overworld run summon interaction 13.0 -59.0 10.5 {Tags:[Primary1,Armory]}
execute in overworld run summon interaction 13.0 -59.0 12.5 {Tags:[Primary2,Armory]}
execute in overworld run summon interaction 13.0 -59.0 14.5 {Tags:[Primary3,Armory]}
execute in overworld run summon interaction 13.0 -59.0 16.5 {Tags:[Primary4,Armory]} 

execute in overworld run summon interaction 6.0 -59.0 22.5 {Tags:[Secondary1,Armory]}
execute in overworld run summon interaction 6.0 -59.0 20.5 {Tags:[Secondary2,Armory]}
execute in overworld run summon interaction 6.0 -59.0 18.5 {Tags:[Secondary3,Armory]}
execute in overworld run summon interaction 6.0 -59.0 16.5 {Tags:[Secondary4,Armory]}

execute in overworld run summon interaction 2.0 -59.0 22.5 {Tags:[Armor0,Armory]}
execute in overworld run summon interaction 2.0 -59.0 20.5 {Tags:[Armor1,Armory]}
execute in overworld run summon interaction 2.0 -59.0 18.5 {Tags:[Armor2,Armory]}
execute in overworld run summon interaction 2.0 -59.0 16.5 {Tags:[Armor3,Armory]}
execute in overworld run summon interaction 2.0 -59.0 14.5 {Tags:[Armor4,Armory]}

execute in overworld run summon interaction 1.0 -59.0 14.5 {Tags:[EqS1N1,Armory]}
execute in overworld run summon interaction 1.0 -59.0 16.5 {Tags:[EqS1N2,Armory]}
execute in overworld run summon interaction 1.0 -59.0 18.5 {Tags:[EqS1N3,Armory]}
execute in overworld run summon interaction 1.0 -59.0 20.5 {Tags:[EqS1N4,Armory]}
execute in overworld run summon interaction 1.0 -59.0 22.5 {Tags:[EqS1N5,Armory]}

execute in overworld run summon interaction -7.0 -59.0 14.5 {Tags:[EqS2N1,Armory]}
execute in overworld run summon interaction -7.0 -59.0 16.5 {Tags:[EqS2N2,Armory]}
execute in overworld run summon interaction -7.0 -59.0 18.5 {Tags:[EqS2N3,Armory]}
execute in overworld run summon interaction -7.0 -59.0 20.5 {Tags:[EqS2N4,Armory]}
execute in overworld run summon interaction -7.0 -59.0 22.5 {Tags:[EqS2N5,Armory]}