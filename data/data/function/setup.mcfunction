scoreboard objectives add Health dummy
scoreboard objectives add MaxHealth dummy
scoreboard objectives add Time dummy
scoreboard objectives add ArmorType dummy
scoreboard objectives add PrevArmorType dummy
scoreboard objectives add ArmorHealth dummy
scoreboard objectives add ArmorProt dummy
scoreboard objectives add DamageTaken dummy
scoreboard objectives add Jump custom:jump
scoreboard objectives add Hunger food
scoreboard objectives add SetHunger dummy

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

scoreboard objectives add Credits dummy

scoreboard objectives add Motion dummy
scoreboard objectives add x1 dummy
scoreboard objectives add y1 dummy
scoreboard objectives add z1 dummy

scoreboard objectives add Numbers dummy
scoreboard players set 100 Numbers 100
scoreboard players set 180 Numbers 180
scoreboard players set 90 Numbers 90
scoreboard players set 45 Numbers 45
scoreboard players set 6 Numbers 6
scoreboard players set 2 Numbers 2
scoreboard players set 1 Numbers 1

bossbar add 1 {"text": "Rounds"}

kill @e[type=chest_minecart]
execute in data:lobby run summon chest_minecart 12.75 65 -9 {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["mPS1"],CustomName:'{"text":"F57"}',CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"}}
execute in data:lobby run summon chest_minecart 12.75 65 -11 {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["mPS2"],CustomName:'{"text":"CH-A"}',CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"}}
execute in data:lobby run summon chest_minecart 12.75 65 -13 {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["mPS3"],CustomName:'{"text":"CBR-C"}',CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"}}
execute in data:lobby run summon chest_minecart 12.75 65 -15 {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["mPS4"],CustomName:'{"text":"SAWBLADE"}',CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"}}

execute in data:lobby run summon chest_minecart 14 65 -22.25 {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["mSS1"],CustomName:'{"text":"UP-9"}',CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"}}
execute in data:lobby run summon chest_minecart 16 65 -22.25 {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["mSS2"],CustomName:'{"text":"K45"}',CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"}}
execute in data:lobby run summon chest_minecart 18 65 -22.25 {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["mSS3"],CustomName:'{"text":"S97"}',CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"}}
execute in data:lobby run summon chest_minecart 20 65 -22.25 {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["mSS4"],CustomName:'{"text":"RAVEN"}',CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"}}

execute in data:lobby run summon chest_minecart 24.25 65 -19 {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["mES2"],CustomName:'{"text":"MED-KIT"}',CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"}}
execute in data:lobby run summon chest_minecart 24.25 65 -17 {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["mES3"],CustomName:'{"text":"HE GRENADE"}',CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"}}
execute in data:lobby run summon chest_minecart 24.25 65 -15 {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["mES4"],CustomName:'{"text":"SMOKE GRENADE"}',CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"}}
execute in data:lobby run summon chest_minecart 24.25 65 -13 {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["mES5"],CustomName:'{"text":"SHAPED CHARGE"}',CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"}}

execute in data:lobby run summon chest_minecart 20 64.75 13 {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["mAS1"],CustomName:'{"text":"II-A SCOUT"}',CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"}}
execute in data:lobby run summon chest_minecart 17 64.75 17 {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["mAS2"],CustomName:'{"text":"III-A RAIDER"}',CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"}}
execute in data:lobby run summon chest_minecart 13 64.75 17 {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["mAS3"],CustomName:'{"text":"III-A FRONTLINE"}',CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"}}
execute in data:lobby run summon chest_minecart 10 64.75 13 {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["mAS4"],CustomName:'{"text":"III AEGIS"}',CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"}}