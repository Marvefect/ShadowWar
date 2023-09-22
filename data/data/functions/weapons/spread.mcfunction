execute if score @s[nbt={SelectedItemSlot:0}] PrimaryWeapon matches 1 run scoreboard players add @s Recoil 2
execute if score @s[nbt={SelectedItemSlot:0}] PrimaryWeapon matches 2 run scoreboard players add @s Recoil 20
execute if score @s[nbt={SelectedItemSlot:0}] PrimaryWeapon matches 3 run scoreboard players add @s Recoil 3
execute if score @s[nbt={SelectedItemSlot:0}] PrimaryWeapon matches 4 run scoreboard players add @s Recoil 1

execute store result score @s RecoilDirec run random value 1..2
execute store result score @s RecoilRandom run random value 1..50
execute if score @s RecoilRandom > @s Recoil run scoreboard players operation @s RecoilRandom = @s Recoil

execute if score @s RecoilDirec matches 1 if score @s RecoilRandom matches 1..2 run tp @s ~ ~ ~ ~.2 ~
execute if score @s RecoilDirec matches 1 if score @s RecoilRandom matches 3..4 run tp @s ~ ~ ~ ~.4 ~
execute if score @s RecoilDirec matches 1 if score @s RecoilRandom matches 5..6 run tp @s ~ ~ ~ ~.6 ~
execute if score @s RecoilDirec matches 1 if score @s RecoilRandom matches 7..8 run tp @s ~ ~ ~ ~.8 ~
execute if score @s RecoilDirec matches 1 if score @s RecoilRandom matches 9..10 run tp @s ~ ~ ~ ~1 ~
execute if score @s RecoilDirec matches 1 if score @s RecoilRandom matches 11..12 run tp @s ~ ~ ~ ~1.2 ~
execute if score @s RecoilDirec matches 1 if score @s RecoilRandom matches 13..14 run tp @s ~ ~ ~ ~1.4 ~
execute if score @s RecoilDirec matches 1 if score @s RecoilRandom matches 15..16 run tp @s ~ ~ ~ ~1.6 ~
execute if score @s RecoilDirec matches 1 if score @s RecoilRandom matches 17..18 run tp @s ~ ~ ~ ~1.8 ~
execute if score @s RecoilDirec matches 1 if score @s RecoilRandom matches 19..20 run tp @s ~ ~ ~ ~2 ~
execute if score @s RecoilDirec matches 1 if score @s RecoilRandom matches 21..22 run tp @s ~ ~ ~ ~2.2 ~
execute if score @s RecoilDirec matches 1 if score @s RecoilRandom matches 23..24 run tp @s ~ ~ ~ ~2.4 ~
execute if score @s RecoilDirec matches 1 if score @s RecoilRandom matches 25..26 run tp @s ~ ~ ~ ~2.6 ~
execute if score @s RecoilDirec matches 1 if score @s RecoilRandom matches 27..28 run tp @s ~ ~ ~ ~2.8 ~
execute if score @s RecoilDirec matches 1 if score @s RecoilRandom matches 29.. run tp @s ~ ~ ~ ~3 ~

execute if score @s RecoilDirec matches 2 if score @s RecoilRandom matches 1..2 run tp @s ~ ~ ~ ~-.2 ~
execute if score @s RecoilDirec matches 2 if score @s RecoilRandom matches 3..4 run tp @s ~ ~ ~ ~-.4 ~
execute if score @s RecoilDirec matches 2 if score @s RecoilRandom matches 5..6 run tp @s ~ ~ ~ ~-.6 ~
execute if score @s RecoilDirec matches 2 if score @s RecoilRandom matches 7..8 run tp @s ~ ~ ~ ~-.8 ~
execute if score @s RecoilDirec matches 2 if score @s RecoilRandom matches 9..10 run tp @s ~ ~ ~ ~-1 ~
execute if score @s RecoilDirec matches 2 if score @s RecoilRandom matches 11..12 run tp @s ~ ~ ~ ~-1.2 ~
execute if score @s RecoilDirec matches 2 if score @s RecoilRandom matches 13..14 run tp @s ~ ~ ~ ~-1.4 ~
execute if score @s RecoilDirec matches 2 if score @s RecoilRandom matches 15..16 run tp @s ~ ~ ~ ~-1.6 ~
execute if score @s RecoilDirec matches 2 if score @s RecoilRandom matches 17..18 run tp @s ~ ~ ~ ~-1.8 ~
execute if score @s RecoilDirec matches 2 if score @s RecoilRandom matches 19..20 run tp @s ~ ~ ~ ~-2 ~
execute if score @s RecoilDirec matches 2 if score @s RecoilRandom matches 21..22 run tp @s ~ ~ ~ ~-2.2 ~
execute if score @s RecoilDirec matches 2 if score @s RecoilRandom matches 23..24 run tp @s ~ ~ ~ ~-2.4 ~
execute if score @s RecoilDirec matches 2 if score @s RecoilRandom matches 25..26 run tp @s ~ ~ ~ ~-2.6 ~
execute if score @s RecoilDirec matches 2 if score @s RecoilRandom matches 27..28 run tp @s ~ ~ ~ ~-2.8 ~
execute if score @s RecoilDirec matches 2 if score @s RecoilRandom matches 29.. run tp @s ~ ~ ~ ~-3 ~

schedule function data:weapon/recoil
