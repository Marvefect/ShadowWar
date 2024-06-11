# Forcing Doors
execute as @e[type=interaction,tag=DoorForce] at @s in data:map if data entity @s interaction as @p[distance=..2,tag=!ForcingDoor] run scoreboard players reset @s Time
execute as @e[type=interaction,tag=DoorForce] at @s in data:map if data entity @s interaction as @p[distance=..2,tag=!ForcingDoor] run tag @s add ForcingDoor
execute as @e[type=interaction,tag=DoorForce] at @s in data:map if entity @p[distance=..2,tag=ForcingDoor] run data remove entity @s interaction
execute as @e[type=interaction,tag=DoorForce] at @s in data:map as @p[distance=..2,tag=ForcingDoor] run title @s actionbar {"text": "Forcing Door..."}
execute as @e[type=interaction,tag=Door1] at @s in data:map as @p[distance=..2,tag=ForcingDoor] if score @s Time matches 99.. run setblock -20 3 30 redstone_block
execute as @e[type=interaction,tag=Door2] at @s in data:map as @p[distance=..2,tag=ForcingDoor] if score @s Time matches 99.. run setblock -25 3 22 redstone_block
execute as @e[type=interaction,tag=Door3] at @s in data:map as @p[distance=..2,tag=ForcingDoor] if score @s Time matches 99.. run setblock 19 3 22 redstone_block
execute as @e[type=interaction,tag=Door4] at @s in data:map as @p[distance=..2,tag=ForcingDoor] if score @s Time matches 99.. run setblock 26 3 19 redstone_block
execute as @e[type=interaction,tag=DoorForce] at @s in data:map if score @p[distance=..2,tag=ForcingDoor] Time matches 99.. run kill @s
execute as @a[tag=ForcingDoor] at @s unless entity @e[type=interaction,tag=DoorForce] run scoreboard players reset @s Time
execute as @a[tag=ForcingDoor] at @s unless entity @e[type=interaction,tag=DoorForce] run tag @s remove ForcingDoor
execute as @a[tag=ForcingDoor] if score @s Time matches 100.. run tag @s remove ForcingDoor
