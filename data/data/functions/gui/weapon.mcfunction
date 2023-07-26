execute as @e[type=interaction,tag=Primary1] at @s if data entity @s interaction as @p[distance=..2] run scoreboard players set @s PrimaryWeapon 1
execute as @e[type=interaction,tag=Primary2] at @s if data entity @s interaction as @p[distance=..2,scores={Level=5..}] run scoreboard players set @s PrimaryWeapon 2
execute as @e[type=interaction,tag=Primary3] at @s if data entity @s interaction as @p[distance=..2,scores={Level=10..}] run scoreboard players set @s PrimaryWeapon 3
execute as @e[type=interaction,tag=Primary4] at @s if data entity @s interaction as @p[distance=..2,scores={Level=15..}] run scoreboard players set @s PrimaryWeapon 4

execute as @e[type=interaction,tag=Secondary1] at @s if data entity @s interaction as @p[distance=..2] run scoreboard players set @s SecondaryWeapon 1
execute as @e[type=interaction,tag=Secondary2] at @s if data entity @s interaction as @p[distance=..2,scores={Level=5..}] run scoreboard players set @s SecondaryWeapon 2
execute as @e[type=interaction,tag=Secondary3] at @s if data entity @s interaction as @p[distance=..2,scores={Level=15..}] run scoreboard players set @s SecondaryWeapon 3

execute as @e[type=interaction,tag=Armor0] at @s if data entity @s interaction as @p[distance=..2] run scoreboard players set @s ArmorType 0
execute as @e[type=interaction,tag=Armor1] at @s if data entity @s interaction as @p[distance=..2] run scoreboard players set @s ArmorType 1
execute as @e[type=interaction,tag=Armor2] at @s if data entity @s interaction as @p[distance=..2,scores={Level=5..}] run scoreboard players set @s ArmorType 2
execute as @e[type=interaction,tag=Armor3] at @s if data entity @s interaction as @p[distance=..2,scores={Level=10..}] run scoreboard players set @s ArmorType 3
execute as @e[type=interaction,tag=Armor4] at @s if data entity @s interaction as @p[distance=..2,scores={Level=15..}] run scoreboard players set @s ArmorType 4

execute as @e[type=interaction,tag=Armory] at @s if entity @p[distance=..2] run data remove entity @s interaction