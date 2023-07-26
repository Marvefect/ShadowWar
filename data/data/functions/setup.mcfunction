scoreboard objectives add Health dummy
scoreboard objectives add MaxHealth dummy
scoreboard objectives add Time dummy
scoreboard objectives add ArmorType dummy
scoreboard objectives add PrevArmorType dummy
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
bossbar add 1 {"text": "Rounds"}

kill @e[type=interaction,tag=Armory]
summon interaction 13.0 -59.0 10.5 {Tags:[Primary1,Armory]}
summon interaction 13.0 -59.0 12.5 {Tags:[Primary2,Armory]}
summon interaction 13.0 -59.0 14.5 {Tags:[Primary3,Armory]}
summon interaction 13.0 -59.0 16.5 {Tags:[Primary4,Armory]} 

summon interaction 6.0 -59.0 22.5 {Tags:[Secondary1,Armory]}
summon interaction 6.0 -59.0 20.5 {Tags:[Secondary2,Armory]}
summon interaction 6.0 -59.0 18.5 {Tags:[Secondary3,Armory]}

summon interaction 2.0 -59.0 22.5 {Tags:[Armor0,Armory]}
summon interaction 2.0 -59.0 20.5 {Tags:[Armor1,Armory]}
summon interaction 2.0 -59.0 18.5 {Tags:[Armor2,Armory]}
summon interaction 2.0 -59.0 16.5 {Tags:[Armor3,Armory]}
summon interaction 2.0 -59.0 14.5 {Tags:[Armor4,Armory]}

summon interaction 1.0 -59.0 14.5 {Tags:[EqS1N1,Armory]}
summon interaction 1.0 -59.0 16.5 {Tags:[EqS1N2,Armory]}
summon interaction 1.0 -59.0 18.5 {Tags:[EqS1N3,Armory]}
summon interaction 1.0 -59.0 20.5 {Tags:[EqS1N4,Armory]}
summon interaction 1.0 -59.0 22.5 {Tags:[EqS1N5,Armory]}

summon interaction -7.0 -59.0 14.5 {Tags:[EqS2N1,Armory]}
summon interaction -7.0 -59.0 16.5 {Tags:[EqS2N2,Armory]}
summon interaction -7.0 -59.0 18.5 {Tags:[EqS2N3,Armory]}
summon interaction -7.0 -59.0 20.5 {Tags:[EqS2N4,Armory]}
summon interaction -7.0 -59.0 22.5 {Tags:[EqS2N5,Armory]}