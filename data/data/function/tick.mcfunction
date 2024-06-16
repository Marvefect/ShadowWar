scoreboard players add RecoilTime Time 1
execute as @a if score RecoilTime Time matches 4 if score @s Recoil matches 1.. run scoreboard players remove @s Recoil 1
execute if score RecoilTime Time matches 4 run scoreboard players set RecoilTime Time 0

execute as @e[tag=Time] run scoreboard players add @s Time 1
scoreboard players add Round Time 1
execute if score Round Time matches 20.. run scoreboard players reset Round Time
scoreboard players add @a Time 1
scoreboard players reset @a[scores={Time=180..}] Time
execute in overworld run spawnpoint @a[team=!Blue,team=!Red] 0 -60 0 
execute in data:map run spawnpoint @a[team=Red] 0 2 28
execute in data:map run spawnpoint @a[team=Blue] 0 2 -28 
bossbar set minecraft:1 players @a

title @a[nbt={SelectedItemSlot:1}] times 0 3 0
title @a[nbt={SelectedItemSlot:0}] times 0 3 0
title @a[nbt=!{SelectedItemSlot:1},nbt=!{SelectedItemSlot:0}] times 0 5 0
execute as @a[tag=P.Reloading,nbt={SelectedItemSlot:0}] run title @s subtitle [{"text": "Reloading!"}]
execute as @a[tag=!P.Reloading,nbt={SelectedItemSlot:0},scores={PrimaryWeapon=1..},tag=!Spectating,tag=!Dev] run title @s subtitle [{"score":{"objective": "P.Ammo","name": "@s"}},{"text": "/"},{"score":{"objective": "P.MaxAmmo","name": "@s"}}]
execute as @a[tag=S.Reloading,nbt={SelectedItemSlot:1}] run title @s subtitle [{"text": "Reloading!"}]
execute as @a[tag=!S.Reloading,nbt={SelectedItemSlot:1},scores={SecondaryWeapon=1..},tag=!Spectating,tag=!Dev] run title @s subtitle [{"score":{"objective": "S.Ammo","name": "@s"}},{"text": "/"},{"score":{"objective": "S.MaxAmmo","name": "@s"}}]
title @a[nbt={SelectedItemSlot:1}] title {"text":""}
title @a[nbt={SelectedItemSlot:0}] title {"text":""}
title @a[nbt=!{SelectedItemSlot:1},nbt=!{SelectedItemSlot:0}] clear

effect give @a resistance infinite 4 true
effect give @a weakness infinite 4 true

# Set some stats
execute as @a unless score @s MaxHealth matches -2147483648..2147483647 run scoreboard players set @s MaxHealth 100
execute as @a unless score @s Health matches 1.. run scoreboard players operation @s Health = @s MaxHealth

execute in data:lobby positioned 0 64 0 as @a run title @s[distance=..1000] actionbar [{"text": "Credits: ","color":"yellow"},{"score":{"objective":"Credits","name": "@s"}}]
# test
effect give @a instant_health 1 100 true 

# AC / Force Adventure
gamemode adventure @a[gamemode=survival]
