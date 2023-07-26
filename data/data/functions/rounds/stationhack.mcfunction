execute as @e[type=interaction,tag=Station] at @s in data:map if data entity @s interaction as @p[distance=..3,tag=!Hacking] run scoreboard players reset @s Time
execute as @e[type=interaction,tag=Station] at @s in data:map if data entity @s interaction as @p[distance=..3,tag=!Hacking] run tag @s add Hacking
execute as @e[type=interaction,tag=Station] at @s in data:map if entity @p[distance=..3,tag=Hacking] run data remove entity @s interaction
execute as @e[type=interaction,tag=Station] at @s in data:map as @p[distance=..3,tag=Hacking,team=Red] run title @s title {"text": "Starting Hack..."}
execute as @e[type=interaction,tag=StA] at @s in data:map if score @p[distance=..3,tag=Hacking,team=Red] Time matches 99.. run scoreboard players set Round GameStatus 1
execute as @e[type=interaction,tag=StB] at @s in data:map if score @p[distance=..3,tag=Hacking,team=Red] Time matches 99.. run scoreboard players set Round GameStatus 2
execute as @e[type=interaction,tag=StA] at @s in data:map if score @p[distance=..3,tag=Hacking,team=Red] Time matches 99 run tellraw @a {"text": "Hack Started at Station A!","color": "red"}
execute as @e[type=interaction,tag=StB] at @s in data:map if score @p[distance=..3,tag=Hacking,team=Red] Time matches 99 run tellraw @a {"text": "Hack Started at Station B!","color": "red"}
execute as @e[type=interaction,tag=Station] at @s in data:map as @p[distance=..3,tag=Hacking,team=Blue] run title @s title {"text": "Stopping Hack..."}
execute as @e[type=interaction,tag=StA] at @s in data:map if score Round GameStatus matches 1 if score @p[distance=..3,tag=Hacking,team=Blue] Time matches 99.. run scoreboard players set Round GameStatus 0
execute as @e[type=interaction,tag=StB] at @s in data:map if score Round GameStatus matches 2 if score @p[distance=..3,tag=Hacking,team=Blue] Time matches 99.. run scoreboard players set Round GameStatus 0
execute as @e[type=interaction,tag=StA] at @s in data:map if score Round GameStatus matches 1 if score @p[distance=..3,tag=Hacking] Time matches 99.. run scoreboard players set Hack TimeLeft 45
execute as @e[type=interaction,tag=StB] at @s in data:map if score Round GameStatus matches 2 if score @p[distance=..3,tag=Hacking] Time matches 99.. run scoreboard players set Hack TimeLeft 45
execute as @a[tag=Hacking] at @s unless entity @e[type=interaction,tag=Station] run scoreboard players reset @s Time
execute as @a[tag=Hacking] at @s unless entity @e[type=interaction,tag=Station] run tag @s remove Hacking
execute as @a[tag=Hacking] if score @s Time matches 100.. run tag @s remove Hacking