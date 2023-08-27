execute as @e[tag=Time] run scoreboard players add @s Time 1
scoreboard players add Round Time 1
execute if score Round Time matches 20.. run scoreboard players reset Round Time
scoreboard players add @a Time 1
scoreboard players reset @a[scores={Time=180..}] Time
execute in overworld run spawnpoint @a 0 -60 0 

title @a[nbt={SelectedItemSlot:1}] times 0 3 0
title @a[nbt={SelectedItemSlot:0}] times 0 3 0
title @a[nbt=!{SelectedItemSlot:1},nbt=!{SelectedItemSlot:0}] times 0 5 0
execute as @a[tag=P.Reloading,nbt={SelectedItemSlot:0}] run title @s subtitle [{"text": "Reloading!"}]
execute as @a[tag=!P.Reloading,nbt={SelectedItemSlot:0},scores={PrimaryWeapon=1..}] run title @s subtitle [{"score":{"objective": "P.Ammo","name": "@s"}},{"text": "/"},{"score":{"objective": "P.MaxAmmo","name": "@s"}}]
execute as @a[tag=S.Reloading,nbt={SelectedItemSlot:1}] run title @s subtitle [{"text": "Reloading!"}]
execute as @a[tag=!S.Reloading,nbt={SelectedItemSlot:1},scores={SecondaryWeapon=1..}] run title @s subtitle [{"score":{"objective": "S.Ammo","name": "@s"}},{"text": "/"},{"score":{"objective": "S.MaxAmmo","name": "@s"}}]
title @a[nbt={SelectedItemSlot:1}] title {"text":""}
title @a[nbt={SelectedItemSlot:0}] title {"text":""}
title @a[nbt=!{SelectedItemSlot:1},nbt=!{SelectedItemSlot:0}] clear
effect give @a saturation infinite 69 true
effect give @a resistance infinite 4 true
effect give @a weakness infinite 4 true

# Set some stats
execute as @a store result entity @s XpLevel int 1 run scoreboard players get @s Level
execute as @a unless score @s Level matches 1.. run xp set @s 1 levels
execute as @a unless score @s MaxHealth matches -2147483648..2147483647 run scoreboard players set @s MaxHealth 100
execute as @a unless score @s Health matches 1.. run scoreboard players operation @s Health = @s MaxHealth

# Limbo
execute in overworld as @a[tag=Banned,distance=..100] if entity @s[distance=..100] in data:limbo run tp @s 0.5 6.5 3.5 

kill @e[type=item]

# Numbers
scoreboard players set 180 Numbers 180
scoreboard players set 90 Numbers 90
scoreboard players set 45 Numbers 45
scoreboard players set 2 Numbers 2
